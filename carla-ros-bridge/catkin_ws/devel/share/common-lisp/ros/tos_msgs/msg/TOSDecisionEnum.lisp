; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSDecisionEnum.msg.html

(cl:defclass <TOSDecisionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TOSDecisionEnum (<TOSDecisionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSDecisionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSDecisionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSDecisionEnum> is deprecated: use tos_msgs-msg:TOSDecisionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TOSDecisionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:value-val is deprecated.  Use tos_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TOSDecisionEnum>)))
    "Constants for message type '<TOSDecisionEnum>"
  '((:NUDGE . 0)
    (:LEFT_NUDGE . 1)
    (:RIGHT_NUDGE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TOSDecisionEnum)))
    "Constants for message type 'TOSDecisionEnum"
  '((:NUDGE . 0)
    (:LEFT_NUDGE . 1)
    (:RIGHT_NUDGE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSDecisionEnum>) ostream)
  "Serializes a message object of type '<TOSDecisionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSDecisionEnum>) istream)
  "Deserializes a message object of type '<TOSDecisionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSDecisionEnum>)))
  "Returns string type for a message object of type '<TOSDecisionEnum>"
  "tos_msgs/TOSDecisionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSDecisionEnum)))
  "Returns string type for a message object of type 'TOSDecisionEnum"
  "tos_msgs/TOSDecisionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSDecisionEnum>)))
  "Returns md5sum for a message object of type '<TOSDecisionEnum>"
  "ff5a2cc5f5b08c9cb61a89c663b98043")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSDecisionEnum)))
  "Returns md5sum for a message object of type 'TOSDecisionEnum"
  "ff5a2cc5f5b08c9cb61a89c663b98043")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSDecisionEnum>)))
  "Returns full string definition for message of type '<TOSDecisionEnum>"
  (cl:format cl:nil "uint8 NUDGE = 0~%uint8 LEFT_NUDGE = 1~%uint8 RIGHT_NUDGE = 2~%uint8 STOP = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSDecisionEnum)))
  "Returns full string definition for message of type 'TOSDecisionEnum"
  (cl:format cl:nil "uint8 NUDGE = 0~%uint8 LEFT_NUDGE = 1~%uint8 RIGHT_NUDGE = 2~%uint8 STOP = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSDecisionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSDecisionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSDecisionEnum
    (cl:cons ':value (value msg))
))
