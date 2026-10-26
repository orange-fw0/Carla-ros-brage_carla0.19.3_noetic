; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleDoorStateInfo.msg.html

(cl:defclass <VehicleDoorStateInfo> (roslisp-msg-protocol:ros-message)
  ((door_state_on_score
    :reader door_state_on_score
    :initarg :door_state_on_score
    :type cl:float
    :initform 0.0)
   (door_state
    :reader door_state
    :initarg :door_state
    :type perception_interface_msgs-msg:VehicleDoorStateEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleDoorStateEnum)))
)

(cl:defclass VehicleDoorStateInfo (<VehicleDoorStateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleDoorStateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleDoorStateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleDoorStateInfo> is deprecated: use perception_interface_msgs-msg:VehicleDoorStateInfo instead.")))

(cl:ensure-generic-function 'door_state_on_score-val :lambda-list '(m))
(cl:defmethod door_state_on_score-val ((m <VehicleDoorStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:door_state_on_score-val is deprecated.  Use perception_interface_msgs-msg:door_state_on_score instead.")
  (door_state_on_score m))

(cl:ensure-generic-function 'door_state-val :lambda-list '(m))
(cl:defmethod door_state-val ((m <VehicleDoorStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:door_state-val is deprecated.  Use perception_interface_msgs-msg:door_state instead.")
  (door_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleDoorStateInfo>) ostream)
  "Serializes a message object of type '<VehicleDoorStateInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'door_state_on_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleDoorStateInfo>) istream)
  "Deserializes a message object of type '<VehicleDoorStateInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'door_state_on_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleDoorStateInfo>)))
  "Returns string type for a message object of type '<VehicleDoorStateInfo>"
  "perception_interface_msgs/VehicleDoorStateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleDoorStateInfo)))
  "Returns string type for a message object of type 'VehicleDoorStateInfo"
  "perception_interface_msgs/VehicleDoorStateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleDoorStateInfo>)))
  "Returns md5sum for a message object of type '<VehicleDoorStateInfo>"
  "49a3f186ea63a7da2a4659cd52f7235b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleDoorStateInfo)))
  "Returns md5sum for a message object of type 'VehicleDoorStateInfo"
  "49a3f186ea63a7da2a4659cd52f7235b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleDoorStateInfo>)))
  "Returns full string definition for message of type '<VehicleDoorStateInfo>"
  (cl:format cl:nil "float32 door_state_on_score~%perception_interface_msgs/VehicleDoorStateEnum door_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateEnum~%uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleDoorStateInfo)))
  "Returns full string definition for message of type 'VehicleDoorStateInfo"
  (cl:format cl:nil "float32 door_state_on_score~%perception_interface_msgs/VehicleDoorStateEnum door_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateEnum~%uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleDoorStateInfo>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleDoorStateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleDoorStateInfo
    (cl:cons ':door_state_on_score (door_state_on_score msg))
    (cl:cons ':door_state (door_state msg))
))
