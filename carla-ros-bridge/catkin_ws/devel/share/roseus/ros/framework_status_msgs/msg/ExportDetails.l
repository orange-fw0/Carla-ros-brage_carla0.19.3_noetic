;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::ExportDetails)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'ExportDetails (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::EXPORTDETAILS")
  (make-package "FRAMEWORK_STATUS_MSGS::EXPORTDETAILS"))

(in-package "ROS")
;;//! \htmlinclude ExportDetails.msg.html


(intern "*EXPORT_DETAILS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::EXPORTDETAILS"))
(shadow '*EXPORT_DETAILS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::EXPORTDETAILS"))
(defconstant framework_status_msgs::ExportDetails::*EXPORT_DETAILS_DATA* 1)

(defun framework_status_msgs::ExportDetails-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::ExportDetails::*EXPORT_DETAILS_DATA*)
        (t nil)))

(defclass framework_status_msgs::ExportDetails
  :super ros::object
  :slots (_available _export_details_data ))

(defmethod framework_status_msgs::ExportDetails
  (:init
   (&key
    ((:available __available) 0)
    ((:export_details_data __export_details_data) (instance framework_status_msgs::ExportDetailsData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _export_details_data __export_details_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:export_details_data
   (&rest __export_details_data)
   (if (keywordp (car __export_details_data))
       (send* _export_details_data __export_details_data)
     (progn
       (if __export_details_data (setq _export_details_data (car __export_details_data)))
       _export_details_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/ExportDetailsData _export_details_data
    (send _export_details_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/ExportDetailsData _export_details_data
       (send _export_details_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/ExportDetailsData _export_details_data
     (send _export_details_data :deserialize buf ptr-) (incf ptr- (send _export_details_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::ExportDetails :md5sum-) "99c6a676a5113eb2962c5742c65fbbd7")
(setf (get framework_status_msgs::ExportDetails :datatype-) "framework_status_msgs/ExportDetails")
(setf (get framework_status_msgs::ExportDetails :definition-)
      "uint8 EXPORT_DETAILS_DATA = 1
uint8 available
framework_status_msgs/ExportDetailsData export_details_data

================================================================================
MSG: framework_status_msgs/ExportDetailsData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
uint64 timestamp_us
string reserved_info
string message

")



(provide :framework_status_msgs/ExportDetails "99c6a676a5113eb2962c5742c65fbbd7")


