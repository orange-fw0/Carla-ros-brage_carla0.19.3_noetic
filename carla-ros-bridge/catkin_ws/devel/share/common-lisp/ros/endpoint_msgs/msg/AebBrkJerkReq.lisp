; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebBrkJerkReq.msg.html

(cl:defclass <AebBrkJerkReq> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AebBrkJerkReq (<AebBrkJerkReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebBrkJerkReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebBrkJerkReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebBrkJerkReq> is deprecated: use endpoint_msgs-msg:AebBrkJerkReq instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AebBrkJerkReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebBrkJerkReq>)))
    "Constants for message type '<AebBrkJerkReq>"
  '((:AEB_BRAKE_JERK_NO_REQUEST . 0)
    (:AEB_BRAKE_JERK_LOW_LEVEL . 1)
    (:AEB_BRAKE_JERK_MID_LEVEL . 2)
    (:AEB_BRAKE_JERK_HIGH_LEVEL . 3)
    (:AEV_BRAKE_JERK_RESERVED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebBrkJerkReq)))
    "Constants for message type 'AebBrkJerkReq"
  '((:AEB_BRAKE_JERK_NO_REQUEST . 0)
    (:AEB_BRAKE_JERK_LOW_LEVEL . 1)
    (:AEB_BRAKE_JERK_MID_LEVEL . 2)
    (:AEB_BRAKE_JERK_HIGH_LEVEL . 3)
    (:AEV_BRAKE_JERK_RESERVED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebBrkJerkReq>) ostream)
  "Serializes a message object of type '<AebBrkJerkReq>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebBrkJerkReq>) istream)
  "Deserializes a message object of type '<AebBrkJerkReq>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebBrkJerkReq>)))
  "Returns string type for a message object of type '<AebBrkJerkReq>"
  "endpoint_msgs/AebBrkJerkReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebBrkJerkReq)))
  "Returns string type for a message object of type 'AebBrkJerkReq"
  "endpoint_msgs/AebBrkJerkReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebBrkJerkReq>)))
  "Returns md5sum for a message object of type '<AebBrkJerkReq>"
  "2f9c194e334d31e7822a9ca9ae26e348")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebBrkJerkReq)))
  "Returns md5sum for a message object of type 'AebBrkJerkReq"
  "2f9c194e334d31e7822a9ca9ae26e348")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebBrkJerkReq>)))
  "Returns full string definition for message of type '<AebBrkJerkReq>"
  (cl:format cl:nil "uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1~%uint8 AEB_BRAKE_JERK_MID_LEVEL = 2~%uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3~%uint8 AEV_BRAKE_JERK_RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebBrkJerkReq)))
  "Returns full string definition for message of type 'AebBrkJerkReq"
  (cl:format cl:nil "uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1~%uint8 AEB_BRAKE_JERK_MID_LEVEL = 2~%uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3~%uint8 AEV_BRAKE_JERK_RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebBrkJerkReq>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebBrkJerkReq>))
  "Converts a ROS message object to a list"
  (cl:list 'AebBrkJerkReq
    (cl:cons ':value (value msg))
))
