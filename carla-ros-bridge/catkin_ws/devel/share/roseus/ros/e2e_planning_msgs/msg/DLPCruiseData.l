;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPCruiseData)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPCruiseData (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPCRUISEDATA")
  (make-package "E2E_PLANNING_MSGS::DLPCRUISEDATA"))

(in-package "ROS")
;;//! \htmlinclude DLPCruiseData.msg.html


(defclass e2e_planning_msgs::DLPCruiseData
  :super ros::object
  :slots (_dlp_cruise_trajectories _dlp_agent_prediction_trajectories _reserved_info ))

(defmethod e2e_planning_msgs::DLPCruiseData
  (:init
   (&key
    ((:dlp_cruise_trajectories __dlp_cruise_trajectories) ())
    ((:dlp_agent_prediction_trajectories __dlp_agent_prediction_trajectories) (instance e2e_planning_msgs::DLPTrajectories :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _dlp_cruise_trajectories __dlp_cruise_trajectories)
   (setq _dlp_agent_prediction_trajectories __dlp_agent_prediction_trajectories)
   (setq _reserved_info (string __reserved_info))
   self)
  (:dlp_cruise_trajectories
   (&rest __dlp_cruise_trajectories)
   (if (keywordp (car __dlp_cruise_trajectories))
       (send* _dlp_cruise_trajectories __dlp_cruise_trajectories)
     (progn
       (if __dlp_cruise_trajectories (setq _dlp_cruise_trajectories (car __dlp_cruise_trajectories)))
       _dlp_cruise_trajectories)))
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
    ;; e2e_planning_msgs/DLPTrajectory[] _dlp_cruise_trajectories
    (apply #'+ (send-all _dlp_cruise_trajectories :serialization-length)) 4
    ;; e2e_planning_msgs/DLPTrajectories _dlp_agent_prediction_trajectories
    (send _dlp_agent_prediction_trajectories :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; e2e_planning_msgs/DLPTrajectory[] _dlp_cruise_trajectories
     (write-long (length _dlp_cruise_trajectories) s)
     (dolist (elem _dlp_cruise_trajectories)
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
   ;; e2e_planning_msgs/DLPTrajectory[] _dlp_cruise_trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dlp_cruise_trajectories (let (r) (dotimes (i n) (push (instance e2e_planning_msgs::DLPTrajectory :init) r)) r))
     (dolist (elem- _dlp_cruise_trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; e2e_planning_msgs/DLPTrajectories _dlp_agent_prediction_trajectories
     (send _dlp_agent_prediction_trajectories :deserialize buf ptr-) (incf ptr- (send _dlp_agent_prediction_trajectories :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get e2e_planning_msgs::DLPCruiseData :md5sum-) "71a32eee841e5ca466d4a00390d650cd")
(setf (get e2e_planning_msgs::DLPCruiseData :datatype-) "e2e_planning_msgs/DLPCruiseData")
(setf (get e2e_planning_msgs::DLPCruiseData :definition-)
      "e2e_planning_msgs/DLPTrajectory[] dlp_cruise_trajectories
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

")



(provide :e2e_planning_msgs/DLPCruiseData "71a32eee841e5ca466d4a00390d650cd")


