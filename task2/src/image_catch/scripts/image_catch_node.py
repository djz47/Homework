#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

class ImageReceiver:
    def __init__(self):
        rospy.init_node("image_catch_node")
        rospy.loginfo("Node_init done")
        self.image_sub = rospy.Subscriber("usb_cam/image_raw",Image,self.image_callback,queue_size=10)
        self.image_pub = rospy.Publisher("image_process",Image,queue_size=10)
        self.image_count = 0
        self.max_count = 3  

        
    def image_callback(self, msg):
        bridge = CvBridge()
        cv_image = bridge.imgmsg_to_cv2(msg,"passthrough")
        cv_image_rgb = cv2.cvtColor(cv_image,cv2.COLOR_BGR2RGB)
        processed_msg = bridge.cv2_to_imgmsg(cv_image_rgb,"rgb8")
        self.image_pub.publish(processed_msg)
        self.image_count += 1
        rospy.loginfo("got one")
        if self.image_count >= self.max_count:
            rospy.logwarn("Received {} images. Shutting down...".format(self.max_count))
            rospy.signal_shutdown("Received enough images")
        else:
            rospy.sleep(5)

if __name__ == '__main__':
    node = ImageReceiver()
    rospy.spin()