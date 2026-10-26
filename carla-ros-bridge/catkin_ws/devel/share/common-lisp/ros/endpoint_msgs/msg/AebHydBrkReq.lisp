; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebHydBrkReq.msg.html

(cl:defclass <AebHydBrkReq> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AebHydBrkReq (<AebHydBrkReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebHydBrkReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebHydBrkReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebHydBrkReq> is deprecated: use endpoint_msgs-msg:AebHydBrkReq instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AebHydBrkReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebHydBrkReq>)))
    "Constants for message type '<AebHydBrkReq>"
  '((:AEB_HYD_BRAKE_NO_REQUEST . 0)
    (:AEB_HYD_BRAKE_LOW_LEVEL . 1)
    (:AEB_HYD_BRAKE_MID_LEVEL . 2)
    (:AEB_HYD_BRAKE_HIGH_LEVEL . 3)
    (:AEB_HYD_BRAKE_RESERVED1 . 4)
    (:AEB_HYD_BRAKE_RESERVED2 . 5)
    (:AEB_HYD_BRAKE_RESERVED3 . 6)
    (:AEB_HYD_BRAKE_RESERVED4 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebHydBrkReq)))
    "Constants for message type 'AebHydBrkReq"
  '((:AEB_HYD_BRAKE_NO_REQUEST . 0)
    (:AEB_HYD_BRAKE_LOW_LEVEL . 1)
    (:AEB_HYD_BRAKE_MID_LEVEL . 2)
    (:AEB_HYD_BRAKE_HIGH_LEVEL . 3)
    (:AEB_HYD_BRAKE_RESERVED1 . 4)
    (:AEB_HYD_BRAKE_RESERVED2 . 5)
    (:AEB_HYD_BRAKE_RESERVED3 . 6)
    (:AEB_HYD_BRAKE_RESERVED4 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebHydBrkReq>) ostream)
  "Serializes a message object of type '<AebHydBrkReq>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebHydBrkReq>) istream)
  "Deserializes a message object of type '<AebHydBrkReq>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebHydBrkReq>)))
  "Returns string type for a message object of type '<AebHydBrkReq>"
  "endpoint_msgs/AebHydBrkReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebHydBrkReq)))
  "Returns string type for a message object of type 'AebHydBrkReq"
  "endpoint_msgs/AebHydBrkReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebHydBrkReq>)))
  "Returns md5sum for a message object of type '<AebHydBrkReq>"
  "ab03608fca289fb04b40ea80ad585776")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebHydBrkReq)))
  "Returns md5sum for a message object of type 'AebHydBrkReq"
  "ab03608fca289fb04b40ea80ad585776")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebHydBrkReq>)))
  "Returns full string definition for message of type '<AebHydBrkReq>"
  (cl:format cl:nil "uint8 AEB_HYD_BRAKE_NO_REQUEST = 0~%uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1~%uint8 AEB_HYD_BRAKE_MID_LEVEL = 2~%uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3~%uint8 AEB_HYD_BRAKE_RESERVED1 = 4~%uint8 AEB_HYD_BRAKE_RESERVED2 = 5~%uint8 AEB_HYD_BRAKE_RESERVED3 = 6~%uint8 AEB_HYD_BRAKE_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebHydBrkReq)))
  "Returns full string definition for message of type 'AebHydBrkReq"
  (cl:format cl:nil "uint8 AEB_HYD_BRAKE_NO_REQUEST = 0~%uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1~%uint8 AEB_HYD_BRAKE_MID_LEVEL = 2~%uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3~%uint8 AEB_HYD_BRAKE_RESERVED1 = 4~%uint8 AEB_HYD_BRAKE_RESERVED2 = 5~%uint8 AEB_HYD_BRAKE_RESERVED3 = 6~%uint8 AEB_HYD_BRAKE_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebHydBrkReq>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebHydBrkReq>))
  "Converts a ROS message object to a list"
  (cl:list 'AebHydBrkReq
    (cl:cons ':value (value msg))
))
