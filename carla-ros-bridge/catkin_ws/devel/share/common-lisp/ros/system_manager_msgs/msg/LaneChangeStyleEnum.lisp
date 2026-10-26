; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LaneChangeStyleEnum.msg.html

(cl:defclass <LaneChangeStyleEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneChangeStyleEnum (<LaneChangeStyleEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneChangeStyleEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneChangeStyleEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LaneChangeStyleEnum> is deprecated: use system_manager_msgs-msg:LaneChangeStyleEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneChangeStyleEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneChangeStyleEnum>)))
    "Constants for message type '<LaneChangeStyleEnum>"
  '((:AGGRESIVE . 0)
    (:NORMAL . 1)
    (:CONSERVATIVE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneChangeStyleEnum)))
    "Constants for message type 'LaneChangeStyleEnum"
  '((:AGGRESIVE . 0)
    (:NORMAL . 1)
    (:CONSERVATIVE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneChangeStyleEnum>) ostream)
  "Serializes a message object of type '<LaneChangeStyleEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneChangeStyleEnum>) istream)
  "Deserializes a message object of type '<LaneChangeStyleEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneChangeStyleEnum>)))
  "Returns string type for a message object of type '<LaneChangeStyleEnum>"
  "system_manager_msgs/LaneChangeStyleEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneChangeStyleEnum)))
  "Returns string type for a message object of type 'LaneChangeStyleEnum"
  "system_manager_msgs/LaneChangeStyleEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneChangeStyleEnum>)))
  "Returns md5sum for a message object of type '<LaneChangeStyleEnum>"
  "db269ba7ec5c332ad7424f9302256ce3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneChangeStyleEnum)))
  "Returns md5sum for a message object of type 'LaneChangeStyleEnum"
  "db269ba7ec5c332ad7424f9302256ce3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneChangeStyleEnum>)))
  "Returns full string definition for message of type '<LaneChangeStyleEnum>"
  (cl:format cl:nil "uint8 AGGRESIVE = 0~%uint8 NORMAL = 1~%uint8 CONSERVATIVE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneChangeStyleEnum)))
  "Returns full string definition for message of type 'LaneChangeStyleEnum"
  (cl:format cl:nil "uint8 AGGRESIVE = 0~%uint8 NORMAL = 1~%uint8 CONSERVATIVE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneChangeStyleEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneChangeStyleEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneChangeStyleEnum
    (cl:cons ':value (value msg))
))
