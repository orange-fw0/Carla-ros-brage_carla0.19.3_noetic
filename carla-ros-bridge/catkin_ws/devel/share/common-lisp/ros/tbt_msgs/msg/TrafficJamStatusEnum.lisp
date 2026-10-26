; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude TrafficJamStatusEnum.msg.html

(cl:defclass <TrafficJamStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficJamStatusEnum (<TrafficJamStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficJamStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficJamStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<TrafficJamStatusEnum> is deprecated: use tbt_msgs-msg:TrafficJamStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficJamStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficJamStatusEnum>)))
    "Constants for message type '<TrafficJamStatusEnum>"
  '((:UNKWON . 0)
    (:TRAFSTSFAST . 1)
    (:TRAFSTSSLOW . 2)
    (:TRAFSTSJAMED . 3)
    (:TRAFSTSJAMEDBAD . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficJamStatusEnum)))
    "Constants for message type 'TrafficJamStatusEnum"
  '((:UNKWON . 0)
    (:TRAFSTSFAST . 1)
    (:TRAFSTSSLOW . 2)
    (:TRAFSTSJAMED . 3)
    (:TRAFSTSJAMEDBAD . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficJamStatusEnum>) ostream)
  "Serializes a message object of type '<TrafficJamStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficJamStatusEnum>) istream)
  "Deserializes a message object of type '<TrafficJamStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficJamStatusEnum>)))
  "Returns string type for a message object of type '<TrafficJamStatusEnum>"
  "tbt_msgs/TrafficJamStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficJamStatusEnum)))
  "Returns string type for a message object of type 'TrafficJamStatusEnum"
  "tbt_msgs/TrafficJamStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficJamStatusEnum>)))
  "Returns md5sum for a message object of type '<TrafficJamStatusEnum>"
  "e75152fab0aede52221784c6c9cfbf4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficJamStatusEnum)))
  "Returns md5sum for a message object of type 'TrafficJamStatusEnum"
  "e75152fab0aede52221784c6c9cfbf4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficJamStatusEnum>)))
  "Returns full string definition for message of type '<TrafficJamStatusEnum>"
  (cl:format cl:nil "uint8 Unkwon = 0~%uint8 TrafStsFast = 1~%uint8 TrafStsSlow = 2~%uint8 TrafStsJamed = 3~%uint8 TrafStsJamedBad = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficJamStatusEnum)))
  "Returns full string definition for message of type 'TrafficJamStatusEnum"
  (cl:format cl:nil "uint8 Unkwon = 0~%uint8 TrafStsFast = 1~%uint8 TrafStsSlow = 2~%uint8 TrafStsJamed = 3~%uint8 TrafStsJamedBad = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficJamStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficJamStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficJamStatusEnum
    (cl:cons ':value (value msg))
))
