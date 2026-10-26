;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xPerception)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xPerception (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XPERCEPTION")
  (make-package "V2X_MSGS::V2XPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude V2xPerception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass v2x_msgs::V2xPerception
  :super ros::object
  :slots (_header _meta _v2x_perception_info ))

(defmethod v2x_msgs::V2xPerception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance v2x_msgs::V2xMeta :init))
    ((:v2x_perception_info __v2x_perception_info) (instance v2x_msgs::V2xPerceptionInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _v2x_perception_info __v2x_perception_info)
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
  (:v2x_perception_info
   (&rest __v2x_perception_info)
   (if (keywordp (car __v2x_perception_info))
       (send* _v2x_perception_info __v2x_perception_info)
     (progn
       (if __v2x_perception_info (setq _v2x_perception_info (car __v2x_perception_info)))
       _v2x_perception_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; v2x_msgs/V2xMeta _meta
    (send _meta :serialization-length)
    ;; v2x_msgs/V2xPerceptionInfo _v2x_perception_info
    (send _v2x_perception_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; v2x_msgs/V2xMeta _meta
       (send _meta :serialize s)
     ;; v2x_msgs/V2xPerceptionInfo _v2x_perception_info
       (send _v2x_perception_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; v2x_msgs/V2xMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; v2x_msgs/V2xPerceptionInfo _v2x_perception_info
     (send _v2x_perception_info :deserialize buf ptr-) (incf ptr- (send _v2x_perception_info :serialization-length))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xPerception :md5sum-) "8fd25398ccdd57f99fef3f47d092cc36")
(setf (get v2x_msgs::V2xPerception :datatype-) "v2x_msgs/V2xPerception")
(setf (get v2x_msgs::V2xPerception :definition-)
      "std_msgs/Header header
v2x_msgs/V2xMeta meta
v2x_msgs/V2xPerceptionInfo v2x_perception_info

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
MSG: v2x_msgs/V2xMeta
uint64 timestamp_us
string frame_id

================================================================================
MSG: v2x_msgs/V2xPerceptionInfo
uint8 V2X_PERCEPTION_OBJECT = 1
uint8 available
v2x_msgs/V2xPerceptionObject[] v2x_perception_object

================================================================================
MSG: v2x_msgs/V2xPerceptionObject
v2x_msgs/V2xPerceptionObjectType type
float64 longitude
float64 latitude
float64 elevation
float64 speed
float64 heading
float64 width
float64 length
float64 height

================================================================================
MSG: v2x_msgs/V2xPerceptionObjectType
uint32 UNKNOWN = 0
uint32 PEDESTRIAN = 1
uint32 NON_MOTOR = 2
uint32 MOTOR = 3
uint32 OTHER = 4
uint32 value

")



(provide :v2x_msgs/V2xPerception "8fd25398ccdd57f99fef3f47d092cc36")


