;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WorkType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WorkType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WORKTYPE")
  (make-package "ENDPOINT_MSGS::WORKTYPE"))

(in-package "ROS")
;;//! \htmlinclude WorkType.msg.html


(intern "*MANUALPILOT*" (find-package "ENDPOINT_MSGS::WORKTYPE"))
(shadow '*MANUALPILOT* (find-package "ENDPOINT_MSGS::WORKTYPE"))
(defconstant endpoint_msgs::WorkType::*MANUALPILOT* 0)
(intern "*AUTOPILOT_PILOT*" (find-package "ENDPOINT_MSGS::WORKTYPE"))
(shadow '*AUTOPILOT_PILOT* (find-package "ENDPOINT_MSGS::WORKTYPE"))
(defconstant endpoint_msgs::WorkType::*AUTOPILOT_PILOT* 1)
(intern "*AUTOPILOT_APA*" (find-package "ENDPOINT_MSGS::WORKTYPE"))
(shadow '*AUTOPILOT_APA* (find-package "ENDPOINT_MSGS::WORKTYPE"))
(defconstant endpoint_msgs::WorkType::*AUTOPILOT_APA* 2)
(intern "*AUTOPILOT_ACC*" (find-package "ENDPOINT_MSGS::WORKTYPE"))
(shadow '*AUTOPILOT_ACC* (find-package "ENDPOINT_MSGS::WORKTYPE"))
(defconstant endpoint_msgs::WorkType::*AUTOPILOT_ACC* 3)
(intern "*AUTOPILOT_RESERVED1*" (find-package "ENDPOINT_MSGS::WORKTYPE"))
(shadow '*AUTOPILOT_RESERVED1* (find-package "ENDPOINT_MSGS::WORKTYPE"))
(defconstant endpoint_msgs::WorkType::*AUTOPILOT_RESERVED1* 4)
(intern "*AUTOPILOT_RESERVED2*" (find-package "ENDPOINT_MSGS::WORKTYPE"))
(shadow '*AUTOPILOT_RESERVED2* (find-package "ENDPOINT_MSGS::WORKTYPE"))
(defconstant endpoint_msgs::WorkType::*AUTOPILOT_RESERVED2* 5)
(intern "*AUTOPILOT_RESERVED3*" (find-package "ENDPOINT_MSGS::WORKTYPE"))
(shadow '*AUTOPILOT_RESERVED3* (find-package "ENDPOINT_MSGS::WORKTYPE"))
(defconstant endpoint_msgs::WorkType::*AUTOPILOT_RESERVED3* 6)
(intern "*AUTOPILOT_RESERVED4*" (find-package "ENDPOINT_MSGS::WORKTYPE"))
(shadow '*AUTOPILOT_RESERVED4* (find-package "ENDPOINT_MSGS::WORKTYPE"))
(defconstant endpoint_msgs::WorkType::*AUTOPILOT_RESERVED4* 7)

(defun endpoint_msgs::WorkType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::WorkType::*MANUALPILOT*)
        ((= const 1) 'endpoint_msgs::WorkType::*AUTOPILOT_PILOT*)
        ((= const 2) 'endpoint_msgs::WorkType::*AUTOPILOT_APA*)
        ((= const 3) 'endpoint_msgs::WorkType::*AUTOPILOT_ACC*)
        ((= const 4) 'endpoint_msgs::WorkType::*AUTOPILOT_RESERVED1*)
        ((= const 5) 'endpoint_msgs::WorkType::*AUTOPILOT_RESERVED2*)
        ((= const 6) 'endpoint_msgs::WorkType::*AUTOPILOT_RESERVED3*)
        ((= const 7) 'endpoint_msgs::WorkType::*AUTOPILOT_RESERVED4*)
        (t nil)))

(defclass endpoint_msgs::WorkType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::WorkType
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

(setf (get endpoint_msgs::WorkType :md5sum-) "6b4e8a6bfe4dec8b17f85302d9723252")
(setf (get endpoint_msgs::WorkType :datatype-) "endpoint_msgs/WorkType")
(setf (get endpoint_msgs::WorkType :definition-)
      "uint8 MANUALPILOT = 0
uint8 AUTOPILOT_PILOT = 1
uint8 AUTOPILOT_APA = 2
uint8 AUTOPILOT_ACC = 3
uint8 AUTOPILOT_RESERVED1 = 4
uint8 AUTOPILOT_RESERVED2 = 5
uint8 AUTOPILOT_RESERVED3 = 6
uint8 AUTOPILOT_RESERVED4 = 7
uint8 value

")



(provide :endpoint_msgs/WorkType "6b4e8a6bfe4dec8b17f85302d9723252")


