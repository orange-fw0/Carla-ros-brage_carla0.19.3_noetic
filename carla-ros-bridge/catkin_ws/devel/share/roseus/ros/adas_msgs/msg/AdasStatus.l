;; Auto-generated. Do not edit!


(when (boundp 'adas_msgs::AdasStatus)
  (if (not (find-package "ADAS_MSGS"))
    (make-package "ADAS_MSGS"))
  (shadow 'AdasStatus (find-package "ADAS_MSGS")))
(unless (find-package "ADAS_MSGS::ADASSTATUS")
  (make-package "ADAS_MSGS::ADASSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AdasStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass adas_msgs::AdasStatus
  :super ros::object
  :slots (_header _lca _bsd _dow _rcw ))

(defmethod adas_msgs::AdasStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lca __lca) (instance adas_msgs::LcaStatus :init))
    ((:bsd __bsd) (instance adas_msgs::BsdStatus :init))
    ((:dow __dow) (instance adas_msgs::DowStatus :init))
    ((:rcw __rcw) (instance adas_msgs::RcwStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lca __lca)
   (setq _bsd __bsd)
   (setq _dow __dow)
   (setq _rcw __rcw)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lca
   (&rest __lca)
   (if (keywordp (car __lca))
       (send* _lca __lca)
     (progn
       (if __lca (setq _lca (car __lca)))
       _lca)))
  (:bsd
   (&rest __bsd)
   (if (keywordp (car __bsd))
       (send* _bsd __bsd)
     (progn
       (if __bsd (setq _bsd (car __bsd)))
       _bsd)))
  (:dow
   (&rest __dow)
   (if (keywordp (car __dow))
       (send* _dow __dow)
     (progn
       (if __dow (setq _dow (car __dow)))
       _dow)))
  (:rcw
   (&rest __rcw)
   (if (keywordp (car __rcw))
       (send* _rcw __rcw)
     (progn
       (if __rcw (setq _rcw (car __rcw)))
       _rcw)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; adas_msgs/LcaStatus _lca
    (send _lca :serialization-length)
    ;; adas_msgs/BsdStatus _bsd
    (send _bsd :serialization-length)
    ;; adas_msgs/DowStatus _dow
    (send _dow :serialization-length)
    ;; adas_msgs/RcwStatus _rcw
    (send _rcw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; adas_msgs/LcaStatus _lca
       (send _lca :serialize s)
     ;; adas_msgs/BsdStatus _bsd
       (send _bsd :serialize s)
     ;; adas_msgs/DowStatus _dow
       (send _dow :serialize s)
     ;; adas_msgs/RcwStatus _rcw
       (send _rcw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; adas_msgs/LcaStatus _lca
     (send _lca :deserialize buf ptr-) (incf ptr- (send _lca :serialization-length))
   ;; adas_msgs/BsdStatus _bsd
     (send _bsd :deserialize buf ptr-) (incf ptr- (send _bsd :serialization-length))
   ;; adas_msgs/DowStatus _dow
     (send _dow :deserialize buf ptr-) (incf ptr- (send _dow :serialization-length))
   ;; adas_msgs/RcwStatus _rcw
     (send _rcw :deserialize buf ptr-) (incf ptr- (send _rcw :serialization-length))
   ;;
   self)
  )

(setf (get adas_msgs::AdasStatus :md5sum-) "a42d809339d43d8842c3cbde6e229299")
(setf (get adas_msgs::AdasStatus :datatype-) "adas_msgs/AdasStatus")
(setf (get adas_msgs::AdasStatus :definition-)
      "std_msgs/Header header
adas_msgs/LcaStatus lca
adas_msgs/BsdStatus bsd
adas_msgs/DowStatus dow
adas_msgs/RcwStatus rcw

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

================================================================================
MSG: adas_msgs/LcaStatus
uint8 left_state
uint8 right_state

================================================================================
MSG: adas_msgs/BsdStatus
uint8 left_state
uint8 right_state

================================================================================
MSG: adas_msgs/DowStatus
uint8 left_front_state
uint8 left_rear_state
uint8 right_front_state
uint8 right_rear_state

================================================================================
MSG: adas_msgs/RcwStatus
uint8 rcw_state
uint8 rlw_state
uint8 plw_state

")



(provide :adas_msgs/AdasStatus "a42d809339d43d8842c3cbde6e229299")


