#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"
#include "geometry_msgs/PointStamped.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h" 
#include "coordinate_msgs/Pose"
#include "coordinate_msgs/PoseArray"

void single_pose_callback(coordinate_msgs::Pose msg)
{
    geometry_msgs::PointStamped laser_pose;
    laser_pose.header.frame_id = "laser";
    laser_pose.header.stamp = ros::Time::now();
    try
    {
        laser_pose.point.x = msg.position.x;
        laser_pose.point.y = msg.position.y;
        laser_pose.point.z = msg.position.z;
        geometry_msgs::PointStamped cam_pose;
        cam_pose = buffer.transform(cam_pose,"camera");
        ROS_INFO("转换后的Pose：(%.2f,%.2f,%.2f),参考的坐标系为：%s",cam_pose.point.x,cam_pose.point.y,cam_pose.point.z,cam_pose.header.frame_id.c_str());
    }
    catch (const std::exception&)
    {
        ROS_WARN("程序异常")
    }
}

void PoseArray_callback()
{
    
}

int main(int argc, char *argv[])
{   
    setlocale(LC_ALL,"");
    //初始化 ROS 节点
    ros::init(argc,argv,"radar2cam_sub");
    ros::NodeHandle nh;
    //创建 TF 订阅节点
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);

    ros::Subscriber receive_Pose;
    receive_pose = nh.subscribe<coordinate_msgs::Pose>("single_Pose", 10, single_pose_callback);
    ros::Subscriber receive_PoseArray;
    receive_PoseArray = nh.subscribe<coordinate_msgs::PoseArray>("PoseArray",10,PoseArray_callback);

    ros::Rate r(1);
    while (ros::ok())
    {
        // //生成一个坐标点(相对于子级坐标系)
        // geometry_msgs::PointStamped point_laser;
        // point_laser.header.frame_id = "laser";
        // point_laser.header.stamp = ros::Time::now();
        // point_laser.point.x = 1;
        // point_laser.point.y = 2;
        // point_laser.point.z = 7.3;
        // // 转换坐标点(相对于父级坐标系)
        // // 新建一个坐标点，用于接收转换结果  
        // //--------------使用 try 语句或休眠，否则可能由于缓存接收延迟而导致坐标转换失败------------------------
        // try
        // {
        //     geometry_msgs::PointStamped point_cam;
        //     point_cam = buffer.transform(point_laser,"camera");
        //     ROS_INFO("转换后的数据:(%.2f,%.2f,%.2f),参考的坐标系是:%s",point_cam.point.x,point_cam.point.y,point_cam.point.z,point_cam.header.frame_id.c_str());

        // }
        // catch(const std::exception& e)
        // {
        //     // std::cerr << e.what() << '\n';
        //     ROS_INFO("程序异常.....");
        // }

        // r.sleep();  
        ros::spinOnce();
    }
    return 0;
}
