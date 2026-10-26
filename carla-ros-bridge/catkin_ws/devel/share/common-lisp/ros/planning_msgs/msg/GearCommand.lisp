; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude GearCommand.msg.html

(cl:defclass <GearCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (gear_data
    :reader gear_data
    :initarg :gear_data
    :type planning_msgs-msg:Gear
    :initform (cl:make-instance 'planning_msgs-msg:Gear)))
)

(cl:defclass GearCommand (<GearCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<GearCommand> is deprecated: use planning_msgs-msg:GearCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <GearCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'gear_data-val :lambda-list '(m))
(cl:defmethod gear_data-val ((m <GearCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:gear_data-val is deprecated.  Use planning_msgs-msg:gear_data instead.")
  (gear_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GearCommand>)))
    "Constants for message type '<GearCommand>"
  '((:GEAR_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GearCommand)))
    "Constants for message type 'GearCommand"
  '((:GEAR_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearCommand>) ostream)
  "Serializes a message object of type '<GearCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearCommand>) istream)
  "Deserializes a message object of type '<GearCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearCommand>)))
  "Returns string type for a message object of type '<GearCommand>"
  "planning_msgs/GearCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearCommand)))
  "Returns string type for a message object of type 'GearCommand"
  "planning_msgs/GearCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearCommand>)))
  "Returns md5sum for a message object of type '<GearCommand>"
  "4d5d8e5fae5ca84436a24cdb203f776b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearCommand)))
  "Returns md5sum for a message object of type 'GearCommand"
  "4d5d8e5fae5ca84436a24cdb203f776b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearCommand>)))
  "Returns full string definition for message of type '<GearCommand>"
  (cl:format cl:nil "uint8 GEAR_DATA = 1~%uint8 available~%planning_msgs/Gear gear_data~%~%================================================================================~%MSG: planning_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearCommand)))
  "Returns full string definition for message of type 'GearCommand"
  (cl:format cl:nil "uint8 GEAR_DATA = 1~%uint8 available~%planning_msgs/Gear gear_data~%~%================================================================================~%MSG: planning_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'GearCommand
    (cl:cons ':available (available msg))
    (cl:cons ':gear_data (gear_data msg))
))
