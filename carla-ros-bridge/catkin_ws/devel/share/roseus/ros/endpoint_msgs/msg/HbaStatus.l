;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HbaStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HbaStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HBASTATUS")
  (make-package "ENDPOINT_MSGS::HBASTATUS"))

(in-package "ROS")
;;//! \htmlinclude HbaStatus.msg.html


(intern "*AEB_HBA_NO_REQUEST*" (find-package "ENDPOINT_MSGS::HBASTATUS"))
(shadow '*AEB_HBA_NO_REQUEST* (find-package "ENDPOINT_MSGS::HBASTATUS"))
(defconstant endpoint_msgs::HbaStatus::*AEB_HBA_NO_REQUEST* 0)
(intern "*AEB_HBA_REQUEST_HONORED*" (find-package "ENDPOINT_MSGS::HBASTATUS"))
(shadow '*AEB_HBA_REQUEST_HONORED* (find-package "ENDPOINT_MSGS::HBASTATUS"))
(defconstant endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_HONORED* 1)
(intern "*AEB_HBA_REQUEST_LOST_ARBITRATION*" (find-package "ENDPOINT_MSGS::HBASTATUS"))
(shadow '*AEB_HBA_REQUEST_LOST_ARBITRATION* (find-package "ENDPOINT_MSGS::HBASTATUS"))
(defconstant endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_LOST_ARBITRATION* 2)
(intern "*AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR*" (find-package "ENDPOINT_MSGS::HBASTATUS"))
(shadow '*AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR* (find-package "ENDPOINT_MSGS::HBASTATUS"))
(defconstant endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR* 3)
(intern "*AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED*" (find-package "ENDPOINT_MSGS::HBASTATUS"))
(shadow '*AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED* (find-package "ENDPOINT_MSGS::HBASTATUS"))
(defconstant endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED* 4)
(intern "*AEB_HBA_REQUEST_RESERVED1*" (find-package "ENDPOINT_MSGS::HBASTATUS"))
(shadow '*AEB_HBA_REQUEST_RESERVED1* (find-package "ENDPOINT_MSGS::HBASTATUS"))
(defconstant endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_RESERVED1* 5)
(intern "*AEB_HBA_REQUEST_RESERVED2*" (find-package "ENDPOINT_MSGS::HBASTATUS"))
(shadow '*AEB_HBA_REQUEST_RESERVED2* (find-package "ENDPOINT_MSGS::HBASTATUS"))
(defconstant endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_RESERVED2* 6)
(intern "*AEB_HBA_REQUEST_RESERVED3*" (find-package "ENDPOINT_MSGS::HBASTATUS"))
(shadow '*AEB_HBA_REQUEST_RESERVED3* (find-package "ENDPOINT_MSGS::HBASTATUS"))
(defconstant endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_RESERVED3* 7)

(defun endpoint_msgs::HbaStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::HbaStatus::*AEB_HBA_NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_HONORED*)
        ((= const 2) 'endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_LOST_ARBITRATION*)
        ((= const 3) 'endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR*)
        ((= const 4) 'endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED*)
        ((= const 5) 'endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_RESERVED1*)
        ((= const 6) 'endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_RESERVED2*)
        ((= const 7) 'endpoint_msgs::HbaStatus::*AEB_HBA_REQUEST_RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::HbaStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::HbaStatus
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

(setf (get endpoint_msgs::HbaStatus :md5sum-) "1156ea4e065cd9ec024080388a2b035e")
(setf (get endpoint_msgs::HbaStatus :datatype-) "endpoint_msgs/HbaStatus")
(setf (get endpoint_msgs::HbaStatus :definition-)
      "uint8 AEB_HBA_NO_REQUEST = 0
uint8 AEB_HBA_REQUEST_HONORED = 1
uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_HBA_REQUEST_RESERVED1 = 5
uint8 AEB_HBA_REQUEST_RESERVED2 = 6
uint8 AEB_HBA_REQUEST_RESERVED3 = 7
uint8 value

")



(provide :endpoint_msgs/HbaStatus "1156ea4e065cd9ec024080388a2b035e")


