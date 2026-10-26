;; Auto-generated. Do not edit!


(when (boundp 'hdmap_msgs::LocalMap)
  (if (not (find-package "HDMAP_MSGS"))
    (make-package "HDMAP_MSGS"))
  (shadow 'LocalMap (find-package "HDMAP_MSGS")))
(unless (find-package "HDMAP_MSGS::LOCALMAP")
  (make-package "HDMAP_MSGS::LOCALMAP"))

(in-package "ROS")
;;//! \htmlinclude LocalMap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdmap_msgs::LocalMap
  :super ros::object
  :slots (_header _LocalMap_data ))

(defmethod hdmap_msgs::LocalMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:LocalMap_data __LocalMap_data) (instance hdmap_msgs::LocalMapData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _LocalMap_data __LocalMap_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:LocalMap_data
   (&rest __LocalMap_data)
   (if (keywordp (car __LocalMap_data))
       (send* _LocalMap_data __LocalMap_data)
     (progn
       (if __LocalMap_data (setq _LocalMap_data (car __LocalMap_data)))
       _LocalMap_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hdmap_msgs/LocalMapData _LocalMap_data
    (send _LocalMap_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hdmap_msgs/LocalMapData _LocalMap_data
       (send _LocalMap_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hdmap_msgs/LocalMapData _LocalMap_data
     (send _LocalMap_data :deserialize buf ptr-) (incf ptr- (send _LocalMap_data :serialization-length))
   ;;
   self)
  )

(setf (get hdmap_msgs::LocalMap :md5sum-) "4e8ebd9a9d88b6add0f69bb000ededd2")
(setf (get hdmap_msgs::LocalMap :datatype-) "hdmap_msgs/LocalMap")
(setf (get hdmap_msgs::LocalMap :definition-)
      "std_msgs/Header header
hdmap_msgs/LocalMapData LocalMap_data

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
MSG: hdmap_msgs/LocalMapData
uint8 MDM = 1
uint8 ANDM = 2
uint8 MAP_MATCH_INFO = 4
uint8 OTHER = 8
uint8 ESR = 16
uint8 available
hdmap_msgs/LocalMapLayer mdm
hdmap_msgs/LocalMapLayer andm
hdmap_msgs/LocalMapLayer map_match_info
hdmap_msgs/LocalMapLayer other
hdmap_msgs/LocalMapLayer esr

================================================================================
MSG: hdmap_msgs/LocalMapLayer
string data

")



(provide :hdmap_msgs/LocalMap "4e8ebd9a9d88b6add0f69bb000ededd2")


