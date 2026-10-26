; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AccStandstillType.msg.html

(cl:defclass <AccStandstillType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AccStandstillType (<AccStandstillType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccStandstillType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccStandstillType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AccStandstillType> is deprecated: use endpoint_msgs-msg:AccStandstillType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AccStandstillType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AccStandstillType>)))
    "Constants for message type '<AccStandstillType>"
  '((:NO_REQUEST . 0)
    (:REQUEST . 1)
    (:REMIND_DRIVE_GO . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AccStandstillType)))
    "Constants for message type 'AccStandstillType"
  '((:NO_REQUEST . 0)
    (:REQUEST . 1)
    (:REMIND_DRIVE_GO . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccStandstillType>) ostream)
  "Serializes a message object of type '<AccStandstillType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccStandstillType>) istream)
  "Deserializes a message object of type '<AccStandstillType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccStandstillType>)))
  "Returns string type for a message object of type '<AccStandstillType>"
  "endpoint_msgs/AccStandstillType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccStandstillType)))
  "Returns string type for a message object of type 'AccStandstillType"
  "endpoint_msgs/AccStandstillType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccStandstillType>)))
  "Returns md5sum for a message object of type '<AccStandstillType>"
  "8fd341606e712e500fc9e17ec3f256ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccStandstillType)))
  "Returns md5sum for a message object of type 'AccStandstillType"
  "8fd341606e712e500fc9e17ec3f256ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccStandstillType>)))
  "Returns full string definition for message of type '<AccStandstillType>"
  (cl:format cl:nil "uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 REMIND_DRIVE_GO = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccStandstillType)))
  "Returns full string definition for message of type 'AccStandstillType"
  (cl:format cl:nil "uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 REMIND_DRIVE_GO = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccStandstillType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccStandstillType>))
  "Converts a ROS message object to a list"
  (cl:list 'AccStandstillType
    (cl:cons ':value (value msg))
))
