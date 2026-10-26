; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SeatSensorStatusReportData.msg.html

(cl:defclass <SeatSensorStatusReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (enabled_seat_sensor_status_array
    :reader enabled_seat_sensor_status_array
    :initarg :enabled_seat_sensor_status_array
    :type (cl:vector endpoint_msgs-msg:SeatSensorStatusType)
   :initform (cl:make-array 0 :element-type 'endpoint_msgs-msg:SeatSensorStatusType :initial-element (cl:make-instance 'endpoint_msgs-msg:SeatSensorStatusType)))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SeatSensorStatusReportData (<SeatSensorStatusReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SeatSensorStatusReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SeatSensorStatusReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SeatSensorStatusReportData> is deprecated: use endpoint_msgs-msg:SeatSensorStatusReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <SeatSensorStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'enabled_seat_sensor_status_array-val :lambda-list '(m))
(cl:defmethod enabled_seat_sensor_status_array-val ((m <SeatSensorStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:enabled_seat_sensor_status_array-val is deprecated.  Use endpoint_msgs-msg:enabled_seat_sensor_status_array instead.")
  (enabled_seat_sensor_status_array m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <SeatSensorStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SeatSensorStatusReportData>) ostream)
  "Serializes a message object of type '<SeatSensorStatusReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'enabled_seat_sensor_status_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'enabled_seat_sensor_status_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SeatSensorStatusReportData>) istream)
  "Deserializes a message object of type '<SeatSensorStatusReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'enabled_seat_sensor_status_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'enabled_seat_sensor_status_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'endpoint_msgs-msg:SeatSensorStatusType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SeatSensorStatusReportData>)))
  "Returns string type for a message object of type '<SeatSensorStatusReportData>"
  "endpoint_msgs/SeatSensorStatusReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SeatSensorStatusReportData)))
  "Returns string type for a message object of type 'SeatSensorStatusReportData"
  "endpoint_msgs/SeatSensorStatusReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SeatSensorStatusReportData>)))
  "Returns md5sum for a message object of type '<SeatSensorStatusReportData>"
  "2e5bc7e2c2994d36a49c06abdc192c86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SeatSensorStatusReportData)))
  "Returns md5sum for a message object of type 'SeatSensorStatusReportData"
  "2e5bc7e2c2994d36a49c06abdc192c86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SeatSensorStatusReportData>)))
  "Returns full string definition for message of type '<SeatSensorStatusReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/SeatSensorStatusType[] enabled_seat_sensor_status_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/SeatSensorStatusType~%uint8 DRIVER_SEAT_STATUS = 0~%uint8 PASSENGER_SEAT_STATUS = 1~%uint8 SECOND_LEFT_SEAT_STATUS = 2~%uint8 SECOND_MID_SEAT_STATUS = 3~%uint8 SECOND_RIGHT_SEAT_STATUS = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SeatSensorStatusReportData)))
  "Returns full string definition for message of type 'SeatSensorStatusReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/SeatSensorStatusType[] enabled_seat_sensor_status_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/SeatSensorStatusType~%uint8 DRIVER_SEAT_STATUS = 0~%uint8 PASSENGER_SEAT_STATUS = 1~%uint8 SECOND_LEFT_SEAT_STATUS = 2~%uint8 SECOND_MID_SEAT_STATUS = 3~%uint8 SECOND_RIGHT_SEAT_STATUS = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SeatSensorStatusReportData>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'enabled_seat_sensor_status_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SeatSensorStatusReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'SeatSensorStatusReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':enabled_seat_sensor_status_array (enabled_seat_sensor_status_array msg))
    (cl:cons ':valid (valid msg))
))
