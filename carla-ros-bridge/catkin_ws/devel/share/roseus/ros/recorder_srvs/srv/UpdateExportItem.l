;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::UpdateExportItem)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'UpdateExportItem (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::UPDATEEXPORTITEM")
  (make-package "RECORDER_SRVS::UPDATEEXPORTITEM"))
(unless (find-package "RECORDER_SRVS::UPDATEEXPORTITEMREQUEST")
  (make-package "RECORDER_SRVS::UPDATEEXPORTITEMREQUEST"))
(unless (find-package "RECORDER_SRVS::UPDATEEXPORTITEMRESPONSE")
  (make-package "RECORDER_SRVS::UPDATEEXPORTITEMRESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::UpdateExportItemRequest
  :super ros::object
  :slots (_set _stamp _export_type _collect_type _name _tags ))

(defmethod recorder_srvs::UpdateExportItemRequest
  (:init
   (&key
    ((:set __set) nil)
    ((:stamp __stamp) (instance ros::time :init))
    ((:export_type __export_type) "")
    ((:collect_type __collect_type) "")
    ((:name __name) "")
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _set __set)
   (setq _stamp __stamp)
   (setq _export_type (string __export_type))
   (setq _collect_type (string __collect_type))
   (setq _name (string __name))
   (setq _tags __tags)
   self)
  (:set
   (&optional (__set :null))
   (if (not (eq __set :null)) (setq _set __set)) _set)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:export_type
   (&optional __export_type)
   (if __export_type (setq _export_type __export_type)) _export_type)
  (:collect_type
   (&optional __collect_type)
   (if __collect_type (setq _collect_type __collect_type)) _collect_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:serialization-length
   ()
   (+
    ;; bool _set
    1
    ;; time _stamp
    8
    ;; string _export_type
    4 (length _export_type)
    ;; string _collect_type
    4 (length _collect_type)
    ;; string _name
    4 (length _name)
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set
       (if _set (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _export_type
       (write-long (length _export_type) s) (princ _export_type s)
     ;; string _collect_type
       (write-long (length _collect_type) s) (princ _collect_type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set
     (setq _set (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _export_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _export_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collect_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collect_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::UpdateExportItemResponse
  :super ros::object
  :slots (_success _message _tags ))

(defmethod recorder_srvs::UpdateExportItemResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _tags __tags)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::UpdateExportItem
  :super ros::object
  :slots ())

(setf (get recorder_srvs::UpdateExportItem :md5sum-) "c6b66379aea7a1b0187c36fcaf605e44")
(setf (get recorder_srvs::UpdateExportItem :datatype-) "recorder_srvs/UpdateExportItem")
(setf (get recorder_srvs::UpdateExportItem :request) recorder_srvs::UpdateExportItemRequest)
(setf (get recorder_srvs::UpdateExportItem :response) recorder_srvs::UpdateExportItemResponse)

(defmethod recorder_srvs::UpdateExportItemRequest
  (:response () (instance recorder_srvs::UpdateExportItemResponse :init)))

(setf (get recorder_srvs::UpdateExportItemRequest :md5sum-) "c6b66379aea7a1b0187c36fcaf605e44")
(setf (get recorder_srvs::UpdateExportItemRequest :datatype-) "recorder_srvs/UpdateExportItemRequest")
(setf (get recorder_srvs::UpdateExportItemRequest :definition-)
      "bool set
time stamp
string export_type
string collect_type
string name
string[] tags
---
bool success
string message
string[] tags

")

(setf (get recorder_srvs::UpdateExportItemResponse :md5sum-) "c6b66379aea7a1b0187c36fcaf605e44")
(setf (get recorder_srvs::UpdateExportItemResponse :datatype-) "recorder_srvs/UpdateExportItemResponse")
(setf (get recorder_srvs::UpdateExportItemResponse :definition-)
      "bool set
time stamp
string export_type
string collect_type
string name
string[] tags
---
bool success
string message
string[] tags

")



(provide :recorder_srvs/UpdateExportItem "c6b66379aea7a1b0187c36fcaf605e44")


