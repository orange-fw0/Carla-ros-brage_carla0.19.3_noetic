; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude DrivingStyleEnum.msg.html

(cl:defclass <DrivingStyleEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DrivingStyleEnum (<DrivingStyleEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrivingStyleEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrivingStyleEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<DrivingStyleEnum> is deprecated: use system_manager_msgs-msg:DrivingStyleEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DrivingStyleEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DrivingStyleEnum>)))
    "Constants for message type '<DrivingStyleEnum>"
  '((:AGGRESIVE . 0)
    (:NORMAL . 1)
    (:CONSERVATIVE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DrivingStyleEnum)))
    "Constants for message type 'DrivingStyleEnum"
  '((:AGGRESIVE . 0)
    (:NORMAL . 1)
    (:CONSERVATIVE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrivingStyleEnum>) ostream)
  "Serializes a message object of type '<DrivingStyleEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrivingStyleEnum>) istream)
  "Deserializes a message object of type '<DrivingStyleEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrivingStyleEnum>)))
  "Returns string type for a message object of type '<DrivingStyleEnum>"
  "system_manager_msgs/DrivingStyleEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrivingStyleEnum)))
  "Returns string type for a message object of type 'DrivingStyleEnum"
  "system_manager_msgs/DrivingStyleEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrivingStyleEnum>)))
  "Returns md5sum for a message object of type '<DrivingStyleEnum>"
  "db269ba7ec5c332ad7424f9302256ce3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrivingStyleEnum)))
  "Returns md5sum for a message object of type 'DrivingStyleEnum"
  "db269ba7ec5c332ad7424f9302256ce3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrivingStyleEnum>)))
  "Returns full string definition for message of type '<DrivingStyleEnum>"
  (cl:format cl:nil "uint8 AGGRESIVE = 0~%uint8 NORMAL = 1~%uint8 CONSERVATIVE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrivingStyleEnum)))
  "Returns full string definition for message of type 'DrivingStyleEnum"
  (cl:format cl:nil "uint8 AGGRESIVE = 0~%uint8 NORMAL = 1~%uint8 CONSERVATIVE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrivingStyleEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrivingStyleEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DrivingStyleEnum
    (cl:cons ':value (value msg))
))
