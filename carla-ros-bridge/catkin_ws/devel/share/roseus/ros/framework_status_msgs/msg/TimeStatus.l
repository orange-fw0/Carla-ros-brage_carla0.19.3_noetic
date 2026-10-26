;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::TimeStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'TimeStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::TIMESTATUS"))

(in-package "ROS")
;;//! \htmlinclude TimeStatus.msg.html


(intern "*TIME_STATUS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUS"))
(shadow '*TIME_STATUS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::TIMESTATUS"))
(defconstant framework_status_msgs::TimeStatus::*TIME_STATUS_DATA* 1)

(defun framework_status_msgs::TimeStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::TimeStatus::*TIME_STATUS_DATA*)
        (t nil)))

(defclass framework_status_msgs::TimeStatus
  :super ros::object
  :slots (_available _time_status_data ))

(defmethod framework_status_msgs::TimeStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:time_status_data __time_status_data) (instance framework_status_msgs::TimeStatusData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _time_status_data __time_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:time_status_data
   (&rest __time_status_data)
   (if (keywordp (car __time_status_data))
       (send* _time_status_data __time_status_data)
     (progn
       (if __time_status_data (setq _time_status_data (car __time_status_data)))
       _time_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/TimeStatusData _time_status_data
    (send _time_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/TimeStatusData _time_status_data
       (send _time_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/TimeStatusData _time_status_data
     (send _time_status_data :deserialize buf ptr-) (incf ptr- (send _time_status_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::TimeStatus :md5sum-) "583f0270ac255a2d8356cb80504fd440")
(setf (get framework_status_msgs::TimeStatus :datatype-) "framework_status_msgs/TimeStatus")
(setf (get framework_status_msgs::TimeStatus :definition-)
      "uint8 TIME_STATUS_DATA = 1
uint8 available
framework_status_msgs/TimeStatusData time_status_data

================================================================================
MSG: framework_status_msgs/TimeStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
string reserved_info
string message

")



(provide :framework_status_msgs/TimeStatus "583f0270ac255a2d8356cb80504fd440")


