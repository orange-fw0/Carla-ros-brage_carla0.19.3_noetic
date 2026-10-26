;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::FilterV2)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'FilterV2 (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::FILTERV2")
  (make-package "RECORDER_MSGS::FILTERV2"))

(in-package "ROS")
;;//! \htmlinclude FilterV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass recorder_msgs::FilterV2
  :super ros::object
  :slots (_header _name _collect_type _topics _aliases _stamps _debug_reject _detail ))

(defmethod recorder_msgs::FilterV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:collect_type __collect_type) "")
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:aliases __aliases) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:stamps __stamps) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    ((:debug_reject __debug_reject) nil)
    ((:detail __detail) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _collect_type (string __collect_type))
   (setq _topics __topics)
   (setq _aliases __aliases)
   (setq _stamps __stamps)
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
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:aliases
   (&optional __aliases)
   (if __aliases (setq _aliases __aliases)) _aliases)
  (:stamps
   (&optional __stamps)
   (if __stamps (setq _stamps __stamps)) _stamps)
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
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; string[] _aliases
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _aliases)) 4
    ;; time[] _stamps
    (* 8    (length _stamps)) 4
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
   ;; bool _debug_reject
     (setq _debug_reject (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get recorder_msgs::FilterV2 :md5sum-) "a62b25b8009a04f4c03c3eaf82379f99")
(setf (get recorder_msgs::FilterV2 :datatype-) "recorder_msgs/FilterV2")
(setf (get recorder_msgs::FilterV2 :definition-)
      "Header header
string name
string collect_type
string[] topics
string[] aliases
time[] stamps
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



(provide :recorder_msgs/FilterV2 "a62b25b8009a04f4c03c3eaf82379f99")


