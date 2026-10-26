; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleImuReport.msg.html

(cl:defclass <VehicleImuReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (vehicle_imu_report_data
    :reader vehicle_imu_report_data
    :initarg :vehicle_imu_report_data
    :type endpoint_msgs-msg:VehicleImuReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleImuReportData)))
)

(cl:defclass VehicleImuReport (<VehicleImuReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleImuReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleImuReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleImuReport> is deprecated: use endpoint_msgs-msg:VehicleImuReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <VehicleImuReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'vehicle_imu_report_data-val :lambda-list '(m))
(cl:defmethod vehicle_imu_report_data-val ((m <VehicleImuReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_imu_report_data-val is deprecated.  Use endpoint_msgs-msg:vehicle_imu_report_data instead.")
  (vehicle_imu_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleImuReport>)))
    "Constants for message type '<VehicleImuReport>"
  '((:VEHICLE_IMU_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleImuReport)))
    "Constants for message type 'VehicleImuReport"
  '((:VEHICLE_IMU_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleImuReport>) ostream)
  "Serializes a message object of type '<VehicleImuReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_imu_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleImuReport>) istream)
  "Deserializes a message object of type '<VehicleImuReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_imu_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleImuReport>)))
  "Returns string type for a message object of type '<VehicleImuReport>"
  "endpoint_msgs/VehicleImuReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleImuReport)))
  "Returns string type for a message object of type 'VehicleImuReport"
  "endpoint_msgs/VehicleImuReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleImuReport>)))
  "Returns md5sum for a message object of type '<VehicleImuReport>"
  "83ca2c3fbaefb42f5985663e0527c06d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleImuReport)))
  "Returns md5sum for a message object of type 'VehicleImuReport"
  "83ca2c3fbaefb42f5985663e0527c06d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleImuReport>)))
  "Returns full string definition for message of type '<VehicleImuReport>"
  (cl:format cl:nil "uint8 VEHICLE_IMU_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleImuReportData vehicle_imu_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleImuReportData~%uint64 timestamp_us~%float32 linear_acceleration_lat~%float32 linear_acceleration_lon~%float32 linear_acceleration_vert~%float32 angular_velocity_roll~%float32 angular_velocity_pitch~%float32 angular_velocity_yaw~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleImuReport)))
  "Returns full string definition for message of type 'VehicleImuReport"
  (cl:format cl:nil "uint8 VEHICLE_IMU_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleImuReportData vehicle_imu_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleImuReportData~%uint64 timestamp_us~%float32 linear_acceleration_lat~%float32 linear_acceleration_lon~%float32 linear_acceleration_vert~%float32 angular_velocity_roll~%float32 angular_velocity_pitch~%float32 angular_velocity_yaw~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleImuReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_imu_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleImuReport>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleImuReport
    (cl:cons ':available (available msg))
    (cl:cons ':vehicle_imu_report_data (vehicle_imu_report_data msg))
))
