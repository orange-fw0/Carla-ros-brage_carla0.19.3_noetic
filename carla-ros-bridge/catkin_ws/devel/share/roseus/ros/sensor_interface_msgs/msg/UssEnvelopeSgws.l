;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssEnvelopeSgws)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssEnvelopeSgws (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSENVELOPESGWS")
  (make-package "SENSOR_INTERFACE_MSGS::USSENVELOPESGWS"))

(in-package "ROS")
;;//! \htmlinclude UssEnvelopeSgws.msg.html


(defclass sensor_interface_msgs::UssEnvelopeSgws
  :super ros::object
  :slots (_meas _diag _id ))

(defmethod sensor_interface_msgs::UssEnvelopeSgws
  (:init
   (&key
    ((:meas __meas) (instance sensor_interface_msgs::UssEnvelopeMeas :init))
    ((:diag __diag) (instance sensor_interface_msgs::UssEnvelopeDiag :init))
    ((:id __id) (instance sensor_interface_msgs::UssEnvelopeId :init))
    )
   (send-super :init)
   (setq _meas __meas)
   (setq _diag __diag)
   (setq _id __id)
   self)
  (:meas
   (&rest __meas)
   (if (keywordp (car __meas))
       (send* _meas __meas)
     (progn
       (if __meas (setq _meas (car __meas)))
       _meas)))
  (:diag
   (&rest __diag)
   (if (keywordp (car __diag))
       (send* _diag __diag)
     (progn
       (if __diag (setq _diag (car __diag)))
       _diag)))
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UssEnvelopeMeas _meas
    (send _meas :serialization-length)
    ;; sensor_interface_msgs/UssEnvelopeDiag _diag
    (send _diag :serialization-length)
    ;; sensor_interface_msgs/UssEnvelopeId _id
    (send _id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UssEnvelopeMeas _meas
       (send _meas :serialize s)
     ;; sensor_interface_msgs/UssEnvelopeDiag _diag
       (send _diag :serialize s)
     ;; sensor_interface_msgs/UssEnvelopeId _id
       (send _id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UssEnvelopeMeas _meas
     (send _meas :deserialize buf ptr-) (incf ptr- (send _meas :serialization-length))
   ;; sensor_interface_msgs/UssEnvelopeDiag _diag
     (send _diag :deserialize buf ptr-) (incf ptr- (send _diag :serialization-length))
   ;; sensor_interface_msgs/UssEnvelopeId _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssEnvelopeSgws :md5sum-) "d0d321ae249c7871a705001507af1bb2")
(setf (get sensor_interface_msgs::UssEnvelopeSgws :datatype-) "sensor_interface_msgs/UssEnvelopeSgws")
(setf (get sensor_interface_msgs::UssEnvelopeSgws :definition-)
      "sensor_interface_msgs/UssEnvelopeMeas meas
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



(provide :sensor_interface_msgs/UssEnvelopeSgws "d0d321ae249c7871a705001507af1bb2")


