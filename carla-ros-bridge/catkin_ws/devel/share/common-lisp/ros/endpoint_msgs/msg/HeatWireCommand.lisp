; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HeatWireCommand.msg.html

(cl:defclass <HeatWireCommand> (roslisp-msg-protocol:ros-message)
  ((ff_camera_status
    :reader ff_camera_status
    :initarg :ff_camera_status
    :type endpoint_msgs-msg:CameraSurfaceCondition
    :initform (cl:make-instance 'endpoint_msgs-msg:CameraSurfaceCondition))
   (fw_camera_status
    :reader fw_camera_status
    :initarg :fw_camera_status
    :type endpoint_msgs-msg:CameraSurfaceCondition
    :initform (cl:make-instance 'endpoint_msgs-msg:CameraSurfaceCondition))
   (heat_wire_control
    :reader heat_wire_control
    :initarg :heat_wire_control
    :type endpoint_msgs-msg:HeatWireControlType
    :initform (cl:make-instance 'endpoint_msgs-msg:HeatWireControlType)))
)

(cl:defclass HeatWireCommand (<HeatWireCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeatWireCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeatWireCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HeatWireCommand> is deprecated: use endpoint_msgs-msg:HeatWireCommand instead.")))

(cl:ensure-generic-function 'ff_camera_status-val :lambda-list '(m))
(cl:defmethod ff_camera_status-val ((m <HeatWireCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ff_camera_status-val is deprecated.  Use endpoint_msgs-msg:ff_camera_status instead.")
  (ff_camera_status m))

(cl:ensure-generic-function 'fw_camera_status-val :lambda-list '(m))
(cl:defmethod fw_camera_status-val ((m <HeatWireCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:fw_camera_status-val is deprecated.  Use endpoint_msgs-msg:fw_camera_status instead.")
  (fw_camera_status m))

(cl:ensure-generic-function 'heat_wire_control-val :lambda-list '(m))
(cl:defmethod heat_wire_control-val ((m <HeatWireCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:heat_wire_control-val is deprecated.  Use endpoint_msgs-msg:heat_wire_control instead.")
  (heat_wire_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeatWireCommand>) ostream)
  "Serializes a message object of type '<HeatWireCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ff_camera_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fw_camera_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'heat_wire_control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeatWireCommand>) istream)
  "Deserializes a message object of type '<HeatWireCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ff_camera_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fw_camera_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'heat_wire_control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeatWireCommand>)))
  "Returns string type for a message object of type '<HeatWireCommand>"
  "endpoint_msgs/HeatWireCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeatWireCommand)))
  "Returns string type for a message object of type 'HeatWireCommand"
  "endpoint_msgs/HeatWireCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeatWireCommand>)))
  "Returns md5sum for a message object of type '<HeatWireCommand>"
  "0c97e71d5afb42f4e4ada74e4954bf0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeatWireCommand)))
  "Returns md5sum for a message object of type 'HeatWireCommand"
  "0c97e71d5afb42f4e4ada74e4954bf0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeatWireCommand>)))
  "Returns full string definition for message of type '<HeatWireCommand>"
  (cl:format cl:nil "endpoint_msgs/CameraSurfaceCondition ff_camera_status~%endpoint_msgs/CameraSurfaceCondition fw_camera_status~%endpoint_msgs/HeatWireControlType heat_wire_control~%~%================================================================================~%MSG: endpoint_msgs/CameraSurfaceCondition~%uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HeatWireControlType~%uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeatWireCommand)))
  "Returns full string definition for message of type 'HeatWireCommand"
  (cl:format cl:nil "endpoint_msgs/CameraSurfaceCondition ff_camera_status~%endpoint_msgs/CameraSurfaceCondition fw_camera_status~%endpoint_msgs/HeatWireControlType heat_wire_control~%~%================================================================================~%MSG: endpoint_msgs/CameraSurfaceCondition~%uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HeatWireControlType~%uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeatWireCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ff_camera_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fw_camera_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'heat_wire_control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeatWireCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'HeatWireCommand
    (cl:cons ':ff_camera_status (ff_camera_status msg))
    (cl:cons ':fw_camera_status (fw_camera_status msg))
    (cl:cons ':heat_wire_control (heat_wire_control msg))
))
