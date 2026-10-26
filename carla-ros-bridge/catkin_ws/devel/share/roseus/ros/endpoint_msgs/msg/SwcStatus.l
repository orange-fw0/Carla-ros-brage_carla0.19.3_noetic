;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SwcStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SwcStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SWCSTATUS")
  (make-package "ENDPOINT_MSGS::SWCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SwcStatus.msg.html


(intern "*SWC_STATUS_NOT_ACTIVE*" (find-package "ENDPOINT_MSGS::SWCSTATUS"))
(shadow '*SWC_STATUS_NOT_ACTIVE* (find-package "ENDPOINT_MSGS::SWCSTATUS"))
(defconstant endpoint_msgs::SwcStatus::*SWC_STATUS_NOT_ACTIVE* 0)
(intern "*SWC_STATUS_NORMAL*" (find-package "ENDPOINT_MSGS::SWCSTATUS"))
(shadow '*SWC_STATUS_NORMAL* (find-package "ENDPOINT_MSGS::SWCSTATUS"))
(defconstant endpoint_msgs::SwcStatus::*SWC_STATUS_NORMAL* 1)
(intern "*SWC_STATUS_ERROR*" (find-package "ENDPOINT_MSGS::SWCSTATUS"))
(shadow '*SWC_STATUS_ERROR* (find-package "ENDPOINT_MSGS::SWCSTATUS"))
(defconstant endpoint_msgs::SwcStatus::*SWC_STATUS_ERROR* 2)

(defun endpoint_msgs::SwcStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::SwcStatus::*SWC_STATUS_NOT_ACTIVE*)
        ((= const 1) 'endpoint_msgs::SwcStatus::*SWC_STATUS_NORMAL*)
        ((= const 2) 'endpoint_msgs::SwcStatus::*SWC_STATUS_ERROR*)
        (t nil)))

(defclass endpoint_msgs::SwcStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SwcStatus
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

(setf (get endpoint_msgs::SwcStatus :md5sum-) "e82216bc29cdd8065c880d439fa6599b")
(setf (get endpoint_msgs::SwcStatus :datatype-) "endpoint_msgs/SwcStatus")
(setf (get endpoint_msgs::SwcStatus :definition-)
      "uint8 SWC_STATUS_NOT_ACTIVE = 0
uint8 SWC_STATUS_NORMAL = 1
uint8 SWC_STATUS_ERROR = 2
uint8 value

")



(provide :endpoint_msgs/SwcStatus "e82216bc29cdd8065c880d439fa6599b")


