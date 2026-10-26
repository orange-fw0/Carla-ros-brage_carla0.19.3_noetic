;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::WarningStatus)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'WarningStatus (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::WARNINGSTATUS")
  (make-package "PLANNING_MSGS::WARNINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude WarningStatus.msg.html


(intern "*NARROW_ROAD*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*NARROW_ROAD* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*NARROW_ROAD* 1)
(intern "*OVERTAKE_CUTIN*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*OVERTAKE_CUTIN* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*OVERTAKE_CUTIN* 2)
(intern "*OVERTAKE_WISDOM_DODGE*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*OVERTAKE_WISDOM_DODGE* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*OVERTAKE_WISDOM_DODGE* 4)
(intern "*LANE_CHANGE_REMIND_LANE_END*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*LANE_CHANGE_REMIND_LANE_END* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*LANE_CHANGE_REMIND_LANE_END* 8)
(intern "*LANE_CHANGE_REMIND_CONSTRUCTION*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*LANE_CHANGE_REMIND_CONSTRUCTION* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*LANE_CHANGE_REMIND_CONSTRUCTION* 16)
(intern "*LANE_CHANGE_REMIND_ACCIDENT*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*LANE_CHANGE_REMIND_ACCIDENT* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*LANE_CHANGE_REMIND_ACCIDENT* 32)
(intern "*DECEL_WARNING*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*DECEL_WARNING* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*DECEL_WARNING* 64)
(intern "*PEDESTRIAN_WARNING*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*PEDESTRIAN_WARNING* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*PEDESTRIAN_WARNING* 128)
(intern "*LANE_CHANGE_START*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*LANE_CHANGE_START* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*LANE_CHANGE_START* 256)
(intern "*LANE_CHANGE_STOP*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*LANE_CHANGE_STOP* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*LANE_CHANGE_STOP* 512)
(intern "*FROINT_COLLISION*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*FROINT_COLLISION* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*FROINT_COLLISION* 1024)
(intern "*REAR_COLLISION*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*REAR_COLLISION* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*REAR_COLLISION* 2048)
(intern "*LANE_DEPARTURE*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*LANE_DEPARTURE* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*LANE_DEPARTURE* 4096)
(intern "*PARKING_LOT_UNAVALIABLE*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*PARKING_LOT_UNAVALIABLE* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*PARKING_LOT_UNAVALIABLE* 8192)
(intern "*AVOID_IN_LANE*" (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(shadow '*AVOID_IN_LANE* (find-package "PLANNING_MSGS::WARNINGSTATUS"))
(defconstant planning_msgs::WarningStatus::*AVOID_IN_LANE* 16384)

(defun planning_msgs::WarningStatus-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::WarningStatus::*NARROW_ROAD*)
        ((= const 2) 'planning_msgs::WarningStatus::*OVERTAKE_CUTIN*)
        ((= const 4) 'planning_msgs::WarningStatus::*OVERTAKE_WISDOM_DODGE*)
        ((= const 8) 'planning_msgs::WarningStatus::*LANE_CHANGE_REMIND_LANE_END*)
        ((= const 16) 'planning_msgs::WarningStatus::*LANE_CHANGE_REMIND_CONSTRUCTION*)
        ((= const 32) 'planning_msgs::WarningStatus::*LANE_CHANGE_REMIND_ACCIDENT*)
        ((= const 64) 'planning_msgs::WarningStatus::*DECEL_WARNING*)
        ((= const 128) 'planning_msgs::WarningStatus::*PEDESTRIAN_WARNING*)
        ((= const 256) 'planning_msgs::WarningStatus::*LANE_CHANGE_START*)
        ((= const 512) 'planning_msgs::WarningStatus::*LANE_CHANGE_STOP*)
        ((= const 1024) 'planning_msgs::WarningStatus::*FROINT_COLLISION*)
        ((= const 2048) 'planning_msgs::WarningStatus::*REAR_COLLISION*)
        ((= const 4096) 'planning_msgs::WarningStatus::*LANE_DEPARTURE*)
        ((= const 8192) 'planning_msgs::WarningStatus::*PARKING_LOT_UNAVALIABLE*)
        ((= const 16384) 'planning_msgs::WarningStatus::*AVOID_IN_LANE*)
        (t nil)))

(defclass planning_msgs::WarningStatus
  :super ros::object
  :slots (_warning_status ))

(defmethod planning_msgs::WarningStatus
  (:init
   (&key
    ((:warning_status __warning_status) 0)
    )
   (send-super :init)
   (setq _warning_status (round __warning_status))
   self)
  (:warning_status
   (&optional __warning_status)
   (if __warning_status (setq _warning_status __warning_status)) _warning_status)
  (:serialization-length
   ()
   (+
    ;; uint64 _warning_status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _warning_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _warning_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _warning_status) (= (length (_warning_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_warning_status . bv) 0) 0) s)
              (write-long (ash (elt (_warning_status . bv) 1) -1) s))
             ((and (class _warning_status) (= (length (_warning_status . bv)) 1)) ;; big1
              (write-long (elt (_warning_status . bv) 0) s)
              (write-long (if (>= _warning_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _warning_status s)(write-long (if (>= _warning_status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _warning_status
     
#+(or :alpha :irix6 :x86_64)
      (setf _warning_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _warning_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get planning_msgs::WarningStatus :md5sum-) "d41f0a68994d54fc799ff00829b8e88d")
(setf (get planning_msgs::WarningStatus :datatype-) "planning_msgs/WarningStatus")
(setf (get planning_msgs::WarningStatus :definition-)
      "uint64 NARROW_ROAD = 1
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

")



(provide :planning_msgs/WarningStatus "d41f0a68994d54fc799ff00829b8e88d")


