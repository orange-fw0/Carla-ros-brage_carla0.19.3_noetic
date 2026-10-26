;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPLaneChangeData)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPLaneChangeData (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPLANECHANGEDATA")
  (make-package "E2E_PLANNING_MSGS::DLPLANECHANGEDATA"))

(in-package "ROS")
;;//! \htmlinclude DLPLaneChangeData.msg.html


(defclass e2e_planning_msgs::DLPLaneChangeData
  :super ros::object
  :slots (_multi_source_dlp_lane_infos _dlp_lane_change_decisions _dlp_trajectories _dlp_agent_prediction_trajectories _reserved_info ))

(defmethod e2e_planning_msgs::DLPLaneChangeData
  (:init
   (&key
    ((:multi_source_dlp_lane_infos __multi_source_dlp_lane_infos) ())
    ((:dlp_lane_change_decisions __dlp_lane_change_decisions) ())
    ((:dlp_trajectories __dlp_trajectories) ())
    ((:dlp_agent_prediction_trajectories __dlp_agent_prediction_trajectories) (instance e2e_planning_msgs::DLPTrajectories :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _multi_source_dlp_lane_infos __multi_source_dlp_lane_infos)
   (setq _dlp_lane_change_decisions __dlp_lane_change_decisions)
   (setq _dlp_trajectories __dlp_trajectories)
   (setq _dlp_agent_prediction_trajectories __dlp_agent_prediction_trajectories)
   (setq _reserved_info (string __reserved_info))
   self)
  (:multi_source_dlp_lane_infos
   (&rest __multi_source_dlp_lane_infos)
   (if (keywordp (car __multi_source_dlp_lane_infos))
       (send* _multi_source_dlp_lane_infos __multi_source_dlp_lane_infos)
     (progn
       (if __multi_source_dlp_lane_infos (setq _multi_source_dlp_lane_infos (car __multi_source_dlp_lane_infos)))
       _multi_source_dlp_lane_infos)))
  (:dlp_lane_change_decisions
   (&rest __dlp_lane_change_decisions)
   (if (keywordp (car __dlp_lane_change_decisions))
       (send* _dlp_lane_change_decisions __dlp_lane_change_decisions)
     (progn
       (if __dlp_lane_change_decisions (setq _dlp_lane_change_decisions (car __dlp_lane_change_decisions)))
       _dlp_lane_change_decisions)))
  (:dlp_trajectories
   (&rest __dlp_trajectories)
   (if (keywordp (car __dlp_trajectories))
       (send* _dlp_trajectories __dlp_trajectories)
     (progn
       (if __dlp_trajectories (setq _dlp_trajectories (car __dlp_trajectories)))
       _dlp_trajectories)))
  (:dlp_agent_prediction_trajectories
   (&rest __dlp_agent_prediction_trajectories)
   (if (keywordp (car __dlp_agent_prediction_trajectories))
       (send* _dlp_agent_prediction_trajectories __dlp_agent_prediction_trajectories)
     (progn
       (if __dlp_agent_prediction_trajectories (setq _dlp_agent_prediction_trajectories (car __dlp_agent_prediction_trajectories)))
       _dlp_agent_prediction_trajectories)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; e2e_planning_msgs/DLPLaneInfo[] _multi_source_dlp_lane_infos
    (apply #'+ (send-all _multi_source_dlp_lane_infos :serialization-length)) 4
    ;; e2e_planning_msgs/DLPLaneChangeDecision[] _dlp_lane_change_decisions
    (apply #'+ (send-all _dlp_lane_change_decisions :serialization-length)) 4
    ;; e2e_planning_msgs/DLPTrajectory[] _dlp_trajectories
    (apply #'+ (send-all _dlp_trajectories :serialization-length)) 4
    ;; e2e_planning_msgs/DLPTrajectories _dlp_agent_prediction_trajectories
    (send _dlp_agent_prediction_trajectories :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; e2e_planning_msgs/DLPLaneInfo[] _multi_source_dlp_lane_infos
     (write-long (length _multi_source_dlp_lane_infos) s)
     (dolist (elem _multi_source_dlp_lane_infos)
       (send elem :serialize s)
       )
     ;; e2e_planning_msgs/DLPLaneChangeDecision[] _dlp_lane_change_decisions
     (write-long (length _dlp_lane_change_decisions) s)
     (dolist (elem _dlp_lane_change_decisions)
       (send elem :serialize s)
       )
     ;; e2e_planning_msgs/DLPTrajectory[] _dlp_trajectories
     (write-long (length _dlp_trajectories) s)
     (dolist (elem _dlp_trajectories)
       (send elem :serialize s)
       )
     ;; e2e_planning_msgs/DLPTrajectories _dlp_agent_prediction_trajectories
       (send _dlp_agent_prediction_trajectories :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; e2e_planning_msgs/DLPLaneInfo[] _multi_source_dlp_lane_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _multi_source_dlp_lane_infos (let (r) (dotimes (i n) (push (instance e2e_planning_msgs::DLPLaneInfo :init) r)) r))
     (dolist (elem- _multi_source_dlp_lane_infos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; e2e_planning_msgs/DLPLaneChangeDecision[] _dlp_lane_change_decisions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dlp_lane_change_decisions (let (r) (dotimes (i n) (push (instance e2e_planning_msgs::DLPLaneChangeDecision :init) r)) r))
     (dolist (elem- _dlp_lane_change_decisions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; e2e_planning_msgs/DLPTrajectory[] _dlp_trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dlp_trajectories (let (r) (dotimes (i n) (push (instance e2e_planning_msgs::DLPTrajectory :init) r)) r))
     (dolist (elem- _dlp_trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; e2e_planning_msgs/DLPTrajectories _dlp_agent_prediction_trajectories
     (send _dlp_agent_prediction_trajectories :deserialize buf ptr-) (incf ptr- (send _dlp_agent_prediction_trajectories :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get e2e_planning_msgs::DLPLaneChangeData :md5sum-) "227b694b2f47efd57e9b91c46edd3153")
(setf (get e2e_planning_msgs::DLPLaneChangeData :datatype-) "e2e_planning_msgs/DLPLaneChangeData")
(setf (get e2e_planning_msgs::DLPLaneChangeData :definition-)
      "e2e_planning_msgs/DLPLaneInfo[] multi_source_dlp_lane_infos
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

")



(provide :e2e_planning_msgs/DLPLaneChangeData "227b694b2f47efd57e9b91c46edd3153")


