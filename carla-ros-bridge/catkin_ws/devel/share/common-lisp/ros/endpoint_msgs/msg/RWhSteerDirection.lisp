; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude RWhSteerDirection.msg.html

(cl:defclass <RWhSteerDirection> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RWhSteerDirection (<RWhSteerDirection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RWhSteerDirection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RWhSteerDirection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<RWhSteerDirection> is deprecated: use endpoint_msgs-msg:RWhSteerDirection instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RWhSteerDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RWhSteerDirection>)))
    "Constants for message type '<RWhSteerDirection>"
  '((:NONE . 0)
    (:SAME_DIRECTION . 1)
    (:OPPOSITE_DIRECTION . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RWhSteerDirection)))
    "Constants for message type 'RWhSteerDirection"
  '((:NONE . 0)
    (:SAME_DIRECTION . 1)
    (:OPPOSITE_DIRECTION . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RWhSteerDirection>) ostream)
  "Serializes a message object of type '<RWhSteerDirection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RWhSteerDirection>) istream)
  "Deserializes a message object of type '<RWhSteerDirection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RWhSteerDirection>)))
  "Returns string type for a message object of type '<RWhSteerDirection>"
  "endpoint_msgs/RWhSteerDirection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RWhSteerDirection)))
  "Returns string type for a message object of type 'RWhSteerDirection"
  "endpoint_msgs/RWhSteerDirection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RWhSteerDirection>)))
  "Returns md5sum for a message object of type '<RWhSteerDirection>"
  "9362cea1c7a28196ed1e732ab0611b01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RWhSteerDirection)))
  "Returns md5sum for a message object of type 'RWhSteerDirection"
  "9362cea1c7a28196ed1e732ab0611b01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RWhSteerDirection>)))
  "Returns full string definition for message of type '<RWhSteerDirection>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RWhSteerDirection)))
  "Returns full string definition for message of type 'RWhSteerDirection"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RWhSteerDirection>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RWhSteerDirection>))
  "Converts a ROS message object to a list"
  (cl:list 'RWhSteerDirection
    (cl:cons ':value (value msg))
))
