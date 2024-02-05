
(cl:in-package :asdf)

(defsystem "coordinate_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "PoseArray" :depends-on ("_package_PoseArray"))
    (:file "_package_PoseArray" :depends-on ("_package"))
  ))