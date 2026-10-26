;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::PowerModeType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'PowerModeType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::POWERMODETYPE")
  (make-package "ENDPOINT_MSGS::POWERMODETYPE"))

(in-package "ROS")
;;//! \htmlinclude PowerModeType.msg.html


(intern "*VEHILCE_POWER_MODE_OFF*" (find-package "ENDPOINT_MSGS::POWERMODETYPE"))
(shadow '*VEHILCE_POWER_MODE_OFF* (find-package "ENDPOINT_MSGS::POWERMODETYPE"))
(defconstant endpoint_msgs::PowerModeType::*VEHILCE_POWER_MODE_OFF* 0)
(intern "*VEHILCE_POWER_MODE_NORMAL*" (find-package "ENDPOINT_MSGS::POWERMODETYPE"))
(shadow '*VEHILCE_POWER_MODE_NORMAL* (find-package "ENDPOINT_MSGS::POWERMODETYPE"))
(defconstant endpoint_msgs::PowerModeType::*VEHILCE_POWER_MODE_NORMAL* 1)
(intern "*VEHILCE_POWER_MODE_AUTODRIVE*" (find-package "ENDPOINT_MSGS::POWERMODETYPE"))
(shadow '*VEHILCE_POWER_MODE_AUTODRIVE* (find-package "ENDPOINT_MSGS::POWERMODETYPE"))
(defconstant endpoint_msgs::PowerModeType::*VEHILCE_POWER_MODE_AUTODRIVE* 2)
(intern "*VEHILCE_POWER_MODE_RESERVED1*" (find-package "ENDPOINT_MSGS::POWERMODETYPE"))
(shadow '*VEHILCE_POWER_MODE_RESERVED1* (find-package "ENDPOINT_MSGS::POWERMODETYPE"))
(defconstant endpoint_msgs::PowerModeType::*VEHILCE_POWER_MODE_RESERVED1* 3)

(defun endpoint_msgs::PowerModeType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::PowerModeType::*VEHILCE_POWER_MODE_OFF*)
        ((= const 1) 'endpoint_msgs::PowerModeType::*VEHILCE_POWER_MODE_NORMAL*)
        ((= const 2) 'endpoint_msgs::PowerModeType::*VEHILCE_POWER_MODE_AUTODRIVE*)
        ((= const 3) 'endpoint_msgs::PowerModeType::*VEHILCE_POWER_MODE_RESERVED1*)
        (t nil)))

(defclass endpoint_msgs::PowerModeType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::PowerModeType
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::PowerModeType :md5sum-) "0f60c59e23b54b08d5aaba2a546eb676")
(setf (get endpoint_msgs::PowerModeType :datatype-) "endpoint_msgs/PowerModeType")
(setf (get endpoint_msgs::PowerModeType :definition-)
      "uint8 VEHILCE_POWER_MODE_OFF = 0
uint8 VEHILCE_POWER_MODE_NORMAL = 1
uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2
uint8 VEHILCE_POWER_MODE_RESERVED1 = 3
uint8 value

")



(provide :endpoint_msgs/PowerModeType "0f60c59e23b54b08d5aaba2a546eb676")


