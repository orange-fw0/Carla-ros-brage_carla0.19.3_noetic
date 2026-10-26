;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::NodesTopics)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'NodesTopics (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::NODESTOPICS")
  (make-package "MOMENTA_MSGS::NODESTOPICS"))

(in-package "ROS")
;;//! \htmlinclude NodesTopics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::NodesTopics
  :super ros::object
  :slots (_header _topics ))

(defmethod momenta_msgs::NodesTopics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _topics __topics)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::NodesTopics :md5sum-) "efc9307f6957997a209155b154bcc43e")
(setf (get momenta_msgs::NodesTopics :datatype-) "momenta_msgs/NodesTopics")
(setf (get momenta_msgs::NodesTopics :definition-)
      "std_msgs/Header header
string[] topics

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



(provide :momenta_msgs/NodesTopics "efc9307f6957997a209155b154bcc43e")


