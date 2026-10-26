;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssMeaMode)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssMeaMode (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE")
  (make-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))

(in-package "ROS")
;;//! \htmlinclude UssMeaMode.msg.html


(intern "*MEAS_MODE_NEAR_RANGE_AM*" (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(shadow '*MEAS_MODE_NEAR_RANGE_AM* (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(defconstant sensor_interface_msgs::UssMeaMode::*MEAS_MODE_NEAR_RANGE_AM* 0)
(intern "*MEAS_MODE_DUAL_AM_LOW*" (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(shadow '*MEAS_MODE_DUAL_AM_LOW* (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(defconstant sensor_interface_msgs::UssMeaMode::*MEAS_MODE_DUAL_AM_LOW* 1)
(intern "*MEAS_MODE_DUAL_AM_HIGH*" (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(shadow '*MEAS_MODE_DUAL_AM_HIGH* (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(defconstant sensor_interface_msgs::UssMeaMode::*MEAS_MODE_DUAL_AM_HIGH* 2)
(intern "*MEAS_MODE_DUAL_CHIRP_LOW*" (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(shadow '*MEAS_MODE_DUAL_CHIRP_LOW* (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(defconstant sensor_interface_msgs::UssMeaMode::*MEAS_MODE_DUAL_CHIRP_LOW* 3)
(intern "*MEAS_MODE_DUAL_CHIRP_HIGH*" (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(shadow '*MEAS_MODE_DUAL_CHIRP_HIGH* (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(defconstant sensor_interface_msgs::UssMeaMode::*MEAS_MODE_DUAL_CHIRP_HIGH* 4)
(intern "*MEAS_MODE_SINGLE_CHIRP_UP*" (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(shadow '*MEAS_MODE_SINGLE_CHIRP_UP* (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(defconstant sensor_interface_msgs::UssMeaMode::*MEAS_MODE_SINGLE_CHIRP_UP* 5)
(intern "*MEAS_MODE_SINGLE_CHIRP_DOWN*" (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(shadow '*MEAS_MODE_SINGLE_CHIRP_DOWN* (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(defconstant sensor_interface_msgs::UssMeaMode::*MEAS_MODE_SINGLE_CHIRP_DOWN* 6)
(intern "*MEAS_MODE_RESERVED*" (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(shadow '*MEAS_MODE_RESERVED* (find-package "SENSOR_INTERFACE_MSGS::USSMEAMODE"))
(defconstant sensor_interface_msgs::UssMeaMode::*MEAS_MODE_RESERVED* 7)

(defun sensor_interface_msgs::UssMeaMode-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::UssMeaMode::*MEAS_MODE_NEAR_RANGE_AM*)
        ((= const 1) 'sensor_interface_msgs::UssMeaMode::*MEAS_MODE_DUAL_AM_LOW*)
        ((= const 2) 'sensor_interface_msgs::UssMeaMode::*MEAS_MODE_DUAL_AM_HIGH*)
        ((= const 3) 'sensor_interface_msgs::UssMeaMode::*MEAS_MODE_DUAL_CHIRP_LOW*)
        ((= const 4) 'sensor_interface_msgs::UssMeaMode::*MEAS_MODE_DUAL_CHIRP_HIGH*)
        ((= const 5) 'sensor_interface_msgs::UssMeaMode::*MEAS_MODE_SINGLE_CHIRP_UP*)
        ((= const 6) 'sensor_interface_msgs::UssMeaMode::*MEAS_MODE_SINGLE_CHIRP_DOWN*)
        ((= const 7) 'sensor_interface_msgs::UssMeaMode::*MEAS_MODE_RESERVED*)
        (t nil)))

(defclass sensor_interface_msgs::UssMeaMode
  :super ros::object
  :slots (_value ))

(defmethod sensor_interface_msgs::UssMeaMode
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

(setf (get sensor_interface_msgs::UssMeaMode :md5sum-) "63cc688adee39f3e3ab3665399419f9b")
(setf (get sensor_interface_msgs::UssMeaMode :datatype-) "sensor_interface_msgs/UssMeaMode")
(setf (get sensor_interface_msgs::UssMeaMode :definition-)
      "uint8 MEAS_MODE_NEAR_RANGE_AM = 0
uint8 MEAS_MODE_DUAL_AM_LOW = 1
uint8 MEAS_MODE_DUAL_AM_HIGH = 2
uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3
uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4
uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5
uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6
uint8 MEAS_MODE_RESERVED = 7
uint8 value

")



(provide :sensor_interface_msgs/UssMeaMode "63cc688adee39f3e3ab3665399419f9b")


