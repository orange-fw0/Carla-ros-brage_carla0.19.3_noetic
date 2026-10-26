;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AirConditioningReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AirConditioningReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AIRCONDITIONINGREPORT")
  (make-package "ENDPOINT_MSGS::AIRCONDITIONINGREPORT"))

(in-package "ROS")
;;//! \htmlinclude AirConditioningReport.msg.html


(intern "*AIR_CONDITIONING_DATA*" (find-package "ENDPOINT_MSGS::AIRCONDITIONINGREPORT"))
(shadow '*AIR_CONDITIONING_DATA* (find-package "ENDPOINT_MSGS::AIRCONDITIONINGREPORT"))
(defconstant endpoint_msgs::AirConditioningReport::*AIR_CONDITIONING_DATA* 1)

(defun endpoint_msgs::AirConditioningReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::AirConditioningReport::*AIR_CONDITIONING_DATA*)
        (t nil)))

(defclass endpoint_msgs::AirConditioningReport
  :super ros::object
  :slots (_available _air_conditioning_data ))

(defmethod endpoint_msgs::AirConditioningReport
  (:init
   (&key
    ((:available __available) 0)
    ((:air_conditioning_data __air_conditioning_data) (instance endpoint_msgs::AirConditioningReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _air_conditioning_data __air_conditioning_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:air_conditioning_data
   (&rest __air_conditioning_data)
   (if (keywordp (car __air_conditioning_data))
       (send* _air_conditioning_data __air_conditioning_data)
     (progn
       (if __air_conditioning_data (setq _air_conditioning_data (car __air_conditioning_data)))
       _air_conditioning_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/AirConditioningReportData _air_conditioning_data
    (send _air_conditioning_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/AirConditioningReportData _air_conditioning_data
       (send _air_conditioning_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/AirConditioningReportData _air_conditioning_data
     (send _air_conditioning_data :deserialize buf ptr-) (incf ptr- (send _air_conditioning_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::AirConditioningReport :md5sum-) "8f31394351cc00a250b32576f38af64c")
(setf (get endpoint_msgs::AirConditioningReport :datatype-) "endpoint_msgs/AirConditioningReport")
(setf (get endpoint_msgs::AirConditioningReport :definition-)
      "uint8 AIR_CONDITIONING_DATA = 1
uint8 available
endpoint_msgs/AirConditioningReportData air_conditioning_data

================================================================================
MSG: endpoint_msgs/AirConditioningReportData
uint64 timestamp_us
endpoint_msgs/AirOutletMode[] air_outlet_mode_array
bool air_outlet_mode_array_valid
endpoint_msgs/AirTempMode[] air_temp_mode_array
bool air_temp_mode_array_valid
endpoint_msgs/AirDefrostMode[] air_defrost_mode_array
bool air_defrost_mode_array_valid
endpoint_msgs/AirWorkStatus air_work_status

================================================================================
MSG: endpoint_msgs/AirOutletMode
uint8 AIR_OUTLET_MODE_FACE = 0
uint8 AIR_OUTLET_MODE_FOOT = 1
uint8 AIR_OUTLET_MODE_BODY = 2
uint8 AIR_OUTLET_MODE_KNEE = 3
uint8 AIR_OUTLET_MODE_AUTO = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AirTempMode
uint8 AIR_TEMP_MODE_NORMAL = 0
uint8 AIR_TEMP_MODE_COLD = 1
uint8 AIR_TEMP_MODE_HOT = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AirDefrostMode
uint8 AIR_DEFROS_MODE_OFF = 0
uint8 AIR_DEFROS_MODE_FONT = 1
uint8 AIR_DEFROS_MODE_REAR = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AirWorkStatus
uint8 AIR_WORK_STATUS_NONE = 0
uint8 AIR_WORK_STATUS_CLOSE = 1
uint8 AIR_WORK_STATUS_OPEN = 2
uint8 AIR_WORK_STATUS_INVALID = 255
uint8 value

")



(provide :endpoint_msgs/AirConditioningReport "8f31394351cc00a250b32576f38af64c")


