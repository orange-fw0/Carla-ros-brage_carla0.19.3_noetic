;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSRequest)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSRequest (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSREQUEST")
  (make-package "TOS_MSGS::TOSREQUEST"))

(in-package "ROS")
;;//! \htmlinclude TOSRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::TOSRequest
  :super ros::object
  :slots (_header _scenario _decision _render_info ))

(defmethod tos_msgs::TOSRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:scenario __scenario) (instance tos_msgs::TOSScenarioEnum :init))
    ((:decision __decision) (instance tos_msgs::TOSDecisionEnum :init))
    ((:render_info __render_info) (instance tos_msgs::TOSRequestRenderInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _scenario __scenario)
   (setq _decision __decision)
   (setq _render_info __render_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:scenario
   (&rest __scenario)
   (if (keywordp (car __scenario))
       (send* _scenario __scenario)
     (progn
       (if __scenario (setq _scenario (car __scenario)))
       _scenario)))
  (:decision
   (&rest __decision)
   (if (keywordp (car __decision))
       (send* _decision __decision)
     (progn
       (if __decision (setq _decision (car __decision)))
       _decision)))
  (:render_info
   (&rest __render_info)
   (if (keywordp (car __render_info))
       (send* _render_info __render_info)
     (progn
       (if __render_info (setq _render_info (car __render_info)))
       _render_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tos_msgs/TOSScenarioEnum _scenario
    (send _scenario :serialization-length)
    ;; tos_msgs/TOSDecisionEnum _decision
    (send _decision :serialization-length)
    ;; tos_msgs/TOSRequestRenderInfo _render_info
    (send _render_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tos_msgs/TOSScenarioEnum _scenario
       (send _scenario :serialize s)
     ;; tos_msgs/TOSDecisionEnum _decision
       (send _decision :serialize s)
     ;; tos_msgs/TOSRequestRenderInfo _render_info
       (send _render_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tos_msgs/TOSScenarioEnum _scenario
     (send _scenario :deserialize buf ptr-) (incf ptr- (send _scenario :serialization-length))
   ;; tos_msgs/TOSDecisionEnum _decision
     (send _decision :deserialize buf ptr-) (incf ptr- (send _decision :serialization-length))
   ;; tos_msgs/TOSRequestRenderInfo _render_info
     (send _render_info :deserialize buf ptr-) (incf ptr- (send _render_info :serialization-length))
   ;;
   self)
  )

(setf (get tos_msgs::TOSRequest :md5sum-) "6eb17c6ccf81d2ccd3af4ef75a4fcc47")
(setf (get tos_msgs::TOSRequest :datatype-) "tos_msgs/TOSRequest")
(setf (get tos_msgs::TOSRequest :definition-)
      "std_msgs/Header header
tos_msgs/TOSScenarioEnum scenario
tos_msgs/TOSDecisionEnum decision
tos_msgs/TOSRequestRenderInfo render_info

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
MSG: tos_msgs/TOSScenarioEnum
uint8 LANE_BORROW = 0
uint8 TRAFFIC_LIGHT = 1
uint8 value

================================================================================
MSG: tos_msgs/TOSDecisionEnum
uint8 NUDGE = 0
uint8 LEFT_NUDGE = 1
uint8 RIGHT_NUDGE = 2
uint8 STOP = 3
uint8 value

================================================================================
MSG: tos_msgs/TOSRequestRenderInfo
tos_msgs/TOSRequestRenderODInfo[] od_info
tos_msgs/TOSRequestRenderLDInfo[] ld_info
tos_msgs/TOSRequestCandidate[] candidates

================================================================================
MSG: tos_msgs/TOSRequestRenderODInfo
uint32 id
float64 target_s
float64 target_l

================================================================================
MSG: tos_msgs/TOSRequestRenderLDInfo
uint32 lane_id

================================================================================
MSG: tos_msgs/TOSRequestCandidate
uint32 candidate_id
perception_interface_msgs/Point3d[] traj

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

")



(provide :tos_msgs/TOSRequest "6eb17c6ccf81d2ccd3af4ef75a4fcc47")


