;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::DiskType)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'DiskType (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::DISKTYPE")
  (make-package "RECORDER_SRVS::DISKTYPE"))
(unless (find-package "RECORDER_SRVS::DISKTYPEREQUEST")
  (make-package "RECORDER_SRVS::DISKTYPEREQUEST"))
(unless (find-package "RECORDER_SRVS::DISKTYPERESPONSE")
  (make-package "RECORDER_SRVS::DISKTYPERESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::DiskTypeRequest
  :super ros::object
  :slots (_sn _disk_type ))

(defmethod recorder_srvs::DiskTypeRequest
  (:init
   (&key
    ((:sn __sn) "")
    ((:disk_type __disk_type) "")
    )
   (send-super :init)
   (setq _sn (string __sn))
   (setq _disk_type (string __disk_type))
   self)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:disk_type
   (&optional __disk_type)
   (if __disk_type (setq _disk_type __disk_type)) _disk_type)
  (:serialization-length
   ()
   (+
    ;; string _sn
    4 (length _sn)
    ;; string _disk_type
    4 (length _disk_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sn
       (write-long (length _sn) s) (princ _sn s)
     ;; string _disk_type
       (write-long (length _disk_type) s) (princ _disk_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _disk_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _disk_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass recorder_srvs::DiskTypeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod recorder_srvs::DiskTypeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass recorder_srvs::DiskType
  :super ros::object
  :slots ())

(setf (get recorder_srvs::DiskType :md5sum-) "1dc5f9c17df7e2642d3a5a07568282cb")
(setf (get recorder_srvs::DiskType :datatype-) "recorder_srvs/DiskType")
(setf (get recorder_srvs::DiskType :request) recorder_srvs::DiskTypeRequest)
(setf (get recorder_srvs::DiskType :response) recorder_srvs::DiskTypeResponse)

(defmethod recorder_srvs::DiskTypeRequest
  (:response () (instance recorder_srvs::DiskTypeResponse :init)))

(setf (get recorder_srvs::DiskTypeRequest :md5sum-) "1dc5f9c17df7e2642d3a5a07568282cb")
(setf (get recorder_srvs::DiskTypeRequest :datatype-) "recorder_srvs/DiskTypeRequest")
(setf (get recorder_srvs::DiskTypeRequest :definition-)
      "string sn
string disk_type
---
bool success
string message

")

(setf (get recorder_srvs::DiskTypeResponse :md5sum-) "1dc5f9c17df7e2642d3a5a07568282cb")
(setf (get recorder_srvs::DiskTypeResponse :datatype-) "recorder_srvs/DiskTypeResponse")
(setf (get recorder_srvs::DiskTypeResponse :definition-)
      "string sn
string disk_type
---
bool success
string message

")



(provide :recorder_srvs/DiskType "1dc5f9c17df7e2642d3a5a07568282cb")


