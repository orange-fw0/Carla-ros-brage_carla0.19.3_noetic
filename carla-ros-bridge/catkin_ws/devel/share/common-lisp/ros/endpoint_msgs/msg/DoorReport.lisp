; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude DoorReport.msg.html

(cl:defclass <DoorReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (door_report_data
    :reader door_report_data
    :initarg :door_report_data
    :type endpoint_msgs-msg:DoorReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:DoorReportData)))
)

(cl:defclass DoorReport (<DoorReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<DoorReport> is deprecated: use endpoint_msgs-msg:DoorReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DoorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'door_report_data-val :lambda-list '(m))
(cl:defmethod door_report_data-val ((m <DoorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:door_report_data-val is deprecated.  Use endpoint_msgs-msg:door_report_data instead.")
  (door_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DoorReport>)))
    "Constants for message type '<DoorReport>"
  '((:DOOR_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DoorReport)))
    "Constants for message type 'DoorReport"
  '((:DOOR_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorReport>) ostream)
  "Serializes a message object of type '<DoorReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorReport>) istream)
  "Deserializes a message object of type '<DoorReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorReport>)))
  "Returns string type for a message object of type '<DoorReport>"
  "endpoint_msgs/DoorReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorReport)))
  "Returns string type for a message object of type 'DoorReport"
  "endpoint_msgs/DoorReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorReport>)))
  "Returns md5sum for a message object of type '<DoorReport>"
  "184d144206f18c52f28952c9a0a34578")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorReport)))
  "Returns md5sum for a message object of type 'DoorReport"
  "184d144206f18c52f28952c9a0a34578")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorReport>)))
  "Returns full string definition for message of type '<DoorReport>"
  (cl:format cl:nil "uint8 DOOR_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/DoorReportData door_report_data~%~%================================================================================~%MSG: endpoint_msgs/DoorReportData~%uint64 timestamp_us~%endpoint_msgs/DoorType[] opened_door_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/DoorType~%uint8 DRIVER = 0~%uint8 PASSENGER = 1~%uint8 REAR_LEFT = 2~%uint8 REAR_RIGHT = 3~%uint8 HOOD = 4~%uint8 TRUNK = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorReport)))
  "Returns full string definition for message of type 'DoorReport"
  (cl:format cl:nil "uint8 DOOR_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/DoorReportData door_report_data~%~%================================================================================~%MSG: endpoint_msgs/DoorReportData~%uint64 timestamp_us~%endpoint_msgs/DoorType[] opened_door_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/DoorType~%uint8 DRIVER = 0~%uint8 PASSENGER = 1~%uint8 REAR_LEFT = 2~%uint8 REAR_RIGHT = 3~%uint8 HOOD = 4~%uint8 TRUNK = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorReport>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorReport
    (cl:cons ':available (available msg))
    (cl:cons ':door_report_data (door_report_data msg))
))
