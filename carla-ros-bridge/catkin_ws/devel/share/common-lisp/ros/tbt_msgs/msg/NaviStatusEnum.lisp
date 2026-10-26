; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude NaviStatusEnum.msg.html

(cl:defclass <NaviStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NaviStatusEnum (<NaviStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<NaviStatusEnum> is deprecated: use tbt_msgs-msg:NaviStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <NaviStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NaviStatusEnum>)))
    "Constants for message type '<NaviStatusEnum>"
  '((:NAVSTS_0_INVALID . 0)
    (:NAVSTS_1_NAVIGATION . 1)
    (:NAVSTS_2_ROUTING . 2)
    (:NAVSTS_3_CRUISE . 3)
    (:NAVSTS_4_YAW . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NaviStatusEnum)))
    "Constants for message type 'NaviStatusEnum"
  '((:NAVSTS_0_INVALID . 0)
    (:NAVSTS_1_NAVIGATION . 1)
    (:NAVSTS_2_ROUTING . 2)
    (:NAVSTS_3_CRUISE . 3)
    (:NAVSTS_4_YAW . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviStatusEnum>) ostream)
  "Serializes a message object of type '<NaviStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviStatusEnum>) istream)
  "Deserializes a message object of type '<NaviStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviStatusEnum>)))
  "Returns string type for a message object of type '<NaviStatusEnum>"
  "tbt_msgs/NaviStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviStatusEnum)))
  "Returns string type for a message object of type 'NaviStatusEnum"
  "tbt_msgs/NaviStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviStatusEnum>)))
  "Returns md5sum for a message object of type '<NaviStatusEnum>"
  "73362584a1b2cc63689724f52287d253")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviStatusEnum)))
  "Returns md5sum for a message object of type 'NaviStatusEnum"
  "73362584a1b2cc63689724f52287d253")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviStatusEnum>)))
  "Returns full string definition for message of type '<NaviStatusEnum>"
  (cl:format cl:nil "uint8 NavSts_0_invalid = 0~%uint8 NavSts_1_navigation = 1~%uint8 NavSts_2_routing = 2~%uint8 NavSts_3_Cruise = 3~%uint8 NavSts_4_yaw = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviStatusEnum)))
  "Returns full string definition for message of type 'NaviStatusEnum"
  (cl:format cl:nil "uint8 NavSts_0_invalid = 0~%uint8 NavSts_1_navigation = 1~%uint8 NavSts_2_routing = 2~%uint8 NavSts_3_Cruise = 3~%uint8 NavSts_4_yaw = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviStatusEnum
    (cl:cons ':value (value msg))
))
