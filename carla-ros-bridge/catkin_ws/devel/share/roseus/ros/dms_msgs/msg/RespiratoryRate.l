;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::RespiratoryRate)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'RespiratoryRate (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::RESPIRATORYRATE")
  (make-package "DMS_MSGS::RESPIRATORYRATE"))

(in-package "ROS")
;;//! \htmlinclude RespiratoryRate.msg.html


(intern "*RESP_RATE_AVAILABLE*" (find-package "DMS_MSGS::RESPIRATORYRATE"))
(shadow '*RESP_RATE_AVAILABLE* (find-package "DMS_MSGS::RESPIRATORYRATE"))
(defconstant dms_msgs::RespiratoryRate::*RESP_RATE_AVAILABLE* 1)
(intern "*RESERVED*" (find-package "DMS_MSGS::RESPIRATORYRATE"))
(shadow '*RESERVED* (find-package "DMS_MSGS::RESPIRATORYRATE"))
(defconstant dms_msgs::RespiratoryRate::*RESERVED* 2)
(intern "*RESERVED1*" (find-package "DMS_MSGS::RESPIRATORYRATE"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::RESPIRATORYRATE"))
(defconstant dms_msgs::RespiratoryRate::*RESERVED1* 4)

(defun dms_msgs::RespiratoryRate-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::RespiratoryRate::*RESP_RATE_AVAILABLE*)
        ((= const 2) 'dms_msgs::RespiratoryRate::*RESERVED*)
        ((= const 4) 'dms_msgs::RespiratoryRate::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::RespiratoryRate
  :super ros::object
  :slots (_available _resp_rate _reserved _reserved1 ))

(defmethod dms_msgs::RespiratoryRate
  (:init
   (&key
    ((:available __available) 0)
    ((:resp_rate __resp_rate) 0.0)
    ((:reserved __reserved) 0.0)
    ((:reserved1 __reserved1) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _resp_rate (float __resp_rate))
   (setq _reserved (float __reserved))
   (setq _reserved1 (float __reserved1))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:resp_rate
   (&optional __resp_rate)
   (if __resp_rate (setq _resp_rate __resp_rate)) _resp_rate)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _resp_rate
    4
    ;; float32 _reserved
    4
    ;; float32 _reserved1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _resp_rate
       (sys::poke _resp_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved
       (sys::poke _reserved (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _resp_rate
     (setq _resp_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved
     (setq _reserved (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::RespiratoryRate :md5sum-) "5f763b2bcfc7dc1a462e061345560094")
(setf (get dms_msgs::RespiratoryRate :datatype-) "dms_msgs/RespiratoryRate")
(setf (get dms_msgs::RespiratoryRate :definition-)
      "uint8 RESP_RATE_AVAILABLE = 1
uint8 RESERVED = 2
uint8 RESERVED1 = 4
uint8 available
float32 resp_rate
float32 reserved
float32 reserved1

")



(provide :dms_msgs/RespiratoryRate "5f763b2bcfc7dc1a462e061345560094")


