;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSHealthInfoResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSHealthInfoResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSHEALTHINFORESULT")
  (make-package "DMS_MSGS::DMSHEALTHINFORESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSHealthInfoResult.msg.html


(defclass dms_msgs::DMSHealthInfoResult
  :super ros::object
  :slots (_heart_rate_result _respiratory_rate ))

(defmethod dms_msgs::DMSHealthInfoResult
  (:init
   (&key
    ((:heart_rate_result __heart_rate_result) (instance dms_msgs::DMSHeartRate :init))
    ((:respiratory_rate __respiratory_rate) (instance dms_msgs::RespiratoryRate :init))
    )
   (send-super :init)
   (setq _heart_rate_result __heart_rate_result)
   (setq _respiratory_rate __respiratory_rate)
   self)
  (:heart_rate_result
   (&rest __heart_rate_result)
   (if (keywordp (car __heart_rate_result))
       (send* _heart_rate_result __heart_rate_result)
     (progn
       (if __heart_rate_result (setq _heart_rate_result (car __heart_rate_result)))
       _heart_rate_result)))
  (:respiratory_rate
   (&rest __respiratory_rate)
   (if (keywordp (car __respiratory_rate))
       (send* _respiratory_rate __respiratory_rate)
     (progn
       (if __respiratory_rate (setq _respiratory_rate (car __respiratory_rate)))
       _respiratory_rate)))
  (:serialization-length
   ()
   (+
    ;; dms_msgs/DMSHeartRate _heart_rate_result
    (send _heart_rate_result :serialization-length)
    ;; dms_msgs/RespiratoryRate _respiratory_rate
    (send _respiratory_rate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dms_msgs/DMSHeartRate _heart_rate_result
       (send _heart_rate_result :serialize s)
     ;; dms_msgs/RespiratoryRate _respiratory_rate
       (send _respiratory_rate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dms_msgs/DMSHeartRate _heart_rate_result
     (send _heart_rate_result :deserialize buf ptr-) (incf ptr- (send _heart_rate_result :serialization-length))
   ;; dms_msgs/RespiratoryRate _respiratory_rate
     (send _respiratory_rate :deserialize buf ptr-) (incf ptr- (send _respiratory_rate :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSHealthInfoResult :md5sum-) "709a0586a1fbf002e6c59aea0e7e5ca8")
(setf (get dms_msgs::DMSHealthInfoResult :datatype-) "dms_msgs/DMSHealthInfoResult")
(setf (get dms_msgs::DMSHealthInfoResult :definition-)
      "dms_msgs/DMSHeartRate heart_rate_result
dms_msgs/RespiratoryRate respiratory_rate

================================================================================
MSG: dms_msgs/DMSHeartRate
uint8 CURRENT_RATE_AVAILABLE = 1
uint8 MAX_RATE_AVAILABLE = 2
uint8 MIN_RATE_AVAILABLE = 4
uint8 AVERAGE_RATE_AVAILABLE = 8
uint8 HEART_RATE_VARIABILITY_AVAILABLE = 16
uint8 RESERVED = 32
uint8 available
float32 current_rate
float32 max_heart_rate
float32 min_heart_rate
float32 average_rate
float32 heart_rate_variability
float32 reserved

================================================================================
MSG: dms_msgs/RespiratoryRate
uint8 RESP_RATE_AVAILABLE = 1
uint8 RESERVED = 2
uint8 RESERVED1 = 4
uint8 available
float32 resp_rate
float32 reserved
float32 reserved1

")



(provide :dms_msgs/DMSHealthInfoResult "709a0586a1fbf002e6c59aea0e7e5ca8")


