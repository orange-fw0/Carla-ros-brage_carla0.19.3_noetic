;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::CommonUltrasonicObstacleData)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'CommonUltrasonicObstacleData (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::COMMONULTRASONICOBSTACLEDATA")
  (make-package "SENSOR_INTERFACE_MSGS::COMMONULTRASONICOBSTACLEDATA"))

(in-package "ROS")
;;//! \htmlinclude CommonUltrasonicObstacleData.msg.html


(defclass sensor_interface_msgs::CommonUltrasonicObstacleData
  :super ros::object
  :slots (_available _meta _obj_type _obj_height _obj_height_probability _obj_probability _obj_start_X _obj_start_Y _obj_end_X _obj_end_Y _obj_height_value _major_axis_error _minor_axis_variance _ellipse_theta_variance _reserved_info ))

(defmethod sensor_interface_msgs::CommonUltrasonicObstacleData
  (:init
   (&key
    ((:available __available) 0)
    ((:meta __meta) (instance sensor_interface_msgs::UltrasonicResultMeta :init))
    ((:obj_type __obj_type) (instance sensor_interface_msgs::UltrasonicObjectType :init))
    ((:obj_height __obj_height) (instance sensor_interface_msgs::UltrasonicObjectHeiType :init))
    ((:obj_height_probability __obj_height_probability) 0.0)
    ((:obj_probability __obj_probability) 0.0)
    ((:obj_start_X __obj_start_X) 0.0)
    ((:obj_start_Y __obj_start_Y) 0.0)
    ((:obj_end_X __obj_end_X) 0.0)
    ((:obj_end_Y __obj_end_Y) 0.0)
    ((:obj_height_value __obj_height_value) 0.0)
    ((:major_axis_error __major_axis_error) 0.0)
    ((:minor_axis_variance __minor_axis_variance) 0.0)
    ((:ellipse_theta_variance __ellipse_theta_variance) 0.0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _meta __meta)
   (setq _obj_type __obj_type)
   (setq _obj_height __obj_height)
   (setq _obj_height_probability (float __obj_height_probability))
   (setq _obj_probability (float __obj_probability))
   (setq _obj_start_X (float __obj_start_X))
   (setq _obj_start_Y (float __obj_start_Y))
   (setq _obj_end_X (float __obj_end_X))
   (setq _obj_end_Y (float __obj_end_Y))
   (setq _obj_height_value (float __obj_height_value))
   (setq _major_axis_error (float __major_axis_error))
   (setq _minor_axis_variance (float __minor_axis_variance))
   (setq _ellipse_theta_variance (float __ellipse_theta_variance))
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:obj_type
   (&rest __obj_type)
   (if (keywordp (car __obj_type))
       (send* _obj_type __obj_type)
     (progn
       (if __obj_type (setq _obj_type (car __obj_type)))
       _obj_type)))
  (:obj_height
   (&rest __obj_height)
   (if (keywordp (car __obj_height))
       (send* _obj_height __obj_height)
     (progn
       (if __obj_height (setq _obj_height (car __obj_height)))
       _obj_height)))
  (:obj_height_probability
   (&optional __obj_height_probability)
   (if __obj_height_probability (setq _obj_height_probability __obj_height_probability)) _obj_height_probability)
  (:obj_probability
   (&optional __obj_probability)
   (if __obj_probability (setq _obj_probability __obj_probability)) _obj_probability)
  (:obj_start_X
   (&optional __obj_start_X)
   (if __obj_start_X (setq _obj_start_X __obj_start_X)) _obj_start_X)
  (:obj_start_Y
   (&optional __obj_start_Y)
   (if __obj_start_Y (setq _obj_start_Y __obj_start_Y)) _obj_start_Y)
  (:obj_end_X
   (&optional __obj_end_X)
   (if __obj_end_X (setq _obj_end_X __obj_end_X)) _obj_end_X)
  (:obj_end_Y
   (&optional __obj_end_Y)
   (if __obj_end_Y (setq _obj_end_Y __obj_end_Y)) _obj_end_Y)
  (:obj_height_value
   (&optional __obj_height_value)
   (if __obj_height_value (setq _obj_height_value __obj_height_value)) _obj_height_value)
  (:major_axis_error
   (&optional __major_axis_error)
   (if __major_axis_error (setq _major_axis_error __major_axis_error)) _major_axis_error)
  (:minor_axis_variance
   (&optional __minor_axis_variance)
   (if __minor_axis_variance (setq _minor_axis_variance __minor_axis_variance)) _minor_axis_variance)
  (:ellipse_theta_variance
   (&optional __ellipse_theta_variance)
   (if __ellipse_theta_variance (setq _ellipse_theta_variance __ellipse_theta_variance)) _ellipse_theta_variance)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; sensor_interface_msgs/UltrasonicResultMeta _meta
    (send _meta :serialization-length)
    ;; sensor_interface_msgs/UltrasonicObjectType _obj_type
    (send _obj_type :serialization-length)
    ;; sensor_interface_msgs/UltrasonicObjectHeiType _obj_height
    (send _obj_height :serialization-length)
    ;; float32 _obj_height_probability
    4
    ;; float32 _obj_probability
    4
    ;; float32 _obj_start_X
    4
    ;; float32 _obj_start_Y
    4
    ;; float32 _obj_end_X
    4
    ;; float32 _obj_end_Y
    4
    ;; float32 _obj_height_value
    4
    ;; float32 _major_axis_error
    4
    ;; float32 _minor_axis_variance
    4
    ;; float32 _ellipse_theta_variance
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; sensor_interface_msgs/UltrasonicResultMeta _meta
       (send _meta :serialize s)
     ;; sensor_interface_msgs/UltrasonicObjectType _obj_type
       (send _obj_type :serialize s)
     ;; sensor_interface_msgs/UltrasonicObjectHeiType _obj_height
       (send _obj_height :serialize s)
     ;; float32 _obj_height_probability
       (sys::poke _obj_height_probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _obj_probability
       (sys::poke _obj_probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _obj_start_X
       (sys::poke _obj_start_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _obj_start_Y
       (sys::poke _obj_start_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _obj_end_X
       (sys::poke _obj_end_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _obj_end_Y
       (sys::poke _obj_end_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _obj_height_value
       (sys::poke _obj_height_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _major_axis_error
       (sys::poke _major_axis_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minor_axis_variance
       (sys::poke _minor_axis_variance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ellipse_theta_variance
       (sys::poke _ellipse_theta_variance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_interface_msgs/UltrasonicResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; sensor_interface_msgs/UltrasonicObjectType _obj_type
     (send _obj_type :deserialize buf ptr-) (incf ptr- (send _obj_type :serialization-length))
   ;; sensor_interface_msgs/UltrasonicObjectHeiType _obj_height
     (send _obj_height :deserialize buf ptr-) (incf ptr- (send _obj_height :serialization-length))
   ;; float32 _obj_height_probability
     (setq _obj_height_probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _obj_probability
     (setq _obj_probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _obj_start_X
     (setq _obj_start_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _obj_start_Y
     (setq _obj_start_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _obj_end_X
     (setq _obj_end_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _obj_end_Y
     (setq _obj_end_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _obj_height_value
     (setq _obj_height_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _major_axis_error
     (setq _major_axis_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minor_axis_variance
     (setq _minor_axis_variance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ellipse_theta_variance
     (setq _ellipse_theta_variance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::CommonUltrasonicObstacleData :md5sum-) "ac4d088e90f3561263ca5d0ce0641340")
(setf (get sensor_interface_msgs::CommonUltrasonicObstacleData :datatype-) "sensor_interface_msgs/CommonUltrasonicObstacleData")
(setf (get sensor_interface_msgs::CommonUltrasonicObstacleData :definition-)
      "uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
sensor_interface_msgs/UltrasonicObjectType obj_type
sensor_interface_msgs/UltrasonicObjectHeiType obj_height
float32 obj_height_probability
float32 obj_probability
float32 obj_start_X
float32 obj_start_Y
float32 obj_end_X
float32 obj_end_Y
float32 obj_height_value
float32 major_axis_error
float32 minor_axis_variance
float32 ellipse_theta_variance
string reserved_info

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/UltrasonicObjectType
uint8 NONE = 0
uint8 POINT = 1
uint8 STRAIGHT_LINE = 2
uint8 RAYS = 3
uint8 LINE_SEGMENT = 5
uint8 SNA = 7
uint8 RESERVED_INFO = 8
uint8 value

================================================================================
MSG: sensor_interface_msgs/UltrasonicObjectHeiType
uint8 LOW = 0
uint8 HIGH = 1
uint8 TRAVERSIBLE = 2
uint8 UNKONOWN = 3
uint8 value

")



(provide :sensor_interface_msgs/CommonUltrasonicObstacleData "ac4d088e90f3561263ca5d0ce0641340")


