;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::GlobalMeta)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'GlobalMeta (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::GLOBALMETA")
  (make-package "RECORDER_SRVS::GLOBALMETA"))
(unless (find-package "RECORDER_SRVS::GLOBALMETAREQUEST")
  (make-package "RECORDER_SRVS::GLOBALMETAREQUEST"))
(unless (find-package "RECORDER_SRVS::GLOBALMETARESPONSE")
  (make-package "RECORDER_SRVS::GLOBALMETARESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::GlobalMetaRequest
  :super ros::object
  :slots (_set _plate ))

(defmethod recorder_srvs::GlobalMetaRequest
  (:init
   (&key
    ((:set __set) nil)
    ((:plate __plate) "")
    )
   (send-super :init)
   (setq _set __set)
   (setq _plate (string __plate))
   self)
  (:set
   (&optional (__set :null))
   (if (not (eq __set :null)) (setq _set __set)) _set)
  (:plate
   (&optional __plate)
   (if __plate (setq _plate __plate)) _plate)
  (:serialization-length
   ()
   (+
    ;; bool _set
    1
    ;; string _plate
    4 (length _plate)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set
       (if _set (write-byte -1 s) (write-byte 0 s))
     ;; string _plate
       (write-long (length _plate) s) (princ _plate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set
     (setq _set (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _plate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass recorder_srvs::GlobalMetaResponse
  :super ros::object
  :slots (_success _message _plate ))

(defmethod recorder_srvs::GlobalMetaResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:plate __plate) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _plate (string __plate))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:plate
   (&optional __plate)
   (if __plate (setq _plate __plate)) _plate)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; string _plate
    4 (length _plate)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _plate
       (write-long (length _plate) s) (princ _plate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _plate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass recorder_srvs::GlobalMeta
  :super ros::object
  :slots ())

(setf (get recorder_srvs::GlobalMeta :md5sum-) "d449fcba9f0a70668686aea20985eb3c")
(setf (get recorder_srvs::GlobalMeta :datatype-) "recorder_srvs/GlobalMeta")
(setf (get recorder_srvs::GlobalMeta :request) recorder_srvs::GlobalMetaRequest)
(setf (get recorder_srvs::GlobalMeta :response) recorder_srvs::GlobalMetaResponse)

(defmethod recorder_srvs::GlobalMetaRequest
  (:response () (instance recorder_srvs::GlobalMetaResponse :init)))

(setf (get recorder_srvs::GlobalMetaRequest :md5sum-) "d449fcba9f0a70668686aea20985eb3c")
(setf (get recorder_srvs::GlobalMetaRequest :datatype-) "recorder_srvs/GlobalMetaRequest")
(setf (get recorder_srvs::GlobalMetaRequest :definition-)
      "bool set
string plate
---
bool success
string message
string plate

")

(setf (get recorder_srvs::GlobalMetaResponse :md5sum-) "d449fcba9f0a70668686aea20985eb3c")
(setf (get recorder_srvs::GlobalMetaResponse :datatype-) "recorder_srvs/GlobalMetaResponse")
(setf (get recorder_srvs::GlobalMetaResponse :definition-)
      "bool set
string plate
---
bool success
string message
string plate

")



(provide :recorder_srvs/GlobalMeta "d449fcba9f0a70668686aea20985eb3c")


