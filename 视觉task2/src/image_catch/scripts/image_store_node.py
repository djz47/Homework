#!/usr/bin/env python3
import rospy
import cv2
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

class ImageProcessor:

    def __init__(self):
        rospy.init_node("image_store_node")
        rospy.loginfo("Node_init done")
        rospy.loginfo("Receiving")
        self.mg_sub = rospy.Subscriber("image_process",Image,self.img_callback,queue_size=1)

    def img_callback(self,msg):
        bridge = CvBridge()
        cv_image = bridge.imgmsg_to_cv2(msg,"passthrough")
        image_filename = "image_{}.png".format(str(rospy.Time.now()))
        image_path = '/home/ding/winter_train/ROS_vision/image_work/task2/image/'+image_filename
        cv2.imwrite(image_path,cv_image)
        rospy.logwarn("Received one")
        rospy.loginfo("Saved image {} to {}".format(image_filename, image_path))
        cv2.imshow(image_filename,cv_image)
        cv2.waitKey(2000)

if __name__ == "__main__":
    node = ImageProcessor()
    rospy.spin()