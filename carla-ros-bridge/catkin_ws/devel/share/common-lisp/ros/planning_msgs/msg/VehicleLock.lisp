; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude VehicleLock.msg.html

(cl:defclass <VehicleLock> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleLock (<VehicleLock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<VehicleLock> is deprecated: use planning_msgs-msg:VehicleLock instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleLock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleLock>)))
    "Constants for message type '<VehicleLock>"
  '((:NONE . 0)
    (:UNLOCK . 1)
    (:LOCK . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleLock)))
    "Constants for message type 'VehicleLock"
  '((:NONE . 0)
    (:UNLOCK . 1)
    (:LOCK . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLock>) ostream)
  "Serializes a message object of type '<VehicleLock>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLock>) istream)
  "Deserializes a message object of type '<VehicleLock>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLock>)))
  "Returns string type for a message object of type '<VehicleLock>"
  "planning_msgs/VehicleLock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLock)))
  "Returns string type for a message object of type 'VehicleLock"
  "planning_msgs/VehicleLock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLock>)))
  "Returns md5sum for a message object of type '<VehicleLock>"
  "180c65ece6169aaf9e77a22ae1e42eed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLock)))
  "Returns md5sum for a message object of type 'VehicleLock"
  "180c65ece6169aaf9e77a22ae1e42eed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLock>)))
  "Returns full string definition for message of type '<VehicleLock>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLock)))
  "Returns full string definition for message of type 'VehicleLock"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLock>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLock>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLock
    (cl:cons ':value (value msg))
))
