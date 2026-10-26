;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::DoorReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'DoorReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::DOORREPORT")
  (make-package "ENDPOINT_MSGS::DOORREPORT"))

(in-package "ROS")
;;//! \htmlinclude DoorReport.msg.html


(intern "*DOOR_REPORT_DATA*" (find-package "ENDPOINT_MSGS::DOORREPORT"))
(shadow '*DOOR_REPORT_DATA* (find-package "ENDPOINT_MSGS::DOORREPORT"))
(defconstant endpoint_msgs::DoorReport::*DOOR_REPORT_DATA* 1)

(defun endpoint_msgs::DoorReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::DoorReport::*DOOR_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::DoorReport
  :super ros::object
  :slots (_available _door_report_data ))

(defmethod endpoint_msgs::DoorReport
  (:init
   (&key
    ((:available __available) 0)
    ((:door_report_data __door_report_data) (instance endpoint_msgs::DoorReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _door_report_data __door_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:door_report_data
   (&rest __door_report_data)
   (if (keywordp (car __door_report_data))
       (send* _door_report_data __door_report_data)
     (progn
       (if __door_report_data (setq _door_report_data (car __door_report_data)))
       _door_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/DoorReportData _door_report_data
    (send _door_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/DoorReportData _door_report_data
       (send _door_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/DoorReportData _door_report_data
     (send _door_report_data :deserialize buf ptr-) (incf ptr- (send _door_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::DoorReport :md5sum-) "184d144206f18c52f28952c9a0a34578")
(setf (get endpoint_msgs::DoorReport :datatype-) "endpoint_msgs/DoorReport")
(setf (get endpoint_msgs::DoorReport :definition-)
      "uint8 DOOR_REPORT_DATA = 1
uint8 available
endpoint_msgs/DoorReportData door_report_data

================================================================================
MSG: endpoint_msgs/DoorReportData
uint64 timestamp_us
endpoint_msgs/DoorType[] opened_door_array
bool valid

================================================================================
MSG: endpoint_msgs/DoorType
uint8 DRIVER = 0
uint8 PASSENGER = 1
uint8 REAR_LEFT = 2
uint8 REAR_RIGHT = 3
uint8 HOOD = 4
uint8 TRUNK = 5
uint8 value

")



(provide :endpoint_msgs/DoorReport "184d144206f18c52f28952c9a0a34578")


