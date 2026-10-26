;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPResult)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPResult (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPRESULT")
  (make-package "E2E_PLANNING_MSGS::DLPRESULT"))

(in-package "ROS")
;;//! \htmlinclude DLPResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass e2e_planning_msgs::DLPResult
  :super ros::object
  :slots (_header _meta _dlp_cruise_data _dlp_lane_change_data _reserved_info ))

(defmethod e2e_planning_msgs::DLPResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance e2e_planning_msgs::DLPResultMeta :init))
    ((:dlp_cruise_data __dlp_cruise_data) (instance e2e_planning_msgs::DLPCruiseData :init))
    ((:dlp_lane_change_data __dlp_lane_change_data) (instance e2e_planning_msgs::DLPLaneChangeData :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _dlp_cruise_data __dlp_cruise_data)
   (setq _dlp_lane_change_data __dlp_lane_change_data)
   (setq _reserved_info (string __reserved_info))
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
  (:dlp_cruise_data
   (&rest __dlp_cruise_data)
   (if (keywordp (car __dlp_cruise_data))
       (send* _dlp_cruise_data __dlp_cruise_data)
     (progn
       (if __dlp_cruise_data (setq _dlp_cruise_data (car __dlp_cruise_data)))
       _dlp_cruise_data)))
  (:dlp_lane_change_data
   (&rest __dlp_lane_change_data)
   (if (keywordp (car __dlp_lane_change_data))
       (send* _dlp_lane_change_data __dlp_lane_change_data)
     (progn
       (if __dlp_lane_change_data (setq _dlp_lane_change_data (car __dlp_lane_change_data)))
       _dlp_lane_change_data)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; e2e_planning_msgs/DLPResultMeta _meta
    (send _meta :serialization-length)
    ;; e2e_planning_msgs/DLPCruiseData _dlp_cruise_data
    (send _dlp_cruise_data :serialization-length)
    ;; e2e_planning_msgs/DLPLaneChangeData _dlp_lane_change_data
    (send _dlp_lane_change_data :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; e2e_planning_msgs/DLPResultMeta _meta
       (send _meta :serialize s)
     ;; e2e_planning_msgs/DLPCruiseData _dlp_cruise_data
       (send _dlp_cruise_data :serialize s)
     ;; e2e_planning_msgs/DLPLaneChangeData _dlp_lane_change_data
       (send _dlp_lane_change_data :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; e2e_planning_msgs/DLPResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; e2e_planning_msgs/DLPCruiseData _dlp_cruise_data
     (send _dlp_cruise_data :deserialize buf ptr-) (incf ptr- (send _dlp_cruise_data :serialization-length))
   ;; e2e_planning_msgs/DLPLaneChangeData _dlp_lane_change_data
     (send _dlp_lane_change_data :deserialize buf ptr-) (incf ptr- (send _dlp_lane_change_data :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get e2e_planning_msgs::DLPResult :md5sum-) "2086b723c652ff11338f4b79fe989ce4")
(setf (get e2e_planning_msgs::DLPResult :datatype-) "e2e_planning_msgs/DLPResult")
(setf (get e2e_planning_msgs::DLPResult :definition-)
      "std_msgs/Header header
e2e_planning_msgs/DLPResultMeta meta
e2e_planning_msgs/DLPCruiseData dlp_cruise_data
e2e_planning_msgs/DLPLaneChangeData dlp_lane_change_data
string reserved_info

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
MSG: e2e_planning_msgs/DLPResultMeta
uint64 timestamp_us

================================================================================
MSG: e2e_planning_msgs/DLPCruiseData
e2e_planning_msgs/DLPTrajectory[] dlp_cruise_trajectories
e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories
string reserved_info

================================================================================
MSG: e2e_planning_msgs/DLPTrajectory
e2e_planning_msgs/DLPTrajectoryPoint[] points
e2e_planning_msgs/DLPTrajectoryTypeEnum type
uint8 anchor_type
uint64 anchor_id
perception_interface_msgs/Point3d goal_point
uint8 multi_modality_id
uint64 object_id
uint64 timestamp_us
float64 score
string reserved_info

================================================================================
MSG: e2e_planning_msgs/DLPTrajectoryPoint
perception_interface_msgs/Point3d position
perception_interface_msgs/Vector3d velocity
perception_interface_msgs/Vector3d acceleration
perception_interface_msgs/Vector3d jerk
float64 heading_angle
float64 score
uint64 timestamp_us
bool valid

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/Vector3d
float64 x
float64 y
float64 z

================================================================================
MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum
uint8 DLP_TRAJECTORY_CRUISE = 0
uint8 DLP_TRAJECTORY_LANE_CHANGE = 1
uint8 DLP_TRAJECTORY_REF_PATH = 2
uint8 DLP_TRAJECTORY_PREDICTION = 3
uint8 value

================================================================================
MSG: e2e_planning_msgs/DLPTrajectories
e2e_planning_msgs/DLPTrajectory[] dlp_trajectories

================================================================================
MSG: e2e_planning_msgs/DLPLaneChangeData
e2e_planning_msgs/DLPLaneInfo[] multi_source_dlp_lane_infos
e2e_planning_msgs/DLPLaneChangeDecision[] dlp_lane_change_decisions
e2e_planning_msgs/DLPTrajectory[] dlp_trajectories
e2e_planning_msgs/DLPTrajectories dlp_agent_prediction_trajectories
string reserved_info

================================================================================
MSG: e2e_planning_msgs/DLPLaneInfo
int32 request_type
int32 lane_id
float64 score
string source

================================================================================
MSG: e2e_planning_msgs/DLPLaneChangeDecision
int32 request_type
int32 direction
int32 target_lane_id
float64 score
string source

")



(provide :e2e_planning_msgs/DLPResult "2086b723c652ff11338f4b79fe989ce4")


