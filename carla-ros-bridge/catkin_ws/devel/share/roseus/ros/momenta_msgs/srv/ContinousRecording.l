;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ContinousRecording)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ContinousRecording (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::CONTINOUSRECORDING")
  (make-package "MOMENTA_MSGS::CONTINOUSRECORDING"))
(unless (find-package "MOMENTA_MSGS::CONTINOUSRECORDINGREQUEST")
  (make-package "MOMENTA_MSGS::CONTINOUSRECORDINGREQUEST"))
(unless (find-package "MOMENTA_MSGS::CONTINOUSRECORDINGRESPONSE")
  (make-package "MOMENTA_MSGS::CONTINOUSRECORDINGRESPONSE"))

(in-package "ROS")





(defclass momenta_msgs::ContinousRecordingRequest
  :super ros::object
  :slots (_record ))

(defmethod momenta_msgs::ContinousRecordingRequest
  (:init
   (&key
    ((:record __record) 0)
    )
   (send-super :init)
   (setq _record (round __record))
   self)
  (:record
   (&optional __record)
   (if __record (setq _record __record)) _record)
  (:serialization-length
   ()
   (+
    ;; int8 _record
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _record
       (write-byte _record s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _record
     (setq _record (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _record 127) (setq _record (- _record 256)))
   ;;
   self)
  )

(defclass momenta_msgs::ContinousRecordingResponse
  :super ros::object
  :slots (_resp ))

(defmethod momenta_msgs::ContinousRecordingResponse
  (:init
   (&key
    ((:resp __resp) 0)
    )
   (send-super :init)
   (setq _resp (round __resp))
   self)
  (:resp
   (&optional __resp)
   (if __resp (setq _resp __resp)) _resp)
  (:serialization-length
   ()
   (+
    ;; int8 _resp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _resp
       (write-byte _resp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _resp
     (setq _resp (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _resp 127) (setq _resp (- _resp 256)))
   ;;
   self)
  )

(defclass momenta_msgs::ContinousRecording
  :super ros::object
  :slots ())

(setf (get momenta_msgs::ContinousRecording :md5sum-) "73923246d4a24d5573712c46b4095644")
(setf (get momenta_msgs::ContinousRecording :datatype-) "momenta_msgs/ContinousRecording")
(setf (get momenta_msgs::ContinousRecording :request) momenta_msgs::ContinousRecordingRequest)
(setf (get momenta_msgs::ContinousRecording :response) momenta_msgs::ContinousRecordingResponse)

(defmethod momenta_msgs::ContinousRecordingRequest
  (:response () (instance momenta_msgs::ContinousRecordingResponse :init)))

(setf (get momenta_msgs::ContinousRecordingRequest :md5sum-) "73923246d4a24d5573712c46b4095644")
(setf (get momenta_msgs::ContinousRecordingRequest :datatype-) "momenta_msgs/ContinousRecordingRequest")
(setf (get momenta_msgs::ContinousRecordingRequest :definition-)
      "int8 record
---
int8 resp
")

(setf (get momenta_msgs::ContinousRecordingResponse :md5sum-) "73923246d4a24d5573712c46b4095644")
(setf (get momenta_msgs::ContinousRecordingResponse :datatype-) "momenta_msgs/ContinousRecordingResponse")
(setf (get momenta_msgs::ContinousRecordingResponse :definition-)
      "int8 record
---
int8 resp
")



(provide :momenta_msgs/ContinousRecording "73923246d4a24d5573712c46b4095644")


