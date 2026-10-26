; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSResponseDecisionEnum.msg.html

(cl:defclass <TOSResponseDecisionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TOSResponseDecisionEnum (<TOSResponseDecisionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSResponseDecisionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSResponseDecisionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSResponseDecisionEnum> is deprecated: use tos_msgs-msg:TOSResponseDecisionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TOSResponseDecisionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:value-val is deprecated.  Use tos_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TOSResponseDecisionEnum>)))
    "Constants for message type '<TOSResponseDecisionEnum>"
  '((:UNKNOWN . 0)
    (:YES . 1)
    (:NO . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TOSResponseDecisionEnum)))
    "Constants for message type 'TOSResponseDecisionEnum"
  '((:UNKNOWN . 0)
    (:YES . 1)
    (:NO . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSResponseDecisionEnum>) ostream)
  "Serializes a message object of type '<TOSResponseDecisionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSResponseDecisionEnum>) istream)
  "Deserializes a message object of type '<TOSResponseDecisionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSResponseDecisionEnum>)))
  "Returns string type for a message object of type '<TOSResponseDecisionEnum>"
  "tos_msgs/TOSResponseDecisionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSResponseDecisionEnum)))
  "Returns string type for a message object of type 'TOSResponseDecisionEnum"
  "tos_msgs/TOSResponseDecisionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSResponseDecisionEnum>)))
  "Returns md5sum for a message object of type '<TOSResponseDecisionEnum>"
  "11c04b1c44a22a3df004b38f5a932cbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSResponseDecisionEnum)))
  "Returns md5sum for a message object of type 'TOSResponseDecisionEnum"
  "11c04b1c44a22a3df004b38f5a932cbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSResponseDecisionEnum>)))
  "Returns full string definition for message of type '<TOSResponseDecisionEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 YES = 1~%uint8 NO = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSResponseDecisionEnum)))
  "Returns full string definition for message of type 'TOSResponseDecisionEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 YES = 1~%uint8 NO = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSResponseDecisionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSResponseDecisionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSResponseDecisionEnum
    (cl:cons ':value (value msg))
))
