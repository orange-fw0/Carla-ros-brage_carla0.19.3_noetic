;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::CheckRecording)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'CheckRecording (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::CHECKRECORDING")
  (make-package "RECORDER_SRVS::CHECKRECORDING"))
(unless (find-package "RECORDER_SRVS::CHECKRECORDINGREQUEST")
  (make-package "RECORDER_SRVS::CHECKRECORDINGREQUEST"))
(unless (find-package "RECORDER_SRVS::CHECKRECORDINGRESPONSE")
  (make-package "RECORDER_SRVS::CHECKRECORDINGRESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::CheckRecordingRequest
  :super ros::object
  :slots ())

(defmethod recorder_srvs::CheckRecordingRequest
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

(defclass recorder_srvs::CheckRecordingResponse
  :super ros::object
  :slots (_collection_disk_recording _export_disk_recording _any_disk_recording ))

(defmethod recorder_srvs::CheckRecordingResponse
  (:init
   (&key
    ((:collection_disk_recording __collection_disk_recording) nil)
    ((:export_disk_recording __export_disk_recording) nil)
    ((:any_disk_recording __any_disk_recording) nil)
    )
   (send-super :init)
   (setq _collection_disk_recording __collection_disk_recording)
   (setq _export_disk_recording __export_disk_recording)
   (setq _any_disk_recording __any_disk_recording)
   self)
  (:collection_disk_recording
   (&optional (__collection_disk_recording :null))
   (if (not (eq __collection_disk_recording :null)) (setq _collection_disk_recording __collection_disk_recording)) _collection_disk_recording)
  (:export_disk_recording
   (&optional (__export_disk_recording :null))
   (if (not (eq __export_disk_recording :null)) (setq _export_disk_recording __export_disk_recording)) _export_disk_recording)
  (:any_disk_recording
   (&optional (__any_disk_recording :null))
   (if (not (eq __any_disk_recording :null)) (setq _any_disk_recording __any_disk_recording)) _any_disk_recording)
  (:serialization-length
   ()
   (+
    ;; bool _collection_disk_recording
    1
    ;; bool _export_disk_recording
    1
    ;; bool _any_disk_recording
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _collection_disk_recording
       (if _collection_disk_recording (write-byte -1 s) (write-byte 0 s))
     ;; bool _export_disk_recording
       (if _export_disk_recording (write-byte -1 s) (write-byte 0 s))
     ;; bool _any_disk_recording
       (if _any_disk_recording (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _collection_disk_recording
     (setq _collection_disk_recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _export_disk_recording
     (setq _export_disk_recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _any_disk_recording
     (setq _any_disk_recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass recorder_srvs::CheckRecording
  :super ros::object
  :slots ())

(setf (get recorder_srvs::CheckRecording :md5sum-) "ea026e75492e2a1c9737acaad829aeb2")
(setf (get recorder_srvs::CheckRecording :datatype-) "recorder_srvs/CheckRecording")
(setf (get recorder_srvs::CheckRecording :request) recorder_srvs::CheckRecordingRequest)
(setf (get recorder_srvs::CheckRecording :response) recorder_srvs::CheckRecordingResponse)

(defmethod recorder_srvs::CheckRecordingRequest
  (:response () (instance recorder_srvs::CheckRecordingResponse :init)))

(setf (get recorder_srvs::CheckRecordingRequest :md5sum-) "ea026e75492e2a1c9737acaad829aeb2")
(setf (get recorder_srvs::CheckRecordingRequest :datatype-) "recorder_srvs/CheckRecordingRequest")
(setf (get recorder_srvs::CheckRecordingRequest :definition-)
      "---
bool collection_disk_recording
bool export_disk_recording
bool any_disk_recording
")

(setf (get recorder_srvs::CheckRecordingResponse :md5sum-) "ea026e75492e2a1c9737acaad829aeb2")
(setf (get recorder_srvs::CheckRecordingResponse :datatype-) "recorder_srvs/CheckRecordingResponse")
(setf (get recorder_srvs::CheckRecordingResponse :definition-)
      "---
bool collection_disk_recording
bool export_disk_recording
bool any_disk_recording
")



(provide :recorder_srvs/CheckRecording "ea026e75492e2a1c9737acaad829aeb2")


