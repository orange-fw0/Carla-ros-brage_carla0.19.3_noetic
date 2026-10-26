; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude RWhSteerModType.msg.html

(cl:defclass <RWhSteerModType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RWhSteerModType (<RWhSteerModType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RWhSteerModType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RWhSteerModType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<RWhSteerModType> is deprecated: use endpoint_msgs-msg:RWhSteerModType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RWhSteerModType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RWhSteerModType>)))
    "Constants for message type '<RWhSteerModType>"
  '((:NO_REQUEST . 0)
    (:CONTROL_REQUEST . 1)
    (:LOCK_REQUEST . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RWhSteerModType)))
    "Constants for message type 'RWhSteerModType"
  '((:NO_REQUEST . 0)
    (:CONTROL_REQUEST . 1)
    (:LOCK_REQUEST . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RWhSteerModType>) ostream)
  "Serializes a message object of type '<RWhSteerModType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RWhSteerModType>) istream)
  "Deserializes a message object of type '<RWhSteerModType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RWhSteerModType>)))
  "Returns string type for a message object of type '<RWhSteerModType>"
  "endpoint_msgs/RWhSteerModType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RWhSteerModType)))
  "Returns string type for a message object of type 'RWhSteerModType"
  "endpoint_msgs/RWhSteerModType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RWhSteerModType>)))
  "Returns md5sum for a message object of type '<RWhSteerModType>"
  "5d3c7dd4d5b3fd4b837e05d67fe9d0ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RWhSteerModType)))
  "Returns md5sum for a message object of type 'RWhSteerModType"
  "5d3c7dd4d5b3fd4b837e05d67fe9d0ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RWhSteerModType>)))
  "Returns full string definition for message of type '<RWhSteerModType>"
  (cl:format cl:nil "uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RWhSteerModType)))
  "Returns full string definition for message of type 'RWhSteerModType"
  (cl:format cl:nil "uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RWhSteerModType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RWhSteerModType>))
  "Converts a ROS message object to a list"
  (cl:list 'RWhSteerModType
    (cl:cons ':value (value msg))
))
