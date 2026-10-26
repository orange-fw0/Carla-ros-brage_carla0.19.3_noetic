;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::RainSensorLevel)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'RainSensorLevel (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL")
  (make-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))

(in-package "ROS")
;;//! \htmlinclude RainSensorLevel.msg.html


(intern "*RAIN_SENSOR_OFF*" (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(shadow '*RAIN_SENSOR_OFF* (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(defconstant endpoint_msgs::RainSensorLevel::*RAIN_SENSOR_OFF* 0)
(intern "*RARIN_SENSOR_LEVEL_LOW*" (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(shadow '*RARIN_SENSOR_LEVEL_LOW* (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(defconstant endpoint_msgs::RainSensorLevel::*RARIN_SENSOR_LEVEL_LOW* 1)
(intern "*RARIN_SENSOR_LEVEL_MID*" (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(shadow '*RARIN_SENSOR_LEVEL_MID* (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(defconstant endpoint_msgs::RainSensorLevel::*RARIN_SENSOR_LEVEL_MID* 2)
(intern "*RARIN_SENSOR_LEVEL_HIGH*" (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(shadow '*RARIN_SENSOR_LEVEL_HIGH* (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(defconstant endpoint_msgs::RainSensorLevel::*RARIN_SENSOR_LEVEL_HIGH* 3)
(intern "*RARIN_SENSOR_LEVEL_RESERVED*" (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(shadow '*RARIN_SENSOR_LEVEL_RESERVED* (find-package "ENDPOINT_MSGS::RAINSENSORLEVEL"))
(defconstant endpoint_msgs::RainSensorLevel::*RARIN_SENSOR_LEVEL_RESERVED* 4)

(defun endpoint_msgs::RainSensorLevel-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::RainSensorLevel::*RAIN_SENSOR_OFF*)
        ((= const 1) 'endpoint_msgs::RainSensorLevel::*RARIN_SENSOR_LEVEL_LOW*)
        ((= const 2) 'endpoint_msgs::RainSensorLevel::*RARIN_SENSOR_LEVEL_MID*)
        ((= const 3) 'endpoint_msgs::RainSensorLevel::*RARIN_SENSOR_LEVEL_HIGH*)
        ((= const 4) 'endpoint_msgs::RainSensorLevel::*RARIN_SENSOR_LEVEL_RESERVED*)
        (t nil)))

(defclass endpoint_msgs::RainSensorLevel
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::RainSensorLevel
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

(setf (get endpoint_msgs::RainSensorLevel :md5sum-) "c07886f318a675994547437acdb7db44")
(setf (get endpoint_msgs::RainSensorLevel :datatype-) "endpoint_msgs/RainSensorLevel")
(setf (get endpoint_msgs::RainSensorLevel :definition-)
      "uint8 RAIN_SENSOR_OFF = 0
uint8 RARIN_SENSOR_LEVEL_LOW = 1
uint8 RARIN_SENSOR_LEVEL_MID = 2
uint8 RARIN_SENSOR_LEVEL_HIGH = 3
uint8 RARIN_SENSOR_LEVEL_RESERVED = 4
uint8 value

")



(provide :endpoint_msgs/RainSensorLevel "c07886f318a675994547437acdb7db44")


