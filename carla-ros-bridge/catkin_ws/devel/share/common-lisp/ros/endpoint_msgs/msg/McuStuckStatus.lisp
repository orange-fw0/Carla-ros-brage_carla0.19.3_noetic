; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude McuStuckStatus.msg.html

(cl:defclass <McuStuckStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass McuStuckStatus (<McuStuckStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <McuStuckStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'McuStuckStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<McuStuckStatus> is deprecated: use endpoint_msgs-msg:McuStuckStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <McuStuckStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<McuStuckStatus>)))
    "Constants for message type '<McuStuckStatus>"
  '((:NONE . 0)
    (:NO_STUCK . 1)
    (:STUCK . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'McuStuckStatus)))
    "Constants for message type 'McuStuckStatus"
  '((:NONE . 0)
    (:NO_STUCK . 1)
    (:STUCK . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <McuStuckStatus>) ostream)
  "Serializes a message object of type '<McuStuckStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <McuStuckStatus>) istream)
  "Deserializes a message object of type '<McuStuckStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<McuStuckStatus>)))
  "Returns string type for a message object of type '<McuStuckStatus>"
  "endpoint_msgs/McuStuckStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'McuStuckStatus)))
  "Returns string type for a message object of type 'McuStuckStatus"
  "endpoint_msgs/McuStuckStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<McuStuckStatus>)))
  "Returns md5sum for a message object of type '<McuStuckStatus>"
  "aafea29efd76f261c7767c8ae582b8e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'McuStuckStatus)))
  "Returns md5sum for a message object of type 'McuStuckStatus"
  "aafea29efd76f261c7767c8ae582b8e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<McuStuckStatus>)))
  "Returns full string definition for message of type '<McuStuckStatus>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_STUCK = 1~%uint8 STUCK = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'McuStuckStatus)))
  "Returns full string definition for message of type 'McuStuckStatus"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_STUCK = 1~%uint8 STUCK = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <McuStuckStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <McuStuckStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'McuStuckStatus
    (cl:cons ':value (value msg))
))
