#include <ros/ros.h>
#include <sensor_msgs/Image.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>

class ImageProcessor {
public:
    ImageProcessor() {
        ros::NodeHandle nh;
        ROS_INFO("Node_init done");
        ROS_INFO("Receiving");
        image_sub = nh.subscribe("image_process", 1, &ImageProcessor::imgCallback, this);
    }

    void imgCallback(const sensor_msgs::ImageConstPtr& msg) {
        cv_bridge::CvImagePtr cv_ptr;
        try {
            cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        } catch (cv_bridge::Exception& e) {
            ROS_ERROR("cv_bridge exception: %s", e.what());
            return;
        }

        std::string image_filename = "image_" + std::to_string(ros::Time::now().toSec()) + ".png";
        std::string image_path = "/home/ding/winter_train/ROS_vision/image_work/task2/image/" + image_filename;
        cv::imwrite(image_path, cv_ptr->image);
        ROS_WARN("Received one");
        ROS_INFO("Saved image %s to %s", image_filename.c_str(), image_path.c_str());
        cv::imshow(image_filename, cv_ptr->image);
        cv::waitKey(2000);
    }

private:
    ros::Subscriber image_sub;
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "image_store_node");
    ImageProcessor processor;
    ros::spin();
    return 0;
}
