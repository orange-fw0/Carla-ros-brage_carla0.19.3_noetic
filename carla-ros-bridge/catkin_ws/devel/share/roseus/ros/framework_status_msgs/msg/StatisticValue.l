;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::StatisticValue)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'StatisticValue (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::STATISTICVALUE")
  (make-package "FRAMEWORK_STATUS_MSGS::STATISTICVALUE"))

(in-package "ROS")
;;//! \htmlinclude StatisticValue.msg.html


(defclass framework_status_msgs::StatisticValue
  :super ros::object
  :slots (_average _standard_deviation _max_value _min_value _reserved_info ))

(defmethod framework_status_msgs::StatisticValue
  (:init
   (&key
    ((:average __average) 0.0)
    ((:standard_deviation __standard_deviation) 0.0)
    ((:max_value __max_value) 0.0)
    ((:min_value __min_value) 0.0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _average (float __average))
   (setq _standard_deviation (float __standard_deviation))
   (setq _max_value (float __max_value))
   (setq _min_value (float __min_value))
   (setq _reserved_info (string __reserved_info))
   self)
  (:average
   (&optional __average)
   (if __average (setq _average __average)) _average)
  (:standard_deviation
   (&optional __standard_deviation)
   (if __standard_deviation (setq _standard_deviation __standard_deviation)) _standard_deviation)
  (:max_value
   (&optional __max_value)
   (if __max_value (setq _max_value __max_value)) _max_value)
  (:min_value
   (&optional __min_value)
   (if __min_value (setq _min_value __min_value)) _min_value)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; float32 _average
    4
    ;; float32 _standard_deviation
    4
    ;; float32 _max_value
    4
    ;; float32 _min_value
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _average
       (sys::poke _average (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_deviation
       (sys::poke _standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_value
       (sys::poke _max_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_value
       (sys::poke _min_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _average
     (setq _average (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_deviation
     (setq _standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_value
     (setq _max_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_value
     (setq _min_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::StatisticValue :md5sum-) "e0580c594ccf54ba77b24de03f364ba5")
(setf (get framework_status_msgs::StatisticValue :datatype-) "framework_status_msgs/StatisticValue")
(setf (get framework_status_msgs::StatisticValue :definition-)
      "float32 average
float32 standard_deviation
float32 max_value
float32 min_value
string reserved_info

")



(provide :framework_status_msgs/StatisticValue "e0580c594ccf54ba77b24de03f364ba5")


