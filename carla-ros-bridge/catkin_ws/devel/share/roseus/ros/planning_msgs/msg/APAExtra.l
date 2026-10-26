;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::APAExtra)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'APAExtra (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::APAEXTRA")
  (make-package "PLANNING_MSGS::APAEXTRA"))

(in-package "ROS")
;;//! \htmlinclude APAExtra.msg.html


(intern "*PARKIN_INFO*" (find-package "PLANNING_MSGS::APAEXTRA"))
(shadow '*PARKIN_INFO* (find-package "PLANNING_MSGS::APAEXTRA"))
(defconstant planning_msgs::APAExtra::*PARKIN_INFO* 1)
(intern "*PARKOUT_INFO*" (find-package "PLANNING_MSGS::APAEXTRA"))
(shadow '*PARKOUT_INFO* (find-package "PLANNING_MSGS::APAEXTRA"))
(defconstant planning_msgs::APAExtra::*PARKOUT_INFO* 2)
(intern "*RPA_STRAIGHT_INFO*" (find-package "PLANNING_MSGS::APAEXTRA"))
(shadow '*RPA_STRAIGHT_INFO* (find-package "PLANNING_MSGS::APAEXTRA"))
(defconstant planning_msgs::APAExtra::*RPA_STRAIGHT_INFO* 4)
(intern "*SLOT_INFO*" (find-package "PLANNING_MSGS::APAEXTRA"))
(shadow '*SLOT_INFO* (find-package "PLANNING_MSGS::APAEXTRA"))
(defconstant planning_msgs::APAExtra::*SLOT_INFO* 8)
(intern "*TRAJ_INFO*" (find-package "PLANNING_MSGS::APAEXTRA"))
(shadow '*TRAJ_INFO* (find-package "PLANNING_MSGS::APAEXTRA"))
(defconstant planning_msgs::APAExtra::*TRAJ_INFO* 16)
(intern "*CONTROL_CMD*" (find-package "PLANNING_MSGS::APAEXTRA"))
(shadow '*CONTROL_CMD* (find-package "PLANNING_MSGS::APAEXTRA"))
(defconstant planning_msgs::APAExtra::*CONTROL_CMD* 32)
(intern "*DEBUG_INFO*" (find-package "PLANNING_MSGS::APAEXTRA"))
(shadow '*DEBUG_INFO* (find-package "PLANNING_MSGS::APAEXTRA"))
(defconstant planning_msgs::APAExtra::*DEBUG_INFO* 64)

(defun planning_msgs::APAExtra-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::APAExtra::*PARKIN_INFO*)
        ((= const 2) 'planning_msgs::APAExtra::*PARKOUT_INFO*)
        ((= const 4) 'planning_msgs::APAExtra::*RPA_STRAIGHT_INFO*)
        ((= const 8) 'planning_msgs::APAExtra::*SLOT_INFO*)
        ((= const 16) 'planning_msgs::APAExtra::*TRAJ_INFO*)
        ((= const 32) 'planning_msgs::APAExtra::*CONTROL_CMD*)
        ((= const 64) 'planning_msgs::APAExtra::*DEBUG_INFO*)
        (t nil)))

(defclass planning_msgs::APAExtra
  :super ros::object
  :slots (_available _parkin_info _parkout_info _rpa_straight_info _slot_info _traj_info _control_cmd _debug_info _reserved ))

(defmethod planning_msgs::APAExtra
  (:init
   (&key
    ((:available __available) 0)
    ((:parkin_info __parkin_info) (instance planning_msgs::ParkInInfo :init))
    ((:parkout_info __parkout_info) (instance planning_msgs::ParkOutInfo :init))
    ((:rpa_straight_info __rpa_straight_info) (instance planning_msgs::RpaStraightInfo :init))
    ((:slot_info __slot_info) (instance planning_msgs::ParkingSlotInfo :init))
    ((:traj_info __traj_info) (instance planning_msgs::APATrajectoryInfo :init))
    ((:control_cmd __control_cmd) (instance planning_msgs::APAControlCommand :init))
    ((:debug_info __debug_info) (instance planning_msgs::APADebugInfo :init))
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _parkin_info __parkin_info)
   (setq _parkout_info __parkout_info)
   (setq _rpa_straight_info __rpa_straight_info)
   (setq _slot_info __slot_info)
   (setq _traj_info __traj_info)
   (setq _control_cmd __control_cmd)
   (setq _debug_info __debug_info)
   (setq _reserved (string __reserved))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:parkin_info
   (&rest __parkin_info)
   (if (keywordp (car __parkin_info))
       (send* _parkin_info __parkin_info)
     (progn
       (if __parkin_info (setq _parkin_info (car __parkin_info)))
       _parkin_info)))
  (:parkout_info
   (&rest __parkout_info)
   (if (keywordp (car __parkout_info))
       (send* _parkout_info __parkout_info)
     (progn
       (if __parkout_info (setq _parkout_info (car __parkout_info)))
       _parkout_info)))
  (:rpa_straight_info
   (&rest __rpa_straight_info)
   (if (keywordp (car __rpa_straight_info))
       (send* _rpa_straight_info __rpa_straight_info)
     (progn
       (if __rpa_straight_info (setq _rpa_straight_info (car __rpa_straight_info)))
       _rpa_straight_info)))
  (:slot_info
   (&rest __slot_info)
   (if (keywordp (car __slot_info))
       (send* _slot_info __slot_info)
     (progn
       (if __slot_info (setq _slot_info (car __slot_info)))
       _slot_info)))
  (:traj_info
   (&rest __traj_info)
   (if (keywordp (car __traj_info))
       (send* _traj_info __traj_info)
     (progn
       (if __traj_info (setq _traj_info (car __traj_info)))
       _traj_info)))
  (:control_cmd
   (&rest __control_cmd)
   (if (keywordp (car __control_cmd))
       (send* _control_cmd __control_cmd)
     (progn
       (if __control_cmd (setq _control_cmd (car __control_cmd)))
       _control_cmd)))
  (:debug_info
   (&rest __debug_info)
   (if (keywordp (car __debug_info))
       (send* _debug_info __debug_info)
     (progn
       (if __debug_info (setq _debug_info (car __debug_info)))
       _debug_info)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint64 _available
    8
    ;; planning_msgs/ParkInInfo _parkin_info
    (send _parkin_info :serialization-length)
    ;; planning_msgs/ParkOutInfo _parkout_info
    (send _parkout_info :serialization-length)
    ;; planning_msgs/RpaStraightInfo _rpa_straight_info
    (send _rpa_straight_info :serialization-length)
    ;; planning_msgs/ParkingSlotInfo _slot_info
    (send _slot_info :serialization-length)
    ;; planning_msgs/APATrajectoryInfo _traj_info
    (send _traj_info :serialization-length)
    ;; planning_msgs/APAControlCommand _control_cmd
    (send _control_cmd :serialization-length)
    ;; planning_msgs/APADebugInfo _debug_info
    (send _debug_info :serialization-length)
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _available
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _available (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _available) (= (length (_available . bv)) 2)) ;; bignum
              (write-long (ash (elt (_available . bv) 0) 0) s)
              (write-long (ash (elt (_available . bv) 1) -1) s))
             ((and (class _available) (= (length (_available . bv)) 1)) ;; big1
              (write-long (elt (_available . bv) 0) s)
              (write-long (if (>= _available 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _available s)(write-long (if (>= _available 0) 0 #xffffffff) s)))
     ;; planning_msgs/ParkInInfo _parkin_info
       (send _parkin_info :serialize s)
     ;; planning_msgs/ParkOutInfo _parkout_info
       (send _parkout_info :serialize s)
     ;; planning_msgs/RpaStraightInfo _rpa_straight_info
       (send _rpa_straight_info :serialize s)
     ;; planning_msgs/ParkingSlotInfo _slot_info
       (send _slot_info :serialize s)
     ;; planning_msgs/APATrajectoryInfo _traj_info
       (send _traj_info :serialize s)
     ;; planning_msgs/APAControlCommand _control_cmd
       (send _control_cmd :serialize s)
     ;; planning_msgs/APADebugInfo _debug_info
       (send _debug_info :serialize s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _available
     
#+(or :alpha :irix6 :x86_64)
      (setf _available (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _available (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; planning_msgs/ParkInInfo _parkin_info
     (send _parkin_info :deserialize buf ptr-) (incf ptr- (send _parkin_info :serialization-length))
   ;; planning_msgs/ParkOutInfo _parkout_info
     (send _parkout_info :deserialize buf ptr-) (incf ptr- (send _parkout_info :serialization-length))
   ;; planning_msgs/RpaStraightInfo _rpa_straight_info
     (send _rpa_straight_info :deserialize buf ptr-) (incf ptr- (send _rpa_straight_info :serialization-length))
   ;; planning_msgs/ParkingSlotInfo _slot_info
     (send _slot_info :deserialize buf ptr-) (incf ptr- (send _slot_info :serialization-length))
   ;; planning_msgs/APATrajectoryInfo _traj_info
     (send _traj_info :deserialize buf ptr-) (incf ptr- (send _traj_info :serialization-length))
   ;; planning_msgs/APAControlCommand _control_cmd
     (send _control_cmd :deserialize buf ptr-) (incf ptr- (send _control_cmd :serialization-length))
   ;; planning_msgs/APADebugInfo _debug_info
     (send _debug_info :deserialize buf ptr-) (incf ptr- (send _debug_info :serialization-length))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::APAExtra :md5sum-) "0246eeaa7e2645ef1434b68deda2929e")
(setf (get planning_msgs::APAExtra :datatype-) "planning_msgs/APAExtra")
(setf (get planning_msgs::APAExtra :definition-)
      "uint8 PARKIN_INFO = 1
uint8 PARKOUT_INFO = 2
uint8 RPA_STRAIGHT_INFO = 4
uint8 SLOT_INFO = 8
uint8 TRAJ_INFO = 16
uint8 CONTROL_CMD = 32
uint8 DEBUG_INFO = 64
uint64 available
planning_msgs/ParkInInfo parkin_info
planning_msgs/ParkOutInfo parkout_info
planning_msgs/RpaStraightInfo rpa_straight_info
planning_msgs/ParkingSlotInfo slot_info
planning_msgs/APATrajectoryInfo traj_info
planning_msgs/APAControlCommand control_cmd
planning_msgs/APADebugInfo debug_info
string reserved

================================================================================
MSG: planning_msgs/ParkInInfo
uint32 parkin_direction
planning_msgs/WlcStatus wlc_status
string reserved

================================================================================
MSG: planning_msgs/WlcStatus
uint32 NO_WLC = 0
uint32 APPROACHING = 1
uint32 APPROACHED = 2
uint32 value

================================================================================
MSG: planning_msgs/ParkOutInfo
uint32 available_direction
uint32 recommend_direction
planning_msgs/ParkOutDisableReason disable_reason
bool reached_take_over_point
string reserved

================================================================================
MSG: planning_msgs/ParkOutDisableReason
uint32 NONE = 0
uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1
uint32 DISABLED_NON_PARALLEL = 2
uint32 NOT_IN_PARKING_SLOT = 3
uint32 PARKOUT_NOT_READY = 4
uint32 SLOT_TOO_SMALL = 5
uint32 value

================================================================================
MSG: planning_msgs/RpaStraightInfo
float32 forward_distance
float32 backward_distance
string reserved

================================================================================
MSG: planning_msgs/ParkingSlotInfo
geometry_msgs/Point[] optimized_corners
planning_msgs/ParkingSlotType slot_type
bool has_wheel_stopper
float32 ego_slot_iou
float32 front_wheel_to_stopper
float32 front_wheel_to_opening
float32 front_wheel_to_bottom
float32 rear_wheel_to_stopper
float32 rear_wheel_to_opening
float32 rear_wheel_to_bottom
string reserved

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: planning_msgs/ParkingSlotType
uint8 UNKNOWN = 0
uint8 PERPENDICULAR = 1
uint8 PARALLEL = 2
uint8 OBLIQUE = 3
uint8 value

================================================================================
MSG: planning_msgs/APATrajectoryInfo
planning_msgs/APATrajectoryExtendType extend_type
bool at_last_segment
float32 remain_safe_distance
float32 first_remain_distance
float32 second_remain_distance
float32 second_target_v
planning_msgs/Gear first_gear
planning_msgs/Gear second_gear
uint32 second_start_index
string reserved

================================================================================
MSG: planning_msgs/APATrajectoryExtendType
uint8 UNEXTENDED = 0
uint8 STRAIGHT = 1
uint8 CIRCULAR_CURVE = 2
uint8 value

================================================================================
MSG: planning_msgs/Gear
uint8 NONE = 0
uint8 PARK = 1
uint8 REVERSE = 2
uint8 NEUTRAL = 3
uint8 DRIVE = 4
uint8 LOW = 5
uint8 value

================================================================================
MSG: planning_msgs/APAControlCommand
planning_msgs/APABrakeMode brake_mode
planning_msgs/APASteeringMode steering_mode
uint8 special_scenario_type
bool use_second_traj_sv
string reserved

================================================================================
MSG: planning_msgs/APABrakeMode
uint8 DEFAULT = 0
uint8 HARD_BRAKE = 1
uint8 GENTLE_BRAKE = 2
uint8 value

================================================================================
MSG: planning_msgs/APASteeringMode
uint8 NONE = 0
uint8 STEERING_RESET = 1
uint8 value

================================================================================
MSG: planning_msgs/APADebugInfo
planning_msgs/MultiCircleFootprintModel mc_footprint_model
string reserved

================================================================================
MSG: planning_msgs/MultiCircleFootprintModel
planning_msgs/Circle[] circles

================================================================================
MSG: planning_msgs/Circle
float64 x
float64 y
float64 z
float64 r

")



(provide :planning_msgs/APAExtra "0246eeaa7e2645ef1434b68deda2929e")


