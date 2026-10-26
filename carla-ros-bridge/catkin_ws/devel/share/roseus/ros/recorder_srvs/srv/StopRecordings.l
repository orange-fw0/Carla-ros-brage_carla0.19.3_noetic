;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::StopRecordings)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'StopRecordings (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::STOPRECORDINGS")
  (make-package "RECORDER_SRVS::STOPRECORDINGS"))
(unless (find-package "RECORDER_SRVS::STOPRECORDINGSREQUEST")
  (make-package "RECORDER_SRVS::STOPRECORDINGSREQUEST"))
(unless (find-package "RECORDER_SRVS::STOPRECORDINGSRESPONSE")
  (make-package "RECORDER_SRVS::STOPRECORDINGSRESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::StopRecordingsRequest
  :super ros::object
  :slots ())

(defmethod recorder_srvs::StopRecordingsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass recorder_srvs::StopRecordingsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod recorder_srvs::StopRecordingsResponse
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

(defclass recorder_srvs::StopRecordings
  :super ros::object
  :slots ())

(setf (get recorder_srvs::StopRecordings :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get recorder_srvs::StopRecordings :datatype-) "recorder_srvs/StopRecordings")
(setf (get recorder_srvs::StopRecordings :request) recorder_srvs::StopRecordingsRequest)
(setf (get recorder_srvs::StopRecordings :response) recorder_srvs::StopRecordingsResponse)

(defmethod recorder_srvs::StopRecordingsRequest
  (:response () (instance recorder_srvs::StopRecordingsResponse :init)))

(setf (get recorder_srvs::StopRecordingsRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get recorder_srvs::StopRecordingsRequest :datatype-) "recorder_srvs/StopRecordingsRequest")
(setf (get recorder_srvs::StopRecordingsRequest :definition-)
      "---
bool success
string message

")

(setf (get recorder_srvs::StopRecordingsResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get recorder_srvs::StopRecordingsResponse :datatype-) "recorder_srvs/StopRecordingsResponse")
(setf (get recorder_srvs::StopRecordingsResponse :definition-)
      "---
bool success
string message

")



(provide :recorder_srvs/StopRecordings "937c9679a518e3a18d831e57125ea522")


