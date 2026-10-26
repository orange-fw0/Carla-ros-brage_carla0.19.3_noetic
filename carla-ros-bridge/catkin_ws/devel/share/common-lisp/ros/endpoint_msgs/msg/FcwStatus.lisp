; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude FcwStatus.msg.html

(cl:defclass <FcwStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FcwStatus (<FcwStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FcwStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FcwStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<FcwStatus> is deprecated: use endpoint_msgs-msg:FcwStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FcwStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FcwStatus>)))
    "Constants for message type '<FcwStatus>"
  '((:OFF . 0)
    (:STANDBY . 1)
    (:DISABLE . 2)
    (:OVERRIDE . 3)
    (:ACTIVED . 4)
    (:RESERVED1 . 5)
    (:RESERVED2 . 6)
    (:RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FcwStatus)))
    "Constants for message type 'FcwStatus"
  '((:OFF . 0)
    (:STANDBY . 1)
    (:DISABLE . 2)
    (:OVERRIDE . 3)
    (:ACTIVED . 4)
    (:RESERVED1 . 5)
    (:RESERVED2 . 6)
    (:RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FcwStatus>) ostream)
  "Serializes a message object of type '<FcwStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FcwStatus>) istream)
  "Deserializes a message object of type '<FcwStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FcwStatus>)))
  "Returns string type for a message object of type '<FcwStatus>"
  "endpoint_msgs/FcwStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FcwStatus)))
  "Returns string type for a message object of type 'FcwStatus"
  "endpoint_msgs/FcwStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FcwStatus>)))
  "Returns md5sum for a message object of type '<FcwStatus>"
  "95ccefc16af692ba0ffc1cbf1ad938d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FcwStatus)))
  "Returns md5sum for a message object of type 'FcwStatus"
  "95ccefc16af692ba0ffc1cbf1ad938d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FcwStatus>)))
  "Returns full string definition for message of type '<FcwStatus>"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FcwStatus)))
  "Returns full string definition for message of type 'FcwStatus"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FcwStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FcwStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FcwStatus
    (cl:cons ':value (value msg))
))
