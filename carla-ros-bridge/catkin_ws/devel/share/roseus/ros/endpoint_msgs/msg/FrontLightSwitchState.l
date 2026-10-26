;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::FrontLightSwitchState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'FrontLightSwitchState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE")
  (make-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))

(in-package "ROS")
;;//! \htmlinclude FrontLightSwitchState.msg.html


(intern "*FRONT_LIGHT_OFF*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(shadow '*FRONT_LIGHT_OFF* (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(defconstant endpoint_msgs::FrontLightSwitchState::*FRONT_LIGHT_OFF* 0)
(intern "*FRONT_LIGHT_LOW*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(shadow '*FRONT_LIGHT_LOW* (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(defconstant endpoint_msgs::FrontLightSwitchState::*FRONT_LIGHT_LOW* 1)
(intern "*FRONT_LIGHT_HIGH*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(shadow '*FRONT_LIGHT_HIGH* (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(defconstant endpoint_msgs::FrontLightSwitchState::*FRONT_LIGHT_HIGH* 2)
(intern "*FRONT_LIGHT_FLASH*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(shadow '*FRONT_LIGHT_FLASH* (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(defconstant endpoint_msgs::FrontLightSwitchState::*FRONT_LIGHT_FLASH* 3)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(defconstant endpoint_msgs::FrontLightSwitchState::*RESERVED1* 4)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::FRONTLIGHTSWITCHSTATE"))
(defconstant endpoint_msgs::FrontLightSwitchState::*RESERVED2* 5)

(defun endpoint_msgs::FrontLightSwitchState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::FrontLightSwitchState::*FRONT_LIGHT_OFF*)
        ((= const 1) 'endpoint_msgs::FrontLightSwitchState::*FRONT_LIGHT_LOW*)
        ((= const 2) 'endpoint_msgs::FrontLightSwitchState::*FRONT_LIGHT_HIGH*)
        ((= const 3) 'endpoint_msgs::FrontLightSwitchState::*FRONT_LIGHT_FLASH*)
        ((= const 4) 'endpoint_msgs::FrontLightSwitchState::*RESERVED1*)
        ((= const 5) 'endpoint_msgs::FrontLightSwitchState::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::FrontLightSwitchState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::FrontLightSwitchState
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

(setf (get endpoint_msgs::FrontLightSwitchState :md5sum-) "a417f739017c3f09d1308d90996bfcf8")
(setf (get endpoint_msgs::FrontLightSwitchState :datatype-) "endpoint_msgs/FrontLightSwitchState")
(setf (get endpoint_msgs::FrontLightSwitchState :definition-)
      "uint8 FRONT_LIGHT_OFF = 0
uint8 FRONT_LIGHT_LOW = 1
uint8 FRONT_LIGHT_HIGH = 2
uint8 FRONT_LIGHT_FLASH = 3
uint8 RESERVED1 = 4
uint8 RESERVED2 = 5
uint8 value

")



(provide :endpoint_msgs/FrontLightSwitchState "a417f739017c3f09d1308d90996bfcf8")


