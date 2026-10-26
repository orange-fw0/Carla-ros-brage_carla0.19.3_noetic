;; Auto-generated. Do not edit!


(when (boundp 'can_bridge_msgs::CanBridge)
  (if (not (find-package "CAN_BRIDGE_MSGS"))
    (make-package "CAN_BRIDGE_MSGS"))
  (shadow 'CanBridge (find-package "CAN_BRIDGE_MSGS")))
(unless (find-package "CAN_BRIDGE_MSGS::CANBRIDGE")
  (make-package "CAN_BRIDGE_MSGS::CANBRIDGE"))

(in-package "ROS")
;;//! \htmlinclude CanBridge.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass can_bridge_msgs::CanBridge
  :super ros::object
  :slots (_header _meta _can ))

(defmethod can_bridge_msgs::CanBridge
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance can_bridge_msgs::Meta :init))
    ((:can __can) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _can __can)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:can
   (&rest __can)
   (if (keywordp (car __can))
       (send* _can __can)
     (progn
       (if __can (setq _can (car __can)))
       _can)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; can_bridge_msgs/Meta _meta
    (send _meta :serialization-length)
    ;; can_bridge_msgs/CanMessage[] _can
    (apply #'+ (send-all _can :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; can_bridge_msgs/Meta _meta
       (send _meta :serialize s)
     ;; can_bridge_msgs/CanMessage[] _can
     (write-long (length _can) s)
     (dolist (elem _can)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; can_bridge_msgs/Meta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; can_bridge_msgs/CanMessage[] _can
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _can (let (r) (dotimes (i n) (push (instance can_bridge_msgs::CanMessage :init) r)) r))
     (dolist (elem- _can)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get can_bridge_msgs::CanBridge :md5sum-) "0bab2daea292bfed2b50d56bf735ebbf")
(setf (get can_bridge_msgs::CanBridge :datatype-) "can_bridge_msgs/CanBridge")
(setf (get can_bridge_msgs::CanBridge :definition-)
      "std_msgs/Header header
can_bridge_msgs/Meta meta
can_bridge_msgs/CanMessage[] can

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
MSG: can_bridge_msgs/Meta
uint64 sensor_timestamp_us
uint64 seq

================================================================================
MSG: can_bridge_msgs/CanMessage
uint32 can_id
int32 ts_offset
uint8 is_convert
uint8 channel
uint8 len
uint8[] data

")



(provide :can_bridge_msgs/CanBridge "0bab2daea292bfed2b50d56bf735ebbf")


