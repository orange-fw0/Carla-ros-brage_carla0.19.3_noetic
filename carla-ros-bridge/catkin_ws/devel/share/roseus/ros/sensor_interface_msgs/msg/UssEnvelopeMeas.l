;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssEnvelopeMeas)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssEnvelopeMeas (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSENVELOPEMEAS")
  (make-package "SENSOR_INTERFACE_MSGS::USSENVELOPEMEAS"))

(in-package "ROS")
;;//! \htmlinclude UssEnvelopeMeas.msg.html


(defclass sensor_interface_msgs::UssEnvelopeMeas
  :super ros::object
  :slots (_tx_frequency _rx_frequency _measurement_mode _reverberation_time _reverberation_period _distance_interval _near_range_detection_status _near_range_distance _num_amplitude_samples _amplitude_samples ))

(defmethod sensor_interface_msgs::UssEnvelopeMeas
  (:init
   (&key
    ((:tx_frequency __tx_frequency) 0.0)
    ((:rx_frequency __rx_frequency) 0.0)
    ((:measurement_mode __measurement_mode) (instance sensor_interface_msgs::UssMeaMode :init))
    ((:reverberation_time __reverberation_time) 0.0)
    ((:reverberation_period __reverberation_period) 0)
    ((:distance_interval __distance_interval) 0.0)
    ((:near_range_detection_status __near_range_detection_status) (instance sensor_interface_msgs::NearRangeDetectionStatus :init))
    ((:near_range_distance __near_range_distance) 0.0)
    ((:num_amplitude_samples __num_amplitude_samples) 0)
    ((:amplitude_samples __amplitude_samples) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _tx_frequency (float __tx_frequency))
   (setq _rx_frequency (float __rx_frequency))
   (setq _measurement_mode __measurement_mode)
   (setq _reverberation_time (float __reverberation_time))
   (setq _reverberation_period (round __reverberation_period))
   (setq _distance_interval (float __distance_interval))
   (setq _near_range_detection_status __near_range_detection_status)
   (setq _near_range_distance (float __near_range_distance))
   (setq _num_amplitude_samples (round __num_amplitude_samples))
   (setq _amplitude_samples __amplitude_samples)
   self)
  (:tx_frequency
   (&optional __tx_frequency)
   (if __tx_frequency (setq _tx_frequency __tx_frequency)) _tx_frequency)
  (:rx_frequency
   (&optional __rx_frequency)
   (if __rx_frequency (setq _rx_frequency __rx_frequency)) _rx_frequency)
  (:measurement_mode
   (&rest __measurement_mode)
   (if (keywordp (car __measurement_mode))
       (send* _measurement_mode __measurement_mode)
     (progn
       (if __measurement_mode (setq _measurement_mode (car __measurement_mode)))
       _measurement_mode)))
  (:reverberation_time
   (&optional __reverberation_time)
   (if __reverberation_time (setq _reverberation_time __reverberation_time)) _reverberation_time)
  (:reverberation_period
   (&optional __reverberation_period)
   (if __reverberation_period (setq _reverberation_period __reverberation_period)) _reverberation_period)
  (:distance_interval
   (&optional __distance_interval)
   (if __distance_interval (setq _distance_interval __distance_interval)) _distance_interval)
  (:near_range_detection_status
   (&rest __near_range_detection_status)
   (if (keywordp (car __near_range_detection_status))
       (send* _near_range_detection_status __near_range_detection_status)
     (progn
       (if __near_range_detection_status (setq _near_range_detection_status (car __near_range_detection_status)))
       _near_range_detection_status)))
  (:near_range_distance
   (&optional __near_range_distance)
   (if __near_range_distance (setq _near_range_distance __near_range_distance)) _near_range_distance)
  (:num_amplitude_samples
   (&optional __num_amplitude_samples)
   (if __num_amplitude_samples (setq _num_amplitude_samples __num_amplitude_samples)) _num_amplitude_samples)
  (:amplitude_samples
   (&optional __amplitude_samples)
   (if __amplitude_samples (setq _amplitude_samples __amplitude_samples)) _amplitude_samples)
  (:serialization-length
   ()
   (+
    ;; float32 _tx_frequency
    4
    ;; float32 _rx_frequency
    4
    ;; sensor_interface_msgs/UssMeaMode _measurement_mode
    (send _measurement_mode :serialization-length)
    ;; float32 _reverberation_time
    4
    ;; uint16 _reverberation_period
    2
    ;; float32 _distance_interval
    4
    ;; sensor_interface_msgs/NearRangeDetectionStatus _near_range_detection_status
    (send _near_range_detection_status :serialization-length)
    ;; float32 _near_range_distance
    4
    ;; uint16 _num_amplitude_samples
    2
    ;; float32[] _amplitude_samples
    (* 4    (length _amplitude_samples)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tx_frequency
       (sys::poke _tx_frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rx_frequency
       (sys::poke _rx_frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_interface_msgs/UssMeaMode _measurement_mode
       (send _measurement_mode :serialize s)
     ;; float32 _reverberation_time
       (sys::poke _reverberation_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _reverberation_period
       (write-word _reverberation_period s)
     ;; float32 _distance_interval
       (sys::poke _distance_interval (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_interface_msgs/NearRangeDetectionStatus _near_range_detection_status
       (send _near_range_detection_status :serialize s)
     ;; float32 _near_range_distance
       (sys::poke _near_range_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _num_amplitude_samples
       (write-word _num_amplitude_samples s)
     ;; float32[] _amplitude_samples
     (write-long (length _amplitude_samples) s)
     (dotimes (i (length _amplitude_samples))
       (sys::poke (elt _amplitude_samples i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tx_frequency
     (setq _tx_frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rx_frequency
     (setq _rx_frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_interface_msgs/UssMeaMode _measurement_mode
     (send _measurement_mode :deserialize buf ptr-) (incf ptr- (send _measurement_mode :serialization-length))
   ;; float32 _reverberation_time
     (setq _reverberation_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _reverberation_period
     (setq _reverberation_period (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _distance_interval
     (setq _distance_interval (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_interface_msgs/NearRangeDetectionStatus _near_range_detection_status
     (send _near_range_detection_status :deserialize buf ptr-) (incf ptr- (send _near_range_detection_status :serialization-length))
   ;; float32 _near_range_distance
     (setq _near_range_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _num_amplitude_samples
     (setq _num_amplitude_samples (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32[] _amplitude_samples
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _amplitude_samples (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _amplitude_samples i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssEnvelopeMeas :md5sum-) "07ec4ac88972b010d545394dbd4817ef")
(setf (get sensor_interface_msgs::UssEnvelopeMeas :datatype-) "sensor_interface_msgs/UssEnvelopeMeas")
(setf (get sensor_interface_msgs::UssEnvelopeMeas :definition-)
      "float32 tx_frequency
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

")



(provide :sensor_interface_msgs/UssEnvelopeMeas "07ec4ac88972b010d545394dbd4817ef")


