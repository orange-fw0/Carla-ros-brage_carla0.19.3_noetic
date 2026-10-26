; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude SubmapAuxiliaryInfo.msg.html

(cl:defclass <SubmapAuxiliaryInfo> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type submap_msgs-msg:SubmapTrajectory
    :initform (cl:make-instance 'submap_msgs-msg:SubmapTrajectory)))
)

(cl:defclass SubmapAuxiliaryInfo (<SubmapAuxiliaryInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapAuxiliaryInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapAuxiliaryInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<SubmapAuxiliaryInfo> is deprecated: use submap_msgs-msg:SubmapAuxiliaryInfo instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <SubmapAuxiliaryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:trajectory-val is deprecated.  Use submap_msgs-msg:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapAuxiliaryInfo>) ostream)
  "Serializes a message object of type '<SubmapAuxiliaryInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapAuxiliaryInfo>) istream)
  "Deserializes a message object of type '<SubmapAuxiliaryInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapAuxiliaryInfo>)))
  "Returns string type for a message object of type '<SubmapAuxiliaryInfo>"
  "submap_msgs/SubmapAuxiliaryInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapAuxiliaryInfo)))
  "Returns string type for a message object of type 'SubmapAuxiliaryInfo"
  "submap_msgs/SubmapAuxiliaryInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapAuxiliaryInfo>)))
  "Returns md5sum for a message object of type '<SubmapAuxiliaryInfo>"
  "d9886ee6af805062c3b253e95f141d40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapAuxiliaryInfo)))
  "Returns md5sum for a message object of type 'SubmapAuxiliaryInfo"
  "d9886ee6af805062c3b253e95f141d40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapAuxiliaryInfo>)))
  "Returns full string definition for message of type '<SubmapAuxiliaryInfo>"
  (cl:format cl:nil "submap_msgs/SubmapTrajectory trajectory~%~%================================================================================~%MSG: submap_msgs/SubmapTrajectory~%float64 distance~%submap_msgs/Position[] positions~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapAuxiliaryInfo)))
  "Returns full string definition for message of type 'SubmapAuxiliaryInfo"
  (cl:format cl:nil "submap_msgs/SubmapTrajectory trajectory~%~%================================================================================~%MSG: submap_msgs/SubmapTrajectory~%float64 distance~%submap_msgs/Position[] positions~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapAuxiliaryInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapAuxiliaryInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapAuxiliaryInfo
    (cl:cons ':trajectory (trajectory msg))
))
