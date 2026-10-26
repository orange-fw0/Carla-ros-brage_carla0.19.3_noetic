; Auto-generated. Do not edit!


(cl:in-package gps_imu_msgs-msg)


;//! \htmlinclude MLAGnss.msg.html

(cl:defclass <MLAGnss> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type gps_imu_msgs-msg:MLAGnssMeta
    :initform (cl:make-instance 'gps_imu_msgs-msg:MLAGnssMeta))
   (info
    :reader info
    :initarg :info
    :type gps_imu_msgs-msg:MLAGnssInfo
    :initform (cl:make-instance 'gps_imu_msgs-msg:MLAGnssInfo)))
)

(cl:defclass MLAGnss (<MLAGnss>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAGnss>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAGnss)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_imu_msgs-msg:<MLAGnss> is deprecated: use gps_imu_msgs-msg:MLAGnss instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MLAGnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:header-val is deprecated.  Use gps_imu_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <MLAGnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:meta-val is deprecated.  Use gps_imu_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <MLAGnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:info-val is deprecated.  Use gps_imu_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAGnss>) ostream)
  "Serializes a message object of type '<MLAGnss>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAGnss>) istream)
  "Deserializes a message object of type '<MLAGnss>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAGnss>)))
  "Returns string type for a message object of type '<MLAGnss>"
  "gps_imu_msgs/MLAGnss")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAGnss)))
  "Returns string type for a message object of type 'MLAGnss"
  "gps_imu_msgs/MLAGnss")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAGnss>)))
  "Returns md5sum for a message object of type '<MLAGnss>"
  "b5b1291bb25e18f6cd8b1f941c56771d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAGnss)))
  "Returns md5sum for a message object of type 'MLAGnss"
  "b5b1291bb25e18f6cd8b1f941c56771d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAGnss>)))
  "Returns full string definition for message of type '<MLAGnss>"
  (cl:format cl:nil "std_msgs/Header header~%gps_imu_msgs/MLAGnssMeta meta~%gps_imu_msgs/MLAGnssInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssInfo~%uint8 MLA_GNSS_BASIC = 1~%uint8 MLA_GNSS_EXTEND = 2~%uint8 available~%gps_imu_msgs/MLAGnssBasic gnss_data_basic~%gps_imu_msgs/MLAGnssExtend gnss_data_extend~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssBasic~%float64 lat~%float64 lon~%float64 alt~%float64 vel_e~%float64 vel_n~%float64 vel_u~%float64 azi_track~%float64 speed~%int8 status~%int8 msg_type~%int16 sat_num~%float64 hdop~%float64 rtk_age~%float64 sec_in_gps_week~%uint16 gps_week~%float64 utc_time~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssExtend~%int16 sv_num~%int16[] sv_id~%int16[] sv_elv~%int16[] sv_az~%int16[] sv_cno~%float64 std_pe~%float64 std_pn~%float64 std_pu~%float64 std_ve~%float64 std_vn~%float64 std_vu~%float64 dual_antenna_azimuth~%float64 pdop~%float64 vdop~%int8 fix_type~%float64 alt_msl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAGnss)))
  "Returns full string definition for message of type 'MLAGnss"
  (cl:format cl:nil "std_msgs/Header header~%gps_imu_msgs/MLAGnssMeta meta~%gps_imu_msgs/MLAGnssInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssInfo~%uint8 MLA_GNSS_BASIC = 1~%uint8 MLA_GNSS_EXTEND = 2~%uint8 available~%gps_imu_msgs/MLAGnssBasic gnss_data_basic~%gps_imu_msgs/MLAGnssExtend gnss_data_extend~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssBasic~%float64 lat~%float64 lon~%float64 alt~%float64 vel_e~%float64 vel_n~%float64 vel_u~%float64 azi_track~%float64 speed~%int8 status~%int8 msg_type~%int16 sat_num~%float64 hdop~%float64 rtk_age~%float64 sec_in_gps_week~%uint16 gps_week~%float64 utc_time~%~%================================================================================~%MSG: gps_imu_msgs/MLAGnssExtend~%int16 sv_num~%int16[] sv_id~%int16[] sv_elv~%int16[] sv_az~%int16[] sv_cno~%float64 std_pe~%float64 std_pn~%float64 std_pu~%float64 std_ve~%float64 std_vn~%float64 std_vu~%float64 dual_antenna_azimuth~%float64 pdop~%float64 vdop~%int8 fix_type~%float64 alt_msl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAGnss>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAGnss>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAGnss
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':info (info msg))
))
