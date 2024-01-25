#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

class ImageReceiverNode:
    def __init__(self):
        rospy.init_node("image_receiver_node")
        self.bridge = CvBridge()
        self.image_count = 0
        self.max_images = 3

        # 设置定时器，每隔5秒调用一次回调函数
        self.timer = rospy.Timer(rospy.Duration(5.0), self.timer_callback)

        # 订阅图像话题
        self.image_sub = rospy.Subscriber("usb_cam/image_raw", Image, self.image_callback, queue_size=10)

    def image_callback(self, msg):
        # 处理接收到的图像
        cv_image = self.bridge.imgmsg_to_cv2(msg, "passthrough")
        # 在这里添加您的图像处理逻辑

        # 增加接收的图像计数
        self.image_count += 1

        # 检查是否已接收足够数量的图像
        if self.image_count >= self.max_images:
            rospy.loginfo("Received {} images. Shutting down...".format(self.max_images))
            rospy.signal_shutdown("Received enough images")

    def timer_callback(self, event):
        # 定时器回调函数
        rospy.loginfo("Timer callback - Received {} images so far.".format(self.image_count))

if __name__ == '__main__':
    node = ImageReceiverNode()
    rospy.spin()