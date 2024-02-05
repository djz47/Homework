;; Auto-generated. Do not edit!


(when (boundp 'coordinate_msgs::PoseArray)
  (if (not (find-package "COORDINATE_MSGS"))
    (make-package "COORDINATE_MSGS"))
  (shadow 'PoseArray (find-package "COORDINATE_MSGS")))
(unless (find-package "COORDINATE_MSGS::POSEARRAY")
  (make-package "COORDINATE_MSGS::POSEARRAY"))

(in-package "ROS")
;;//! \htmlinclude PoseArray.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass coordinate_msgs::PoseArray
  :super ros::object
  :slots (_PoseArray ))

(defmethod coordinate_msgs::PoseArray
  (:init
   (&key
    ((:PoseArray __PoseArray) (instance geometry_msgs::PoseArray :init))
    )
   (send-super :init)
   (setq _PoseArray __PoseArray)
   self)
  (:PoseArray
   (&rest __PoseArray)
   (if (keywordp (car __PoseArray))
       (send* _PoseArray __PoseArray)
     (progn
       (if __PoseArray (setq _PoseArray (car __PoseArray)))
       _PoseArray)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _PoseArray
    (send _PoseArray :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _PoseArray
       (send _PoseArray :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _PoseArray
     (send _PoseArray :deserialize buf ptr-) (incf ptr- (send _PoseArray :serialization-length))
   ;;
   self)
  )

(setf (get coordinate_msgs::PoseArray :md5sum-) "04aa8af48fdfa0188d44777e5d680352")
(setf (get coordinate_msgs::PoseArray :datatype-) "coordinate_msgs/PoseArray")
(setf (get coordinate_msgs::PoseArray :definition-)
      "geometry_msgs/PoseArray PoseArray
================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :coordinate_msgs/PoseArray "04aa8af48fdfa0188d44777e5d680352")


