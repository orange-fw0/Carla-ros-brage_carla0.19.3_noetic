; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeControlType.msg.html

(cl:defclass <BrakeControlType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeControlType (<BrakeControlType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeControlType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeControlType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeControlType> is deprecated: use endpoint_msgs-msg:BrakeControlType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BrakeControlType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeControlType>)))
    "Constants for message type '<BrakeControlType>"
  '((:NORMAL . 1)
    (:EMERGENT . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeControlType)))
    "Constants for message type 'BrakeControlType"
  '((:NORMAL . 1)
    (:EMERGENT . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeControlType>) ostream)
  "Serializes a message object of type '<BrakeControlType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeControlType>) istream)
  "Deserializes a message object of type '<BrakeControlType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeControlType>)))
  "Returns string type for a message object of type '<BrakeControlType>"
  "endpoint_msgs/BrakeControlType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeControlType)))
  "Returns string type for a message object of type 'BrakeControlType"
  "endpoint_msgs/BrakeControlType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeControlType>)))
  "Returns md5sum for a message object of type '<BrakeControlType>"
  "f6ed86407baed054a1493d239959352c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeControlType)))
  "Returns md5sum for a message object of type 'BrakeControlType"
  "f6ed86407baed054a1493d239959352c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeControlType>)))
  "Returns full string definition for message of type '<BrakeControlType>"
  (cl:format cl:nil "uint8 NORMAL = 1~%uint8 EMERGENT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeControlType)))
  "Returns full string definition for message of type 'BrakeControlType"
  (cl:format cl:nil "uint8 NORMAL = 1~%uint8 EMERGENT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeControlType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeControlType>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeControlType
    (cl:cons ':value (value msg))
))
