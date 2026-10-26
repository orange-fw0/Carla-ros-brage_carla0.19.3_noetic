; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude CalibrationType.msg.html

(cl:defclass <CalibrationType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CalibrationType (<CalibrationType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<CalibrationType> is deprecated: use endpoint_msgs-msg:CalibrationType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CalibrationType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CalibrationType>)))
    "Constants for message type '<CalibrationType>"
  '((:NONE . 0)
    (:CALIBRATION . 1)
    (:NOT_CALIBRATION . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CalibrationType)))
    "Constants for message type 'CalibrationType"
  '((:NONE . 0)
    (:CALIBRATION . 1)
    (:NOT_CALIBRATION . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationType>) ostream)
  "Serializes a message object of type '<CalibrationType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationType>) istream)
  "Deserializes a message object of type '<CalibrationType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationType>)))
  "Returns string type for a message object of type '<CalibrationType>"
  "endpoint_msgs/CalibrationType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationType)))
  "Returns string type for a message object of type 'CalibrationType"
  "endpoint_msgs/CalibrationType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationType>)))
  "Returns md5sum for a message object of type '<CalibrationType>"
  "181281af0f979b730cd6562d994e5fd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationType)))
  "Returns md5sum for a message object of type 'CalibrationType"
  "181281af0f979b730cd6562d994e5fd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationType>)))
  "Returns full string definition for message of type '<CalibrationType>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 CALIBRATION = 1~%uint8 NOT_CALIBRATION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationType)))
  "Returns full string definition for message of type 'CalibrationType"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 CALIBRATION = 1~%uint8 NOT_CALIBRATION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationType>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationType
    (cl:cons ':value (value msg))
))
