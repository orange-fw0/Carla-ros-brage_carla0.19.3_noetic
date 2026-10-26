; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude McuStandstillStatus.msg.html

(cl:defclass <McuStandstillStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass McuStandstillStatus (<McuStandstillStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <McuStandstillStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'McuStandstillStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<McuStandstillStatus> is deprecated: use endpoint_msgs-msg:McuStandstillStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <McuStandstillStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<McuStandstillStatus>)))
    "Constants for message type '<McuStandstillStatus>"
  '((:NONE . 0)
    (:NO_STANDSTILL . 1)
    (:STANDSTILL . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'McuStandstillStatus)))
    "Constants for message type 'McuStandstillStatus"
  '((:NONE . 0)
    (:NO_STANDSTILL . 1)
    (:STANDSTILL . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <McuStandstillStatus>) ostream)
  "Serializes a message object of type '<McuStandstillStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <McuStandstillStatus>) istream)
  "Deserializes a message object of type '<McuStandstillStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<McuStandstillStatus>)))
  "Returns string type for a message object of type '<McuStandstillStatus>"
  "endpoint_msgs/McuStandstillStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'McuStandstillStatus)))
  "Returns string type for a message object of type 'McuStandstillStatus"
  "endpoint_msgs/McuStandstillStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<McuStandstillStatus>)))
  "Returns md5sum for a message object of type '<McuStandstillStatus>"
  "4858e6049a760bb4bda6347326ce6944")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'McuStandstillStatus)))
  "Returns md5sum for a message object of type 'McuStandstillStatus"
  "4858e6049a760bb4bda6347326ce6944")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<McuStandstillStatus>)))
  "Returns full string definition for message of type '<McuStandstillStatus>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_STANDSTILL = 1~%uint8 STANDSTILL = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'McuStandstillStatus)))
  "Returns full string definition for message of type 'McuStandstillStatus"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_STANDSTILL = 1~%uint8 STANDSTILL = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <McuStandstillStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <McuStandstillStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'McuStandstillStatus
    (cl:cons ':value (value msg))
))
