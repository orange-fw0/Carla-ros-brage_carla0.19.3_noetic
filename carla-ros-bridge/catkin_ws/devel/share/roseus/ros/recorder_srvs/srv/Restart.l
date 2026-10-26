;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::Restart)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'Restart (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::RESTART")
  (make-package "RECORDER_SRVS::RESTART"))
(unless (find-package "RECORDER_SRVS::RESTARTREQUEST")
  (make-package "RECORDER_SRVS::RESTARTREQUEST"))
(unless (find-package "RECORDER_SRVS::RESTARTRESPONSE")
  (make-package "RECORDER_SRVS::RESTARTRESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::RestartRequest
  :super ros::object
  :slots ())

(defmethod recorder_srvs::RestartRequest
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

(defclass recorder_srvs::RestartResponse
  :super ros::object
  :slots (_success _message ))

(defmethod recorder_srvs::RestartResponse
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

(defclass recorder_srvs::Restart
  :super ros::object
  :slots ())

(setf (get recorder_srvs::Restart :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get recorder_srvs::Restart :datatype-) "recorder_srvs/Restart")
(setf (get recorder_srvs::Restart :request) recorder_srvs::RestartRequest)
(setf (get recorder_srvs::Restart :response) recorder_srvs::RestartResponse)

(defmethod recorder_srvs::RestartRequest
  (:response () (instance recorder_srvs::RestartResponse :init)))

(setf (get recorder_srvs::RestartRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get recorder_srvs::RestartRequest :datatype-) "recorder_srvs/RestartRequest")
(setf (get recorder_srvs::RestartRequest :definition-)
      "---
bool success
string message

")

(setf (get recorder_srvs::RestartResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get recorder_srvs::RestartResponse :datatype-) "recorder_srvs/RestartResponse")
(setf (get recorder_srvs::RestartResponse :definition-)
      "---
bool success
string message

")



(provide :recorder_srvs/Restart "937c9679a518e3a18d831e57125ea522")


