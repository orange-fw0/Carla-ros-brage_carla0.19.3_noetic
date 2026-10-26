;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::ExportDetails)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'ExportDetails (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::EXPORTDETAILS")
  (make-package "RECORDER_SRVS::EXPORTDETAILS"))
(unless (find-package "RECORDER_SRVS::EXPORTDETAILSREQUEST")
  (make-package "RECORDER_SRVS::EXPORTDETAILSREQUEST"))
(unless (find-package "RECORDER_SRVS::EXPORTDETAILSRESPONSE")
  (make-package "RECORDER_SRVS::EXPORTDETAILSRESPONSE"))

(in-package "ROS")



(if (not (find-package "RECORDER_MSGS"))
  (ros::roseus-add-msgs "recorder_msgs"))


(defclass recorder_srvs::ExportDetailsRequest
  :super ros::object
  :slots (_since _latest ))

(defmethod recorder_srvs::ExportDetailsRequest
  (:init
   (&key
    ((:since __since) (instance ros::time :init))
    ((:latest __latest) 0)
    )
   (send-super :init)
   (setq _since __since)
   (setq _latest (round __latest))
   self)
  (:since
   (&optional __since)
   (if __since (setq _since __since)) _since)
  (:latest
   (&optional __latest)
   (if __latest (setq _latest __latest)) _latest)
  (:serialization-length
   ()
   (+
    ;; time _since
    8
    ;; uint32 _latest
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _since
       (write-long (send _since :sec) s) (write-long (send _since :nsec) s)
     ;; uint32 _latest
       (write-long _latest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _since
     (send _since :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _since :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _latest
     (setq _latest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass recorder_srvs::ExportDetailsResponse
  :super ros::object
  :slots (_success _message _export_jobs ))

(defmethod recorder_srvs::ExportDetailsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:export_jobs __export_jobs) ())
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _export_jobs __export_jobs)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:export_jobs
   (&rest __export_jobs)
   (if (keywordp (car __export_jobs))
       (send* _export_jobs __export_jobs)
     (progn
       (if __export_jobs (setq _export_jobs (car __export_jobs)))
       _export_jobs)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; recorder_msgs/ExportJobInfo[] _export_jobs
    (apply #'+ (send-all _export_jobs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; recorder_msgs/ExportJobInfo[] _export_jobs
     (write-long (length _export_jobs) s)
     (dolist (elem _export_jobs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; recorder_msgs/ExportJobInfo[] _export_jobs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _export_jobs (let (r) (dotimes (i n) (push (instance recorder_msgs::ExportJobInfo :init) r)) r))
     (dolist (elem- _export_jobs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::ExportDetails
  :super ros::object
  :slots ())

(setf (get recorder_srvs::ExportDetails :md5sum-) "b5312a6f562c0a005af6a6b1c14fb760")
(setf (get recorder_srvs::ExportDetails :datatype-) "recorder_srvs/ExportDetails")
(setf (get recorder_srvs::ExportDetails :request) recorder_srvs::ExportDetailsRequest)
(setf (get recorder_srvs::ExportDetails :response) recorder_srvs::ExportDetailsResponse)

(defmethod recorder_srvs::ExportDetailsRequest
  (:response () (instance recorder_srvs::ExportDetailsResponse :init)))

(setf (get recorder_srvs::ExportDetailsRequest :md5sum-) "b5312a6f562c0a005af6a6b1c14fb760")
(setf (get recorder_srvs::ExportDetailsRequest :datatype-) "recorder_srvs/ExportDetailsRequest")
(setf (get recorder_srvs::ExportDetailsRequest :definition-)
      "time since
uint32 latest
---
bool success
string message
recorder_msgs/ExportJobInfo[] export_jobs

================================================================================
MSG: recorder_msgs/ExportJobInfo
time stamp
string type
string status
string name
BagInfo[] bag_info

================================================================================
MSG: recorder_msgs/BagInfo
uint32 index
string filename
float64 start_time
float64 end_time
uint64 size
uint32 message_cnt
string[] topic_name
string[] topic_date_type
uint32[] topic_message_cnt

")

(setf (get recorder_srvs::ExportDetailsResponse :md5sum-) "b5312a6f562c0a005af6a6b1c14fb760")
(setf (get recorder_srvs::ExportDetailsResponse :datatype-) "recorder_srvs/ExportDetailsResponse")
(setf (get recorder_srvs::ExportDetailsResponse :definition-)
      "time since
uint32 latest
---
bool success
string message
recorder_msgs/ExportJobInfo[] export_jobs

================================================================================
MSG: recorder_msgs/ExportJobInfo
time stamp
string type
string status
string name
BagInfo[] bag_info

================================================================================
MSG: recorder_msgs/BagInfo
uint32 index
string filename
float64 start_time
float64 end_time
uint64 size
uint32 message_cnt
string[] topic_name
string[] topic_date_type
uint32[] topic_message_cnt

")



(provide :recorder_srvs/ExportDetails "b5312a6f562c0a005af6a6b1c14fb760")


