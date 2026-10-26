; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AirConditioningReport.msg.html

(cl:defclass <AirConditioningReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (air_conditioning_data
    :reader air_conditioning_data
    :initarg :air_conditioning_data
    :type endpoint_msgs-msg:AirConditioningReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:AirConditioningReportData)))
)

(cl:defclass AirConditioningReport (<AirConditioningReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AirConditioningReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AirConditioningReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AirConditioningReport> is deprecated: use endpoint_msgs-msg:AirConditioningReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <AirConditioningReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'air_conditioning_data-val :lambda-list '(m))
(cl:defmethod air_conditioning_data-val ((m <AirConditioningReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:air_conditioning_data-val is deprecated.  Use endpoint_msgs-msg:air_conditioning_data instead.")
  (air_conditioning_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AirConditioningReport>)))
    "Constants for message type '<AirConditioningReport>"
  '((:AIR_CONDITIONING_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AirConditioningReport)))
    "Constants for message type 'AirConditioningReport"
  '((:AIR_CONDITIONING_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AirConditioningReport>) ostream)
  "Serializes a message object of type '<AirConditioningReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'air_conditioning_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AirConditioningReport>) istream)
  "Deserializes a message object of type '<AirConditioningReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'air_conditioning_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AirConditioningReport>)))
  "Returns string type for a message object of type '<AirConditioningReport>"
  "endpoint_msgs/AirConditioningReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AirConditioningReport)))
  "Returns string type for a message object of type 'AirConditioningReport"
  "endpoint_msgs/AirConditioningReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AirConditioningReport>)))
  "Returns md5sum for a message object of type '<AirConditioningReport>"
  "8f31394351cc00a250b32576f38af64c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AirConditioningReport)))
  "Returns md5sum for a message object of type 'AirConditioningReport"
  "8f31394351cc00a250b32576f38af64c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AirConditioningReport>)))
  "Returns full string definition for message of type '<AirConditioningReport>"
  (cl:format cl:nil "uint8 AIR_CONDITIONING_DATA = 1~%uint8 available~%endpoint_msgs/AirConditioningReportData air_conditioning_data~%~%================================================================================~%MSG: endpoint_msgs/AirConditioningReportData~%uint64 timestamp_us~%endpoint_msgs/AirOutletMode[] air_outlet_mode_array~%bool air_outlet_mode_array_valid~%endpoint_msgs/AirTempMode[] air_temp_mode_array~%bool air_temp_mode_array_valid~%endpoint_msgs/AirDefrostMode[] air_defrost_mode_array~%bool air_defrost_mode_array_valid~%endpoint_msgs/AirWorkStatus air_work_status~%~%================================================================================~%MSG: endpoint_msgs/AirOutletMode~%uint8 AIR_OUTLET_MODE_FACE = 0~%uint8 AIR_OUTLET_MODE_FOOT = 1~%uint8 AIR_OUTLET_MODE_BODY = 2~%uint8 AIR_OUTLET_MODE_KNEE = 3~%uint8 AIR_OUTLET_MODE_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirTempMode~%uint8 AIR_TEMP_MODE_NORMAL = 0~%uint8 AIR_TEMP_MODE_COLD = 1~%uint8 AIR_TEMP_MODE_HOT = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirDefrostMode~%uint8 AIR_DEFROS_MODE_OFF = 0~%uint8 AIR_DEFROS_MODE_FONT = 1~%uint8 AIR_DEFROS_MODE_REAR = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirWorkStatus~%uint8 AIR_WORK_STATUS_NONE = 0~%uint8 AIR_WORK_STATUS_CLOSE = 1~%uint8 AIR_WORK_STATUS_OPEN = 2~%uint8 AIR_WORK_STATUS_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AirConditioningReport)))
  "Returns full string definition for message of type 'AirConditioningReport"
  (cl:format cl:nil "uint8 AIR_CONDITIONING_DATA = 1~%uint8 available~%endpoint_msgs/AirConditioningReportData air_conditioning_data~%~%================================================================================~%MSG: endpoint_msgs/AirConditioningReportData~%uint64 timestamp_us~%endpoint_msgs/AirOutletMode[] air_outlet_mode_array~%bool air_outlet_mode_array_valid~%endpoint_msgs/AirTempMode[] air_temp_mode_array~%bool air_temp_mode_array_valid~%endpoint_msgs/AirDefrostMode[] air_defrost_mode_array~%bool air_defrost_mode_array_valid~%endpoint_msgs/AirWorkStatus air_work_status~%~%================================================================================~%MSG: endpoint_msgs/AirOutletMode~%uint8 AIR_OUTLET_MODE_FACE = 0~%uint8 AIR_OUTLET_MODE_FOOT = 1~%uint8 AIR_OUTLET_MODE_BODY = 2~%uint8 AIR_OUTLET_MODE_KNEE = 3~%uint8 AIR_OUTLET_MODE_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirTempMode~%uint8 AIR_TEMP_MODE_NORMAL = 0~%uint8 AIR_TEMP_MODE_COLD = 1~%uint8 AIR_TEMP_MODE_HOT = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirDefrostMode~%uint8 AIR_DEFROS_MODE_OFF = 0~%uint8 AIR_DEFROS_MODE_FONT = 1~%uint8 AIR_DEFROS_MODE_REAR = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirWorkStatus~%uint8 AIR_WORK_STATUS_NONE = 0~%uint8 AIR_WORK_STATUS_CLOSE = 1~%uint8 AIR_WORK_STATUS_OPEN = 2~%uint8 AIR_WORK_STATUS_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AirConditioningReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'air_conditioning_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AirConditioningReport>))
  "Converts a ROS message object to a list"
  (cl:list 'AirConditioningReport
    (cl:cons ':available (available msg))
    (cl:cons ':air_conditioning_data (air_conditioning_data msg))
))
