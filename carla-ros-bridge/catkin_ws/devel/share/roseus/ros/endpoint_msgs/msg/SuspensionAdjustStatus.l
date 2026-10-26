;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SuspensionAdjustStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SuspensionAdjustStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS")
  (make-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SuspensionAdjustStatus.msg.html


(intern "*NOACTION*" (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(shadow '*NOACTION* (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(defconstant endpoint_msgs::SuspensionAdjustStatus::*NOACTION* 0)
(intern "*LOWERING*" (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(shadow '*LOWERING* (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(defconstant endpoint_msgs::SuspensionAdjustStatus::*LOWERING* 1)
(intern "*LIFTING*" (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(shadow '*LIFTING* (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(defconstant endpoint_msgs::SuspensionAdjustStatus::*LIFTING* 2)
(intern "*PENDING*" (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(shadow '*PENDING* (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(defconstant endpoint_msgs::SuspensionAdjustStatus::*PENDING* 3)
(intern "*ADJUSTING*" (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(shadow '*ADJUSTING* (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(defconstant endpoint_msgs::SuspensionAdjustStatus::*ADJUSTING* 4)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::SUSPENSIONADJUSTSTATUS"))
(defconstant endpoint_msgs::SuspensionAdjustStatus::*RESERVED* 5)

(defun endpoint_msgs::SuspensionAdjustStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::SuspensionAdjustStatus::*NOACTION*)
        ((= const 1) 'endpoint_msgs::SuspensionAdjustStatus::*LOWERING*)
        ((= const 2) 'endpoint_msgs::SuspensionAdjustStatus::*LIFTING*)
        ((= const 3) 'endpoint_msgs::SuspensionAdjustStatus::*PENDING*)
        ((= const 4) 'endpoint_msgs::SuspensionAdjustStatus::*ADJUSTING*)
        ((= const 5) 'endpoint_msgs::SuspensionAdjustStatus::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::SuspensionAdjustStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SuspensionAdjustStatus
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

(setf (get endpoint_msgs::SuspensionAdjustStatus :md5sum-) "9c56630c548a81602ee8e4dcdd39fc72")
(setf (get endpoint_msgs::SuspensionAdjustStatus :datatype-) "endpoint_msgs/SuspensionAdjustStatus")
(setf (get endpoint_msgs::SuspensionAdjustStatus :definition-)
      "uint8 NOACTION = 0
uint8 LOWERING = 1
uint8 LIFTING = 2
uint8 PENDING = 3
uint8 ADJUSTING = 4
uint8 RESERVED = 5
uint8 value

")



(provide :endpoint_msgs/SuspensionAdjustStatus "9c56630c548a81602ee8e4dcdd39fc72")


