;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::RecordingV2)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'RecordingV2 (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::RECORDINGV2")
  (make-package "RECORDER_MSGS::RECORDINGV2"))

(in-package "ROS")
;;//! \htmlinclude RecordingV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass recorder_msgs::RecordingV2
  :super ros::object
  :slots (_header _start _name _collect_type _topics _tags _debug_reject _debug_start _detail ))

(defmethod recorder_msgs::RecordingV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:start __start) nil)
    ((:name __name) "")
    ((:collect_type __collect_type) "")
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:debug_reject __debug_reject) nil)
    ((:debug_start __debug_start) (instance ros::time :init))
    ((:detail __detail) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _start __start)
   (setq _name (string __name))
   (setq _collect_type (string __collect_type))
   (setq _topics __topics)
   (setq _tags __tags)
   (setq _debug_reject __debug_reject)
   (setq _debug_start __debug_start)
   (setq _detail (string __detail))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:start
   (&optional (__start :null))
   (if (not (eq __start :null)) (setq _start __start)) _start)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:collect_type
   (&optional __collect_type)
   (if __collect_type (setq _collect_type __collect_type)) _collect_type)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:debug_reject
   (&optional (__debug_reject :null))
   (if (not (eq __debug_reject :null)) (setq _debug_reject __debug_reject)) _debug_reject)
  (:debug_start
   (&optional __debug_start)
   (if __debug_start (setq _debug_start __debug_start)) _debug_start)
  (:detail
   (&optional __detail)
   (if __detail (setq _detail __detail)) _detail)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _start
    1
    ;; string _name
    4 (length _name)
    ;; string _collect_type
    4 (length _collect_type)
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ;; bool _debug_reject
    1
    ;; time _debug_start
    8
    ;; string _detail
    4 (length _detail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _collect_type
       (write-long (length _collect_type) s) (princ _collect_type s)
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
     ;; bool _debug_reject
       (if _debug_reject (write-byte -1 s) (write-byte 0 s))
     ;; time _debug_start
       (write-long (send _debug_start :sec) s) (write-long (send _debug_start :nsec) s)
     ;; string _detail
       (write-long (length _detail) s) (princ _detail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collect_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collect_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; bool _debug_reject
     (setq _debug_reject (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _debug_start
     (send _debug_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _debug_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get recorder_msgs::RecordingV2 :md5sum-) "6fc9f062a52a51e5b80226a642201fa2")
(setf (get recorder_msgs::RecordingV2 :datatype-) "recorder_msgs/RecordingV2")
(setf (get recorder_msgs::RecordingV2 :definition-)
      "Header header
bool start
string name
string collect_type
string[] topics
string[] tags
bool debug_reject
time debug_start
string detail

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :recorder_msgs/RecordingV2 "6fc9f062a52a51e5b80226a642201fa2")


