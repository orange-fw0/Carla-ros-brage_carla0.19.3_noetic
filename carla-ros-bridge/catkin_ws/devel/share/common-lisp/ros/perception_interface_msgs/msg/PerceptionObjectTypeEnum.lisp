; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude PerceptionObjectTypeEnum.msg.html

(cl:defclass <PerceptionObjectTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PerceptionObjectTypeEnum (<PerceptionObjectTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptionObjectTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptionObjectTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<PerceptionObjectTypeEnum> is deprecated: use perception_interface_msgs-msg:PerceptionObjectTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PerceptionObjectTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PerceptionObjectTypeEnum>)))
    "Constants for message type '<PerceptionObjectTypeEnum>"
  '((:OBJECT_TYPE_UNKNOWN . 0)
    (:OBJECT_TYPE_RAW . 1)
    (:OBJECT_TYPE_NORMAL . 2)
    (:OBJECT_TYPE_RADAR_ONLY . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PerceptionObjectTypeEnum)))
    "Constants for message type 'PerceptionObjectTypeEnum"
  '((:OBJECT_TYPE_UNKNOWN . 0)
    (:OBJECT_TYPE_RAW . 1)
    (:OBJECT_TYPE_NORMAL . 2)
    (:OBJECT_TYPE_RADAR_ONLY . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptionObjectTypeEnum>) ostream)
  "Serializes a message object of type '<PerceptionObjectTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptionObjectTypeEnum>) istream)
  "Deserializes a message object of type '<PerceptionObjectTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptionObjectTypeEnum>)))
  "Returns string type for a message object of type '<PerceptionObjectTypeEnum>"
  "perception_interface_msgs/PerceptionObjectTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptionObjectTypeEnum)))
  "Returns string type for a message object of type 'PerceptionObjectTypeEnum"
  "perception_interface_msgs/PerceptionObjectTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptionObjectTypeEnum>)))
  "Returns md5sum for a message object of type '<PerceptionObjectTypeEnum>"
  "02914a9fc88197ca09784bc28af8dc36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptionObjectTypeEnum)))
  "Returns md5sum for a message object of type 'PerceptionObjectTypeEnum"
  "02914a9fc88197ca09784bc28af8dc36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptionObjectTypeEnum>)))
  "Returns full string definition for message of type '<PerceptionObjectTypeEnum>"
  (cl:format cl:nil "uint8 OBJECT_TYPE_UNKNOWN = 0~%uint8 OBJECT_TYPE_RAW = 1~%uint8 OBJECT_TYPE_NORMAL = 2~%uint8 OBJECT_TYPE_RADAR_ONLY = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptionObjectTypeEnum)))
  "Returns full string definition for message of type 'PerceptionObjectTypeEnum"
  (cl:format cl:nil "uint8 OBJECT_TYPE_UNKNOWN = 0~%uint8 OBJECT_TYPE_RAW = 1~%uint8 OBJECT_TYPE_NORMAL = 2~%uint8 OBJECT_TYPE_RADAR_ONLY = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptionObjectTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptionObjectTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptionObjectTypeEnum
    (cl:cons ':value (value msg))
))
