;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PlanStatus)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PlanStatus (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PLANSTATUS")
  (make-package "PLANNING_MSGS::PLANSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PlanStatus.msg.html


(intern "*ALGORITHM_STATUS*" (find-package "PLANNING_MSGS::PLANSTATUS"))
(shadow '*ALGORITHM_STATUS* (find-package "PLANNING_MSGS::PLANSTATUS"))
(defconstant planning_msgs::PlanStatus::*ALGORITHM_STATUS* 1)
(intern "*WARNING_STATUS*" (find-package "PLANNING_MSGS::PLANSTATUS"))
(shadow '*WARNING_STATUS* (find-package "PLANNING_MSGS::PLANSTATUS"))
(defconstant planning_msgs::PlanStatus::*WARNING_STATUS* 2)
(intern "*SOLVER_STATUS*" (find-package "PLANNING_MSGS::PLANSTATUS"))
(shadow '*SOLVER_STATUS* (find-package "PLANNING_MSGS::PLANSTATUS"))
(defconstant planning_msgs::PlanStatus::*SOLVER_STATUS* 4)
(intern "*STEER_MODE*" (find-package "PLANNING_MSGS::PLANSTATUS"))
(shadow '*STEER_MODE* (find-package "PLANNING_MSGS::PLANSTATUS"))
(defconstant planning_msgs::PlanStatus::*STEER_MODE* 8)

(defun planning_msgs::PlanStatus-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::PlanStatus::*ALGORITHM_STATUS*)
        ((= const 2) 'planning_msgs::PlanStatus::*WARNING_STATUS*)
        ((= const 4) 'planning_msgs::PlanStatus::*SOLVER_STATUS*)
        ((= const 8) 'planning_msgs::PlanStatus::*STEER_MODE*)
        (t nil)))

(defclass planning_msgs::PlanStatus
  :super ros::object
  :slots (_available _algorithm_status _warning_status _solver_status _steer_mode _hdmap_valid ))

(defmethod planning_msgs::PlanStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:algorithm_status __algorithm_status) (instance planning_msgs::PlanAlgorithmStatus :init))
    ((:warning_status __warning_status) (instance planning_msgs::WarningStatus :init))
    ((:solver_status __solver_status) (instance planning_msgs::SolverStatus :init))
    ((:steer_mode __steer_mode) (instance planning_msgs::SteerModeEnum :init))
    ((:hdmap_valid __hdmap_valid) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _algorithm_status __algorithm_status)
   (setq _warning_status __warning_status)
   (setq _solver_status __solver_status)
   (setq _steer_mode __steer_mode)
   (setq _hdmap_valid __hdmap_valid)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:algorithm_status
   (&rest __algorithm_status)
   (if (keywordp (car __algorithm_status))
       (send* _algorithm_status __algorithm_status)
     (progn
       (if __algorithm_status (setq _algorithm_status (car __algorithm_status)))
       _algorithm_status)))
  (:warning_status
   (&rest __warning_status)
   (if (keywordp (car __warning_status))
       (send* _warning_status __warning_status)
     (progn
       (if __warning_status (setq _warning_status (car __warning_status)))
       _warning_status)))
  (:solver_status
   (&rest __solver_status)
   (if (keywordp (car __solver_status))
       (send* _solver_status __solver_status)
     (progn
       (if __solver_status (setq _solver_status (car __solver_status)))
       _solver_status)))
  (:steer_mode
   (&rest __steer_mode)
   (if (keywordp (car __steer_mode))
       (send* _steer_mode __steer_mode)
     (progn
       (if __steer_mode (setq _steer_mode (car __steer_mode)))
       _steer_mode)))
  (:hdmap_valid
   (&optional (__hdmap_valid :null))
   (if (not (eq __hdmap_valid :null)) (setq _hdmap_valid __hdmap_valid)) _hdmap_valid)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/PlanAlgorithmStatus _algorithm_status
    (send _algorithm_status :serialization-length)
    ;; planning_msgs/WarningStatus _warning_status
    (send _warning_status :serialization-length)
    ;; planning_msgs/SolverStatus _solver_status
    (send _solver_status :serialization-length)
    ;; planning_msgs/SteerModeEnum _steer_mode
    (send _steer_mode :serialization-length)
    ;; bool _hdmap_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/PlanAlgorithmStatus _algorithm_status
       (send _algorithm_status :serialize s)
     ;; planning_msgs/WarningStatus _warning_status
       (send _warning_status :serialize s)
     ;; planning_msgs/SolverStatus _solver_status
       (send _solver_status :serialize s)
     ;; planning_msgs/SteerModeEnum _steer_mode
       (send _steer_mode :serialize s)
     ;; bool _hdmap_valid
       (if _hdmap_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/PlanAlgorithmStatus _algorithm_status
     (send _algorithm_status :deserialize buf ptr-) (incf ptr- (send _algorithm_status :serialization-length))
   ;; planning_msgs/WarningStatus _warning_status
     (send _warning_status :deserialize buf ptr-) (incf ptr- (send _warning_status :serialization-length))
   ;; planning_msgs/SolverStatus _solver_status
     (send _solver_status :deserialize buf ptr-) (incf ptr- (send _solver_status :serialization-length))
   ;; planning_msgs/SteerModeEnum _steer_mode
     (send _steer_mode :deserialize buf ptr-) (incf ptr- (send _steer_mode :serialization-length))
   ;; bool _hdmap_valid
     (setq _hdmap_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planning_msgs::PlanStatus :md5sum-) "9039051ad1575036267000f9cb364b68")
(setf (get planning_msgs::PlanStatus :datatype-) "planning_msgs/PlanStatus")
(setf (get planning_msgs::PlanStatus :definition-)
      "uint8 ALGORITHM_STATUS = 1
uint8 WARNING_STATUS = 2
uint8 SOLVER_STATUS = 4
uint8 STEER_MODE = 8
uint8 available
planning_msgs/PlanAlgorithmStatus algorithm_status
planning_msgs/WarningStatus warning_status
planning_msgs/SolverStatus solver_status
planning_msgs/SteerModeEnum steer_mode
bool hdmap_valid

================================================================================
MSG: planning_msgs/PlanAlgorithmStatus
uint64 NORMAL_ROAD = 1
uint64 INTERSECT = 2
uint64 PARKING_SVP = 4
uint64 PARKING_LVP = 8
uint64 PARKING_APA = 16
uint64 REMOTE_CONTROL = 32
uint64 LANE_CHANGE_LEFT = 1
uint64 LANE_CHANGE_RIGHT = 2
uint64 LANE_BORROW_LEFT = 4
uint64 LANE_BORROW_RIGHT = 8
uint64 INTERSECT_GO_STRAIGHT = 16
uint64 INTERSECT_TURN_LEFT = 32
uint64 INTERSECT_TURN_RIGHT = 64
uint64 INTERSECT_U_TURN = 128
uint64 LANE_BORROW_IN_NON_MOTORIZED_LANE = 256
uint64 LANE_KEEP = 512
uint64 PULL_OVER = 1024
uint64 OPEN_SPACE_PASS = 2048
uint64 PARKING = 4096
uint64 SEARCH = 1
uint64 CRUISE = 2
uint64 APA = 4
uint64 APOA = 8
uint64 WAIT = 16
uint64 LANE_CHANGE_WAITING = 1
uint64 LANE_CHANGEING = 2
uint64 LANE_CHANGE_BACK = 4
uint64 LANE_BORROWING = 8
uint64 LANE_BORROW_BACK = 16
uint64 LANE_BORROW_RETURN = 32
uint64 LANE_BORROW_SUSPEND = 64
uint64 OPEN_SPACE_STANDBY = 128
uint64 OPEN_SPACE_PLANNING = 256
uint64 OPEN_SPACE_RUNNING = 512
uint64 OPEN_SPACE_FALLBACK = 1024
uint64 LANE_KEEPING = 2048
uint64 SIDE_PASS = 4096
uint64 RUNNING = 1
uint64 SUCCEEDED = 2
uint64 FAILED = 4
uint64 PAUSED = 8
uint64 NONE = 1
uint64 NO_FRONT_VIEW = 2
uint64 NO_SIDE_VIEW = 4
uint64 SIDE_VIEW_BACK = 8
uint64 FRONT_VIEW_BACK = 16
uint64 BACK_CNT_BELOW_THRESHOLD = 32
uint64 EXCEED_MOVE_THRESHOLD = 64
uint64 NOT_OPTIMAL = 128
uint64 INVALID_GAP_SELECTION = 256
uint64 INVALID_REQUEST = 512
uint64 CANCELED = 1024
uint64 FRONT_VIEW_FORBID = 2048
uint64 SIDE_VIEW_FORBID = 4096
uint64 EXCEED_GAP_REMOTE_CAR = 1024
uint64 NOT_EXCEED_GAP_PROXIMAL_CAR = 2048
uint64 NO_VALID_GAP = 4096
uint64 TARGET_LANE_INVALID = 8192
uint64 MAP_REQUEST = 2
uint64 ALC_REQUEST = 4
uint64 ALC_BY_MERGE_REQUEST = 8
uint64 ALC_BY_YPOINT_REQUEST = 16
uint64 INT_REQUEST = 32
uint64 LB_REQUEST = 64
uint64 scene
uint64 action
uint64 action_status
uint64 function
uint64 function_status
uint64 Reason
uint64 source

================================================================================
MSG: planning_msgs/WarningStatus
uint64 NARROW_ROAD = 1
uint64 OVERTAKE_CUTIN = 2
uint64 OVERTAKE_WISDOM_DODGE = 4
uint64 LANE_CHANGE_REMIND_LANE_END = 8
uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16
uint64 LANE_CHANGE_REMIND_ACCIDENT = 32
uint64 DECEL_WARNING = 64
uint64 PEDESTRIAN_WARNING = 128
uint64 LANE_CHANGE_START = 256
uint64 LANE_CHANGE_STOP = 512
uint64 FROINT_COLLISION = 1024
uint64 REAR_COLLISION = 2048
uint64 LANE_DEPARTURE = 4096
uint64 PARKING_LOT_UNAVALIABLE = 8192
uint64 AVOID_IN_LANE = 16384
uint64 warning_status

================================================================================
MSG: planning_msgs/SolverStatus
uint8[] lat_motion_status
uint8[] lat_solver_status
uint8[] lon_motion_status
uint8[] lon_solver_status

================================================================================
MSG: planning_msgs/SteerModeEnum
uint8 NORMAL = 0
uint8 TWIST = 1
uint8 TRANSLATION = 2
uint8 value

")



(provide :planning_msgs/PlanStatus "9039051ad1575036267000f9cb364b68")


