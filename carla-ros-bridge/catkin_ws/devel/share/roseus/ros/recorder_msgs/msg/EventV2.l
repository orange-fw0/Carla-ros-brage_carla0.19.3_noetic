;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::EventV2)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'EventV2 (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::EVENTV2")
  (make-package "RECORDER_MSGS::EVENTV2"))

(in-package "ROS")
;;//! \htmlinclude EventV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass recorder_msgs::EventV2
  :super ros::object
  :slots (_header _name _collect_type _sticky _before _after _topics _tags _debug_reject _detail ))

(defmethod recorder_msgs::EventV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:collect_type __collect_type) "")
    ((:sticky __sticky) nil)
    ((:before __before) (instance ros::time :init))
    ((:after __after) (instance ros::time :init))
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:debug_reject __debug_reject) nil)
    ((:detail __detail) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _collect_type (string __collect_type))
   (setq _sticky __sticky)
   (setq _before __before)
   (setq _after __after)
   (setq _topics __topics)
   (setq _tags __tags)
   (setq _debug_reject __debug_reject)
   (setq _detail (string __detail))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:collect_type
   (&optional __collect_type)
   (if __collect_type (setq _collect_type __collect_type)) _collect_type)
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
  (:debug_reject
   (&optional (__debug_reject :null))
   (if (not (eq __debug_reject :null)) (setq _debug_reject __debug_reject)) _debug_reject)
  (:detail
   (&optional __detail)
   (if __detail (setq _detail __detail)) _detail)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string _collect_type
    4 (length _collect_type)
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
    ;; bool _debug_reject
    1
    ;; string _detail
    4 (length _detail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _collect_type
       (write-long (length _collect_type) s) (princ _collect_type s)
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
     ;; bool _debug_reject
       (if _debug_reject (write-byte -1 s) (write-byte 0 s))
     ;; string _detail
       (write-long (length _detail) s) (princ _detail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collect_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collect_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; bool _debug_reject
     (setq _debug_reject (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get recorder_msgs::EventV2 :md5sum-) "efcf434f4e134299a45dfcf38e3cdb8c")
(setf (get recorder_msgs::EventV2 :datatype-) "recorder_msgs/EventV2")
(setf (get recorder_msgs::EventV2 :definition-)
      "Header header
string name
string collect_type
bool sticky
duration before
duration after
string[] topics
string[] tags
bool debug_reject
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



(provide :recorder_msgs/EventV2 "efcf434f4e134299a45dfcf38e3cdb8c")


