; Auto-generated. Do not edit!


(cl:in-package gps_imu_msgs-msg)


;//! \htmlinclude MLAGnssInfo.msg.html

(cl:defclass <MLAGnssInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (gnss_data_basic
    :reader gnss_data_basic
    :initarg :gnss_data_basic
    :type gps_imu_msgs-msg:MLAGnssBasic
    :initform (cl:make-instance 'gps_imu_msgs-msg:MLAGnssBasic))
   (gnss_data_extend
    :reader gnss_data_extend
    :initarg :gnss_data_extend
    :type gps_imu_msgs-msg:MLAGnssExtend
    :initform (cl:make-instance 'gps_imu_msgs-msg:MLAGnssExtend)))
)

(cl:defclass MLAGnssInfo (<MLAGnssInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAGnssInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAGnssInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_imu_msgs-msg:<MLAGnssInfo> is deprecated: use gps_imu_msgs-msg:MLAGnssInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAGnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:available-val is deprecated.  Use gps_imu_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'gnss_data_basic-val :lambda-list '(m))
(cl:defmethod gnss_data_basic-val ((m <MLAGnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:gnss_data_basic-val is deprecated.  Use gps_imu_msgs-msg:gnss_data_basic instead.")
  (gnss_data_basic m))

(cl:ensure-generic-function 'gnss_data_extend-val :lambda-list '(m))
(cl:defmethod gnss_data_extend-val ((m <MLAGnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:gnss_data_extend-val is deprecated.  Use gps_imu_msgs-msg:gnss_data_extend instead.")
  (gnss_data_extend m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAGnssInfo>)))
    "Constants for message type '<MLAGnssInfo>"
  '((:MLA_GNSS_BASIC . 1)
    (:MLA_GNSS_EXTEND . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAGnssInfo)))
    "Constants for message type 'MLAGnssInfo"
  '((:MLA_GNSS_BASIC . 1)
    (:MLA_GNSS_EXTEND . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAGnssInfo>) ostream)
  "Serializes a message object of type '<MLAGnssInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gnss_data_basic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gnss_data_extend) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAGnssInfo>) istream)
  "Deserializes a message object of type '<MLAGnssInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gnss_data_basic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gnss_data_extend) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAGnssInfo>)))
  "Returns string type for a message object of type '<MLAGnssInfo>"
  "gps_imu_msgs/MLAGnssInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAGnssInfo)))
  "Returns string type for a message object of type 'MLAGnssInfo"
  "gps_imu_msgs/MLAGnssInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAGnssInfo>)))
  "Returns md5sum for a message object of type '<MLAGnssInfo>"
  "dd0fdd3d7d13e7ec21c780e65c672f57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAGnssInfo)))
  "Returns md5sum for a message object of type 'MLAGnssInfo"
  "dd0fdd3d7d13e7ec21c780e65c672f57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAGnssInfo>)))
  "Returns full string definition for message of type '<MLAGnssInfo>"
  (cl:format cl:nil "uint8 MLA_GNSS_BASIC = 1~%uint8 MLA_GNSS_EXTEND = 2~%uint8 available~%gps_imu_msgs/MLAGnssBasic gnss_data_basic~%gps_imu_msgs/MLAGnssExtend gnss_data_extend~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssBasic~%float64 lat~%float64 lon~%float64 alt~%float64 vel_e~%float64 vel_n~%float64 vel_u~%float64 azi_track~%float64 speed~%int8 status~%int8 msg_type~%int16 sat_num~%float64 hdop~%float64 rtk_age~%float64 sec_in_gps_week~%uint16 gps_week~%float64 utc_time~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssExtend~%int16 sv_num~%int16[] sv_id~%int16[] sv_elv~%int16[] sv_az~%int16[] sv_cno~%float64 std_pe~%float64 std_pn~%float64 std_pu~%float64 std_ve~%float64 std_vn~%float64 std_vu~%float64 dual_antenna_azimuth~%float64 pdop~%float64 vdop~%int8 fix_type~%float64 alt_msl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAGnssInfo)))
  "Returns full string definition for message of type 'MLAGnssInfo"
  (cl:format cl:nil "uint8 MLA_GNSS_BASIC = 1~%uint8 MLA_GNSS_EXTEND = 2~%uint8 available~%gps_imu_msgs/MLAGnssBasic gnss_data_basic~%gps_imu_msgs/MLAGnssExtend gnss_data_extend~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssBasic~%float64 lat~%float64 lon~%float64 alt~%float64 vel_e~%float64 vel_n~%float64 vel_u~%float64 azi_track~%float64 speed~%int8 status~%int8 msg_type~%int16 sat_num~%float64 hdop~%float64 rtk_age~%float64 sec_in_gps_week~%uint16 gps_week~%float64 utc_time~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssExtend~%int16 sv_num~%int16[] sv_id~%int16[] sv_elv~%int16[] sv_az~%int16[] sv_cno~%float64 std_pe~%float64 std_pn~%float64 std_pu~%float64 std_ve~%float64 std_vn~%float64 std_vu~%float64 dual_antenna_azimuth~%float64 pdop~%float64 vdop~%int8 fix_type~%float64 alt_msl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAGnssInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gnss_data_basic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gnss_data_extend))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAGnssInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAGnssInfo
    (cl:cons ':available (available msg))
    (cl:cons ':gnss_data_basic (gnss_data_basic msg))
    (cl:cons ':gnss_data_extend (gnss_data_extend msg))
))
