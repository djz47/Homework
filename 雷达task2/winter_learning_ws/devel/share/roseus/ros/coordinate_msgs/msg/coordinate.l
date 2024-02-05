;; Auto-generated. Do not edit!


(when (boundp 'coordinate_msgs::coordinate)
  (if (not (find-package "COORDINATE_MSGS"))
    (make-package "COORDINATE_MSGS"))
  (shadow 'coordinate (find-package "COORDINATE_MSGS")))
(unless (find-package "COORDINATE_MSGS::COORDINATE")
  (make-package "COORDINATE_MSGS::COORDINATE"))

(in-package "ROS")
;;//! \htmlinclude coordinate.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass coordinate_msgs::coordinate
  :super ros::object
  :slots (_Header _Pose _PoseArray ))

(defmethod coordinate_msgs::coordinate
  (:init
   (&key
    ((:Header __Header) (instance std_msgs::Header :init))
    ((:Pose __Pose) (instance geometry_msgs::Pose :init))
    ((:PoseArray __PoseArray) (instance geometry_msgs::PoseArray :init))
    )
   (send-super :init)
   (setq _Header __Header)
   (setq _Pose __Pose)
   (setq _PoseArray __PoseArray)
   self)
  (:Header
   (&rest __Header)
   (if (keywordp (car __Header))
       (send* _Header __Header)
     (progn
       (if __Header (setq _Header (car __Header)))
       _Header)))
  (:Pose
   (&rest __Pose)
   (if (keywordp (car __Pose))
       (send* _Pose __Pose)
     (progn
       (if __Pose (setq _Pose (car __Pose)))
       _Pose)))
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
    ;; std_msgs/Header _Header
    (send _Header :serialization-length)
    ;; geometry_msgs/Pose _Pose
    (send _Pose :serialization-length)
    ;; geometry_msgs/PoseArray _PoseArray
    (send _PoseArray :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _Header
       (send _Header :serialize s)
     ;; geometry_msgs/Pose _Pose
       (send _Pose :serialize s)
     ;; geometry_msgs/PoseArray _PoseArray
       (send _PoseArray :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _Header
     (send _Header :deserialize buf ptr-) (incf ptr- (send _Header :serialization-length))
   ;; geometry_msgs/Pose _Pose
     (send _Pose :deserialize buf ptr-) (incf ptr- (send _Pose :serialization-length))
   ;; geometry_msgs/PoseArray _PoseArray
     (send _PoseArray :deserialize buf ptr-) (incf ptr- (send _PoseArray :serialization-length))
   ;;
   self)
  )

(setf (get coordinate_msgs::coordinate :md5sum-) "81fd5275d7ab07817f427c0fbfe9e028")
(setf (get coordinate_msgs::coordinate :datatype-) "coordinate_msgs/coordinate")
(setf (get coordinate_msgs::coordinate :definition-)
      "std_msgs/Header Header
geometry_msgs/Pose Pose
geometry_msgs/PoseArray PoseArray
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

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

")



(provide :coordinate_msgs/coordinate "81fd5275d7ab07817f427c0fbfe9e028")


