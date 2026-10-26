;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::TimeStatusData)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'TimeStatusData (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUSDATA")
  (make-package "FRAMEWORK_STATUS_MSGS::TIMESTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude TimeStatusData.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUSDATA"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUSDATA"))
(defconstant framework_status_msgs::TimeStatusData::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUSDATA"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUSDATA"))
(defconstant framework_status_msgs::TimeStatusData::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUSDATA"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUSDATA"))
(defconstant framework_status_msgs::TimeStatusData::*ERROR* 2)

(defun framework_status_msgs::TimeStatusData-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::TimeStatusData::*NORM*)
        ((= const 1) 'framework_status_msgs::TimeStatusData::*WARNING*)
        ((= const 2) 'framework_status_msgs::TimeStatusData::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::TimeStatusData
  :super ros::object
  :slots (_health_status _reserved_info _message ))

(defmethod framework_status_msgs::TimeStatusData
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _health_status
    1
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _health_status
       (write-byte _health_status s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _health_status
     (setq _health_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::TimeStatusData :md5sum-) "f4a2145ad2f0110bf9f27c349ad86431")
(setf (get framework_status_msgs::TimeStatusData :datatype-) "framework_status_msgs/TimeStatusData")
(setf (get framework_status_msgs::TimeStatusData :definition-)
      "uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
string reserved_info
string message

")



(provide :framework_status_msgs/TimeStatusData "f4a2145ad2f0110bf9f27c349ad86431")


