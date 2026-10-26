;; Auto-generated. Do not edit!


(when (boundp 'sensor_adas_msgs::ELKResult)
  (if (not (find-package "SENSOR_ADAS_MSGS"))
    (make-package "SENSOR_ADAS_MSGS"))
  (shadow 'ELKResult (find-package "SENSOR_ADAS_MSGS")))
(unless (find-package "SENSOR_ADAS_MSGS::ELKRESULT")
  (make-package "SENSOR_ADAS_MSGS::ELKRESULT"))

(in-package "ROS")
;;//! \htmlinclude ELKResult.msg.html


(intern "*BOSCH_ELK_DATA_TYPE*" (find-package "SENSOR_ADAS_MSGS::ELKRESULT"))
(shadow '*BOSCH_ELK_DATA_TYPE* (find-package "SENSOR_ADAS_MSGS::ELKRESULT"))
(defconstant sensor_adas_msgs::ELKResult::*BOSCH_ELK_DATA_TYPE* 1)

(defun sensor_adas_msgs::ELKResult-to-symbol (const)
  (cond
        ((= const 1) 'sensor_adas_msgs::ELKResult::*BOSCH_ELK_DATA_TYPE*)
        (t nil)))

(defclass sensor_adas_msgs::ELKResult
  :super ros::object
  :slots (_available _bosch_elk ))

(defmethod sensor_adas_msgs::ELKResult
  (:init
   (&key
    ((:available __available) 0)
    ((:bosch_elk __bosch_elk) (instance sensor_adas_msgs::Bosch_ELK :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _bosch_elk __bosch_elk)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:bosch_elk
   (&rest __bosch_elk)
   (if (keywordp (car __bosch_elk))
       (send* _bosch_elk __bosch_elk)
     (progn
       (if __bosch_elk (setq _bosch_elk (car __bosch_elk)))
       _bosch_elk)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; sensor_adas_msgs/Bosch_ELK _bosch_elk
    (send _bosch_elk :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; sensor_adas_msgs/Bosch_ELK _bosch_elk
       (send _bosch_elk :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_adas_msgs/Bosch_ELK _bosch_elk
     (send _bosch_elk :deserialize buf ptr-) (incf ptr- (send _bosch_elk :serialization-length))
   ;;
   self)
  )

(setf (get sensor_adas_msgs::ELKResult :md5sum-) "8a990389f43a98288cd054b20f59f468")
(setf (get sensor_adas_msgs::ELKResult :datatype-) "sensor_adas_msgs/ELKResult")
(setf (get sensor_adas_msgs::ELKResult :definition-)
      "uint8 BOSCH_ELK_DATA_TYPE = 1
uint8 available
sensor_adas_msgs/Bosch_ELK bosch_elk

================================================================================
MSG: sensor_adas_msgs/Bosch_ELK
uint8 ANGLE_REQUEST_STATE_INHIBITED = 0
uint8 ANGLE_REQUEST_STATE_READY = 1
uint8 ANGLE_REQUEST_STATE_ACTIVE = 2
uint8 FAULT_STATUS_FLAG_NO_ERROR = 0
uint8 FAULT_STATUS_FLAG_ERROR = 1
uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0
uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1
uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2
uint8 ELK_STATUS_OFF = 0
uint8 ELK_STATUS_PASSIVE = 1
uint8 ELK_STATUS_ACTIVE = 2
uint8 ELK_STATUS_FAILURE = 3
uint32 ELK_status
uint32 ELK_OT_Fault_Status_Flag
uint32 ELK_Take_Over_Req
float32 Motor_Torque_Upper_Limit
float32 Motor_Torque_Lower_Limit
uint32 ADAS_AngleReq_State
float32 ADAS_AngleReq
float64 reserved1
float64 reserved2

")



(provide :sensor_adas_msgs/ELKResult "8a990389f43a98288cd054b20f59f468")


