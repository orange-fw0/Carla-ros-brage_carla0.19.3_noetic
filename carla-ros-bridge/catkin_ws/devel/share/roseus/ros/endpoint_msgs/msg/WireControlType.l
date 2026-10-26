;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WireControlType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WireControlType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE")
  (make-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))

(in-package "ROS")
;;//! \htmlinclude WireControlType.msg.html


(intern "*SYETEM_REQ_NONE*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(shadow '*SYETEM_REQ_NONE* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(defconstant endpoint_msgs::WireControlType::*SYETEM_REQ_NONE* 0)
(intern "*SYSTEM_REQ_PILOT*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(shadow '*SYSTEM_REQ_PILOT* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(defconstant endpoint_msgs::WireControlType::*SYSTEM_REQ_PILOT* 1)
(intern "*SYSTEM_REQ_APA*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(shadow '*SYSTEM_REQ_APA* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(defconstant endpoint_msgs::WireControlType::*SYSTEM_REQ_APA* 2)
(intern "*SYSTEM_REQ_ACC*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(shadow '*SYSTEM_REQ_ACC* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(defconstant endpoint_msgs::WireControlType::*SYSTEM_REQ_ACC* 3)
(intern "*SYSTEM_REQ_AVP*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(shadow '*SYSTEM_REQ_AVP* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(defconstant endpoint_msgs::WireControlType::*SYSTEM_REQ_AVP* 4)
(intern "*SYSTEM_REQ_LVP*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(shadow '*SYSTEM_REQ_LVP* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(defconstant endpoint_msgs::WireControlType::*SYSTEM_REQ_LVP* 5)
(intern "*SYSTEM_REQ_MRC*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(shadow '*SYSTEM_REQ_MRC* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(defconstant endpoint_msgs::WireControlType::*SYSTEM_REQ_MRC* 6)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPE"))
(defconstant endpoint_msgs::WireControlType::*RESERVED* 7)

(defun endpoint_msgs::WireControlType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::WireControlType::*SYETEM_REQ_NONE*)
        ((= const 1) 'endpoint_msgs::WireControlType::*SYSTEM_REQ_PILOT*)
        ((= const 2) 'endpoint_msgs::WireControlType::*SYSTEM_REQ_APA*)
        ((= const 3) 'endpoint_msgs::WireControlType::*SYSTEM_REQ_ACC*)
        ((= const 4) 'endpoint_msgs::WireControlType::*SYSTEM_REQ_AVP*)
        ((= const 5) 'endpoint_msgs::WireControlType::*SYSTEM_REQ_LVP*)
        ((= const 6) 'endpoint_msgs::WireControlType::*SYSTEM_REQ_MRC*)
        ((= const 7) 'endpoint_msgs::WireControlType::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::WireControlType
  :super ros::object
  :slots (_wire_control_type ))

(defmethod endpoint_msgs::WireControlType
  (:init
   (&key
    ((:wire_control_type __wire_control_type) 0)
    )
   (send-super :init)
   (setq _wire_control_type (round __wire_control_type))
   self)
  (:wire_control_type
   (&optional __wire_control_type)
   (if __wire_control_type (setq _wire_control_type __wire_control_type)) _wire_control_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _wire_control_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _wire_control_type
       (write-byte _wire_control_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _wire_control_type
     (setq _wire_control_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::WireControlType :md5sum-) "ee0dd491a418b1e44e75e53ab91ecd8c")
(setf (get endpoint_msgs::WireControlType :datatype-) "endpoint_msgs/WireControlType")
(setf (get endpoint_msgs::WireControlType :definition-)
      "uint8 SYETEM_REQ_NONE = 0
uint8 SYSTEM_REQ_PILOT = 1
uint8 SYSTEM_REQ_APA = 2
uint8 SYSTEM_REQ_ACC = 3
uint8 SYSTEM_REQ_AVP = 4
uint8 SYSTEM_REQ_LVP = 5
uint8 SYSTEM_REQ_MRC = 6
uint8 RESERVED = 7
uint8 wire_control_type

")



(provide :endpoint_msgs/WireControlType "ee0dd491a418b1e44e75e53ab91ecd8c")


