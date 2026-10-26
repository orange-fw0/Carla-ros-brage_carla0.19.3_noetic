;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::ReceivingSample)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'ReceivingSample (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::RECEIVINGSAMPLE")
  (make-package "RECORDER_MSGS::RECEIVINGSAMPLE"))

(in-package "ROS")
;;//! \htmlinclude ReceivingSample.msg.html


(defclass recorder_msgs::ReceivingSample
  :super ros::object
  :slots (_stamp _interval _data_rate _topics _data_types _msg_counts _msg_rates ))

(defmethod recorder_msgs::ReceivingSample
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:interval __interval) (instance ros::time :init))
    ((:data_rate __data_rate) 0.0)
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:data_types __data_types) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:msg_counts __msg_counts) (make-array 0 :initial-element 0 :element-type :integer))
    ((:msg_rates __msg_rates) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _interval __interval)
   (setq _data_rate (float __data_rate))
   (setq _topics __topics)
   (setq _data_types __data_types)
   (setq _msg_counts __msg_counts)
   (setq _msg_rates __msg_rates)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:interval
   (&optional __interval)
   (if __interval (setq _interval __interval)) _interval)
  (:data_rate
   (&optional __data_rate)
   (if __data_rate (setq _data_rate __data_rate)) _data_rate)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:data_types
   (&optional __data_types)
   (if __data_types (setq _data_types __data_types)) _data_types)
  (:msg_counts
   (&optional __msg_counts)
   (if __msg_counts (setq _msg_counts __msg_counts)) _msg_counts)
  (:msg_rates
   (&optional __msg_rates)
   (if __msg_rates (setq _msg_rates __msg_rates)) _msg_rates)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; duration _interval
    8
    ;; float64 _data_rate
    8
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; string[] _data_types
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data_types)) 4
    ;; uint32[] _msg_counts
    (* 4    (length _msg_counts)) 4
    ;; float32[] _msg_rates
    (* 4    (length _msg_rates)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; duration _interval
       (write-long (send _interval :sec) s) (write-long (send _interval :nsec) s)
     ;; float64 _data_rate
       (sys::poke _data_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _data_types
     (write-long (length _data_types) s)
     (dolist (elem _data_types)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32[] _msg_counts
     (write-long (length _msg_counts) s)
     (dotimes (i (length _msg_counts))
       (write-long (elt _msg_counts i) s)
       )
     ;; float32[] _msg_rates
     (write-long (length _msg_rates) s)
     (dotimes (i (length _msg_rates))
       (sys::poke (elt _msg_rates i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _interval
     (send _interval :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _interval :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _data_rate
     (setq _data_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _data_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data_types (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data_types i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32[] _msg_counts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _msg_counts (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _msg_counts i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _msg_rates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _msg_rates (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _msg_rates i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get recorder_msgs::ReceivingSample :md5sum-) "d9210a6278e54f51ea79ea819ee852ff")
(setf (get recorder_msgs::ReceivingSample :datatype-) "recorder_msgs/ReceivingSample")
(setf (get recorder_msgs::ReceivingSample :definition-)
      "time stamp
duration interval
float64 data_rate
string[] topics
string[] data_types
uint32[] msg_counts
float32[] msg_rates

")



(provide :recorder_msgs/ReceivingSample "d9210a6278e54f51ea79ea819ee852ff")


