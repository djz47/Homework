; Auto-generated. Do not edit!


(cl:in-package coordinate_msgs-msg)


;//! \htmlinclude PoseArray.msg.html

(cl:defclass <PoseArray> (roslisp-msg-protocol:ros-message)
  ((PoseArray
    :reader PoseArray
    :initarg :PoseArray
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray)))
)

(cl:defclass PoseArray (<PoseArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name coordinate_msgs-msg:<PoseArray> is deprecated: use coordinate_msgs-msg:PoseArray instead.")))

(cl:ensure-generic-function 'PoseArray-val :lambda-list '(m))
(cl:defmethod PoseArray-val ((m <PoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coordinate_msgs-msg:PoseArray-val is deprecated.  Use coordinate_msgs-msg:PoseArray instead.")
  (PoseArray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseArray>) ostream)
  "Serializes a message object of type '<PoseArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'PoseArray) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseArray>) istream)
  "Deserializes a message object of type '<PoseArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'PoseArray) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseArray>)))
  "Returns string type for a message object of type '<PoseArray>"
  "coordinate_msgs/PoseArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseArray)))
  "Returns string type for a message object of type 'PoseArray"
  "coordinate_msgs/PoseArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseArray>)))
  "Returns md5sum for a message object of type '<PoseArray>"
  "04aa8af48fdfa0188d44777e5d680352")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseArray)))
  "Returns md5sum for a message object of type 'PoseArray"
  "04aa8af48fdfa0188d44777e5d680352")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseArray>)))
  "Returns full string definition for message of type '<PoseArray>"
  (cl:format cl:nil "geometry_msgs/PoseArray PoseArray~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseArray)))
  "Returns full string definition for message of type 'PoseArray"
  (cl:format cl:nil "geometry_msgs/PoseArray PoseArray~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'PoseArray))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseArray
    (cl:cons ':PoseArray (PoseArray msg))
))
