;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WiperCommandType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WiperCommandType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE")
  (make-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))

(in-package "ROS")
;;//! \htmlinclude WiperCommandType.msg.html


(intern "*OFF*" (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(shadow '*OFF* (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(defconstant endpoint_msgs::WiperCommandType::*OFF* 0)
(intern "*LOW*" (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(shadow '*LOW* (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(defconstant endpoint_msgs::WiperCommandType::*LOW* 1)
(intern "*HIGH*" (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(shadow '*HIGH* (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(defconstant endpoint_msgs::WiperCommandType::*HIGH* 2)
(intern "*AUTO*" (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(shadow '*AUTO* (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(defconstant endpoint_msgs::WiperCommandType::*AUTO* 3)
(intern "*SPRAY*" (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(shadow '*SPRAY* (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(defconstant endpoint_msgs::WiperCommandType::*SPRAY* 4)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::WIPERCOMMANDTYPE"))
(defconstant endpoint_msgs::WiperCommandType::*RESERVED* 5)

(defun endpoint_msgs::WiperCommandType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::WiperCommandType::*OFF*)
        ((= const 1) 'endpoint_msgs::WiperCommandType::*LOW*)
        ((= const 2) 'endpoint_msgs::WiperCommandType::*HIGH*)
        ((= const 3) 'endpoint_msgs::WiperCommandType::*AUTO*)
        ((= const 4) 'endpoint_msgs::WiperCommandType::*SPRAY*)
        ((= const 5) 'endpoint_msgs::WiperCommandType::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::WiperCommandType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::WiperCommandType
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

(setf (get endpoint_msgs::WiperCommandType :md5sum-) "e3f338d0d4f9b666e8021c392afba60a")
(setf (get endpoint_msgs::WiperCommandType :datatype-) "endpoint_msgs/WiperCommandType")
(setf (get endpoint_msgs::WiperCommandType :definition-)
      "uint8 OFF = 0
uint8 LOW = 1
uint8 HIGH = 2
uint8 AUTO = 3
uint8 SPRAY = 4
uint8 RESERVED = 5
uint8 value

")



(provide :endpoint_msgs/WiperCommandType "e3f338d0d4f9b666e8021c392afba60a")


