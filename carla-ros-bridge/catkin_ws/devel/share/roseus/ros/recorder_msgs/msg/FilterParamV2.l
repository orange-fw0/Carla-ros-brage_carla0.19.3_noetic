;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::FilterParamV2)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'FilterParamV2 (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::FILTERPARAMV2")
  (make-package "RECORDER_MSGS::FILTERPARAMV2"))

(in-package "ROS")
;;//! \htmlinclude FilterParamV2.msg.html


(defclass recorder_msgs::FilterParamV2
  :super ros::object
  :slots (_topics _aliases _stamps ))

(defmethod recorder_msgs::FilterParamV2
  (:init
   (&key
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:aliases __aliases) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:stamps __stamps) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _topics __topics)
   (setq _aliases __aliases)
   (setq _stamps __stamps)
   self)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:aliases
   (&optional __aliases)
   (if __aliases (setq _aliases __aliases)) _aliases)
  (:stamps
   (&optional __stamps)
   (if __stamps (setq _stamps __stamps)) _stamps)
  (:serialization-length
   ()
   (+
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; string[] _aliases
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _aliases)) 4
    ;; time[] _stamps
    (* 8    (length _stamps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _aliases
     (write-long (length _aliases) s)
     (dolist (elem _aliases)
       (write-long (length elem) s) (princ elem s)
       )
     ;; time[] _stamps
     (write-long (length _stamps) s)
     (dotimes (i (length _stamps))
       (write-long (send (elt _stamps i) :sec) s) (write-long (send (elt _stamps i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _aliases
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aliases (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _aliases i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; time[] _stamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stamps (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _stamps)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get recorder_msgs::FilterParamV2 :md5sum-) "2a517833533f9534bdfeb0cdd5fbda90")
(setf (get recorder_msgs::FilterParamV2 :datatype-) "recorder_msgs/FilterParamV2")
(setf (get recorder_msgs::FilterParamV2 :definition-)
      "string[] topics
string[] aliases
time[] stamps
")



(provide :recorder_msgs/FilterParamV2 "2a517833533f9534bdfeb0cdd5fbda90")


