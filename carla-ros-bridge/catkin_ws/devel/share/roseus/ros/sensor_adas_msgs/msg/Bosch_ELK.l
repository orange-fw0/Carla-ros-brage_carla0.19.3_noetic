;; Auto-generated. Do not edit!


(when (boundp 'sensor_adas_msgs::Bosch_ELK)
  (if (not (find-package "SENSOR_ADAS_MSGS"))
    (make-package "SENSOR_ADAS_MSGS"))
  (shadow 'Bosch_ELK (find-package "SENSOR_ADAS_MSGS")))
(unless (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK")
  (make-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))

(in-package "ROS")
;;//! \htmlinclude Bosch_ELK.msg.html


(intern "*ANGLE_REQUEST_STATE_INHIBITED*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ANGLE_REQUEST_STATE_INHIBITED* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ANGLE_REQUEST_STATE_INHIBITED* 0)
(intern "*ANGLE_REQUEST_STATE_READY*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ANGLE_REQUEST_STATE_READY* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ANGLE_REQUEST_STATE_READY* 1)
(intern "*ANGLE_REQUEST_STATE_ACTIVE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ANGLE_REQUEST_STATE_ACTIVE* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ANGLE_REQUEST_STATE_ACTIVE* 2)
(intern "*FAULT_STATUS_FLAG_NO_ERROR*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*FAULT_STATUS_FLAG_NO_ERROR* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*FAULT_STATUS_FLAG_NO_ERROR* 0)
(intern "*FAULT_STATUS_FLAG_ERROR*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*FAULT_STATUS_FLAG_ERROR* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*FAULT_STATUS_FLAG_ERROR* 1)
(intern "*ELK_TAKE_OVER_REQ_INACTIVE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ELK_TAKE_OVER_REQ_INACTIVE* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ELK_TAKE_OVER_REQ_INACTIVE* 0)
(intern "*ELK_TAKE_OVER_REQ_WARN_RE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ELK_TAKE_OVER_REQ_WARN_RE* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ELK_TAKE_OVER_REQ_WARN_RE* 1)
(intern "*ELK_TAKE_OVER_REQ_WARN_SL*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ELK_TAKE_OVER_REQ_WARN_SL* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ELK_TAKE_OVER_REQ_WARN_SL* 2)
(intern "*ELK_STATUS_OFF*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ELK_STATUS_OFF* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ELK_STATUS_OFF* 0)
(intern "*ELK_STATUS_PASSIVE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ELK_STATUS_PASSIVE* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ELK_STATUS_PASSIVE* 1)
(intern "*ELK_STATUS_ACTIVE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ELK_STATUS_ACTIVE* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ELK_STATUS_ACTIVE* 2)
(intern "*ELK_STATUS_FAILURE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(shadow '*ELK_STATUS_FAILURE* (find-package "SENSOR_ADAS_MSGS::BOSCH_ELK"))
(defconstant sensor_adas_msgs::Bosch_ELK::*ELK_STATUS_FAILURE* 3)

(defun sensor_adas_msgs::Bosch_ELK-to-symbol (const)
  (cond
        ((= const 0) 'sensor_adas_msgs::Bosch_ELK::*ANGLE_REQUEST_STATE_INHIBITED*)
        ((= const 1) 'sensor_adas_msgs::Bosch_ELK::*ANGLE_REQUEST_STATE_READY*)
        ((= const 2) 'sensor_adas_msgs::Bosch_ELK::*ANGLE_REQUEST_STATE_ACTIVE*)
        ((= const 0) 'sensor_adas_msgs::Bosch_ELK::*FAULT_STATUS_FLAG_NO_ERROR*)
        ((= const 1) 'sensor_adas_msgs::Bosch_ELK::*FAULT_STATUS_FLAG_ERROR*)
        ((= const 0) 'sensor_adas_msgs::Bosch_ELK::*ELK_TAKE_OVER_REQ_INACTIVE*)
        ((= const 1) 'sensor_adas_msgs::Bosch_ELK::*ELK_TAKE_OVER_REQ_WARN_RE*)
        ((= const 2) 'sensor_adas_msgs::Bosch_ELK::*ELK_TAKE_OVER_REQ_WARN_SL*)
        ((= const 0) 'sensor_adas_msgs::Bosch_ELK::*ELK_STATUS_OFF*)
        ((= const 1) 'sensor_adas_msgs::Bosch_ELK::*ELK_STATUS_PASSIVE*)
        ((= const 2) 'sensor_adas_msgs::Bosch_ELK::*ELK_STATUS_ACTIVE*)
        ((= const 3) 'sensor_adas_msgs::Bosch_ELK::*ELK_STATUS_FAILURE*)
        (t nil)))

(defclass sensor_adas_msgs::Bosch_ELK
  :super ros::object
  :slots (_ELK_status _ELK_OT_Fault_Status_Flag _ELK_Take_Over_Req _Motor_Torque_Upper_Limit _Motor_Torque_Lower_Limit _ADAS_AngleReq_State _ADAS_AngleReq _reserved1 _reserved2 ))

(defmethod sensor_adas_msgs::Bosch_ELK
  (:init
   (&key
    ((:ELK_status __ELK_status) 0)
    ((:ELK_OT_Fault_Status_Flag __ELK_OT_Fault_Status_Flag) 0)
    ((:ELK_Take_Over_Req __ELK_Take_Over_Req) 0)
    ((:Motor_Torque_Upper_Limit __Motor_Torque_Upper_Limit) 0.0)
    ((:Motor_Torque_Lower_Limit __Motor_Torque_Lower_Limit) 0.0)
    ((:ADAS_AngleReq_State __ADAS_AngleReq_State) 0)
    ((:ADAS_AngleReq __ADAS_AngleReq) 0.0)
    ((:reserved1 __reserved1) 0.0)
    ((:reserved2 __reserved2) 0.0)
    )
   (send-super :init)
   (setq _ELK_status (round __ELK_status))
   (setq _ELK_OT_Fault_Status_Flag (round __ELK_OT_Fault_Status_Flag))
   (setq _ELK_Take_Over_Req (round __ELK_Take_Over_Req))
   (setq _Motor_Torque_Upper_Limit (float __Motor_Torque_Upper_Limit))
   (setq _Motor_Torque_Lower_Limit (float __Motor_Torque_Lower_Limit))
   (setq _ADAS_AngleReq_State (round __ADAS_AngleReq_State))
   (setq _ADAS_AngleReq (float __ADAS_AngleReq))
   (setq _reserved1 (float __reserved1))
   (setq _reserved2 (float __reserved2))
   self)
  (:ELK_status
   (&optional __ELK_status)
   (if __ELK_status (setq _ELK_status __ELK_status)) _ELK_status)
  (:ELK_OT_Fault_Status_Flag
   (&optional __ELK_OT_Fault_Status_Flag)
   (if __ELK_OT_Fault_Status_Flag (setq _ELK_OT_Fault_Status_Flag __ELK_OT_Fault_Status_Flag)) _ELK_OT_Fault_Status_Flag)
  (:ELK_Take_Over_Req
   (&optional __ELK_Take_Over_Req)
   (if __ELK_Take_Over_Req (setq _ELK_Take_Over_Req __ELK_Take_Over_Req)) _ELK_Take_Over_Req)
  (:Motor_Torque_Upper_Limit
   (&optional __Motor_Torque_Upper_Limit)
   (if __Motor_Torque_Upper_Limit (setq _Motor_Torque_Upper_Limit __Motor_Torque_Upper_Limit)) _Motor_Torque_Upper_Limit)
  (:Motor_Torque_Lower_Limit
   (&optional __Motor_Torque_Lower_Limit)
   (if __Motor_Torque_Lower_Limit (setq _Motor_Torque_Lower_Limit __Motor_Torque_Lower_Limit)) _Motor_Torque_Lower_Limit)
  (:ADAS_AngleReq_State
   (&optional __ADAS_AngleReq_State)
   (if __ADAS_AngleReq_State (setq _ADAS_AngleReq_State __ADAS_AngleReq_State)) _ADAS_AngleReq_State)
  (:ADAS_AngleReq
   (&optional __ADAS_AngleReq)
   (if __ADAS_AngleReq (setq _ADAS_AngleReq __ADAS_AngleReq)) _ADAS_AngleReq)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:serialization-length
   ()
   (+
    ;; uint32 _ELK_status
    4
    ;; uint32 _ELK_OT_Fault_Status_Flag
    4
    ;; uint32 _ELK_Take_Over_Req
    4
    ;; float32 _Motor_Torque_Upper_Limit
    4
    ;; float32 _Motor_Torque_Lower_Limit
    4
    ;; uint32 _ADAS_AngleReq_State
    4
    ;; float32 _ADAS_AngleReq
    4
    ;; float64 _reserved1
    8
    ;; float64 _reserved2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ELK_status
       (write-long _ELK_status s)
     ;; uint32 _ELK_OT_Fault_Status_Flag
       (write-long _ELK_OT_Fault_Status_Flag s)
     ;; uint32 _ELK_Take_Over_Req
       (write-long _ELK_Take_Over_Req s)
     ;; float32 _Motor_Torque_Upper_Limit
       (sys::poke _Motor_Torque_Upper_Limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_Torque_Lower_Limit
       (sys::poke _Motor_Torque_Lower_Limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _ADAS_AngleReq_State
       (write-long _ADAS_AngleReq_State s)
     ;; float32 _ADAS_AngleReq
       (sys::poke _ADAS_AngleReq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reserved2
       (sys::poke _reserved2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ELK_status
     (setq _ELK_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ELK_OT_Fault_Status_Flag
     (setq _ELK_OT_Fault_Status_Flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ELK_Take_Over_Req
     (setq _ELK_Take_Over_Req (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Motor_Torque_Upper_Limit
     (setq _Motor_Torque_Upper_Limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_Torque_Lower_Limit
     (setq _Motor_Torque_Lower_Limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _ADAS_AngleReq_State
     (setq _ADAS_AngleReq_State (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _ADAS_AngleReq
     (setq _ADAS_AngleReq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensor_adas_msgs::Bosch_ELK :md5sum-) "1e3e678302cc69d0e8cfe096a6587e61")
(setf (get sensor_adas_msgs::Bosch_ELK :datatype-) "sensor_adas_msgs/Bosch_ELK")
(setf (get sensor_adas_msgs::Bosch_ELK :definition-)
      "uint8 ANGLE_REQUEST_STATE_INHIBITED = 0
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



(provide :sensor_adas_msgs/Bosch_ELK "1e3e678302cc69d0e8cfe096a6587e61")


