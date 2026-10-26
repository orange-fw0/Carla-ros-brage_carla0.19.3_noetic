;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::DiskEjectV2)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'DiskEjectV2 (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::DISKEJECTV2")
  (make-package "RECORDER_SRVS::DISKEJECTV2"))
(unless (find-package "RECORDER_SRVS::DISKEJECTV2REQUEST")
  (make-package "RECORDER_SRVS::DISKEJECTV2REQUEST"))
(unless (find-package "RECORDER_SRVS::DISKEJECTV2RESPONSE")
  (make-package "RECORDER_SRVS::DISKEJECTV2RESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::DiskEjectV2Request
  :super ros::object
  :slots (_sn _force ))

(defmethod recorder_srvs::DiskEjectV2Request
  (:init
   (&key
    ((:sn __sn) "")
    ((:force __force) nil)
    )
   (send-super :init)
   (setq _sn (string __sn))
   (setq _force __force)
   self)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:force
   (&optional (__force :null))
   (if (not (eq __force :null)) (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; string _sn
    4 (length _sn)
    ;; bool _force
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sn
       (write-long (length _sn) s) (princ _sn s)
     ;; bool _force
       (if _force (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _force
     (setq _force (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass recorder_srvs::DiskEjectV2Response
  :super ros::object
  :slots (_success _message ))

(defmethod recorder_srvs::DiskEjectV2Response
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

(defclass recorder_srvs::DiskEjectV2
  :super ros::object
  :slots ())

(setf (get recorder_srvs::DiskEjectV2 :md5sum-) "74a6c99860ac86d7f9d587acb4f9c2f8")
(setf (get recorder_srvs::DiskEjectV2 :datatype-) "recorder_srvs/DiskEjectV2")
(setf (get recorder_srvs::DiskEjectV2 :request) recorder_srvs::DiskEjectV2Request)
(setf (get recorder_srvs::DiskEjectV2 :response) recorder_srvs::DiskEjectV2Response)

(defmethod recorder_srvs::DiskEjectV2Request
  (:response () (instance recorder_srvs::DiskEjectV2Response :init)))

(setf (get recorder_srvs::DiskEjectV2Request :md5sum-) "74a6c99860ac86d7f9d587acb4f9c2f8")
(setf (get recorder_srvs::DiskEjectV2Request :datatype-) "recorder_srvs/DiskEjectV2Request")
(setf (get recorder_srvs::DiskEjectV2Request :definition-)
      "string sn
bool force
---
bool success
string message

")

(setf (get recorder_srvs::DiskEjectV2Response :md5sum-) "74a6c99860ac86d7f9d587acb4f9c2f8")
(setf (get recorder_srvs::DiskEjectV2Response :datatype-) "recorder_srvs/DiskEjectV2Response")
(setf (get recorder_srvs::DiskEjectV2Response :definition-)
      "string sn
bool force
---
bool success
string message

")



(provide :recorder_srvs/DiskEjectV2 "74a6c99860ac86d7f9d587acb4f9c2f8")


