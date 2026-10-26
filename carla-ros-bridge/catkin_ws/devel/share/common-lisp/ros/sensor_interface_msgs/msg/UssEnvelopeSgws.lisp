; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssEnvelopeSgws.msg.html

(cl:defclass <UssEnvelopeSgws> (roslisp-msg-protocol:ros-message)
  ((meas
    :reader meas
    :initarg :meas
    :type sensor_interface_msgs-msg:UssEnvelopeMeas
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssEnvelopeMeas))
   (diag
    :reader diag
    :initarg :diag
    :type sensor_interface_msgs-msg:UssEnvelopeDiag
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssEnvelopeDiag))
   (id
    :reader id
    :initarg :id
    :type sensor_interface_msgs-msg:UssEnvelopeId
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssEnvelopeId)))
)

(cl:defclass UssEnvelopeSgws (<UssEnvelopeSgws>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssEnvelopeSgws>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssEnvelopeSgws)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssEnvelopeSgws> is deprecated: use sensor_interface_msgs-msg:UssEnvelopeSgws instead.")))

(cl:ensure-generic-function 'meas-val :lambda-list '(m))
(cl:defmethod meas-val ((m <UssEnvelopeSgws>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meas-val is deprecated.  Use sensor_interface_msgs-msg:meas instead.")
  (meas m))

(cl:ensure-generic-function 'diag-val :lambda-list '(m))
(cl:defmethod diag-val ((m <UssEnvelopeSgws>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:diag-val is deprecated.  Use sensor_interface_msgs-msg:diag instead.")
  (diag m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UssEnvelopeSgws>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:id-val is deprecated.  Use sensor_interface_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssEnvelopeSgws>) ostream)
  "Serializes a message object of type '<UssEnvelopeSgws>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meas) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diag) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssEnvelopeSgws>) istream)
  "Deserializes a message object of type '<UssEnvelopeSgws>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meas) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diag) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssEnvelopeSgws>)))
  "Returns string type for a message object of type '<UssEnvelopeSgws>"
  "sensor_interface_msgs/UssEnvelopeSgws")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssEnvelopeSgws)))
  "Returns string type for a message object of type 'UssEnvelopeSgws"
  "sensor_interface_msgs/UssEnvelopeSgws")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssEnvelopeSgws>)))
  "Returns md5sum for a message object of type '<UssEnvelopeSgws>"
  "d0d321ae249c7871a705001507af1bb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssEnvelopeSgws)))
  "Returns md5sum for a message object of type 'UssEnvelopeSgws"
  "d0d321ae249c7871a705001507af1bb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssEnvelopeSgws>)))
  "Returns full string definition for message of type '<UssEnvelopeSgws>"
  (cl:format cl:nil "sensor_interface_msgs/UssEnvelopeMeas meas~%sensor_interface_msgs/UssEnvelopeDiag diag~%sensor_interface_msgs/UssEnvelopeId id~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeMeas~%float32 tx_frequency~%float32 rx_frequency~%sensor_interface_msgs/UssMeaMode measurement_mode~%float32 reverberation_time~%uint16 reverberation_period~%float32 distance_interval~%sensor_interface_msgs/NearRangeDetectionStatus near_range_detection_status~%float32 near_range_distance~%uint16 num_amplitude_samples~%float32[] amplitude_samples~%~%================================================================================~%MSG: sensor_interface_msgs/UssMeaMode~%uint8 MEAS_MODE_NEAR_RANGE_AM = 0~%uint8 MEAS_MODE_DUAL_AM_LOW = 1~%uint8 MEAS_MODE_DUAL_AM_HIGH = 2~%uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3~%uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4~%uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5~%uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6~%uint8 MEAS_MODE_RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/NearRangeDetectionStatus~%uint8 USS_NEAR_RANGE_UNAVAILABLE = 0~%uint8 USS_NEAR_RANGE_NO_DETECTION = 1~%uint8 USS_NEAR_RANGE_VALID_DETECTION = 2~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeDiag~%int8 aRawient_temperature~%uint8 cont_wav_noise_l~%uint8 cont_wav_noise_h~%bool sensor_status_valid~%bool sensor_com_status_valid~%bool thermal_warning~%bool tx_fail~%bool sensor_disturbed~%bool white_band_noise~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeId~%uint8 tx_sensor_id~%uint8 rx_sensor_id~%uint64 host_timestamp~%sensor_interface_msgs/UltrasonicResultMeta meta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssEnvelopeSgws)))
  "Returns full string definition for message of type 'UssEnvelopeSgws"
  (cl:format cl:nil "sensor_interface_msgs/UssEnvelopeMeas meas~%sensor_interface_msgs/UssEnvelopeDiag diag~%sensor_interface_msgs/UssEnvelopeId id~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeMeas~%float32 tx_frequency~%float32 rx_frequency~%sensor_interface_msgs/UssMeaMode measurement_mode~%float32 reverberation_time~%uint16 reverberation_period~%float32 distance_interval~%sensor_interface_msgs/NearRangeDetectionStatus near_range_detection_status~%float32 near_range_distance~%uint16 num_amplitude_samples~%float32[] amplitude_samples~%~%================================================================================~%MSG: sensor_interface_msgs/UssMeaMode~%uint8 MEAS_MODE_NEAR_RANGE_AM = 0~%uint8 MEAS_MODE_DUAL_AM_LOW = 1~%uint8 MEAS_MODE_DUAL_AM_HIGH = 2~%uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3~%uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4~%uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5~%uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6~%uint8 MEAS_MODE_RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/NearRangeDetectionStatus~%uint8 USS_NEAR_RANGE_UNAVAILABLE = 0~%uint8 USS_NEAR_RANGE_NO_DETECTION = 1~%uint8 USS_NEAR_RANGE_VALID_DETECTION = 2~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeDiag~%int8 aRawient_temperature~%uint8 cont_wav_noise_l~%uint8 cont_wav_noise_h~%bool sensor_status_valid~%bool sensor_com_status_valid~%bool thermal_warning~%bool tx_fail~%bool sensor_disturbed~%bool white_band_noise~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UssEnvelopeId~%uint8 tx_sensor_id~%uint8 rx_sensor_id~%uint64 host_timestamp~%sensor_interface_msgs/UltrasonicResultMeta meta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssEnvelopeSgws>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meas))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diag))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssEnvelopeSgws>))
  "Converts a ROS message object to a list"
  (cl:list 'UssEnvelopeSgws
    (cl:cons ':meas (meas msg))
    (cl:cons ':diag (diag msg))
    (cl:cons ':id (id msg))
))
