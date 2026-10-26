; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude LeverType.msg.html

(cl:defclass <LeverType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LeverType (<LeverType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeverType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeverType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<LeverType> is deprecated: use endpoint_msgs-msg:LeverType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LeverType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LeverType>)))
    "Constants for message type '<LeverType>"
  '((:LEVER_TYPE_MECHANICAL . 0)
    (:LEVER_TYPE_ELECTRONIC . 1)
    (:LEVER_STATE_RESERVED1 . 2)
    (:LEVER_STATE_RESERVED2 . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LeverType)))
    "Constants for message type 'LeverType"
  '((:LEVER_TYPE_MECHANICAL . 0)
    (:LEVER_TYPE_ELECTRONIC . 1)
    (:LEVER_STATE_RESERVED1 . 2)
    (:LEVER_STATE_RESERVED2 . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeverType>) ostream)
  "Serializes a message object of type '<LeverType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeverType>) istream)
  "Deserializes a message object of type '<LeverType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeverType>)))
  "Returns string type for a message object of type '<LeverType>"
  "endpoint_msgs/LeverType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeverType)))
  "Returns string type for a message object of type 'LeverType"
  "endpoint_msgs/LeverType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeverType>)))
  "Returns md5sum for a message object of type '<LeverType>"
  "1e1077c08eba8a42fc300f02b5d703fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeverType)))
  "Returns md5sum for a message object of type 'LeverType"
  "1e1077c08eba8a42fc300f02b5d703fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeverType>)))
  "Returns full string definition for message of type '<LeverType>"
  (cl:format cl:nil "uint8 LEVER_TYPE_MECHANICAL = 0~%uint8 LEVER_TYPE_ELECTRONIC = 1~%uint8 LEVER_STATE_RESERVED1 = 2~%uint8 LEVER_STATE_RESERVED2 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeverType)))
  "Returns full string definition for message of type 'LeverType"
  (cl:format cl:nil "uint8 LEVER_TYPE_MECHANICAL = 0~%uint8 LEVER_TYPE_ELECTRONIC = 1~%uint8 LEVER_STATE_RESERVED1 = 2~%uint8 LEVER_STATE_RESERVED2 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeverType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeverType>))
  "Converts a ROS message object to a list"
  (cl:list 'LeverType
    (cl:cons ':value (value msg))
))
