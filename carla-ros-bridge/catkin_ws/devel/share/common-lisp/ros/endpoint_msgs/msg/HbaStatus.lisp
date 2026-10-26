; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HbaStatus.msg.html

(cl:defclass <HbaStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HbaStatus (<HbaStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HbaStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HbaStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HbaStatus> is deprecated: use endpoint_msgs-msg:HbaStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HbaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HbaStatus>)))
    "Constants for message type '<HbaStatus>"
  '((:AEB_HBA_NO_REQUEST . 0)
    (:AEB_HBA_REQUEST_HONORED . 1)
    (:AEB_HBA_REQUEST_LOST_ARBITRATION . 2)
    (:AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR . 3)
    (:AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED . 4)
    (:AEB_HBA_REQUEST_RESERVED1 . 5)
    (:AEB_HBA_REQUEST_RESERVED2 . 6)
    (:AEB_HBA_REQUEST_RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HbaStatus)))
    "Constants for message type 'HbaStatus"
  '((:AEB_HBA_NO_REQUEST . 0)
    (:AEB_HBA_REQUEST_HONORED . 1)
    (:AEB_HBA_REQUEST_LOST_ARBITRATION . 2)
    (:AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR . 3)
    (:AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED . 4)
    (:AEB_HBA_REQUEST_RESERVED1 . 5)
    (:AEB_HBA_REQUEST_RESERVED2 . 6)
    (:AEB_HBA_REQUEST_RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HbaStatus>) ostream)
  "Serializes a message object of type '<HbaStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HbaStatus>) istream)
  "Deserializes a message object of type '<HbaStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HbaStatus>)))
  "Returns string type for a message object of type '<HbaStatus>"
  "endpoint_msgs/HbaStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HbaStatus)))
  "Returns string type for a message object of type 'HbaStatus"
  "endpoint_msgs/HbaStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HbaStatus>)))
  "Returns md5sum for a message object of type '<HbaStatus>"
  "1156ea4e065cd9ec024080388a2b035e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HbaStatus)))
  "Returns md5sum for a message object of type 'HbaStatus"
  "1156ea4e065cd9ec024080388a2b035e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HbaStatus>)))
  "Returns full string definition for message of type '<HbaStatus>"
  (cl:format cl:nil "uint8 AEB_HBA_NO_REQUEST = 0~%uint8 AEB_HBA_REQUEST_HONORED = 1~%uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_HBA_REQUEST_RESERVED1 = 5~%uint8 AEB_HBA_REQUEST_RESERVED2 = 6~%uint8 AEB_HBA_REQUEST_RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HbaStatus)))
  "Returns full string definition for message of type 'HbaStatus"
  (cl:format cl:nil "uint8 AEB_HBA_NO_REQUEST = 0~%uint8 AEB_HBA_REQUEST_HONORED = 1~%uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_HBA_REQUEST_RESERVED1 = 5~%uint8 AEB_HBA_REQUEST_RESERVED2 = 6~%uint8 AEB_HBA_REQUEST_RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HbaStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HbaStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HbaStatus
    (cl:cons ':value (value msg))
))
