;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::APATrajectoryInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'APATrajectoryInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::APATRAJECTORYINFO")
  (make-package "PLANNING_MSGS::APATRAJECTORYINFO"))

(in-package "ROS")
;;//! \htmlinclude APATrajectoryInfo.msg.html


(defclass planning_msgs::APATrajectoryInfo
  :super ros::object
  :slots (_extend_type _at_last_segment _remain_safe_distance _first_remain_distance _second_remain_distance _second_target_v _first_gear _second_gear _second_start_index _reserved ))

(defmethod planning_msgs::APATrajectoryInfo
  (:init
   (&key
    ((:extend_type __extend_type) (instance planning_msgs::APATrajectoryExtendType :init))
    ((:at_last_segment __at_last_segment) nil)
    ((:remain_safe_distance __remain_safe_distance) 0.0)
    ((:first_remain_distance __first_remain_distance) 0.0)
    ((:second_remain_distance __second_remain_distance) 0.0)
    ((:second_target_v __second_target_v) 0.0)
    ((:first_gear __first_gear) (instance planning_msgs::Gear :init))
    ((:second_gear __second_gear) (instance planning_msgs::Gear :init))
    ((:second_start_index __second_start_index) 0)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _extend_type __extend_type)
   (setq _at_last_segment __at_last_segment)
   (setq _remain_safe_distance (float __remain_safe_distance))
   (setq _first_remain_distance (float __first_remain_distance))
   (setq _second_remain_distance (float __second_remain_distance))
   (setq _second_target_v (float __second_target_v))
   (setq _first_gear __first_gear)
   (setq _second_gear __second_gear)
   (setq _second_start_index (round __second_start_index))
   (setq _reserved (string __reserved))
   self)
  (:extend_type
   (&rest __extend_type)
   (if (keywordp (car __extend_type))
       (send* _extend_type __extend_type)
     (progn
       (if __extend_type (setq _extend_type (car __extend_type)))
       _extend_type)))
  (:at_last_segment
   (&optional (__at_last_segment :null))
   (if (not (eq __at_last_segment :null)) (setq _at_last_segment __at_last_segment)) _at_last_segment)
  (:remain_safe_distance
   (&optional __remain_safe_distance)
   (if __remain_safe_distance (setq _remain_safe_distance __remain_safe_distance)) _remain_safe_distance)
  (:first_remain_distance
   (&optional __first_remain_distance)
   (if __first_remain_distance (setq _first_remain_distance __first_remain_distance)) _first_remain_distance)
  (:second_remain_distance
   (&optional __second_remain_distance)
   (if __second_remain_distance (setq _second_remain_distance __second_remain_distance)) _second_remain_distance)
  (:second_target_v
   (&optional __second_target_v)
   (if __second_target_v (setq _second_target_v __second_target_v)) _second_target_v)
  (:first_gear
   (&rest __first_gear)
   (if (keywordp (car __first_gear))
       (send* _first_gear __first_gear)
     (progn
       (if __first_gear (setq _first_gear (car __first_gear)))
       _first_gear)))
  (:second_gear
   (&rest __second_gear)
   (if (keywordp (car __second_gear))
       (send* _second_gear __second_gear)
     (progn
       (if __second_gear (setq _second_gear (car __second_gear)))
       _second_gear)))
  (:second_start_index
   (&optional __second_start_index)
   (if __second_start_index (setq _second_start_index __second_start_index)) _second_start_index)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/APATrajectoryExtendType _extend_type
    (send _extend_type :serialization-length)
    ;; bool _at_last_segment
    1
    ;; float32 _remain_safe_distance
    4
    ;; float32 _first_remain_distance
    4
    ;; float32 _second_remain_distance
    4
    ;; float32 _second_target_v
    4
    ;; planning_msgs/Gear _first_gear
    (send _first_gear :serialization-length)
    ;; planning_msgs/Gear _second_gear
    (send _second_gear :serialization-length)
    ;; uint32 _second_start_index
    4
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/APATrajectoryExtendType _extend_type
       (send _extend_type :serialize s)
     ;; bool _at_last_segment
       (if _at_last_segment (write-byte -1 s) (write-byte 0 s))
     ;; float32 _remain_safe_distance
       (sys::poke _remain_safe_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _first_remain_distance
       (sys::poke _first_remain_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _second_remain_distance
       (sys::poke _second_remain_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _second_target_v
       (sys::poke _second_target_v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; planning_msgs/Gear _first_gear
       (send _first_gear :serialize s)
     ;; planning_msgs/Gear _second_gear
       (send _second_gear :serialize s)
     ;; uint32 _second_start_index
       (write-long _second_start_index s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/APATrajectoryExtendType _extend_type
     (send _extend_type :deserialize buf ptr-) (incf ptr- (send _extend_type :serialization-length))
   ;; bool _at_last_segment
     (setq _at_last_segment (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _remain_safe_distance
     (setq _remain_safe_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _first_remain_distance
     (setq _first_remain_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _second_remain_distance
     (setq _second_remain_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _second_target_v
     (setq _second_target_v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; planning_msgs/Gear _first_gear
     (send _first_gear :deserialize buf ptr-) (incf ptr- (send _first_gear :serialization-length))
   ;; planning_msgs/Gear _second_gear
     (send _second_gear :deserialize buf ptr-) (incf ptr- (send _second_gear :serialization-length))
   ;; uint32 _second_start_index
     (setq _second_start_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::APATrajectoryInfo :md5sum-) "da508b5fa999bcd13fcd323ade31d18a")
(setf (get planning_msgs::APATrajectoryInfo :datatype-) "planning_msgs/APATrajectoryInfo")
(setf (get planning_msgs::APATrajectoryInfo :definition-)
      "planning_msgs/APATrajectoryExtendType extend_type
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

")



(provide :planning_msgs/APATrajectoryInfo "da508b5fa999bcd13fcd323ade31d18a")


