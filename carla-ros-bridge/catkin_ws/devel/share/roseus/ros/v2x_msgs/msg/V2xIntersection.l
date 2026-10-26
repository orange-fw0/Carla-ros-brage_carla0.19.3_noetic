;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xIntersection)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xIntersection (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XINTERSECTION")
  (make-package "V2X_MSGS::V2XINTERSECTION"))

(in-package "ROS")
;;//! \htmlinclude V2xIntersection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass v2x_msgs::V2xIntersection
  :super ros::object
  :slots (_header _meta _v2x_intersection_info ))

(defmethod v2x_msgs::V2xIntersection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance v2x_msgs::V2xMeta :init))
    ((:v2x_intersection_info __v2x_intersection_info) (instance v2x_msgs::V2xIntersectionInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _v2x_intersection_info __v2x_intersection_info)
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
  (:v2x_intersection_info
   (&rest __v2x_intersection_info)
   (if (keywordp (car __v2x_intersection_info))
       (send* _v2x_intersection_info __v2x_intersection_info)
     (progn
       (if __v2x_intersection_info (setq _v2x_intersection_info (car __v2x_intersection_info)))
       _v2x_intersection_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; v2x_msgs/V2xMeta _meta
    (send _meta :serialization-length)
    ;; v2x_msgs/V2xIntersectionInfo _v2x_intersection_info
    (send _v2x_intersection_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; v2x_msgs/V2xMeta _meta
       (send _meta :serialize s)
     ;; v2x_msgs/V2xIntersectionInfo _v2x_intersection_info
       (send _v2x_intersection_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; v2x_msgs/V2xMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; v2x_msgs/V2xIntersectionInfo _v2x_intersection_info
     (send _v2x_intersection_info :deserialize buf ptr-) (incf ptr- (send _v2x_intersection_info :serialization-length))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xIntersection :md5sum-) "4d9da85f26e70015e10ed73b3cb46d59")
(setf (get v2x_msgs::V2xIntersection :datatype-) "v2x_msgs/V2xIntersection")
(setf (get v2x_msgs::V2xIntersection :definition-)
      "std_msgs/Header header
v2x_msgs/V2xMeta meta
v2x_msgs/V2xIntersectionInfo v2x_intersection_info

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
MSG: v2x_msgs/V2xIntersectionInfo
uint8 V2X_INTERSECTION_DATA = 1
uint8 available
v2x_msgs/V2xIntersectionData v2x_intersection_data

================================================================================
MSG: v2x_msgs/V2xIntersectionData
int32 intersection_id
float64 enter_angle
float64 exit_angle

")



(provide :v2x_msgs/V2xIntersection "4d9da85f26e70015e10ed73b3cb46d59")


