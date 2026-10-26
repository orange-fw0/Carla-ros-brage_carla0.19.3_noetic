;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::LightModeState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'LightModeState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::LIGHTMODESTATE")
  (make-package "ENDPOINT_MSGS::LIGHTMODESTATE"))

(in-package "ROS")
;;//! \htmlinclude LightModeState.msg.html


(intern "*LIGHT_OFF*" (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(shadow '*LIGHT_OFF* (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(defconstant endpoint_msgs::LightModeState::*LIGHT_OFF* 0)
(intern "*LIGHT_AUTO*" (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(shadow '*LIGHT_AUTO* (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(defconstant endpoint_msgs::LightModeState::*LIGHT_AUTO* 1)
(intern "*LIGHT_LOW_BEAM*" (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(shadow '*LIGHT_LOW_BEAM* (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(defconstant endpoint_msgs::LightModeState::*LIGHT_LOW_BEAM* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(defconstant endpoint_msgs::LightModeState::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::LIGHTMODESTATE"))
(defconstant endpoint_msgs::LightModeState::*RESERVED2* 4)

(defun endpoint_msgs::LightModeState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::LightModeState::*LIGHT_OFF*)
        ((= const 1) 'endpoint_msgs::LightModeState::*LIGHT_AUTO*)
        ((= const 2) 'endpoint_msgs::LightModeState::*LIGHT_LOW_BEAM*)
        ((= const 3) 'endpoint_msgs::LightModeState::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::LightModeState::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::LightModeState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::LightModeState
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

(setf (get endpoint_msgs::LightModeState :md5sum-) "7a0056d2f8419ec731c6d38a3186e348")
(setf (get endpoint_msgs::LightModeState :datatype-) "endpoint_msgs/LightModeState")
(setf (get endpoint_msgs::LightModeState :definition-)
      "uint8 LIGHT_OFF = 0
uint8 LIGHT_AUTO = 1
uint8 LIGHT_LOW_BEAM = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

")



(provide :endpoint_msgs/LightModeState "7a0056d2f8419ec731c6d38a3186e348")


