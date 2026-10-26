; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude AvoidObjectTypeEnum.msg.html

(cl:defclass <AvoidObjectTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AvoidObjectTypeEnum (<AvoidObjectTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AvoidObjectTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AvoidObjectTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<AvoidObjectTypeEnum> is deprecated: use perception_interface_msgs-msg:AvoidObjectTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AvoidObjectTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AvoidObjectTypeEnum>)))
    "Constants for message type '<AvoidObjectTypeEnum>"
  '((:AVOID_VEHICLE_TYPE . 0)
    (:AVOID_VRU_TYPE . 1)
    (:AVOID_BARRIER_TYPE . 2)
    (:AVOID_OTHER_TYPE . 3)
    (:AVOID_TYPE_UNMARKED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AvoidObjectTypeEnum)))
    "Constants for message type 'AvoidObjectTypeEnum"
  '((:AVOID_VEHICLE_TYPE . 0)
    (:AVOID_VRU_TYPE . 1)
    (:AVOID_BARRIER_TYPE . 2)
    (:AVOID_OTHER_TYPE . 3)
    (:AVOID_TYPE_UNMARKED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AvoidObjectTypeEnum>) ostream)
  "Serializes a message object of type '<AvoidObjectTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AvoidObjectTypeEnum>) istream)
  "Deserializes a message object of type '<AvoidObjectTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AvoidObjectTypeEnum>)))
  "Returns string type for a message object of type '<AvoidObjectTypeEnum>"
  "perception_interface_msgs/AvoidObjectTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AvoidObjectTypeEnum)))
  "Returns string type for a message object of type 'AvoidObjectTypeEnum"
  "perception_interface_msgs/AvoidObjectTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AvoidObjectTypeEnum>)))
  "Returns md5sum for a message object of type '<AvoidObjectTypeEnum>"
  "113b71f76a711bc0356228d00c4ee6d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AvoidObjectTypeEnum)))
  "Returns md5sum for a message object of type 'AvoidObjectTypeEnum"
  "113b71f76a711bc0356228d00c4ee6d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AvoidObjectTypeEnum>)))
  "Returns full string definition for message of type '<AvoidObjectTypeEnum>"
  (cl:format cl:nil "uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AvoidObjectTypeEnum)))
  "Returns full string definition for message of type 'AvoidObjectTypeEnum"
  (cl:format cl:nil "uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AvoidObjectTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AvoidObjectTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'AvoidObjectTypeEnum
    (cl:cons ':value (value msg))
))
