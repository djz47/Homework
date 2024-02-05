; Auto-generated. Do not edit!


(cl:in-package coordinate_msgs-msg)


;//! \htmlinclude coordinate.msg.html

(cl:defclass <coordinate> (roslisp-msg-protocol:ros-message)
  ((Header
    :reader Header
    :initarg :Header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Pose
    :reader Pose
    :initarg :Pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (PoseArray
    :reader PoseArray
    :initarg :PoseArray
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray)))
)

(cl:defclass coordinate (<coordinate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <coordinate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'coordinate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name coordinate_msgs-msg:<coordinate> is deprecated: use coordinate_msgs-msg:coordinate instead.")))

(cl:ensure-generic-function 'Header-val :lambda-list '(m))
(cl:defmethod Header-val ((m <coordinate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coordinate_msgs-msg:Header-val is deprecated.  Use coordinate_msgs-msg:Header instead.")
  (Header m))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <coordinate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coordinate_msgs-msg:Pose-val is deprecated.  Use coordinate_msgs-msg:Pose instead.")
  (Pose m))

(cl:ensure-generic-function 'PoseArray-val :lambda-list '(m))
(cl:defmethod PoseArray-val ((m <coordinate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coordinate_msgs-msg:PoseArray-val is deprecated.  Use coordinate_msgs-msg:PoseArray instead.")
  (PoseArray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <coordinate>) ostream)
  "Serializes a message object of type '<coordinate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'PoseArray) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <coordinate>) istream)
  "Deserializes a message object of type '<coordinate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'PoseArray) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<coordinate>)))
  "Returns string type for a message object of type '<coordinate>"
  "coordinate_msgs/coordinate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'coordinate)))
  "Returns string type for a message object of type 'coordinate"
  "coordinate_msgs/coordinate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<coordinate>)))
  "Returns md5sum for a message object of type '<coordinate>"
  "81fd5275d7ab07817f427c0fbfe9e028")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'coordinate)))
  "Returns md5sum for a message object of type 'coordinate"
  "81fd5275d7ab07817f427c0fbfe9e028")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<coordinate>)))
  "Returns full string definition for message of type '<coordinate>"
  (cl:format cl:nil "std_msgs/Header Header~%geometry_msgs/Pose Pose~%geometry_msgs/PoseArray PoseArray~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'coordinate)))
  "Returns full string definition for message of type 'coordinate"
  (cl:format cl:nil "std_msgs/Header Header~%geometry_msgs/Pose Pose~%geometry_msgs/PoseArray PoseArray~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <coordinate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'PoseArray))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <coordinate>))
  "Converts a ROS message object to a list"
  (cl:list 'coordinate
    (cl:cons ':Header (Header msg))
    (cl:cons ':Pose (Pose msg))
    (cl:cons ':PoseArray (PoseArray msg))
))
