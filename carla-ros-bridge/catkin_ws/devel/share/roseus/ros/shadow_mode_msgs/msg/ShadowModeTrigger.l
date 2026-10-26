;; Auto-generated. Do not edit!


(when (boundp 'shadow_mode_msgs::ShadowModeTrigger)
  (if (not (find-package "SHADOW_MODE_MSGS"))
    (make-package "SHADOW_MODE_MSGS"))
  (shadow 'ShadowModeTrigger (find-package "SHADOW_MODE_MSGS")))
(unless (find-package "SHADOW_MODE_MSGS::SHADOWMODETRIGGER")
  (make-package "SHADOW_MODE_MSGS::SHADOWMODETRIGGER"))

(in-package "ROS")
;;//! \htmlinclude ShadowModeTrigger.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass shadow_mode_msgs::ShadowModeTrigger
  :super ros::object
  :slots (_header _trigger_event _trigger_message ))

(defmethod shadow_mode_msgs::ShadowModeTrigger
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trigger_event __trigger_event) (instance shadow_mode_msgs::ShadowModeTriggerEvent :init))
    ((:trigger_message __trigger_message) (instance shadow_mode_msgs::ShadowTriggerMessage :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trigger_event __trigger_event)
   (setq _trigger_message __trigger_message)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trigger_event
   (&rest __trigger_event)
   (if (keywordp (car __trigger_event))
       (send* _trigger_event __trigger_event)
     (progn
       (if __trigger_event (setq _trigger_event (car __trigger_event)))
       _trigger_event)))
  (:trigger_message
   (&rest __trigger_message)
   (if (keywordp (car __trigger_message))
       (send* _trigger_message __trigger_message)
     (progn
       (if __trigger_message (setq _trigger_message (car __trigger_message)))
       _trigger_message)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; shadow_mode_msgs/ShadowModeTriggerEvent _trigger_event
    (send _trigger_event :serialization-length)
    ;; shadow_mode_msgs/ShadowTriggerMessage _trigger_message
    (send _trigger_message :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; shadow_mode_msgs/ShadowModeTriggerEvent _trigger_event
       (send _trigger_event :serialize s)
     ;; shadow_mode_msgs/ShadowTriggerMessage _trigger_message
       (send _trigger_message :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; shadow_mode_msgs/ShadowModeTriggerEvent _trigger_event
     (send _trigger_event :deserialize buf ptr-) (incf ptr- (send _trigger_event :serialization-length))
   ;; shadow_mode_msgs/ShadowTriggerMessage _trigger_message
     (send _trigger_message :deserialize buf ptr-) (incf ptr- (send _trigger_message :serialization-length))
   ;;
   self)
  )

(setf (get shadow_mode_msgs::ShadowModeTrigger :md5sum-) "39938e94b07861882982a2fd8d678563")
(setf (get shadow_mode_msgs::ShadowModeTrigger :datatype-) "shadow_mode_msgs/ShadowModeTrigger")
(setf (get shadow_mode_msgs::ShadowModeTrigger :definition-)
      "std_msgs/Header header
shadow_mode_msgs/ShadowModeTriggerEvent trigger_event
shadow_mode_msgs/ShadowTriggerMessage trigger_message

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
MSG: shadow_mode_msgs/ShadowModeTriggerEvent
bool trigger_state
string[] tags
float64 road_curvature

================================================================================
MSG: shadow_mode_msgs/ShadowTriggerMessage
string collect_type
string name
float32 cool_down_limit
shadow_mode_msgs/DetailConfig detail_config
bool sticky
string uuid
string response_status
string response_reason
uint64 stamp
shadow_mode_msgs/TriggerParam trigger_type
uint8 before
uint8 after
shadow_mode_msgs/TrustParam trust_param
string[] topics
uint64[] stamps
string[] tags
bool start
bool disable_dis
shadow_mode_msgs/ActionType action_type

================================================================================
MSG: shadow_mode_msgs/DetailConfig
string[] mlog_list
string[] need_maf_groups

================================================================================
MSG: shadow_mode_msgs/TriggerParam
uint8 EVENT = 0
uint8 SINGLE_FRAME = 1
uint8 RECORDING = 2
uint8 trigger_value

================================================================================
MSG: shadow_mode_msgs/TrustParam
uint8 NONE = 0
uint8 BEFORE = 1
uint8 AFTER = 2
uint8 trust_value

================================================================================
MSG: shadow_mode_msgs/ActionType
uint8 DEFAULT = 0
uint8 CFDI_ONLY_FOREVER_LOG = 1
uint8 DFDI_ONLY_REPORT_EAP = 128
uint8 action_value

")



(provide :shadow_mode_msgs/ShadowModeTrigger "39938e94b07861882982a2fd8d678563")


