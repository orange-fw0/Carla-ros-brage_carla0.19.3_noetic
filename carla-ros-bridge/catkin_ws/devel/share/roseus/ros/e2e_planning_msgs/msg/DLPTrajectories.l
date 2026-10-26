;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPTrajectories)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPTrajectories (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORIES")
  (make-package "E2E_PLANNING_MSGS::DLPTRAJECTORIES"))

(in-package "ROS")
;;//! \htmlinclude DLPTrajectories.msg.html


(defclass e2e_planning_msgs::DLPTrajectories
  :super ros::object
  :slots (_dlp_trajectories ))

(defmethod e2e_planning_msgs::DLPTrajectories
  (:init
   (&key
    ((:dlp_trajectories __dlp_trajectories) ())
    )
   (send-super :init)
   (setq _dlp_trajectories __dlp_trajectories)
   self)
  (:dlp_trajectories
   (&rest __dlp_trajectories)
   (if (keywordp (car __dlp_trajectories))
       (send* _dlp_trajectories __dlp_trajectories)
     (progn
       (if __dlp_trajectories (setq _dlp_trajectories (car __dlp_trajectories)))
       _dlp_trajectories)))
  (:serialization-length
   ()
   (+
    ;; e2e_planning_msgs/DLPTrajectory[] _dlp_trajectories
    (apply #'+ (send-all _dlp_trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; e2e_planning_msgs/DLPTrajectory[] _dlp_trajectories
     (write-long (length _dlp_trajectories) s)
     (dolist (elem _dlp_trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; e2e_planning_msgs/DLPTrajectory[] _dlp_trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dlp_trajectories (let (r) (dotimes (i n) (push (instance e2e_planning_msgs::DLPTrajectory :init) r)) r))
     (dolist (elem- _dlp_trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get e2e_planning_msgs::DLPTrajectories :md5sum-) "b289bd74365be4c9eb63c50ee595629d")
(setf (get e2e_planning_msgs::DLPTrajectories :datatype-) "e2e_planning_msgs/DLPTrajectories")
(setf (get e2e_planning_msgs::DLPTrajectories :definition-)
      "e2e_planning_msgs/DLPTrajectory[] dlp_trajectories

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

")



(provide :e2e_planning_msgs/DLPTrajectories "b289bd74365be4c9eb63c50ee595629d")


