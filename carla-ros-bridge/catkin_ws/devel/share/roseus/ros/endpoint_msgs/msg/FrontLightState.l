;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::FrontLightState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'FrontLightState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE")
  (make-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude FrontLightState.msg.html


(intern "*LIGHT_OFF*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(shadow '*LIGHT_OFF* (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(defconstant endpoint_msgs::FrontLightState::*LIGHT_OFF* 0)
(intern "*LOW_BEAM_LIGHT*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(shadow '*LOW_BEAM_LIGHT* (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(defconstant endpoint_msgs::FrontLightState::*LOW_BEAM_LIGHT* 1)
(intern "*HIGH_BEAM_LIGHT*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(shadow '*HIGH_BEAM_LIGHT* (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(defconstant endpoint_msgs::FrontLightState::*HIGH_BEAM_LIGHT* 2)
(intern "*OVERTAKING_FLASH*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(shadow '*OVERTAKING_FLASH* (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(defconstant endpoint_msgs::FrontLightState::*OVERTAKING_FLASH* 3)
(intern "*LIGHT_AUTO*" (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(shadow '*LIGHT_AUTO* (find-package "ENDPOINT_MSGS::FRONTLIGHTSTATE"))
(defconstant endpoint_msgs::FrontLightState::*LIGHT_AUTO* 4)

(defun endpoint_msgs::FrontLightState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::FrontLightState::*LIGHT_OFF*)
        ((= const 1) 'endpoint_msgs::FrontLightState::*LOW_BEAM_LIGHT*)
        ((= const 2) 'endpoint_msgs::FrontLightState::*HIGH_BEAM_LIGHT*)
        ((= const 3) 'endpoint_msgs::FrontLightState::*OVERTAKING_FLASH*)
        ((= const 4) 'endpoint_msgs::FrontLightState::*LIGHT_AUTO*)
        (t nil)))

(defclass endpoint_msgs::FrontLightState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::FrontLightState
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

(setf (get endpoint_msgs::FrontLightState :md5sum-) "9301ac5d44aabafbe62a4490edc1f2ef")
(setf (get endpoint_msgs::FrontLightState :datatype-) "endpoint_msgs/FrontLightState")
(setf (get endpoint_msgs::FrontLightState :definition-)
      "uint8 LIGHT_OFF = 0
uint8 LOW_BEAM_LIGHT = 1
uint8 HIGH_BEAM_LIGHT = 2
uint8 OVERTAKING_FLASH = 3
uint8 LIGHT_AUTO = 4
uint8 value

")



(provide :endpoint_msgs/FrontLightState "9301ac5d44aabafbe62a4490edc1f2ef")


