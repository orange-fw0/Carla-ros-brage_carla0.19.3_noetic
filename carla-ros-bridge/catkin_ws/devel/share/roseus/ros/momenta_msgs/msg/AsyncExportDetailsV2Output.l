;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncExportDetailsV2Output)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncExportDetailsV2Output (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCEXPORTDETAILSV2OUTPUT")
  (make-package "MOMENTA_MSGS::ASYNCEXPORTDETAILSV2OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncExportDetailsV2Output.msg.html
(if (not (find-package "RECORDER_MSGS"))
  (ros::roseus-add-msgs "recorder_msgs"))


(defclass momenta_msgs::AsyncExportDetailsV2Output
  :super ros::object
  :slots (_key_num _service_response _success _message _export_jobs ))

(defmethod momenta_msgs::AsyncExportDetailsV2Output
  (:init
   (&key
    ((:key_num __key_num) 0)
    ((:service_response __service_response) nil)
    ((:success __success) nil)
    ((:message __message) "")
    ((:export_jobs __export_jobs) ())
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   (setq _service_response __service_response)
   (setq _success __success)
   (setq _message (string __message))
   (setq _export_jobs __export_jobs)
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:service_response
   (&optional (__service_response :null))
   (if (not (eq __service_response :null)) (setq _service_response __service_response)) _service_response)
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
    ;; int64 _key_num
    8
    ;; bool _service_response
    1
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
     ;; int64 _key_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key_num) (= (length (_key_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key_num . bv) 0) 0) s)
              (write-long (ash (elt (_key_num . bv) 1) -1) s))
             ((and (class _key_num) (= (length (_key_num . bv)) 1)) ;; big1
              (write-long (elt (_key_num . bv) 0) s)
              (write-long (if (>= _key_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key_num s)(write-long (if (>= _key_num 0) 0 #xffffffff) s)))
     ;; bool _service_response
       (if _service_response (write-byte -1 s) (write-byte 0 s))
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
   ;; int64 _key_num
#+(or :alpha :irix6 :x86_64)
      (setf _key_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _service_response
     (setq _service_response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get momenta_msgs::AsyncExportDetailsV2Output :md5sum-) "55e66f17f259470d222c44e96f547934")
(setf (get momenta_msgs::AsyncExportDetailsV2Output :datatype-) "momenta_msgs/AsyncExportDetailsV2Output")
(setf (get momenta_msgs::AsyncExportDetailsV2Output :definition-)
      "int64 key_num
bool service_response
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
time[] stamps
")



(provide :momenta_msgs/AsyncExportDetailsV2Output "55e66f17f259470d222c44e96f547934")


