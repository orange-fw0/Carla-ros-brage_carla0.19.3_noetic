; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude APAExtra.msg.html

(cl:defclass <APAExtra> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0)
   (parkin_info
    :reader parkin_info
    :initarg :parkin_info
    :type planning_msgs-msg:ParkInInfo
    :initform (cl:make-instance 'planning_msgs-msg:ParkInInfo))
   (parkout_info
    :reader parkout_info
    :initarg :parkout_info
    :type planning_msgs-msg:ParkOutInfo
    :initform (cl:make-instance 'planning_msgs-msg:ParkOutInfo))
   (rpa_straight_info
    :reader rpa_straight_info
    :initarg :rpa_straight_info
    :type planning_msgs-msg:RpaStraightInfo
    :initform (cl:make-instance 'planning_msgs-msg:RpaStraightInfo))
   (slot_info
    :reader slot_info
    :initarg :slot_info
    :type planning_msgs-msg:ParkingSlotInfo
    :initform (cl:make-instance 'planning_msgs-msg:ParkingSlotInfo))
   (traj_info
    :reader traj_info
    :initarg :traj_info
    :type planning_msgs-msg:APATrajectoryInfo
    :initform (cl:make-instance 'planning_msgs-msg:APATrajectoryInfo))
   (control_cmd
    :reader control_cmd
    :initarg :control_cmd
    :type planning_msgs-msg:APAControlCommand
    :initform (cl:make-instance 'planning_msgs-msg:APAControlCommand))
   (debug_info
    :reader debug_info
    :initarg :debug_info
    :type planning_msgs-msg:APADebugInfo
    :initform (cl:make-instance 'planning_msgs-msg:APADebugInfo))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass APAExtra (<APAExtra>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <APAExtra>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'APAExtra)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<APAExtra> is deprecated: use planning_msgs-msg:APAExtra instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'parkin_info-val :lambda-list '(m))
(cl:defmethod parkin_info-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:parkin_info-val is deprecated.  Use planning_msgs-msg:parkin_info instead.")
  (parkin_info m))

(cl:ensure-generic-function 'parkout_info-val :lambda-list '(m))
(cl:defmethod parkout_info-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:parkout_info-val is deprecated.  Use planning_msgs-msg:parkout_info instead.")
  (parkout_info m))

(cl:ensure-generic-function 'rpa_straight_info-val :lambda-list '(m))
(cl:defmethod rpa_straight_info-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:rpa_straight_info-val is deprecated.  Use planning_msgs-msg:rpa_straight_info instead.")
  (rpa_straight_info m))

(cl:ensure-generic-function 'slot_info-val :lambda-list '(m))
(cl:defmethod slot_info-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:slot_info-val is deprecated.  Use planning_msgs-msg:slot_info instead.")
  (slot_info m))

(cl:ensure-generic-function 'traj_info-val :lambda-list '(m))
(cl:defmethod traj_info-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:traj_info-val is deprecated.  Use planning_msgs-msg:traj_info instead.")
  (traj_info m))

(cl:ensure-generic-function 'control_cmd-val :lambda-list '(m))
(cl:defmethod control_cmd-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:control_cmd-val is deprecated.  Use planning_msgs-msg:control_cmd instead.")
  (control_cmd m))

(cl:ensure-generic-function 'debug_info-val :lambda-list '(m))
(cl:defmethod debug_info-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:debug_info-val is deprecated.  Use planning_msgs-msg:debug_info instead.")
  (debug_info m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <APAExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved-val is deprecated.  Use planning_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<APAExtra>)))
    "Constants for message type '<APAExtra>"
  '((:PARKIN_INFO . 1)
    (:PARKOUT_INFO . 2)
    (:RPA_STRAIGHT_INFO . 4)
    (:SLOT_INFO . 8)
    (:TRAJ_INFO . 16)
    (:CONTROL_CMD . 32)
    (:DEBUG_INFO . 64))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'APAExtra)))
    "Constants for message type 'APAExtra"
  '((:PARKIN_INFO . 1)
    (:PARKOUT_INFO . 2)
    (:RPA_STRAIGHT_INFO . 4)
    (:SLOT_INFO . 8)
    (:TRAJ_INFO . 16)
    (:CONTROL_CMD . 32)
    (:DEBUG_INFO . 64))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <APAExtra>) ostream)
  "Serializes a message object of type '<APAExtra>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parkin_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parkout_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpa_straight_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slot_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traj_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'debug_info) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <APAExtra>) istream)
  "Deserializes a message object of type '<APAExtra>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parkin_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parkout_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpa_straight_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slot_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traj_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'debug_info) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<APAExtra>)))
  "Returns string type for a message object of type '<APAExtra>"
  "planning_msgs/APAExtra")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'APAExtra)))
  "Returns string type for a message object of type 'APAExtra"
  "planning_msgs/APAExtra")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<APAExtra>)))
  "Returns md5sum for a message object of type '<APAExtra>"
  "0246eeaa7e2645ef1434b68deda2929e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'APAExtra)))
  "Returns md5sum for a message object of type 'APAExtra"
  "0246eeaa7e2645ef1434b68deda2929e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<APAExtra>)))
  "Returns full string definition for message of type '<APAExtra>"
  (cl:format cl:nil "uint8 PARKIN_INFO = 1~%uint8 PARKOUT_INFO = 2~%uint8 RPA_STRAIGHT_INFO = 4~%uint8 SLOT_INFO = 8~%uint8 TRAJ_INFO = 16~%uint8 CONTROL_CMD = 32~%uint8 DEBUG_INFO = 64~%uint64 available~%planning_msgs/ParkInInfo parkin_info~%planning_msgs/ParkOutInfo parkout_info~%planning_msgs/RpaStraightInfo rpa_straight_info~%planning_msgs/ParkingSlotInfo slot_info~%planning_msgs/APATrajectoryInfo traj_info~%planning_msgs/APAControlCommand control_cmd~%planning_msgs/APADebugInfo debug_info~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkInInfo~%uint32 parkin_direction~%planning_msgs/WlcStatus wlc_status~%string reserved~%~%================================================================================~%MSG: planning_msgs/WlcStatus~%uint32 NO_WLC = 0~%uint32 APPROACHING = 1~%uint32 APPROACHED = 2~%uint32 value~%~%================================================================================~%MSG: planning_msgs/ParkOutInfo~%uint32 available_direction~%uint32 recommend_direction~%planning_msgs/ParkOutDisableReason disable_reason~%bool reached_take_over_point~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkOutDisableReason~%uint32 NONE = 0~%uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1~%uint32 DISABLED_NON_PARALLEL = 2~%uint32 NOT_IN_PARKING_SLOT = 3~%uint32 PARKOUT_NOT_READY = 4~%uint32 SLOT_TOO_SMALL = 5~%uint32 value~%~%================================================================================~%MSG: planning_msgs/RpaStraightInfo~%float32 forward_distance~%float32 backward_distance~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkingSlotInfo~%geometry_msgs/Point[] optimized_corners~%planning_msgs/ParkingSlotType slot_type~%bool has_wheel_stopper~%float32 ego_slot_iou~%float32 front_wheel_to_stopper~%float32 front_wheel_to_opening~%float32 front_wheel_to_bottom~%float32 rear_wheel_to_stopper~%float32 rear_wheel_to_opening~%float32 rear_wheel_to_bottom~%string reserved~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/ParkingSlotType~%uint8 UNKNOWN = 0~%uint8 PERPENDICULAR = 1~%uint8 PARALLEL = 2~%uint8 OBLIQUE = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APATrajectoryInfo~%planning_msgs/APATrajectoryExtendType extend_type~%bool at_last_segment~%float32 remain_safe_distance~%float32 first_remain_distance~%float32 second_remain_distance~%float32 second_target_v~%planning_msgs/Gear first_gear~%planning_msgs/Gear second_gear~%uint32 second_start_index~%string reserved~%~%================================================================================~%MSG: planning_msgs/APATrajectoryExtendType~%uint8 UNEXTENDED = 0~%uint8 STRAIGHT = 1~%uint8 CIRCULAR_CURVE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APAControlCommand~%planning_msgs/APABrakeMode brake_mode~%planning_msgs/APASteeringMode steering_mode~%uint8 special_scenario_type~%bool use_second_traj_sv~%string reserved~%~%================================================================================~%MSG: planning_msgs/APABrakeMode~%uint8 DEFAULT = 0~%uint8 HARD_BRAKE = 1~%uint8 GENTLE_BRAKE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APASteeringMode~%uint8 NONE = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APADebugInfo~%planning_msgs/MultiCircleFootprintModel mc_footprint_model~%string reserved~%~%================================================================================~%MSG: planning_msgs/MultiCircleFootprintModel~%planning_msgs/Circle[] circles~%~%================================================================================~%MSG: planning_msgs/Circle~%float64 x~%float64 y~%float64 z~%float64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'APAExtra)))
  "Returns full string definition for message of type 'APAExtra"
  (cl:format cl:nil "uint8 PARKIN_INFO = 1~%uint8 PARKOUT_INFO = 2~%uint8 RPA_STRAIGHT_INFO = 4~%uint8 SLOT_INFO = 8~%uint8 TRAJ_INFO = 16~%uint8 CONTROL_CMD = 32~%uint8 DEBUG_INFO = 64~%uint64 available~%planning_msgs/ParkInInfo parkin_info~%planning_msgs/ParkOutInfo parkout_info~%planning_msgs/RpaStraightInfo rpa_straight_info~%planning_msgs/ParkingSlotInfo slot_info~%planning_msgs/APATrajectoryInfo traj_info~%planning_msgs/APAControlCommand control_cmd~%planning_msgs/APADebugInfo debug_info~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkInInfo~%uint32 parkin_direction~%planning_msgs/WlcStatus wlc_status~%string reserved~%~%================================================================================~%MSG: planning_msgs/WlcStatus~%uint32 NO_WLC = 0~%uint32 APPROACHING = 1~%uint32 APPROACHED = 2~%uint32 value~%~%================================================================================~%MSG: planning_msgs/ParkOutInfo~%uint32 available_direction~%uint32 recommend_direction~%planning_msgs/ParkOutDisableReason disable_reason~%bool reached_take_over_point~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkOutDisableReason~%uint32 NONE = 0~%uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1~%uint32 DISABLED_NON_PARALLEL = 2~%uint32 NOT_IN_PARKING_SLOT = 3~%uint32 PARKOUT_NOT_READY = 4~%uint32 SLOT_TOO_SMALL = 5~%uint32 value~%~%================================================================================~%MSG: planning_msgs/RpaStraightInfo~%float32 forward_distance~%float32 backward_distance~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkingSlotInfo~%geometry_msgs/Point[] optimized_corners~%planning_msgs/ParkingSlotType slot_type~%bool has_wheel_stopper~%float32 ego_slot_iou~%float32 front_wheel_to_stopper~%float32 front_wheel_to_opening~%float32 front_wheel_to_bottom~%float32 rear_wheel_to_stopper~%float32 rear_wheel_to_opening~%float32 rear_wheel_to_bottom~%string reserved~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/ParkingSlotType~%uint8 UNKNOWN = 0~%uint8 PERPENDICULAR = 1~%uint8 PARALLEL = 2~%uint8 OBLIQUE = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APATrajectoryInfo~%planning_msgs/APATrajectoryExtendType extend_type~%bool at_last_segment~%float32 remain_safe_distance~%float32 first_remain_distance~%float32 second_remain_distance~%float32 second_target_v~%planning_msgs/Gear first_gear~%planning_msgs/Gear second_gear~%uint32 second_start_index~%string reserved~%~%================================================================================~%MSG: planning_msgs/APATrajectoryExtendType~%uint8 UNEXTENDED = 0~%uint8 STRAIGHT = 1~%uint8 CIRCULAR_CURVE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APAControlCommand~%planning_msgs/APABrakeMode brake_mode~%planning_msgs/APASteeringMode steering_mode~%uint8 special_scenario_type~%bool use_second_traj_sv~%string reserved~%~%================================================================================~%MSG: planning_msgs/APABrakeMode~%uint8 DEFAULT = 0~%uint8 HARD_BRAKE = 1~%uint8 GENTLE_BRAKE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APASteeringMode~%uint8 NONE = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APADebugInfo~%planning_msgs/MultiCircleFootprintModel mc_footprint_model~%string reserved~%~%================================================================================~%MSG: planning_msgs/MultiCircleFootprintModel~%planning_msgs/Circle[] circles~%~%================================================================================~%MSG: planning_msgs/Circle~%float64 x~%float64 y~%float64 z~%float64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <APAExtra>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parkin_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parkout_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpa_straight_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slot_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traj_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'debug_info))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <APAExtra>))
  "Converts a ROS message object to a list"
  (cl:list 'APAExtra
    (cl:cons ':available (available msg))
    (cl:cons ':parkin_info (parkin_info msg))
    (cl:cons ':parkout_info (parkout_info msg))
    (cl:cons ':rpa_straight_info (rpa_straight_info msg))
    (cl:cons ':slot_info (slot_info msg))
    (cl:cons ':traj_info (traj_info msg))
    (cl:cons ':control_cmd (control_cmd msg))
    (cl:cons ':debug_info (debug_info msg))
    (cl:cons ':reserved (reserved msg))
))
