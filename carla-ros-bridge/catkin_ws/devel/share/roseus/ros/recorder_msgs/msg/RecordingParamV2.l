;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::RecordingParamV2)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'RecordingParamV2 (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::RECORDINGPARAMV2")
  (make-package "RECORDER_MSGS::RECORDINGPARAMV2"))

(in-package "ROS")
;;//! \htmlinclude RecordingParamV2.msg.html


(defclass recorder_msgs::RecordingParamV2
  :super ros::object
  :slots (_start _topics _tags ))

(defmethod recorder_msgs::RecordingParamV2
  (:init
   (&key
    ((:start __start) nil)
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _start __start)
   (setq _topics __topics)
   (setq _tags __tags)
   self)
  (:start
   (&optional (__start :null))
   (if (not (eq __start :null)) (setq _start __start)) _start)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:serialization-length
   ()
   (+
    ;; bool _start
    1
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;; string[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
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

(setf (get recorder_msgs::RecordingParamV2 :md5sum-) "bfd74800bf6165fc28e0d4964e255b84")
(setf (get recorder_msgs::RecordingParamV2 :datatype-) "recorder_msgs/RecordingParamV2")
(setf (get recorder_msgs::RecordingParamV2 :definition-)
      "bool start
string[] topics
string[] tags
")



(provide :recorder_msgs/RecordingParamV2 "bfd74800bf6165fc28e0d4964e255b84")


