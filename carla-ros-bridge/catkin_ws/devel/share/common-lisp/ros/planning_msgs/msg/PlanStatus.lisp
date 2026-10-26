; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude PlanStatus.msg.html

(cl:defclass <PlanStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (algorithm_status
    :reader algorithm_status
    :initarg :algorithm_status
    :type planning_msgs-msg:PlanAlgorithmStatus
    :initform (cl:make-instance 'planning_msgs-msg:PlanAlgorithmStatus))
   (warning_status
    :reader warning_status
    :initarg :warning_status
    :type planning_msgs-msg:WarningStatus
    :initform (cl:make-instance 'planning_msgs-msg:WarningStatus))
   (solver_status
    :reader solver_status
    :initarg :solver_status
    :type planning_msgs-msg:SolverStatus
    :initform (cl:make-instance 'planning_msgs-msg:SolverStatus))
   (steer_mode
    :reader steer_mode
    :initarg :steer_mode
    :type planning_msgs-msg:SteerModeEnum
    :initform (cl:make-instance 'planning_msgs-msg:SteerModeEnum))
   (hdmap_valid
    :reader hdmap_valid
    :initarg :hdmap_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlanStatus (<PlanStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<PlanStatus> is deprecated: use planning_msgs-msg:PlanStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <PlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'algorithm_status-val :lambda-list '(m))
(cl:defmethod algorithm_status-val ((m <PlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:algorithm_status-val is deprecated.  Use planning_msgs-msg:algorithm_status instead.")
  (algorithm_status m))

(cl:ensure-generic-function 'warning_status-val :lambda-list '(m))
(cl:defmethod warning_status-val ((m <PlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:warning_status-val is deprecated.  Use planning_msgs-msg:warning_status instead.")
  (warning_status m))

(cl:ensure-generic-function 'solver_status-val :lambda-list '(m))
(cl:defmethod solver_status-val ((m <PlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:solver_status-val is deprecated.  Use planning_msgs-msg:solver_status instead.")
  (solver_status m))

(cl:ensure-generic-function 'steer_mode-val :lambda-list '(m))
(cl:defmethod steer_mode-val ((m <PlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:steer_mode-val is deprecated.  Use planning_msgs-msg:steer_mode instead.")
  (steer_mode m))

(cl:ensure-generic-function 'hdmap_valid-val :lambda-list '(m))
(cl:defmethod hdmap_valid-val ((m <PlanStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:hdmap_valid-val is deprecated.  Use planning_msgs-msg:hdmap_valid instead.")
  (hdmap_valid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlanStatus>)))
    "Constants for message type '<PlanStatus>"
  '((:ALGORITHM_STATUS . 1)
    (:WARNING_STATUS . 2)
    (:SOLVER_STATUS . 4)
    (:STEER_MODE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlanStatus)))
    "Constants for message type 'PlanStatus"
  '((:ALGORITHM_STATUS . 1)
    (:WARNING_STATUS . 2)
    (:SOLVER_STATUS . 4)
    (:STEER_MODE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanStatus>) ostream)
  "Serializes a message object of type '<PlanStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'algorithm_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'warning_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'solver_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steer_mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hdmap_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanStatus>) istream)
  "Deserializes a message object of type '<PlanStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'algorithm_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'warning_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'solver_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steer_mode) istream)
    (cl:setf (cl:slot-value msg 'hdmap_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanStatus>)))
  "Returns string type for a message object of type '<PlanStatus>"
  "planning_msgs/PlanStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanStatus)))
  "Returns string type for a message object of type 'PlanStatus"
  "planning_msgs/PlanStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanStatus>)))
  "Returns md5sum for a message object of type '<PlanStatus>"
  "9039051ad1575036267000f9cb364b68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanStatus)))
  "Returns md5sum for a message object of type 'PlanStatus"
  "9039051ad1575036267000f9cb364b68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanStatus>)))
  "Returns full string definition for message of type '<PlanStatus>"
  (cl:format cl:nil "uint8 ALGORITHM_STATUS = 1~%uint8 WARNING_STATUS = 2~%uint8 SOLVER_STATUS = 4~%uint8 STEER_MODE = 8~%uint8 available~%planning_msgs/PlanAlgorithmStatus algorithm_status~%planning_msgs/WarningStatus warning_status~%planning_msgs/SolverStatus solver_status~%planning_msgs/SteerModeEnum steer_mode~%bool hdmap_valid~%~%================================================================================~%MSG: planning_msgs/PlanAlgorithmStatus~%uint64 NORMAL_ROAD = 1~%uint64 INTERSECT = 2~%uint64 PARKING_SVP = 4~%uint64 PARKING_LVP = 8~%uint64 PARKING_APA = 16~%uint64 REMOTE_CONTROL = 32~%uint64 LANE_CHANGE_LEFT = 1~%uint64 LANE_CHANGE_RIGHT = 2~%uint64 LANE_BORROW_LEFT = 4~%uint64 LANE_BORROW_RIGHT = 8~%uint64 INTERSECT_GO_STRAIGHT = 16~%uint64 INTERSECT_TURN_LEFT = 32~%uint64 INTERSECT_TURN_RIGHT = 64~%uint64 INTERSECT_U_TURN = 128~%uint64 LANE_BORROW_IN_NON_MOTORIZED_LANE = 256~%uint64 LANE_KEEP = 512~%uint64 PULL_OVER = 1024~%uint64 OPEN_SPACE_PASS = 2048~%uint64 PARKING = 4096~%uint64 SEARCH = 1~%uint64 CRUISE = 2~%uint64 APA = 4~%uint64 APOA = 8~%uint64 WAIT = 16~%uint64 LANE_CHANGE_WAITING = 1~%uint64 LANE_CHANGEING = 2~%uint64 LANE_CHANGE_BACK = 4~%uint64 LANE_BORROWING = 8~%uint64 LANE_BORROW_BACK = 16~%uint64 LANE_BORROW_RETURN = 32~%uint64 LANE_BORROW_SUSPEND = 64~%uint64 OPEN_SPACE_STANDBY = 128~%uint64 OPEN_SPACE_PLANNING = 256~%uint64 OPEN_SPACE_RUNNING = 512~%uint64 OPEN_SPACE_FALLBACK = 1024~%uint64 LANE_KEEPING = 2048~%uint64 SIDE_PASS = 4096~%uint64 RUNNING = 1~%uint64 SUCCEEDED = 2~%uint64 FAILED = 4~%uint64 PAUSED = 8~%uint64 NONE = 1~%uint64 NO_FRONT_VIEW = 2~%uint64 NO_SIDE_VIEW = 4~%uint64 SIDE_VIEW_BACK = 8~%uint64 FRONT_VIEW_BACK = 16~%uint64 BACK_CNT_BELOW_THRESHOLD = 32~%uint64 EXCEED_MOVE_THRESHOLD = 64~%uint64 NOT_OPTIMAL = 128~%uint64 INVALID_GAP_SELECTION = 256~%uint64 INVALID_REQUEST = 512~%uint64 CANCELED = 1024~%uint64 FRONT_VIEW_FORBID = 2048~%uint64 SIDE_VIEW_FORBID = 4096~%uint64 EXCEED_GAP_REMOTE_CAR = 1024~%uint64 NOT_EXCEED_GAP_PROXIMAL_CAR = 2048~%uint64 NO_VALID_GAP = 4096~%uint64 TARGET_LANE_INVALID = 8192~%uint64 MAP_REQUEST = 2~%uint64 ALC_REQUEST = 4~%uint64 ALC_BY_MERGE_REQUEST = 8~%uint64 ALC_BY_YPOINT_REQUEST = 16~%uint64 INT_REQUEST = 32~%uint64 LB_REQUEST = 64~%uint64 scene~%uint64 action~%uint64 action_status~%uint64 function~%uint64 function_status~%uint64 Reason~%uint64 source~%~%================================================================================~%MSG: planning_msgs/WarningStatus~%uint64 NARROW_ROAD = 1~%uint64 OVERTAKE_CUTIN = 2~%uint64 OVERTAKE_WISDOM_DODGE = 4~%uint64 LANE_CHANGE_REMIND_LANE_END = 8~%uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16~%uint64 LANE_CHANGE_REMIND_ACCIDENT = 32~%uint64 DECEL_WARNING = 64~%uint64 PEDESTRIAN_WARNING = 128~%uint64 LANE_CHANGE_START = 256~%uint64 LANE_CHANGE_STOP = 512~%uint64 FROINT_COLLISION = 1024~%uint64 REAR_COLLISION = 2048~%uint64 LANE_DEPARTURE = 4096~%uint64 PARKING_LOT_UNAVALIABLE = 8192~%uint64 AVOID_IN_LANE = 16384~%uint64 warning_status~%~%================================================================================~%MSG: planning_msgs/SolverStatus~%uint8[] lat_motion_status~%uint8[] lat_solver_status~%uint8[] lon_motion_status~%uint8[] lon_solver_status~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanStatus)))
  "Returns full string definition for message of type 'PlanStatus"
  (cl:format cl:nil "uint8 ALGORITHM_STATUS = 1~%uint8 WARNING_STATUS = 2~%uint8 SOLVER_STATUS = 4~%uint8 STEER_MODE = 8~%uint8 available~%planning_msgs/PlanAlgorithmStatus algorithm_status~%planning_msgs/WarningStatus warning_status~%planning_msgs/SolverStatus solver_status~%planning_msgs/SteerModeEnum steer_mode~%bool hdmap_valid~%~%================================================================================~%MSG: planning_msgs/PlanAlgorithmStatus~%uint64 NORMAL_ROAD = 1~%uint64 INTERSECT = 2~%uint64 PARKING_SVP = 4~%uint64 PARKING_LVP = 8~%uint64 PARKING_APA = 16~%uint64 REMOTE_CONTROL = 32~%uint64 LANE_CHANGE_LEFT = 1~%uint64 LANE_CHANGE_RIGHT = 2~%uint64 LANE_BORROW_LEFT = 4~%uint64 LANE_BORROW_RIGHT = 8~%uint64 INTERSECT_GO_STRAIGHT = 16~%uint64 INTERSECT_TURN_LEFT = 32~%uint64 INTERSECT_TURN_RIGHT = 64~%uint64 INTERSECT_U_TURN = 128~%uint64 LANE_BORROW_IN_NON_MOTORIZED_LANE = 256~%uint64 LANE_KEEP = 512~%uint64 PULL_OVER = 1024~%uint64 OPEN_SPACE_PASS = 2048~%uint64 PARKING = 4096~%uint64 SEARCH = 1~%uint64 CRUISE = 2~%uint64 APA = 4~%uint64 APOA = 8~%uint64 WAIT = 16~%uint64 LANE_CHANGE_WAITING = 1~%uint64 LANE_CHANGEING = 2~%uint64 LANE_CHANGE_BACK = 4~%uint64 LANE_BORROWING = 8~%uint64 LANE_BORROW_BACK = 16~%uint64 LANE_BORROW_RETURN = 32~%uint64 LANE_BORROW_SUSPEND = 64~%uint64 OPEN_SPACE_STANDBY = 128~%uint64 OPEN_SPACE_PLANNING = 256~%uint64 OPEN_SPACE_RUNNING = 512~%uint64 OPEN_SPACE_FALLBACK = 1024~%uint64 LANE_KEEPING = 2048~%uint64 SIDE_PASS = 4096~%uint64 RUNNING = 1~%uint64 SUCCEEDED = 2~%uint64 FAILED = 4~%uint64 PAUSED = 8~%uint64 NONE = 1~%uint64 NO_FRONT_VIEW = 2~%uint64 NO_SIDE_VIEW = 4~%uint64 SIDE_VIEW_BACK = 8~%uint64 FRONT_VIEW_BACK = 16~%uint64 BACK_CNT_BELOW_THRESHOLD = 32~%uint64 EXCEED_MOVE_THRESHOLD = 64~%uint64 NOT_OPTIMAL = 128~%uint64 INVALID_GAP_SELECTION = 256~%uint64 INVALID_REQUEST = 512~%uint64 CANCELED = 1024~%uint64 FRONT_VIEW_FORBID = 2048~%uint64 SIDE_VIEW_FORBID = 4096~%uint64 EXCEED_GAP_REMOTE_CAR = 1024~%uint64 NOT_EXCEED_GAP_PROXIMAL_CAR = 2048~%uint64 NO_VALID_GAP = 4096~%uint64 TARGET_LANE_INVALID = 8192~%uint64 MAP_REQUEST = 2~%uint64 ALC_REQUEST = 4~%uint64 ALC_BY_MERGE_REQUEST = 8~%uint64 ALC_BY_YPOINT_REQUEST = 16~%uint64 INT_REQUEST = 32~%uint64 LB_REQUEST = 64~%uint64 scene~%uint64 action~%uint64 action_status~%uint64 function~%uint64 function_status~%uint64 Reason~%uint64 source~%~%================================================================================~%MSG: planning_msgs/WarningStatus~%uint64 NARROW_ROAD = 1~%uint64 OVERTAKE_CUTIN = 2~%uint64 OVERTAKE_WISDOM_DODGE = 4~%uint64 LANE_CHANGE_REMIND_LANE_END = 8~%uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16~%uint64 LANE_CHANGE_REMIND_ACCIDENT = 32~%uint64 DECEL_WARNING = 64~%uint64 PEDESTRIAN_WARNING = 128~%uint64 LANE_CHANGE_START = 256~%uint64 LANE_CHANGE_STOP = 512~%uint64 FROINT_COLLISION = 1024~%uint64 REAR_COLLISION = 2048~%uint64 LANE_DEPARTURE = 4096~%uint64 PARKING_LOT_UNAVALIABLE = 8192~%uint64 AVOID_IN_LANE = 16384~%uint64 warning_status~%~%================================================================================~%MSG: planning_msgs/SolverStatus~%uint8[] lat_motion_status~%uint8[] lat_solver_status~%uint8[] lon_motion_status~%uint8[] lon_solver_status~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'algorithm_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'warning_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'solver_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steer_mode))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanStatus
    (cl:cons ':available (available msg))
    (cl:cons ':algorithm_status (algorithm_status msg))
    (cl:cons ':warning_status (warning_status msg))
    (cl:cons ':solver_status (solver_status msg))
    (cl:cons ':steer_mode (steer_mode msg))
    (cl:cons ':hdmap_valid (hdmap_valid msg))
))
