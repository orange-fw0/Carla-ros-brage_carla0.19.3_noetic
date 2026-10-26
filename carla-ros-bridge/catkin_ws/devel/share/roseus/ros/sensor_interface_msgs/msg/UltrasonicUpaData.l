;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicUpaData)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicUpaData (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADATA")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADATA"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicUpaData.msg.html


(defclass sensor_interface_msgs::UltrasonicUpaData
  :super ros::object
  :slots (_available _meta _upadistance _reserved_info ))

(defmethod sensor_interface_msgs::UltrasonicUpaData
  (:init
   (&key
    ((:available __available) 0)
    ((:meta __meta) (instance sensor_interface_msgs::UltrasonicResultMeta :init))
    ((:upadistance __upadistance) 0.0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _meta __meta)
   (setq _upadistance (float __upadistance))
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
  (:upadistance
   (&optional __upadistance)
   (if __upadistance (setq _upadistance __upadistance)) _upadistance)
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
    ;; float32 _upadistance
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
     ;; float32 _upadistance
       (sys::poke _upadistance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _upadistance
     (setq _upadistance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicUpaData :md5sum-) "32d6d66cd52cab1bd6234fade608e5f5")
(setf (get sensor_interface_msgs::UltrasonicUpaData :datatype-) "sensor_interface_msgs/UltrasonicUpaData")
(setf (get sensor_interface_msgs::UltrasonicUpaData :definition-)
      "uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
float32 upadistance
string reserved_info

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

")



(provide :sensor_interface_msgs/UltrasonicUpaData "32d6d66cd52cab1bd6234fade608e5f5")


