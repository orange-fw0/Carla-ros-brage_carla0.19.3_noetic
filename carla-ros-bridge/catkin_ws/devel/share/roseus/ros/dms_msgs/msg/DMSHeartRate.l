;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSHeartRate)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSHeartRate (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSHEARTRATE")
  (make-package "DMS_MSGS::DMSHEARTRATE"))

(in-package "ROS")
;;//! \htmlinclude DMSHeartRate.msg.html


(intern "*CURRENT_RATE_AVAILABLE*" (find-package "DMS_MSGS::DMSHEARTRATE"))
(shadow '*CURRENT_RATE_AVAILABLE* (find-package "DMS_MSGS::DMSHEARTRATE"))
(defconstant dms_msgs::DMSHeartRate::*CURRENT_RATE_AVAILABLE* 1)
(intern "*MAX_RATE_AVAILABLE*" (find-package "DMS_MSGS::DMSHEARTRATE"))
(shadow '*MAX_RATE_AVAILABLE* (find-package "DMS_MSGS::DMSHEARTRATE"))
(defconstant dms_msgs::DMSHeartRate::*MAX_RATE_AVAILABLE* 2)
(intern "*MIN_RATE_AVAILABLE*" (find-package "DMS_MSGS::DMSHEARTRATE"))
(shadow '*MIN_RATE_AVAILABLE* (find-package "DMS_MSGS::DMSHEARTRATE"))
(defconstant dms_msgs::DMSHeartRate::*MIN_RATE_AVAILABLE* 4)
(intern "*AVERAGE_RATE_AVAILABLE*" (find-package "DMS_MSGS::DMSHEARTRATE"))
(shadow '*AVERAGE_RATE_AVAILABLE* (find-package "DMS_MSGS::DMSHEARTRATE"))
(defconstant dms_msgs::DMSHeartRate::*AVERAGE_RATE_AVAILABLE* 8)
(intern "*HEART_RATE_VARIABILITY_AVAILABLE*" (find-package "DMS_MSGS::DMSHEARTRATE"))
(shadow '*HEART_RATE_VARIABILITY_AVAILABLE* (find-package "DMS_MSGS::DMSHEARTRATE"))
(defconstant dms_msgs::DMSHeartRate::*HEART_RATE_VARIABILITY_AVAILABLE* 16)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSHEARTRATE"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSHEARTRATE"))
(defconstant dms_msgs::DMSHeartRate::*RESERVED* 32)

(defun dms_msgs::DMSHeartRate-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSHeartRate::*CURRENT_RATE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSHeartRate::*MAX_RATE_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSHeartRate::*MIN_RATE_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSHeartRate::*AVERAGE_RATE_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSHeartRate::*HEART_RATE_VARIABILITY_AVAILABLE*)
        ((= const 32) 'dms_msgs::DMSHeartRate::*RESERVED*)
        (t nil)))

(defclass dms_msgs::DMSHeartRate
  :super ros::object
  :slots (_available _current_rate _max_heart_rate _min_heart_rate _average_rate _heart_rate_variability _reserved ))

(defmethod dms_msgs::DMSHeartRate
  (:init
   (&key
    ((:available __available) 0)
    ((:current_rate __current_rate) 0.0)
    ((:max_heart_rate __max_heart_rate) 0.0)
    ((:min_heart_rate __min_heart_rate) 0.0)
    ((:average_rate __average_rate) 0.0)
    ((:heart_rate_variability __heart_rate_variability) 0.0)
    ((:reserved __reserved) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _current_rate (float __current_rate))
   (setq _max_heart_rate (float __max_heart_rate))
   (setq _min_heart_rate (float __min_heart_rate))
   (setq _average_rate (float __average_rate))
   (setq _heart_rate_variability (float __heart_rate_variability))
   (setq _reserved (float __reserved))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:current_rate
   (&optional __current_rate)
   (if __current_rate (setq _current_rate __current_rate)) _current_rate)
  (:max_heart_rate
   (&optional __max_heart_rate)
   (if __max_heart_rate (setq _max_heart_rate __max_heart_rate)) _max_heart_rate)
  (:min_heart_rate
   (&optional __min_heart_rate)
   (if __min_heart_rate (setq _min_heart_rate __min_heart_rate)) _min_heart_rate)
  (:average_rate
   (&optional __average_rate)
   (if __average_rate (setq _average_rate __average_rate)) _average_rate)
  (:heart_rate_variability
   (&optional __heart_rate_variability)
   (if __heart_rate_variability (setq _heart_rate_variability __heart_rate_variability)) _heart_rate_variability)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _current_rate
    4
    ;; float32 _max_heart_rate
    4
    ;; float32 _min_heart_rate
    4
    ;; float32 _average_rate
    4
    ;; float32 _heart_rate_variability
    4
    ;; float32 _reserved
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _current_rate
       (sys::poke _current_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_heart_rate
       (sys::poke _max_heart_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_heart_rate
       (sys::poke _min_heart_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _average_rate
       (sys::poke _average_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heart_rate_variability
       (sys::poke _heart_rate_variability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved
       (sys::poke _reserved (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _current_rate
     (setq _current_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_heart_rate
     (setq _max_heart_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_heart_rate
     (setq _min_heart_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _average_rate
     (setq _average_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heart_rate_variability
     (setq _heart_rate_variability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved
     (setq _reserved (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSHeartRate :md5sum-) "a0bc2e4ab6e96348420d7d0157566eff")
(setf (get dms_msgs::DMSHeartRate :datatype-) "dms_msgs/DMSHeartRate")
(setf (get dms_msgs::DMSHeartRate :definition-)
      "uint8 CURRENT_RATE_AVAILABLE = 1
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

")



(provide :dms_msgs/DMSHeartRate "a0bc2e4ab6e96348420d7d0157566eff")


