; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude VehicleLockCommand.msg.html

(cl:defclass <VehicleLockCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (vehicle_lock
    :reader vehicle_lock
    :initarg :vehicle_lock
    :type planning_msgs-msg:VehicleLock
    :initform (cl:make-instance 'planning_msgs-msg:VehicleLock)))
)

(cl:defclass VehicleLockCommand (<VehicleLockCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLockCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLockCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<VehicleLockCommand> is deprecated: use planning_msgs-msg:VehicleLockCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <VehicleLockCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'vehicle_lock-val :lambda-list '(m))
(cl:defmethod vehicle_lock-val ((m <VehicleLockCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:vehicle_lock-val is deprecated.  Use planning_msgs-msg:vehicle_lock instead.")
  (vehicle_lock m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleLockCommand>)))
    "Constants for message type '<VehicleLockCommand>"
  '((:VEHICLE_LOCK . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleLockCommand)))
    "Constants for message type 'VehicleLockCommand"
  '((:VEHICLE_LOCK . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLockCommand>) ostream)
  "Serializes a message object of type '<VehicleLockCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_lock) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLockCommand>) istream)
  "Deserializes a message object of type '<VehicleLockCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_lock) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLockCommand>)))
  "Returns string type for a message object of type '<VehicleLockCommand>"
  "planning_msgs/VehicleLockCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLockCommand)))
  "Returns string type for a message object of type 'VehicleLockCommand"
  "planning_msgs/VehicleLockCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLockCommand>)))
  "Returns md5sum for a message object of type '<VehicleLockCommand>"
  "068d34cfbc2002e983cebb24416495fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLockCommand)))
  "Returns md5sum for a message object of type 'VehicleLockCommand"
  "068d34cfbc2002e983cebb24416495fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLockCommand>)))
  "Returns full string definition for message of type '<VehicleLockCommand>"
  (cl:format cl:nil "uint8 VEHICLE_LOCK = 1~%uint8 available~%planning_msgs/VehicleLock vehicle_lock~%~%================================================================================~%MSG: planning_msgs/VehicleLock~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLockCommand)))
  "Returns full string definition for message of type 'VehicleLockCommand"
  (cl:format cl:nil "uint8 VEHICLE_LOCK = 1~%uint8 available~%planning_msgs/VehicleLock vehicle_lock~%~%================================================================================~%MSG: planning_msgs/VehicleLock~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLockCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_lock))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLockCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLockCommand
    (cl:cons ':available (available msg))
    (cl:cons ':vehicle_lock (vehicle_lock msg))
))
