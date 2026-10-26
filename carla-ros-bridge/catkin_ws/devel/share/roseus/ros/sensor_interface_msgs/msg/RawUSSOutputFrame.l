;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::RawUSSOutputFrame)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'RawUSSOutputFrame (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::RAWUSSOUTPUTFRAME")
  (make-package "SENSOR_INTERFACE_MSGS::RAWUSSOUTPUTFRAME"))

(in-package "ROS")
;;//! \htmlinclude RawUSSOutputFrame.msg.html


(defclass sensor_interface_msgs::RawUSSOutputFrame
  :super ros::object
  :slots (_sgws _num_sgws _live_cnt ))

(defmethod sensor_interface_msgs::RawUSSOutputFrame
  (:init
   (&key
    ((:sgws __sgws) ())
    ((:num_sgws __num_sgws) 0)
    ((:live_cnt __live_cnt) 0)
    )
   (send-super :init)
   (setq _sgws __sgws)
   (setq _num_sgws (round __num_sgws))
   (setq _live_cnt (round __live_cnt))
   self)
  (:sgws
   (&rest __sgws)
   (if (keywordp (car __sgws))
       (send* _sgws __sgws)
     (progn
       (if __sgws (setq _sgws (car __sgws)))
       _sgws)))
  (:num_sgws
   (&optional __num_sgws)
   (if __num_sgws (setq _num_sgws __num_sgws)) _num_sgws)
  (:live_cnt
   (&optional __live_cnt)
   (if __live_cnt (setq _live_cnt __live_cnt)) _live_cnt)
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UssEnvelopeSgws[] _sgws
    (apply #'+ (send-all _sgws :serialization-length)) 4
    ;; uint8 _num_sgws
    1
    ;; uint16 _live_cnt
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UssEnvelopeSgws[] _sgws
     (write-long (length _sgws) s)
     (dolist (elem _sgws)
       (send elem :serialize s)
       )
     ;; uint8 _num_sgws
       (write-byte _num_sgws s)
     ;; uint16 _live_cnt
       (write-word _live_cnt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UssEnvelopeSgws[] _sgws
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sgws (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::UssEnvelopeSgws :init) r)) r))
     (dolist (elem- _sgws)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _num_sgws
     (setq _num_sgws (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _live_cnt
     (setq _live_cnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sensor_interface_msgs::RawUSSOutputFrame :md5sum-) "1c59634166b49d284331463c78b75b08")
(setf (get sensor_interface_msgs::RawUSSOutputFrame :datatype-) "sensor_interface_msgs/RawUSSOutputFrame")
(setf (get sensor_interface_msgs::RawUSSOutputFrame :definition-)
      "sensor_interface_msgs/UssEnvelopeSgws[] sgws
uint8 num_sgws
uint16 live_cnt

================================================================================
MSG: sensor_interface_msgs/UssEnvelopeSgws
sensor_interface_msgs/UssEnvelopeMeas meas
sensor_interface_msgs/UssEnvelopeDiag diag
sensor_interface_msgs/UssEnvelopeId id

================================================================================
MSG: sensor_interface_msgs/UssEnvelopeMeas
float32 tx_frequency
float32 rx_frequency
sensor_interface_msgs/UssMeaMode measurement_mode
float32 reverberation_time
uint16 reverberation_period
float32 distance_interval
sensor_interface_msgs/NearRangeDetectionStatus near_range_detection_status
float32 near_range_distance
uint16 num_amplitude_samples
float32[] amplitude_samples

================================================================================
MSG: sensor_interface_msgs/UssMeaMode
uint8 MEAS_MODE_NEAR_RANGE_AM = 0
uint8 MEAS_MODE_DUAL_AM_LOW = 1
uint8 MEAS_MODE_DUAL_AM_HIGH = 2
uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3
uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4
uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5
uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6
uint8 MEAS_MODE_RESERVED = 7
uint8 value

================================================================================
MSG: sensor_interface_msgs/NearRangeDetectionStatus
uint8 USS_NEAR_RANGE_UNAVAILABLE = 0
uint8 USS_NEAR_RANGE_NO_DETECTION = 1
uint8 USS_NEAR_RANGE_VALID_DETECTION = 2
uint8 value

================================================================================
MSG: sensor_interface_msgs/UssEnvelopeDiag
int8 aRawient_temperature
uint8 cont_wav_noise_l
uint8 cont_wav_noise_h
bool sensor_status_valid
bool sensor_com_status_valid
bool thermal_warning
bool tx_fail
bool sensor_disturbed
bool white_band_noise
uint64 reserved

================================================================================
MSG: sensor_interface_msgs/UssEnvelopeId
uint8 tx_sensor_id
uint8 rx_sensor_id
uint64 host_timestamp
sensor_interface_msgs/UltrasonicResultMeta meta

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

")



(provide :sensor_interface_msgs/RawUSSOutputFrame "1c59634166b49d284331463c78b75b08")


