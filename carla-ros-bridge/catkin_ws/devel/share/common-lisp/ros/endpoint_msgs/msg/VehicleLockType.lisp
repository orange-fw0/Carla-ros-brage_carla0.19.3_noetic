; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleLockType.msg.html

(cl:defclass <VehicleLockType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleLockType (<VehicleLockType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLockType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLockType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleLockType> is deprecated: use endpoint_msgs-msg:VehicleLockType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleLockType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleLockType>)))
    "Constants for message type '<VehicleLockType>"
  '((:NONE . 0)
    (:UNLOCK . 1)
    (:LOCK . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleLockType)))
    "Constants for message type 'VehicleLockType"
  '((:NONE . 0)
    (:UNLOCK . 1)
    (:LOCK . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLockType>) ostream)
  "Serializes a message object of type '<VehicleLockType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLockType>) istream)
  "Deserializes a message object of type '<VehicleLockType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLockType>)))
  "Returns string type for a message object of type '<VehicleLockType>"
  "endpoint_msgs/VehicleLockType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLockType)))
  "Returns string type for a message object of type 'VehicleLockType"
  "endpoint_msgs/VehicleLockType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLockType>)))
  "Returns md5sum for a message object of type '<VehicleLockType>"
  "180c65ece6169aaf9e77a22ae1e42eed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLockType)))
  "Returns md5sum for a message object of type 'VehicleLockType"
  "180c65ece6169aaf9e77a22ae1e42eed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLockType>)))
  "Returns full string definition for message of type '<VehicleLockType>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLockType)))
  "Returns full string definition for message of type 'VehicleLockType"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLockType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLockType>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLockType
    (cl:cons ':value (value msg))
))
