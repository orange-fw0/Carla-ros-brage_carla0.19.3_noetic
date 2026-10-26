; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebCommand.msg.html

(cl:defclass <AebCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (aeb_command_data
    :reader aeb_command_data
    :initarg :aeb_command_data
    :type endpoint_msgs-msg:AebCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:AebCommandData)))
)

(cl:defclass AebCommand (<AebCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebCommand> is deprecated: use endpoint_msgs-msg:AebCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <AebCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'aeb_command_data-val :lambda-list '(m))
(cl:defmethod aeb_command_data-val ((m <AebCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:aeb_command_data-val is deprecated.  Use endpoint_msgs-msg:aeb_command_data instead.")
  (aeb_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebCommand>)))
    "Constants for message type '<AebCommand>"
  '((:AEB_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebCommand)))
    "Constants for message type 'AebCommand"
  '((:AEB_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebCommand>) ostream)
  "Serializes a message object of type '<AebCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aeb_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebCommand>) istream)
  "Deserializes a message object of type '<AebCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aeb_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebCommand>)))
  "Returns string type for a message object of type '<AebCommand>"
  "endpoint_msgs/AebCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebCommand)))
  "Returns string type for a message object of type 'AebCommand"
  "endpoint_msgs/AebCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebCommand>)))
  "Returns md5sum for a message object of type '<AebCommand>"
  "d37f19f69ac775b6e80f877abae45c9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebCommand)))
  "Returns md5sum for a message object of type 'AebCommand"
  "d37f19f69ac775b6e80f877abae45c9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebCommand>)))
  "Returns full string definition for message of type '<AebCommand>"
  (cl:format cl:nil "uint8 AEB_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AebCommandData aeb_command_data~%~%================================================================================~%MSG: endpoint_msgs/AebCommandData~%uint64 timestamp_us~%endpoint_msgs/AebBrkJerkReq awb_request~%endpoint_msgs/AebDclReqSts dcl_req_state~%float32 dcl_req_command~%endpoint_msgs/AebHydBrkReq hba_request_level~%bool prefill_request~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkReq~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1~%uint8 AEB_BRAKE_JERK_MID_LEVEL = 2~%uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3~%uint8 AEV_BRAKE_JERK_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclReqSts~%uint8 AEB_DLC_STATE_NO_REQUEST = 0~%uint8 AEB_DLC_STATE_DECELERATION = 1~%uint8 AEB_DLC_STATE_RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebHydBrkReq~%uint8 AEB_HYD_BRAKE_NO_REQUEST = 0~%uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1~%uint8 AEB_HYD_BRAKE_MID_LEVEL = 2~%uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3~%uint8 AEB_HYD_BRAKE_RESERVED1 = 4~%uint8 AEB_HYD_BRAKE_RESERVED2 = 5~%uint8 AEB_HYD_BRAKE_RESERVED3 = 6~%uint8 AEB_HYD_BRAKE_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebCommand)))
  "Returns full string definition for message of type 'AebCommand"
  (cl:format cl:nil "uint8 AEB_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AebCommandData aeb_command_data~%~%================================================================================~%MSG: endpoint_msgs/AebCommandData~%uint64 timestamp_us~%endpoint_msgs/AebBrkJerkReq awb_request~%endpoint_msgs/AebDclReqSts dcl_req_state~%float32 dcl_req_command~%endpoint_msgs/AebHydBrkReq hba_request_level~%bool prefill_request~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkReq~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1~%uint8 AEB_BRAKE_JERK_MID_LEVEL = 2~%uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3~%uint8 AEV_BRAKE_JERK_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclReqSts~%uint8 AEB_DLC_STATE_NO_REQUEST = 0~%uint8 AEB_DLC_STATE_DECELERATION = 1~%uint8 AEB_DLC_STATE_RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebHydBrkReq~%uint8 AEB_HYD_BRAKE_NO_REQUEST = 0~%uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1~%uint8 AEB_HYD_BRAKE_MID_LEVEL = 2~%uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3~%uint8 AEB_HYD_BRAKE_RESERVED1 = 4~%uint8 AEB_HYD_BRAKE_RESERVED2 = 5~%uint8 AEB_HYD_BRAKE_RESERVED3 = 6~%uint8 AEB_HYD_BRAKE_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aeb_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'AebCommand
    (cl:cons ':available (available msg))
    (cl:cons ':aeb_command_data (aeb_command_data msg))
))
