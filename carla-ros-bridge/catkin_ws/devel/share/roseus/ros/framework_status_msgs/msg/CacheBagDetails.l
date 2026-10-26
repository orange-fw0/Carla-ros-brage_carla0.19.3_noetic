;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::CacheBagDetails)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'CacheBagDetails (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILS")
  (make-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILS"))

(in-package "ROS")
;;//! \htmlinclude CacheBagDetails.msg.html


(intern "*CACHE_BAG_DETAILS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILS"))
(shadow '*CACHE_BAG_DETAILS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILS"))
(defconstant framework_status_msgs::CacheBagDetails::*CACHE_BAG_DETAILS_DATA* 1)

(defun framework_status_msgs::CacheBagDetails-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::CacheBagDetails::*CACHE_BAG_DETAILS_DATA*)
        (t nil)))

(defclass framework_status_msgs::CacheBagDetails
  :super ros::object
  :slots (_available _cache_bag_details_data ))

(defmethod framework_status_msgs::CacheBagDetails
  (:init
   (&key
    ((:available __available) 0)
    ((:cache_bag_details_data __cache_bag_details_data) (instance framework_status_msgs::CacheBagDetailsData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _cache_bag_details_data __cache_bag_details_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:cache_bag_details_data
   (&rest __cache_bag_details_data)
   (if (keywordp (car __cache_bag_details_data))
       (send* _cache_bag_details_data __cache_bag_details_data)
     (progn
       (if __cache_bag_details_data (setq _cache_bag_details_data (car __cache_bag_details_data)))
       _cache_bag_details_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/CacheBagDetailsData _cache_bag_details_data
    (send _cache_bag_details_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/CacheBagDetailsData _cache_bag_details_data
       (send _cache_bag_details_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/CacheBagDetailsData _cache_bag_details_data
     (send _cache_bag_details_data :deserialize buf ptr-) (incf ptr- (send _cache_bag_details_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::CacheBagDetails :md5sum-) "e9780b9d0a0eb7520548474d4ff86975")
(setf (get framework_status_msgs::CacheBagDetails :datatype-) "framework_status_msgs/CacheBagDetails")
(setf (get framework_status_msgs::CacheBagDetails :definition-)
      "uint8 CACHE_BAG_DETAILS_DATA = 1
uint8 available
framework_status_msgs/CacheBagDetailsData cache_bag_details_data

================================================================================
MSG: framework_status_msgs/CacheBagDetailsData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
uint64 timestamp_us
string reserved_info
string message

")



(provide :framework_status_msgs/CacheBagDetails "e9780b9d0a0eb7520548474d4ff86975")


