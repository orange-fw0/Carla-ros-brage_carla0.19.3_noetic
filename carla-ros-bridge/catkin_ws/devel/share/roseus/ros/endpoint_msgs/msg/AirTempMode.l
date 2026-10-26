;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AirTempMode)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AirTempMode (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AIRTEMPMODE")
  (make-package "ENDPOINT_MSGS::AIRTEMPMODE"))

(in-package "ROS")
;;//! \htmlinclude AirTempMode.msg.html


(intern "*AIR_TEMP_MODE_NORMAL*" (find-package "ENDPOINT_MSGS::AIRTEMPMODE"))
(shadow '*AIR_TEMP_MODE_NORMAL* (find-package "ENDPOINT_MSGS::AIRTEMPMODE"))
(defconstant endpoint_msgs::AirTempMode::*AIR_TEMP_MODE_NORMAL* 0)
(intern "*AIR_TEMP_MODE_COLD*" (find-package "ENDPOINT_MSGS::AIRTEMPMODE"))
(shadow '*AIR_TEMP_MODE_COLD* (find-package "ENDPOINT_MSGS::AIRTEMPMODE"))
(defconstant endpoint_msgs::AirTempMode::*AIR_TEMP_MODE_COLD* 1)
(intern "*AIR_TEMP_MODE_HOT*" (find-package "ENDPOINT_MSGS::AIRTEMPMODE"))
(shadow '*AIR_TEMP_MODE_HOT* (find-package "ENDPOINT_MSGS::AIRTEMPMODE"))
(defconstant endpoint_msgs::AirTempMode::*AIR_TEMP_MODE_HOT* 2)

(defun endpoint_msgs::AirTempMode-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AirTempMode::*AIR_TEMP_MODE_NORMAL*)
        ((= const 1) 'endpoint_msgs::AirTempMode::*AIR_TEMP_MODE_COLD*)
        ((= const 2) 'endpoint_msgs::AirTempMode::*AIR_TEMP_MODE_HOT*)
        (t nil)))

(defclass endpoint_msgs::AirTempMode
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AirTempMode
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

(setf (get endpoint_msgs::AirTempMode :md5sum-) "959ee8d2536415cb0e93a197e442a32b")
(setf (get endpoint_msgs::AirTempMode :datatype-) "endpoint_msgs/AirTempMode")
(setf (get endpoint_msgs::AirTempMode :definition-)
      "uint8 AIR_TEMP_MODE_NORMAL = 0
uint8 AIR_TEMP_MODE_COLD = 1
uint8 AIR_TEMP_MODE_HOT = 2
uint8 value

")



(provide :endpoint_msgs/AirTempMode "959ee8d2536415cb0e93a197e442a32b")


