#include <ros/ros.h>
#include <coordinate_msgs/Pose.h>

int main(int argc, char** argv) {

    setlocale(LC_ALL,"");
    ros::init(argc, argv, "send_single_pose_pub");

    ros::NodeHandle nh;
    ros::Publisher SinglePosePublisher = nh.advertise<coordinate_msgs::Pose>("single_Pose", 10);

    ros::Rate rate(1);  // 1 Hz
    coordinate_msgs::Pose pose;
    while (ros::ok()) 
    {
        // 创建一个 PoseArray 消息
        pose.position.x = 2.0;
        pose.position.y = 0.0;
        pose.position.z = 0.0;
        
        pose.orientation.x = 0.0;
        pose.orientation.y = 0.0;
        pose.orientation.z = 0.0;
        pose.orientation.w = 1.0;

    }
        // 发布 Pose消息
        SinglePosePublisher.publish(pose);
        ROS_INFO("发布坐标为(%.2f,%.2f,%.2f),四元数为(%.2f,%.2f,%.2f,%.2f)",pose.position.x,pose.position.y,pose.position.z,pose.orientation.x,pose.orientation.y,pose.orientation.z,pose.orientation.w)
        ros::spinOnce();
        rate.sleep();
        return 0;
    }

