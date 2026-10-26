; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude RawUSSOutputFrame.msg.html

(cl:defclass <RawUSSOutputFrame> (roslisp-msg-protocol:ros-message)
  ((sgws
    :reader sgws
    :initarg :sgws
    :type (cl:vector sensor_interface_msgs-msg:UssEnvelopeSgws)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:UssEnvelopeSgws :initial-element (cl:make-instance 'sensor_interface_msgs-msg:UssEnvelopeSgws)))
   (num_sgws
    :reader num_sgws
    :initarg :num_sgws
    :type cl:fixnum
    :initform 0)
   (live_cnt
    :reader live_cnt
    :initarg :live_cnt
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RawUSSOutputFrame (<RawUSSOutputFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawUSSOutputFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawUSSOutputFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<RawUSSOutputFrame> is deprecated: use sensor_interface_msgs-msg:RawUSSOutputFrame instead.")))

(cl:ensure-generic-function 'sgws-val :lambda-list '(m))
(cl:defmethod sgws-val ((m <RawUSSOutputFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:sgws-val is deprecated.  Use sensor_interface_msgs-msg:sgws instead.")
  (sgws m))

(cl:ensure-generic-function 'num_sgws-val :lambda-list '(m))
(cl:defmethod num_sgws-val ((m <RawUSSOutputFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:num_sgws-val is deprecated.  Use sensor_interface_msgs-msg:num_sgws instead.")
  (num_sgws m))

(cl:ensure-generic-function 'live_cnt-val :lambda-list '(m))
(cl:defmethod live_cnt-val ((m <RawUSSOutputFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:live_cnt-val is deprecated.  Use sensor_interface_msgs-msg:live_cnt instead.")
  (live_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawUSSOutputFrame>) ostream)
  "Serializes a message object of type '<RawUSSOutputFrame>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sgws))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sgws))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sgws)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'live_cnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'live_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawUSSOutputFrame>) istream)
  "Deserializes a message object of type '<RawUSSOutputFrame>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sgws) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sgws)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:UssEnvelopeSgws))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sgws)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'live_cnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'live_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawUSSOutputFrame>)))
  "Returns string type for a message object of type '<RawUSSOutputFrame>"
  "sensor_interface_msgs/RawUSSOutputFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawUSSOutputFrame)))
  "Returns string type for a message object of type 'RawUSSOutputFrame"
  "sensor_interface_msgs/RawUSSOutputFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawUSSOutputFrame>)))
  "Returns md5sum for a message object of type '<RawUSSOutputFrame>"
  "1c59634166b49d284331463c78b75b08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawUSSOutputFrame)))
  "Returns md5sum for a message object of type 'RawUSSOutputFrame"
  "1c59634166b49d284331463c78b75b08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawUSSOutputFrame>)))
  "Returns full string definition for message of type '<RawUSSOutputFrame>"
  (cl:format cl:nil "sensor_interface_msgs/UssEnvelopeSgws[] sgws~%uint8 num_sgws~%uint16 live_cnt~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeSgws~%sensor_interface_msgs/UssEnvelopeMeas meas~%sensor_interface_msgs/UssEnvelopeDiag diag~%sensor_interface_msgs/UssEnvelopeId id~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeMeas~%float32 tx_frequency~%float32 rx_frequency~%sensor_interface_msgs/UssMeaMode measurement_mode~%float32 reverberation_time~%uint16 reverberation_period~%float32 distance_interval~%sensor_interface_msgs/NearRangeDetectionStatus near_range_detection_status~%float32 near_range_distance~%uint16 num_amplitude_samples~%float32[] amplitude_samples~%~%================================================================================~%MSG: sensor_interface_msgs/UssMeaMode~%uint8 MEAS_MODE_NEAR_RANGE_AM = 0~%uint8 MEAS_MODE_DUAL_AM_LOW = 1~%uint8 MEAS_MODE_DUAL_AM_HIGH = 2~%uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3~%uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4~%uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5~%uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6~%uint8 MEAS_MODE_RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/NearRangeDetectionStatus~%uint8 USS_NEAR_RANGE_UNAVAILABLE = 0~%uint8 USS_NEAR_RANGE_NO_DETECTION = 1~%uint8 USS_NEAR_RANGE_VALID_DETECTION = 2~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeDiag~%int8 aRawient_temperature~%uint8 cont_wav_noise_l~%uint8 cont_wav_noise_h~%bool sensor_status_valid~%bool sensor_com_status_valid~%bool thermal_warning~%bool tx_fail~%bool sensor_disturbed~%bool white_band_noise~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeId~%uint8 tx_sensor_id~%uint8 rx_sensor_id~%uint64 host_timestamp~%sensor_interface_msgs/UltrasonicResultMeta meta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawUSSOutputFrame)))
  "Returns full string definition for message of type 'RawUSSOutputFrame"
  (cl:format cl:nil "sensor_interface_msgs/UssEnvelopeSgws[] sgws~%uint8 num_sgws~%uint16 live_cnt~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeSgws~%sensor_interface_msgs/UssEnvelopeMeas meas~%sensor_interface_msgs/UssEnvelopeDiag diag~%sensor_interface_msgs/UssEnvelopeId id~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeMeas~%float32 tx_frequency~%float32 rx_frequency~%sensor_interface_msgs/UssMeaMode measurement_mode~%float32 reverberation_time~%uint16 reverberation_period~%float32 distance_interval~%sensor_interface_msgs/NearRangeDetectionStatus near_range_detection_status~%float32 near_range_distance~%uint16 num_amplitude_samples~%float32[] amplitude_samples~%~%================================================================================~%MSG: sensor_interface_msgs/UssMeaMode~%uint8 MEAS_MODE_NEAR_RANGE_AM = 0~%uint8 MEAS_MODE_DUAL_AM_LOW = 1~%uint8 MEAS_MODE_DUAL_AM_HIGH = 2~%uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3~%uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4~%uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5~%uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6~%uint8 MEAS_MODE_RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/NearRangeDetectionStatus~%uint8 USS_NEAR_RANGE_UNAVAILABLE = 0~%uint8 USS_NEAR_RANGE_NO_DETECTION = 1~%uint8 USS_NEAR_RANGE_VALID_DETECTION = 2~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeDiag~%int8 aRawient_temperature~%uint8 cont_wav_noise_l~%uint8 cont_wav_noise_h~%bool sensor_status_valid~%bool sensor_com_status_valid~%bool thermal_warning~%bool tx_fail~%bool sensor_disturbed~%bool white_band_noise~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeId~%uint8 tx_sensor_id~%uint8 rx_sensor_id~%uint64 host_timestamp~%sensor_interface_msgs/UltrasonicResultMeta meta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawUSSOutputFrame>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sgws) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawUSSOutputFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'RawUSSOutputFrame
    (cl:cons ':sgws (sgws msg))
    (cl:cons ':num_sgws (num_sgws msg))
    (cl:cons ':live_cnt (live_cnt msg))
))
