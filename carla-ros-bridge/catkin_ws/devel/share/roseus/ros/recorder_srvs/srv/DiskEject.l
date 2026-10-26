;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::DiskEject)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'DiskEject (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::DISKEJECT")
  (make-package "RECORDER_SRVS::DISKEJECT"))
(unless (find-package "RECORDER_SRVS::DISKEJECTREQUEST")
  (make-package "RECORDER_SRVS::DISKEJECTREQUEST"))
(unless (find-package "RECORDER_SRVS::DISKEJECTRESPONSE")
  (make-package "RECORDER_SRVS::DISKEJECTRESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::DiskEjectRequest
  :super ros::object
  :slots (_sn ))

(defmethod recorder_srvs::DiskEjectRequest
  (:init
   (&key
    ((:sn __sn) "")
    )
   (send-super :init)
   (setq _sn (string __sn))
   self)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:serialization-length
   ()
   (+
    ;; string _sn
    4 (length _sn)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sn
       (write-long (length _sn) s) (princ _sn s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass recorder_srvs::DiskEjectResponse
  :super ros::object
  :slots (_success _message ))

(defmethod recorder_srvs::DiskEjectResponse
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

(defclass recorder_srvs::DiskEject
  :super ros::object
  :slots ())

(setf (get recorder_srvs::DiskEject :md5sum-) "f5bfbad4ae7f618f03190145d30c82a5")
(setf (get recorder_srvs::DiskEject :datatype-) "recorder_srvs/DiskEject")
(setf (get recorder_srvs::DiskEject :request) recorder_srvs::DiskEjectRequest)
(setf (get recorder_srvs::DiskEject :response) recorder_srvs::DiskEjectResponse)

(defmethod recorder_srvs::DiskEjectRequest
  (:response () (instance recorder_srvs::DiskEjectResponse :init)))

(setf (get recorder_srvs::DiskEjectRequest :md5sum-) "f5bfbad4ae7f618f03190145d30c82a5")
(setf (get recorder_srvs::DiskEjectRequest :datatype-) "recorder_srvs/DiskEjectRequest")
(setf (get recorder_srvs::DiskEjectRequest :definition-)
      "string sn
---
bool success
string message

")

(setf (get recorder_srvs::DiskEjectResponse :md5sum-) "f5bfbad4ae7f618f03190145d30c82a5")
(setf (get recorder_srvs::DiskEjectResponse :datatype-) "recorder_srvs/DiskEjectResponse")
(setf (get recorder_srvs::DiskEjectResponse :definition-)
      "string sn
---
bool success
string message

")



(provide :recorder_srvs/DiskEject "f5bfbad4ae7f618f03190145d30c82a5")


