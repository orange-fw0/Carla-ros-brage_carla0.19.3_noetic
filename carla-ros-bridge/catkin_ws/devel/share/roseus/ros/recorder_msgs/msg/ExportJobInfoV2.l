;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::ExportJobInfoV2)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'ExportJobInfoV2 (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::EXPORTJOBINFOV2")
  (make-package "RECORDER_MSGS::EXPORTJOBINFOV2"))

(in-package "ROS")
;;//! \htmlinclude ExportJobInfoV2.msg.html


(defclass recorder_msgs::ExportJobInfoV2
  :super ros::object
  :slots (_sequence _stamp _collect_type _name _export_type _status _reason _event_param _recording_param _filter_param ))

(defmethod recorder_msgs::ExportJobInfoV2
  (:init
   (&key
    ((:sequence __sequence) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:collect_type __collect_type) "")
    ((:name __name) "")
    ((:export_type __export_type) "")
    ((:status __status) "")
    ((:reason __reason) "")
    ((:event_param __event_param) ())
    ((:recording_param __recording_param) ())
    ((:filter_param __filter_param) ())
    )
   (send-super :init)
   (setq _sequence (round __sequence))
   (setq _stamp __stamp)
   (setq _collect_type (string __collect_type))
   (setq _name (string __name))
   (setq _export_type (string __export_type))
   (setq _status (string __status))
   (setq _reason (string __reason))
   (setq _event_param __event_param)
   (setq _recording_param __recording_param)
   (setq _filter_param __filter_param)
   self)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:collect_type
   (&optional __collect_type)
   (if __collect_type (setq _collect_type __collect_type)) _collect_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:export_type
   (&optional __export_type)
   (if __export_type (setq _export_type __export_type)) _export_type)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:event_param
   (&rest __event_param)
   (if (keywordp (car __event_param))
       (send* _event_param __event_param)
     (progn
       (if __event_param (setq _event_param (car __event_param)))
       _event_param)))
  (:recording_param
   (&rest __recording_param)
   (if (keywordp (car __recording_param))
       (send* _recording_param __recording_param)
     (progn
       (if __recording_param (setq _recording_param (car __recording_param)))
       _recording_param)))
  (:filter_param
   (&rest __filter_param)
   (if (keywordp (car __filter_param))
       (send* _filter_param __filter_param)
     (progn
       (if __filter_param (setq _filter_param (car __filter_param)))
       _filter_param)))
  (:serialization-length
   ()
   (+
    ;; int32 _sequence
    4
    ;; time _stamp
    8
    ;; string _collect_type
    4 (length _collect_type)
    ;; string _name
    4 (length _name)
    ;; string _export_type
    4 (length _export_type)
    ;; string _status
    4 (length _status)
    ;; string _reason
    4 (length _reason)
    ;; recorder_msgs/EventParamV2[] _event_param
    (apply #'+ (send-all _event_param :serialization-length)) 4
    ;; recorder_msgs/RecordingParamV2[] _recording_param
    (apply #'+ (send-all _recording_param :serialization-length)) 4
    ;; recorder_msgs/FilterParamV2[] _filter_param
    (apply #'+ (send-all _filter_param :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sequence
       (write-long _sequence s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _collect_type
       (write-long (length _collect_type) s) (princ _collect_type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _export_type
       (write-long (length _export_type) s) (princ _export_type s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _reason
       (write-long (length _reason) s) (princ _reason s)
     ;; recorder_msgs/EventParamV2[] _event_param
     (write-long (length _event_param) s)
     (dolist (elem _event_param)
       (send elem :serialize s)
       )
     ;; recorder_msgs/RecordingParamV2[] _recording_param
     (write-long (length _recording_param) s)
     (dolist (elem _recording_param)
       (send elem :serialize s)
       )
     ;; recorder_msgs/FilterParamV2[] _filter_param
     (write-long (length _filter_param) s)
     (dolist (elem _filter_param)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sequence
     (setq _sequence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _collect_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collect_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _export_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _export_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; recorder_msgs/EventParamV2[] _event_param
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _event_param (let (r) (dotimes (i n) (push (instance recorder_msgs::EventParamV2 :init) r)) r))
     (dolist (elem- _event_param)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; recorder_msgs/RecordingParamV2[] _recording_param
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _recording_param (let (r) (dotimes (i n) (push (instance recorder_msgs::RecordingParamV2 :init) r)) r))
     (dolist (elem- _recording_param)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; recorder_msgs/FilterParamV2[] _filter_param
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _filter_param (let (r) (dotimes (i n) (push (instance recorder_msgs::FilterParamV2 :init) r)) r))
     (dolist (elem- _filter_param)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get recorder_msgs::ExportJobInfoV2 :md5sum-) "8ca7ac9c5f53979466ccbe47da2a8b4d")
(setf (get recorder_msgs::ExportJobInfoV2 :datatype-) "recorder_msgs/ExportJobInfoV2")
(setf (get recorder_msgs::ExportJobInfoV2 :definition-)
      "int32 sequence
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
time[] stamps
")



(provide :recorder_msgs/ExportJobInfoV2 "8ca7ac9c5f53979466ccbe47da2a8b4d")


