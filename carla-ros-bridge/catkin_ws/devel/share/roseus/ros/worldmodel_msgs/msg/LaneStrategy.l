;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneStrategy)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneStrategy (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANESTRATEGY")
  (make-package "WORLDMODEL_MSGS::LANESTRATEGY"))

(in-package "ROS")
;;//! \htmlinclude LaneStrategy.msg.html


(intern "*LANE_STRATEGY_DATA*" (find-package "WORLDMODEL_MSGS::LANESTRATEGY"))
(shadow '*LANE_STRATEGY_DATA* (find-package "WORLDMODEL_MSGS::LANESTRATEGY"))
(defconstant worldmodel_msgs::LaneStrategy::*LANE_STRATEGY_DATA* 1)

(defun worldmodel_msgs::LaneStrategy-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::LaneStrategy::*LANE_STRATEGY_DATA*)
        (t nil)))

(defclass worldmodel_msgs::LaneStrategy
  :super ros::object
  :slots (_available _lane_strategy_data ))

(defmethod worldmodel_msgs::LaneStrategy
  (:init
   (&key
    ((:available __available) 0)
    ((:lane_strategy_data __lane_strategy_data) (instance worldmodel_msgs::LaneStrategyData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lane_strategy_data __lane_strategy_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lane_strategy_data
   (&rest __lane_strategy_data)
   (if (keywordp (car __lane_strategy_data))
       (send* _lane_strategy_data __lane_strategy_data)
     (progn
       (if __lane_strategy_data (setq _lane_strategy_data (car __lane_strategy_data)))
       _lane_strategy_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; worldmodel_msgs/LaneStrategyData _lane_strategy_data
    (send _lane_strategy_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; worldmodel_msgs/LaneStrategyData _lane_strategy_data
       (send _lane_strategy_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; worldmodel_msgs/LaneStrategyData _lane_strategy_data
     (send _lane_strategy_data :deserialize buf ptr-) (incf ptr- (send _lane_strategy_data :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::LaneStrategy :md5sum-) "b6b2b82a3f6242a39f4e3afb39f6a2c2")
(setf (get worldmodel_msgs::LaneStrategy :datatype-) "worldmodel_msgs/LaneStrategy")
(setf (get worldmodel_msgs::LaneStrategy :definition-)
      "uint8 LANE_STRATEGY_DATA = 1
uint8 available
worldmodel_msgs/LaneStrategyData lane_strategy_data

================================================================================
MSG: worldmodel_msgs/LaneStrategyData
worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane
worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane
worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane
worldmodel_msgs/Interval[] current_lane_change_available_interval
worldmodel_msgs/Interval[] left_lane_change_available_interval
worldmodel_msgs/Interval[] right_lane_change_available_interval

================================================================================
MSG: worldmodel_msgs/LaneChangeState
uint8 FOLLOW = 0
uint8 TURN_LEFT = 1
uint8 TURN_RIGHT = 2
uint8 value

================================================================================
MSG: worldmodel_msgs/Interval
float64 begin
float64 end

")



(provide :worldmodel_msgs/LaneStrategy "b6b2b82a3f6242a39f4e3afb39f6a2c2")


