;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::RearviewMirrorStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'RearviewMirrorStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS")
  (make-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RearviewMirrorStatus.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(defconstant endpoint_msgs::RearviewMirrorStatus::*NONE* 0)
(intern "*OPEN*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(shadow '*OPEN* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(defconstant endpoint_msgs::RearviewMirrorStatus::*OPEN* 1)
(intern "*CLOSE*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(shadow '*CLOSE* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(defconstant endpoint_msgs::RearviewMirrorStatus::*CLOSE* 2)
(intern "*OPENING*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(shadow '*OPENING* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(defconstant endpoint_msgs::RearviewMirrorStatus::*OPENING* 3)
(intern "*CLOSING*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(shadow '*CLOSING* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(defconstant endpoint_msgs::RearviewMirrorStatus::*CLOSING* 4)
(intern "*PROCESSING*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(shadow '*PROCESSING* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(defconstant endpoint_msgs::RearviewMirrorStatus::*PROCESSING* 5)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(defconstant endpoint_msgs::RearviewMirrorStatus::*RESERVED* 6)
(intern "*INVALID*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(shadow '*INVALID* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORSTATUS"))
(defconstant endpoint_msgs::RearviewMirrorStatus::*INVALID* 255)

(defun endpoint_msgs::RearviewMirrorStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::RearviewMirrorStatus::*NONE*)
        ((= const 1) 'endpoint_msgs::RearviewMirrorStatus::*OPEN*)
        ((= const 2) 'endpoint_msgs::RearviewMirrorStatus::*CLOSE*)
        ((= const 3) 'endpoint_msgs::RearviewMirrorStatus::*OPENING*)
        ((= const 4) 'endpoint_msgs::RearviewMirrorStatus::*CLOSING*)
        ((= const 5) 'endpoint_msgs::RearviewMirrorStatus::*PROCESSING*)
        ((= const 6) 'endpoint_msgs::RearviewMirrorStatus::*RESERVED*)
        ((= const 255) 'endpoint_msgs::RearviewMirrorStatus::*INVALID*)
        (t nil)))

(defclass endpoint_msgs::RearviewMirrorStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::RearviewMirrorStatus
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

(setf (get endpoint_msgs::RearviewMirrorStatus :md5sum-) "1229defdc3c27e6846d0536c5c7645ae")
(setf (get endpoint_msgs::RearviewMirrorStatus :datatype-) "endpoint_msgs/RearviewMirrorStatus")
(setf (get endpoint_msgs::RearviewMirrorStatus :definition-)
      "uint8 NONE = 0
uint8 OPEN = 1
uint8 CLOSE = 2
uint8 OPENING = 3
uint8 CLOSING = 4
uint8 PROCESSING = 5
uint8 RESERVED = 6
uint8 INVALID = 255
uint8 value

")



(provide :endpoint_msgs/RearviewMirrorStatus "1229defdc3c27e6846d0536c5c7645ae")


