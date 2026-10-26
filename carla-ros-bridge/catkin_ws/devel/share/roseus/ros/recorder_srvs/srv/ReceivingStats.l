;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::ReceivingStats)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'ReceivingStats (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::RECEIVINGSTATS")
  (make-package "RECORDER_SRVS::RECEIVINGSTATS"))
(unless (find-package "RECORDER_SRVS::RECEIVINGSTATSREQUEST")
  (make-package "RECORDER_SRVS::RECEIVINGSTATSREQUEST"))
(unless (find-package "RECORDER_SRVS::RECEIVINGSTATSRESPONSE")
  (make-package "RECORDER_SRVS::RECEIVINGSTATSRESPONSE"))

(in-package "ROS")



(if (not (find-package "RECORDER_MSGS"))
  (ros::roseus-add-msgs "recorder_msgs"))


(defclass recorder_srvs::ReceivingStatsRequest
  :super ros::object
  :slots (_latest ))

(defmethod recorder_srvs::ReceivingStatsRequest
  (:init
   (&key
    ((:latest __latest) 0)
    )
   (send-super :init)
   (setq _latest (round __latest))
   self)
  (:latest
   (&optional __latest)
   (if __latest (setq _latest __latest)) _latest)
  (:serialization-length
   ()
   (+
    ;; uint8 _latest
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _latest
       (write-byte _latest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _latest
     (setq _latest (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass recorder_srvs::ReceivingStatsResponse
  :super ros::object
  :slots (_samples ))

(defmethod recorder_srvs::ReceivingStatsResponse
  (:init
   (&key
    ((:samples __samples) ())
    )
   (send-super :init)
   (setq _samples __samples)
   self)
  (:samples
   (&rest __samples)
   (if (keywordp (car __samples))
       (send* _samples __samples)
     (progn
       (if __samples (setq _samples (car __samples)))
       _samples)))
  (:serialization-length
   ()
   (+
    ;; recorder_msgs/ReceivingSample[] _samples
    (apply #'+ (send-all _samples :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; recorder_msgs/ReceivingSample[] _samples
     (write-long (length _samples) s)
     (dolist (elem _samples)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; recorder_msgs/ReceivingSample[] _samples
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _samples (let (r) (dotimes (i n) (push (instance recorder_msgs::ReceivingSample :init) r)) r))
     (dolist (elem- _samples)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::ReceivingStats
  :super ros::object
  :slots ())

(setf (get recorder_srvs::ReceivingStats :md5sum-) "c0ccbe04b62819578e1282021bf46b5c")
(setf (get recorder_srvs::ReceivingStats :datatype-) "recorder_srvs/ReceivingStats")
(setf (get recorder_srvs::ReceivingStats :request) recorder_srvs::ReceivingStatsRequest)
(setf (get recorder_srvs::ReceivingStats :response) recorder_srvs::ReceivingStatsResponse)

(defmethod recorder_srvs::ReceivingStatsRequest
  (:response () (instance recorder_srvs::ReceivingStatsResponse :init)))

(setf (get recorder_srvs::ReceivingStatsRequest :md5sum-) "c0ccbe04b62819578e1282021bf46b5c")
(setf (get recorder_srvs::ReceivingStatsRequest :datatype-) "recorder_srvs/ReceivingStatsRequest")
(setf (get recorder_srvs::ReceivingStatsRequest :definition-)
      "uint8 latest
---
recorder_msgs/ReceivingSample[] samples


================================================================================
MSG: recorder_msgs/ReceivingSample
time stamp
duration interval
float64 data_rate
string[] topics
string[] data_types
uint32[] msg_counts
float32[] msg_rates
")

(setf (get recorder_srvs::ReceivingStatsResponse :md5sum-) "c0ccbe04b62819578e1282021bf46b5c")
(setf (get recorder_srvs::ReceivingStatsResponse :datatype-) "recorder_srvs/ReceivingStatsResponse")
(setf (get recorder_srvs::ReceivingStatsResponse :definition-)
      "uint8 latest
---
recorder_msgs/ReceivingSample[] samples


================================================================================
MSG: recorder_msgs/ReceivingSample
time stamp
duration interval
float64 data_rate
string[] topics
string[] data_types
uint32[] msg_counts
float32[] msg_rates
")



(provide :recorder_srvs/ReceivingStats "c0ccbe04b62819578e1282021bf46b5c")


