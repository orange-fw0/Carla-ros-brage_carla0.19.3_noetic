;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HandOffStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HandOffStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HANDOFFSTATUS")
  (make-package "ENDPOINT_MSGS::HANDOFFSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HandOffStatus.msg.html


(intern "*HAND_OFF_STATUS_NONE*" (find-package "ENDPOINT_MSGS::HANDOFFSTATUS"))
(shadow '*HAND_OFF_STATUS_NONE* (find-package "ENDPOINT_MSGS::HANDOFFSTATUS"))
(defconstant endpoint_msgs::HandOffStatus::*HAND_OFF_STATUS_NONE* 0)
(intern "*HAND_OFF_STATUS_TRUE*" (find-package "ENDPOINT_MSGS::HANDOFFSTATUS"))
(shadow '*HAND_OFF_STATUS_TRUE* (find-package "ENDPOINT_MSGS::HANDOFFSTATUS"))
(defconstant endpoint_msgs::HandOffStatus::*HAND_OFF_STATUS_TRUE* 1)
(intern "*HAND_OFF_STATUS_FALSE*" (find-package "ENDPOINT_MSGS::HANDOFFSTATUS"))
(shadow '*HAND_OFF_STATUS_FALSE* (find-package "ENDPOINT_MSGS::HANDOFFSTATUS"))
(defconstant endpoint_msgs::HandOffStatus::*HAND_OFF_STATUS_FALSE* 2)
(intern "*HAND_OFF_STATUS_INVALID*" (find-package "ENDPOINT_MSGS::HANDOFFSTATUS"))
(shadow '*HAND_OFF_STATUS_INVALID* (find-package "ENDPOINT_MSGS::HANDOFFSTATUS"))
(defconstant endpoint_msgs::HandOffStatus::*HAND_OFF_STATUS_INVALID* 255)

(defun endpoint_msgs::HandOffStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::HandOffStatus::*HAND_OFF_STATUS_NONE*)
        ((= const 1) 'endpoint_msgs::HandOffStatus::*HAND_OFF_STATUS_TRUE*)
        ((= const 2) 'endpoint_msgs::HandOffStatus::*HAND_OFF_STATUS_FALSE*)
        ((= const 255) 'endpoint_msgs::HandOffStatus::*HAND_OFF_STATUS_INVALID*)
        (t nil)))

(defclass endpoint_msgs::HandOffStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::HandOffStatus
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

(setf (get endpoint_msgs::HandOffStatus :md5sum-) "6e039363f3d53f5d1dfdfd378a9c1e44")
(setf (get endpoint_msgs::HandOffStatus :datatype-) "endpoint_msgs/HandOffStatus")
(setf (get endpoint_msgs::HandOffStatus :definition-)
      "uint8 HAND_OFF_STATUS_NONE = 0
uint8 HAND_OFF_STATUS_TRUE = 1
uint8 HAND_OFF_STATUS_FALSE = 2
uint8 HAND_OFF_STATUS_INVALID = 255
uint8 value

")



(provide :endpoint_msgs/HandOffStatus "6e039363f3d53f5d1dfdfd378a9c1e44")


