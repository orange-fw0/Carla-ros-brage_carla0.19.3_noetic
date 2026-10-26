;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::EventParamV2)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'EventParamV2 (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::EVENTPARAMV2")
  (make-package "RECORDER_MSGS::EVENTPARAMV2"))

(in-package "ROS")
;;//! \htmlinclude EventParamV2.msg.html


(defclass recorder_msgs::EventParamV2
  :super ros::object
  :slots (_sticky _before _after _topics _tags ))

(defmethod recorder_msgs::EventParamV2
  (:init
   (&key
    ((:sticky __sticky) nil)
    ((:before __before) (instance ros::time :init))
    ((:after __after) (instance ros::time :init))
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _sticky __sticky)
   (setq _before __before)
   (setq _after __after)
   (setq _topics __topics)
   (setq _tags __tags)
   self)
  (:sticky
   (&optional (__sticky :null))
   (if (not (eq __sticky :null)) (setq _sticky __sticky)) _sticky)
  (:before
   (&optional __before)
   (if __before (setq _before __before)) _before)
  (:after
   (&optional __after)
   (if __after (setq _after __after)) _after)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:serialization-length
   ()
   (+
    ;; bool _sticky
    1
    ;; duration _before
    8
    ;; duration _after
    8
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _sticky
       (if _sticky (write-byte -1 s) (write-byte 0 s))
     ;; duration _before
       (write-long (send _before :sec) s) (write-long (send _before :nsec) s)
     ;; duration _after
       (write-long (send _after :sec) s) (write-long (send _after :nsec) s)
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
   ;; bool _sticky
     (setq _sticky (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; duration _before
     (send _before :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _before :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _after
     (send _after :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _after :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get recorder_msgs::EventParamV2 :md5sum-) "4e586290b71dcaddce3425d17e7715b4")
(setf (get recorder_msgs::EventParamV2 :datatype-) "recorder_msgs/EventParamV2")
(setf (get recorder_msgs::EventParamV2 :definition-)
      "bool sticky
duration before
duration after
string[] topics
string[] tags
")



(provide :recorder_msgs/EventParamV2 "4e586290b71dcaddce3425d17e7715b4")


