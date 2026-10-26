;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WiperStateType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WiperStateType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIPERSTATETYPE")
  (make-package "ENDPOINT_MSGS::WIPERSTATETYPE"))

(in-package "ROS")
;;//! \htmlinclude WiperStateType.msg.html


(intern "*OFF*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*OFF* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*OFF* 0)
(intern "*AUTO_OFF*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*AUTO_OFF* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*AUTO_OFF* 1)
(intern "*AUTO_MOVING*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*AUTO_MOVING* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*AUTO_MOVING* 2)
(intern "*MANUAL_OFF*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*MANUAL_OFF* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*MANUAL_OFF* 3)
(intern "*MANUAL_ON*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*MANUAL_ON* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*MANUAL_ON* 4)
(intern "*MANUAL_LOW*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*MANUAL_LOW* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*MANUAL_LOW* 5)
(intern "*MANUAL_HIGH*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*MANUAL_HIGH* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*MANUAL_HIGH* 6)
(intern "*MIST_FLICK*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*MIST_FLICK* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*MIST_FLICK* 7)
(intern "*WASH*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*WASH* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*WASH* 8)
(intern "*AUTO_LOW*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*AUTO_LOW* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*AUTO_LOW* 9)
(intern "*AUTO_HIGH*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*AUTO_HIGH* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*AUTO_HIGH* 10)
(intern "*COURTESY_WIPE*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*COURTESY_WIPE* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*COURTESY_WIPE* 11)
(intern "*AUTO_ADJUST*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*AUTO_ADJUST* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*AUTO_ADJUST* 12)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*RESERVED* 13)
(intern "*STALLED*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*STALLED* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*STALLED* 14)
(intern "*NONE*" (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::WIPERSTATETYPE"))
(defconstant endpoint_msgs::WiperStateType::*NONE* 15)

(defun endpoint_msgs::WiperStateType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::WiperStateType::*OFF*)
        ((= const 1) 'endpoint_msgs::WiperStateType::*AUTO_OFF*)
        ((= const 2) 'endpoint_msgs::WiperStateType::*AUTO_MOVING*)
        ((= const 3) 'endpoint_msgs::WiperStateType::*MANUAL_OFF*)
        ((= const 4) 'endpoint_msgs::WiperStateType::*MANUAL_ON*)
        ((= const 5) 'endpoint_msgs::WiperStateType::*MANUAL_LOW*)
        ((= const 6) 'endpoint_msgs::WiperStateType::*MANUAL_HIGH*)
        ((= const 7) 'endpoint_msgs::WiperStateType::*MIST_FLICK*)
        ((= const 8) 'endpoint_msgs::WiperStateType::*WASH*)
        ((= const 9) 'endpoint_msgs::WiperStateType::*AUTO_LOW*)
        ((= const 10) 'endpoint_msgs::WiperStateType::*AUTO_HIGH*)
        ((= const 11) 'endpoint_msgs::WiperStateType::*COURTESY_WIPE*)
        ((= const 12) 'endpoint_msgs::WiperStateType::*AUTO_ADJUST*)
        ((= const 13) 'endpoint_msgs::WiperStateType::*RESERVED*)
        ((= const 14) 'endpoint_msgs::WiperStateType::*STALLED*)
        ((= const 15) 'endpoint_msgs::WiperStateType::*NONE*)
        (t nil)))

(defclass endpoint_msgs::WiperStateType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::WiperStateType
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

(setf (get endpoint_msgs::WiperStateType :md5sum-) "8bdfb8e383ba5a20bdc9118f3b8516e2")
(setf (get endpoint_msgs::WiperStateType :datatype-) "endpoint_msgs/WiperStateType")
(setf (get endpoint_msgs::WiperStateType :definition-)
      "uint8 OFF = 0
uint8 AUTO_OFF = 1
uint8 AUTO_MOVING = 2
uint8 MANUAL_OFF = 3
uint8 MANUAL_ON = 4
uint8 MANUAL_LOW = 5
uint8 MANUAL_HIGH = 6
uint8 MIST_FLICK = 7
uint8 WASH = 8
uint8 AUTO_LOW = 9
uint8 AUTO_HIGH = 10
uint8 COURTESY_WIPE = 11
uint8 AUTO_ADJUST = 12
uint8 RESERVED = 13
uint8 STALLED = 14
uint8 NONE = 15
uint8 value

")



(provide :endpoint_msgs/WiperStateType "8bdfb8e383ba5a20bdc9118f3b8516e2")


