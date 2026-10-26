;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::LeverStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'LeverStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::LEVERSTATUS")
  (make-package "ENDPOINT_MSGS::LEVERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LeverStatus.msg.html


(intern "*LEVER_STATE_OFF*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_OFF* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_OFF* 0)
(intern "*LEVER_STATE_LEFT*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_LEFT* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_LEFT* 1)
(intern "*LEVER_STATE_RIGHT*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_RIGHT* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_RIGHT* 2)
(intern "*LEVER_STATE_LEFT_INVALID*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_LEFT_INVALID* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_LEFT_INVALID* 3)
(intern "*LEVER_STATE_RIGHT_INVALID*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_RIGHT_INVALID* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_RIGHT_INVALID* 4)
(intern "*LEVER_STATE_LEFT_LIGHT*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_LEFT_LIGHT* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_LEFT_LIGHT* 5)
(intern "*LEVER_STATE_RIGHT_LIGHT*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_RIGHT_LIGHT* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_RIGHT_LIGHT* 6)
(intern "*LEVER_STATE_RESERVED1*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_RESERVED1* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_RESERVED1* 7)
(intern "*LEVER_STATE_RESERVED3*" (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(shadow '*LEVER_STATE_RESERVED3* (find-package "ENDPOINT_MSGS::LEVERSTATUS"))
(defconstant endpoint_msgs::LeverStatus::*LEVER_STATE_RESERVED3* 8)

(defun endpoint_msgs::LeverStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::LeverStatus::*LEVER_STATE_OFF*)
        ((= const 1) 'endpoint_msgs::LeverStatus::*LEVER_STATE_LEFT*)
        ((= const 2) 'endpoint_msgs::LeverStatus::*LEVER_STATE_RIGHT*)
        ((= const 3) 'endpoint_msgs::LeverStatus::*LEVER_STATE_LEFT_INVALID*)
        ((= const 4) 'endpoint_msgs::LeverStatus::*LEVER_STATE_RIGHT_INVALID*)
        ((= const 5) 'endpoint_msgs::LeverStatus::*LEVER_STATE_LEFT_LIGHT*)
        ((= const 6) 'endpoint_msgs::LeverStatus::*LEVER_STATE_RIGHT_LIGHT*)
        ((= const 7) 'endpoint_msgs::LeverStatus::*LEVER_STATE_RESERVED1*)
        ((= const 8) 'endpoint_msgs::LeverStatus::*LEVER_STATE_RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::LeverStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::LeverStatus
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

(setf (get endpoint_msgs::LeverStatus :md5sum-) "15bad8e81cba86ce97105bd413cab318")
(setf (get endpoint_msgs::LeverStatus :datatype-) "endpoint_msgs/LeverStatus")
(setf (get endpoint_msgs::LeverStatus :definition-)
      "uint8 LEVER_STATE_OFF = 0
uint8 LEVER_STATE_LEFT = 1
uint8 LEVER_STATE_RIGHT = 2
uint8 LEVER_STATE_LEFT_INVALID = 3
uint8 LEVER_STATE_RIGHT_INVALID = 4
uint8 LEVER_STATE_LEFT_LIGHT = 5
uint8 LEVER_STATE_RIGHT_LIGHT = 6
uint8 LEVER_STATE_RESERVED1 = 7
uint8 LEVER_STATE_RESERVED3 = 8
uint8 value

")



(provide :endpoint_msgs/LeverStatus "15bad8e81cba86ce97105bd413cab318")


