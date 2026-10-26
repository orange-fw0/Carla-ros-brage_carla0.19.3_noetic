;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::ExportDetailsV2)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'ExportDetailsV2 (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::EXPORTDETAILSV2")
  (make-package "RECORDER_SRVS::EXPORTDETAILSV2"))
(unless (find-package "RECORDER_SRVS::EXPORTDETAILSV2REQUEST")
  (make-package "RECORDER_SRVS::EXPORTDETAILSV2REQUEST"))
(unless (find-package "RECORDER_SRVS::EXPORTDETAILSV2RESPONSE")
  (make-package "RECORDER_SRVS::EXPORTDETAILSV2RESPONSE"))

(in-package "ROS")



(if (not (find-package "RECORDER_MSGS"))
  (ros::roseus-add-msgs "recorder_msgs"))


(defclass recorder_srvs::ExportDetailsV2Request
  :super ros::object
  :slots (_collect_type _name _export_type _since _latest ))

(defmethod recorder_srvs::ExportDetailsV2Request
  (:init
   (&key
    ((:collect_type __collect_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:export_type __export_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:since __since) (instance ros::time :init))
    ((:latest __latest) 0)
    )
   (send-super :init)
   (setq _collect_type __collect_type)
   (setq _name __name)
   (setq _export_type __export_type)
   (setq _since __since)
   (setq _latest (round __latest))
   self)
  (:collect_type
   (&optional __collect_type)
   (if __collect_type (setq _collect_type __collect_type)) _collect_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:export_type
   (&optional __export_type)
   (if __export_type (setq _export_type __export_type)) _export_type)
  (:since
   (&optional __since)
   (if __since (setq _since __since)) _since)
  (:latest
   (&optional __latest)
   (if __latest (setq _latest __latest)) _latest)
  (:serialization-length
   ()
   (+
    ;; string[] _collect_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _collect_type)) 4
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; string[] _export_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _export_type)) 4
    ;; time _since
    8
    ;; uint32 _latest
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _collect_type
     (write-long (length _collect_type) s)
     (dolist (elem _collect_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _export_type
     (write-long (length _export_type) s)
     (dolist (elem _export_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; time _since
       (write-long (send _since :sec) s) (write-long (send _since :nsec) s)
     ;; uint32 _latest
       (write-long _latest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _collect_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collect_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _collect_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _export_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _export_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _export_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; time _since
     (send _since :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _since :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _latest
     (setq _latest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass recorder_srvs::ExportDetailsV2Response
  :super ros::object
  :slots (_success _message _export_jobs ))

(defmethod recorder_srvs::ExportDetailsV2Response
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
    ;; recorder_msgs/ExportJobInfoV2[] _export_jobs
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
     ;; recorder_msgs/ExportJobInfoV2[] _export_jobs
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
   ;; recorder_msgs/ExportJobInfoV2[] _export_jobs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _export_jobs (let (r) (dotimes (i n) (push (instance recorder_msgs::ExportJobInfoV2 :init) r)) r))
     (dolist (elem- _export_jobs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::ExportDetailsV2
  :super ros::object
  :slots ())

(setf (get recorder_srvs::ExportDetailsV2 :md5sum-) "441c61fe1814c3573ba3841cff6a03f6")
(setf (get recorder_srvs::ExportDetailsV2 :datatype-) "recorder_srvs/ExportDetailsV2")
(setf (get recorder_srvs::ExportDetailsV2 :request) recorder_srvs::ExportDetailsV2Request)
(setf (get recorder_srvs::ExportDetailsV2 :response) recorder_srvs::ExportDetailsV2Response)

(defmethod recorder_srvs::ExportDetailsV2Request
  (:response () (instance recorder_srvs::ExportDetailsV2Response :init)))

(setf (get recorder_srvs::ExportDetailsV2Request :md5sum-) "441c61fe1814c3573ba3841cff6a03f6")
(setf (get recorder_srvs::ExportDetailsV2Request :datatype-) "recorder_srvs/ExportDetailsV2Request")
(setf (get recorder_srvs::ExportDetailsV2Request :definition-)
      "string[] collect_type
string[] name
string[] export_type
time since
uint32 latest
---
bool success
string message
recorder_msgs/ExportJobInfoV2[] export_jobs

================================================================================
MSG: recorder_msgs/ExportJobInfoV2
int32 sequence
time stamp
string collect_type
string name
string export_type
string status
string reason
EventParamV2[] event_param
RecordingParamV2[] recording_param
FilterParamV2[] filter_param
================================================================================
MSG: recorder_msgs/EventParamV2
bool sticky
duration before
duration after
string[] topics
string[] tags
================================================================================
MSG: recorder_msgs/RecordingParamV2
bool start
string[] topics
string[] tags
================================================================================
MSG: recorder_msgs/FilterParamV2
string[] topics
string[] aliases
")

(setf (get recorder_srvs::ExportDetailsV2Response :md5sum-) "441c61fe1814c3573ba3841cff6a03f6")
(setf (get recorder_srvs::ExportDetailsV2Response :datatype-) "recorder_srvs/ExportDetailsV2Response")
(setf (get recorder_srvs::ExportDetailsV2Response :definition-)
      "string[] collect_type
string[] name
string[] export_type
time since
uint32 latest
---
bool success
string message
recorder_msgs/ExportJobInfoV2[] export_jobs

================================================================================
MSG: recorder_msgs/ExportJobInfoV2
int32 sequence
time stamp
string collect_type
string name
string export_type
string status
string reason
EventParamV2[] event_param
RecordingParamV2[] recording_param
FilterParamV2[] filter_param
================================================================================
MSG: recorder_msgs/EventParamV2
bool sticky
duration before
duration after
string[] topics
string[] tags
================================================================================
MSG: recorder_msgs/RecordingParamV2
bool start
string[] topics
string[] tags
================================================================================
MSG: recorder_msgs/FilterParamV2
string[] topics
string[] aliases
")



(provide :recorder_srvs/ExportDetailsV2 "441c61fe1814c3573ba3841cff6a03f6")


