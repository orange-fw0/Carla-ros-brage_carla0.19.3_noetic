; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ADBSysStatusEnum.msg.html

(cl:defclass <ADBSysStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ADBSysStatusEnum (<ADBSysStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADBSysStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADBSysStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ADBSysStatusEnum> is deprecated: use perception_interface_msgs-msg:ADBSysStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ADBSysStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ADBSysStatusEnum>)))
    "Constants for message type '<ADBSysStatusEnum>"
  '((:INVALID . 0)
    (:DETECTED_NO_FAULT . 1)
    (:DETECTED_FAULT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ADBSysStatusEnum)))
    "Constants for message type 'ADBSysStatusEnum"
  '((:INVALID . 0)
    (:DETECTED_NO_FAULT . 1)
    (:DETECTED_FAULT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADBSysStatusEnum>) ostream)
  "Serializes a message object of type '<ADBSysStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADBSysStatusEnum>) istream)
  "Deserializes a message object of type '<ADBSysStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADBSysStatusEnum>)))
  "Returns string type for a message object of type '<ADBSysStatusEnum>"
  "perception_interface_msgs/ADBSysStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADBSysStatusEnum)))
  "Returns string type for a message object of type 'ADBSysStatusEnum"
  "perception_interface_msgs/ADBSysStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADBSysStatusEnum>)))
  "Returns md5sum for a message object of type '<ADBSysStatusEnum>"
  "142f51e40111bd7b72c15597fd9a717d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADBSysStatusEnum)))
  "Returns md5sum for a message object of type 'ADBSysStatusEnum"
  "142f51e40111bd7b72c15597fd9a717d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADBSysStatusEnum>)))
  "Returns full string definition for message of type '<ADBSysStatusEnum>"
  (cl:format cl:nil "uint8 INVALID = 0~%uint8 DETECTED_NO_FAULT = 1~%uint8 DETECTED_FAULT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADBSysStatusEnum)))
  "Returns full string definition for message of type 'ADBSysStatusEnum"
  (cl:format cl:nil "uint8 INVALID = 0~%uint8 DETECTED_NO_FAULT = 1~%uint8 DETECTED_FAULT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADBSysStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADBSysStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ADBSysStatusEnum
    (cl:cons ':value (value msg))
))
