;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AirDefrostMode)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AirDefrostMode (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AIRDEFROSTMODE")
  (make-package "ENDPOINT_MSGS::AIRDEFROSTMODE"))

(in-package "ROS")
;;//! \htmlinclude AirDefrostMode.msg.html


(intern "*AIR_DEFROS_MODE_OFF*" (find-package "ENDPOINT_MSGS::AIRDEFROSTMODE"))
(shadow '*AIR_DEFROS_MODE_OFF* (find-package "ENDPOINT_MSGS::AIRDEFROSTMODE"))
(defconstant endpoint_msgs::AirDefrostMode::*AIR_DEFROS_MODE_OFF* 0)
(intern "*AIR_DEFROS_MODE_FONT*" (find-package "ENDPOINT_MSGS::AIRDEFROSTMODE"))
(shadow '*AIR_DEFROS_MODE_FONT* (find-package "ENDPOINT_MSGS::AIRDEFROSTMODE"))
(defconstant endpoint_msgs::AirDefrostMode::*AIR_DEFROS_MODE_FONT* 1)
(intern "*AIR_DEFROS_MODE_REAR*" (find-package "ENDPOINT_MSGS::AIRDEFROSTMODE"))
(shadow '*AIR_DEFROS_MODE_REAR* (find-package "ENDPOINT_MSGS::AIRDEFROSTMODE"))
(defconstant endpoint_msgs::AirDefrostMode::*AIR_DEFROS_MODE_REAR* 2)

(defun endpoint_msgs::AirDefrostMode-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AirDefrostMode::*AIR_DEFROS_MODE_OFF*)
        ((= const 1) 'endpoint_msgs::AirDefrostMode::*AIR_DEFROS_MODE_FONT*)
        ((= const 2) 'endpoint_msgs::AirDefrostMode::*AIR_DEFROS_MODE_REAR*)
        (t nil)))

(defclass endpoint_msgs::AirDefrostMode
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AirDefrostMode
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

(setf (get endpoint_msgs::AirDefrostMode :md5sum-) "46fcc70554196316c86c618517a35d9d")
(setf (get endpoint_msgs::AirDefrostMode :datatype-) "endpoint_msgs/AirDefrostMode")
(setf (get endpoint_msgs::AirDefrostMode :definition-)
      "uint8 AIR_DEFROS_MODE_OFF = 0
uint8 AIR_DEFROS_MODE_FONT = 1
uint8 AIR_DEFROS_MODE_REAR = 2
uint8 value

")



(provide :endpoint_msgs/AirDefrostMode "46fcc70554196316c86c618517a35d9d")


