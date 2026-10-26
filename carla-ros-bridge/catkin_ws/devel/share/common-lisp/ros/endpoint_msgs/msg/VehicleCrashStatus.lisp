; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleCrashStatus.msg.html

(cl:defclass <VehicleCrashStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleCrashStatus (<VehicleCrashStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCrashStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCrashStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleCrashStatus> is deprecated: use endpoint_msgs-msg:VehicleCrashStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleCrashStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleCrashStatus>)))
    "Constants for message type '<VehicleCrashStatus>"
  '((:NONE . 0)
    (:NO_CRASH . 1)
    (:CRASH . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleCrashStatus)))
    "Constants for message type 'VehicleCrashStatus"
  '((:NONE . 0)
    (:NO_CRASH . 1)
    (:CRASH . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCrashStatus>) ostream)
  "Serializes a message object of type '<VehicleCrashStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCrashStatus>) istream)
  "Deserializes a message object of type '<VehicleCrashStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCrashStatus>)))
  "Returns string type for a message object of type '<VehicleCrashStatus>"
  "endpoint_msgs/VehicleCrashStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCrashStatus)))
  "Returns string type for a message object of type 'VehicleCrashStatus"
  "endpoint_msgs/VehicleCrashStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCrashStatus>)))
  "Returns md5sum for a message object of type '<VehicleCrashStatus>"
  "500436d37e269123e87e714487da889e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCrashStatus)))
  "Returns md5sum for a message object of type 'VehicleCrashStatus"
  "500436d37e269123e87e714487da889e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCrashStatus>)))
  "Returns full string definition for message of type '<VehicleCrashStatus>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_CRASH = 1~%uint8 CRASH = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCrashStatus)))
  "Returns full string definition for message of type 'VehicleCrashStatus"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_CRASH = 1~%uint8 CRASH = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCrashStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCrashStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCrashStatus
    (cl:cons ':value (value msg))
))
