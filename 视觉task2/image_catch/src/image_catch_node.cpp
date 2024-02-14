#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include "cv_bridge/cv_bridge.h"
#include "opencv2/opencv.hpp"

class ImageReceiver {
public:
    ImageReceiver() {
        ros::NodeHandle nh;
        ROS_INFO("Node_init done");
        image_sub = nh.subscribe("usb_cam/image_raw", 10, &ImageReceiver::imageCallback, this);
        image_pub = nh.advertise<sensor_msgs::Image>("image_process", 10);
        image_count = 0;
        max_count = 3;
    }

    void imageCallback(const sensor_msgs::ImageConstPtr& msg) {
        cv_bridge::CvImagePtr cv_ptr;
        try {
            cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        } catch (cv_bridge::Exception& e) {
            ROS_ERROR("cv_bridge exception: %s", e.what());
            return;
        }

        cv::Mat cv_image_rgb;
        cv::cvtColor(cv_ptr->image, cv_image_rgb, cv::COLOR_BGR2RGB);

        sensor_msgs::ImagePtr processed_msg = cv_bridge::CvImage(std_msgs::Header(), "rgb8", cv_image_rgb).toImageMsg();
        image_pub.publish(processed_msg);

        image_count++;
        ROS_INFO("got one");
        if (image_count >= max_count) {
            ROS_WARN("Received %d images. Shutting down...", max_count);
            ros::shutdown();
        } else {
            ros::Duration(5).sleep();
        }
    }

private:
    ros::Subscriber image_sub;
    ros::Publisher image_pub;
    int image_count;
    int max_count;
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "image_catch_node");
    ImageReceiver receiver;
    ros::spin();
    return 0;
}