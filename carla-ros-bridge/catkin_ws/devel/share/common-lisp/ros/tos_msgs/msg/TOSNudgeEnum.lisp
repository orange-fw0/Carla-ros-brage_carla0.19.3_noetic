; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSNudgeEnum.msg.html

(cl:defclass <TOSNudgeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TOSNudgeEnum (<TOSNudgeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSNudgeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSNudgeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSNudgeEnum> is deprecated: use tos_msgs-msg:TOSNudgeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TOSNudgeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:value-val is deprecated.  Use tos_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TOSNudgeEnum>)))
    "Constants for message type '<TOSNudgeEnum>"
  '((:NONE . 0)
    (:LEFT . 1)
    (:RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TOSNudgeEnum)))
    "Constants for message type 'TOSNudgeEnum"
  '((:NONE . 0)
    (:LEFT . 1)
    (:RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSNudgeEnum>) ostream)
  "Serializes a message object of type '<TOSNudgeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSNudgeEnum>) istream)
  "Deserializes a message object of type '<TOSNudgeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSNudgeEnum>)))
  "Returns string type for a message object of type '<TOSNudgeEnum>"
  "tos_msgs/TOSNudgeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSNudgeEnum)))
  "Returns string type for a message object of type 'TOSNudgeEnum"
  "tos_msgs/TOSNudgeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSNudgeEnum>)))
  "Returns md5sum for a message object of type '<TOSNudgeEnum>"
  "52e47837caa6386d671c442331ecc1cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSNudgeEnum)))
  "Returns md5sum for a message object of type 'TOSNudgeEnum"
  "52e47837caa6386d671c442331ecc1cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSNudgeEnum>)))
  "Returns full string definition for message of type '<TOSNudgeEnum>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSNudgeEnum)))
  "Returns full string definition for message of type 'TOSNudgeEnum"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSNudgeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSNudgeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSNudgeEnum
    (cl:cons ':value (value msg))
))
