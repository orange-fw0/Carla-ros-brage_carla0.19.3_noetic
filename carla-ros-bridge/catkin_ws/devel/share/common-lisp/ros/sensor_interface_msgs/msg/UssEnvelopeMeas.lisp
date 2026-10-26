; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssEnvelopeMeas.msg.html

(cl:defclass <UssEnvelopeMeas> (roslisp-msg-protocol:ros-message)
  ((tx_frequency
    :reader tx_frequency
    :initarg :tx_frequency
    :type cl:float
    :initform 0.0)
   (rx_frequency
    :reader rx_frequency
    :initarg :rx_frequency
    :type cl:float
    :initform 0.0)
   (measurement_mode
    :reader measurement_mode
    :initarg :measurement_mode
    :type sensor_interface_msgs-msg:UssMeaMode
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssMeaMode))
   (reverberation_time
    :reader reverberation_time
    :initarg :reverberation_time
    :type cl:float
    :initform 0.0)
   (reverberation_period
    :reader reverberation_period
    :initarg :reverberation_period
    :type cl:fixnum
    :initform 0)
   (distance_interval
    :reader distance_interval
    :initarg :distance_interval
    :type cl:float
    :initform 0.0)
   (near_range_detection_status
    :reader near_range_detection_status
    :initarg :near_range_detection_status
    :type sensor_interface_msgs-msg:NearRangeDetectionStatus
    :initform (cl:make-instance 'sensor_interface_msgs-msg:NearRangeDetectionStatus))
   (near_range_distance
    :reader near_range_distance
    :initarg :near_range_distance
    :type cl:float
    :initform 0.0)
   (num_amplitude_samples
    :reader num_amplitude_samples
    :initarg :num_amplitude_samples
    :type cl:fixnum
    :initform 0)
   (amplitude_samples
    :reader amplitude_samples
    :initarg :amplitude_samples
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass UssEnvelopeMeas (<UssEnvelopeMeas>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssEnvelopeMeas>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssEnvelopeMeas)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssEnvelopeMeas> is deprecated: use sensor_interface_msgs-msg:UssEnvelopeMeas instead.")))

(cl:ensure-generic-function 'tx_frequency-val :lambda-list '(m))
(cl:defmethod tx_frequency-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:tx_frequency-val is deprecated.  Use sensor_interface_msgs-msg:tx_frequency instead.")
  (tx_frequency m))

(cl:ensure-generic-function 'rx_frequency-val :lambda-list '(m))
(cl:defmethod rx_frequency-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:rx_frequency-val is deprecated.  Use sensor_interface_msgs-msg:rx_frequency instead.")
  (rx_frequency m))

(cl:ensure-generic-function 'measurement_mode-val :lambda-list '(m))
(cl:defmethod measurement_mode-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:measurement_mode-val is deprecated.  Use sensor_interface_msgs-msg:measurement_mode instead.")
  (measurement_mode m))

(cl:ensure-generic-function 'reverberation_time-val :lambda-list '(m))
(cl:defmethod reverberation_time-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reverberation_time-val is deprecated.  Use sensor_interface_msgs-msg:reverberation_time instead.")
  (reverberation_time m))

(cl:ensure-generic-function 'reverberation_period-val :lambda-list '(m))
(cl:defmethod reverberation_period-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reverberation_period-val is deprecated.  Use sensor_interface_msgs-msg:reverberation_period instead.")
  (reverberation_period m))

(cl:ensure-generic-function 'distance_interval-val :lambda-list '(m))
(cl:defmethod distance_interval-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:distance_interval-val is deprecated.  Use sensor_interface_msgs-msg:distance_interval instead.")
  (distance_interval m))

(cl:ensure-generic-function 'near_range_detection_status-val :lambda-list '(m))
(cl:defmethod near_range_detection_status-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:near_range_detection_status-val is deprecated.  Use sensor_interface_msgs-msg:near_range_detection_status instead.")
  (near_range_detection_status m))

(cl:ensure-generic-function 'near_range_distance-val :lambda-list '(m))
(cl:defmethod near_range_distance-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:near_range_distance-val is deprecated.  Use sensor_interface_msgs-msg:near_range_distance instead.")
  (near_range_distance m))

(cl:ensure-generic-function 'num_amplitude_samples-val :lambda-list '(m))
(cl:defmethod num_amplitude_samples-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:num_amplitude_samples-val is deprecated.  Use sensor_interface_msgs-msg:num_amplitude_samples instead.")
  (num_amplitude_samples m))

(cl:ensure-generic-function 'amplitude_samples-val :lambda-list '(m))
(cl:defmethod amplitude_samples-val ((m <UssEnvelopeMeas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:amplitude_samples-val is deprecated.  Use sensor_interface_msgs-msg:amplitude_samples instead.")
  (amplitude_samples m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssEnvelopeMeas>) ostream)
  "Serializes a message object of type '<UssEnvelopeMeas>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tx_frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rx_frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'measurement_mode) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reverberation_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverberation_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reverberation_period)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'near_range_detection_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'near_range_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_amplitude_samples)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_amplitude_samples)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'amplitude_samples))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'amplitude_samples))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssEnvelopeMeas>) istream)
  "Deserializes a message object of type '<UssEnvelopeMeas>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tx_frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rx_frequency) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'measurement_mode) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reverberation_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverberation_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reverberation_period)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_interval) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'near_range_detection_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'near_range_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_amplitude_samples)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_amplitude_samples)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'amplitude_samples) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'amplitude_samples)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssEnvelopeMeas>)))
  "Returns string type for a message object of type '<UssEnvelopeMeas>"
  "sensor_interface_msgs/UssEnvelopeMeas")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssEnvelopeMeas)))
  "Returns string type for a message object of type 'UssEnvelopeMeas"
  "sensor_interface_msgs/UssEnvelopeMeas")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssEnvelopeMeas>)))
  "Returns md5sum for a message object of type '<UssEnvelopeMeas>"
  "07ec4ac88972b010d545394dbd4817ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssEnvelopeMeas)))
  "Returns md5sum for a message object of type 'UssEnvelopeMeas"
  "07ec4ac88972b010d545394dbd4817ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssEnvelopeMeas>)))
  "Returns full string definition for message of type '<UssEnvelopeMeas>"
  (cl:format cl:nil "float32 tx_frequency~%float32 rx_frequency~%sensor_interface_msgs/UssMeaMode measurement_mode~%float32 reverberation_time~%uint16 reverberation_period~%float32 distance_interval~%sensor_interface_msgs/NearRangeDetectionStatus near_range_detection_status~%float32 near_range_distance~%uint16 num_amplitude_samples~%float32[] amplitude_samples~%~%================================================================================~%MSG: sensor_interface_msgs/UssMeaMode~%uint8 MEAS_MODE_NEAR_RANGE_AM = 0~%uint8 MEAS_MODE_DUAL_AM_LOW = 1~%uint8 MEAS_MODE_DUAL_AM_HIGH = 2~%uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3~%uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4~%uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5~%uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6~%uint8 MEAS_MODE_RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/NearRangeDetectionStatus~%uint8 USS_NEAR_RANGE_UNAVAILABLE = 0~%uint8 USS_NEAR_RANGE_NO_DETECTION = 1~%uint8 USS_NEAR_RANGE_VALID_DETECTION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssEnvelopeMeas)))
  "Returns full string definition for message of type 'UssEnvelopeMeas"
  (cl:format cl:nil "float32 tx_frequency~%float32 rx_frequency~%sensor_interface_msgs/UssMeaMode measurement_mode~%float32 reverberation_time~%uint16 reverberation_period~%float32 distance_interval~%sensor_interface_msgs/NearRangeDetectionStatus near_range_detection_status~%float32 near_range_distance~%uint16 num_amplitude_samples~%float32[] amplitude_samples~%~%================================================================================~%MSG: sensor_interface_msgs/UssMeaMode~%uint8 MEAS_MODE_NEAR_RANGE_AM = 0~%uint8 MEAS_MODE_DUAL_AM_LOW = 1~%uint8 MEAS_MODE_DUAL_AM_HIGH = 2~%uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3~%uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4~%uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5~%uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6~%uint8 MEAS_MODE_RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/NearRangeDetectionStatus~%uint8 USS_NEAR_RANGE_UNAVAILABLE = 0~%uint8 USS_NEAR_RANGE_NO_DETECTION = 1~%uint8 USS_NEAR_RANGE_VALID_DETECTION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssEnvelopeMeas>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'measurement_mode))
     4
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'near_range_detection_status))
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'amplitude_samples) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssEnvelopeMeas>))
  "Converts a ROS message object to a list"
  (cl:list 'UssEnvelopeMeas
    (cl:cons ':tx_frequency (tx_frequency msg))
    (cl:cons ':rx_frequency (rx_frequency msg))
    (cl:cons ':measurement_mode (measurement_mode msg))
    (cl:cons ':reverberation_time (reverberation_time msg))
    (cl:cons ':reverberation_period (reverberation_period msg))
    (cl:cons ':distance_interval (distance_interval msg))
    (cl:cons ':near_range_detection_status (near_range_detection_status msg))
    (cl:cons ':near_range_distance (near_range_distance msg))
    (cl:cons ':num_amplitude_samples (num_amplitude_samples msg))
    (cl:cons ':amplitude_samples (amplitude_samples msg))
))
