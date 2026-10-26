;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneStrategyData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneStrategyData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANESTRATEGYDATA")
  (make-package "WORLDMODEL_MSGS::LANESTRATEGYDATA"))

(in-package "ROS")
;;//! \htmlinclude LaneStrategyData.msg.html


(defclass worldmodel_msgs::LaneStrategyData
  :super ros::object
  :slots (_strategy_start_with_current_lane _strategy_start_with_left_lane _strategy_start_with_right_lane _current_lane_change_available_interval _left_lane_change_available_interval _right_lane_change_available_interval ))

(defmethod worldmodel_msgs::LaneStrategyData
  (:init
   (&key
    ((:strategy_start_with_current_lane __strategy_start_with_current_lane) ())
    ((:strategy_start_with_left_lane __strategy_start_with_left_lane) ())
    ((:strategy_start_with_right_lane __strategy_start_with_right_lane) ())
    ((:current_lane_change_available_interval __current_lane_change_available_interval) ())
    ((:left_lane_change_available_interval __left_lane_change_available_interval) ())
    ((:right_lane_change_available_interval __right_lane_change_available_interval) ())
    )
   (send-super :init)
   (setq _strategy_start_with_current_lane __strategy_start_with_current_lane)
   (setq _strategy_start_with_left_lane __strategy_start_with_left_lane)
   (setq _strategy_start_with_right_lane __strategy_start_with_right_lane)
   (setq _current_lane_change_available_interval __current_lane_change_available_interval)
   (setq _left_lane_change_available_interval __left_lane_change_available_interval)
   (setq _right_lane_change_available_interval __right_lane_change_available_interval)
   self)
  (:strategy_start_with_current_lane
   (&rest __strategy_start_with_current_lane)
   (if (keywordp (car __strategy_start_with_current_lane))
       (send* _strategy_start_with_current_lane __strategy_start_with_current_lane)
     (progn
       (if __strategy_start_with_current_lane (setq _strategy_start_with_current_lane (car __strategy_start_with_current_lane)))
       _strategy_start_with_current_lane)))
  (:strategy_start_with_left_lane
   (&rest __strategy_start_with_left_lane)
   (if (keywordp (car __strategy_start_with_left_lane))
       (send* _strategy_start_with_left_lane __strategy_start_with_left_lane)
     (progn
       (if __strategy_start_with_left_lane (setq _strategy_start_with_left_lane (car __strategy_start_with_left_lane)))
       _strategy_start_with_left_lane)))
  (:strategy_start_with_right_lane
   (&rest __strategy_start_with_right_lane)
   (if (keywordp (car __strategy_start_with_right_lane))
       (send* _strategy_start_with_right_lane __strategy_start_with_right_lane)
     (progn
       (if __strategy_start_with_right_lane (setq _strategy_start_with_right_lane (car __strategy_start_with_right_lane)))
       _strategy_start_with_right_lane)))
  (:current_lane_change_available_interval
   (&rest __current_lane_change_available_interval)
   (if (keywordp (car __current_lane_change_available_interval))
       (send* _current_lane_change_available_interval __current_lane_change_available_interval)
     (progn
       (if __current_lane_change_available_interval (setq _current_lane_change_available_interval (car __current_lane_change_available_interval)))
       _current_lane_change_available_interval)))
  (:left_lane_change_available_interval
   (&rest __left_lane_change_available_interval)
   (if (keywordp (car __left_lane_change_available_interval))
       (send* _left_lane_change_available_interval __left_lane_change_available_interval)
     (progn
       (if __left_lane_change_available_interval (setq _left_lane_change_available_interval (car __left_lane_change_available_interval)))
       _left_lane_change_available_interval)))
  (:right_lane_change_available_interval
   (&rest __right_lane_change_available_interval)
   (if (keywordp (car __right_lane_change_available_interval))
       (send* _right_lane_change_available_interval __right_lane_change_available_interval)
     (progn
       (if __right_lane_change_available_interval (setq _right_lane_change_available_interval (car __right_lane_change_available_interval)))
       _right_lane_change_available_interval)))
  (:serialization-length
   ()
   (+
    ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_current_lane
    (apply #'+ (send-all _strategy_start_with_current_lane :serialization-length)) 4
    ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_left_lane
    (apply #'+ (send-all _strategy_start_with_left_lane :serialization-length)) 4
    ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_right_lane
    (apply #'+ (send-all _strategy_start_with_right_lane :serialization-length)) 4
    ;; worldmodel_msgs/Interval[] _current_lane_change_available_interval
    (apply #'+ (send-all _current_lane_change_available_interval :serialization-length)) 4
    ;; worldmodel_msgs/Interval[] _left_lane_change_available_interval
    (apply #'+ (send-all _left_lane_change_available_interval :serialization-length)) 4
    ;; worldmodel_msgs/Interval[] _right_lane_change_available_interval
    (apply #'+ (send-all _right_lane_change_available_interval :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_current_lane
     (write-long (length _strategy_start_with_current_lane) s)
     (dolist (elem _strategy_start_with_current_lane)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_left_lane
     (write-long (length _strategy_start_with_left_lane) s)
     (dolist (elem _strategy_start_with_left_lane)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_right_lane
     (write-long (length _strategy_start_with_right_lane) s)
     (dolist (elem _strategy_start_with_right_lane)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/Interval[] _current_lane_change_available_interval
     (write-long (length _current_lane_change_available_interval) s)
     (dolist (elem _current_lane_change_available_interval)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/Interval[] _left_lane_change_available_interval
     (write-long (length _left_lane_change_available_interval) s)
     (dolist (elem _left_lane_change_available_interval)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/Interval[] _right_lane_change_available_interval
     (write-long (length _right_lane_change_available_interval) s)
     (dolist (elem _right_lane_change_available_interval)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_current_lane
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strategy_start_with_current_lane (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LaneChangeState :init) r)) r))
     (dolist (elem- _strategy_start_with_current_lane)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_left_lane
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strategy_start_with_left_lane (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LaneChangeState :init) r)) r))
     (dolist (elem- _strategy_start_with_left_lane)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/LaneChangeState[] _strategy_start_with_right_lane
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strategy_start_with_right_lane (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LaneChangeState :init) r)) r))
     (dolist (elem- _strategy_start_with_right_lane)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/Interval[] _current_lane_change_available_interval
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_lane_change_available_interval (let (r) (dotimes (i n) (push (instance worldmodel_msgs::Interval :init) r)) r))
     (dolist (elem- _current_lane_change_available_interval)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/Interval[] _left_lane_change_available_interval
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_lane_change_available_interval (let (r) (dotimes (i n) (push (instance worldmodel_msgs::Interval :init) r)) r))
     (dolist (elem- _left_lane_change_available_interval)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/Interval[] _right_lane_change_available_interval
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_lane_change_available_interval (let (r) (dotimes (i n) (push (instance worldmodel_msgs::Interval :init) r)) r))
     (dolist (elem- _right_lane_change_available_interval)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get worldmodel_msgs::LaneStrategyData :md5sum-) "8c4049161b57995c7a9f1a3f35dc74a3")
(setf (get worldmodel_msgs::LaneStrategyData :datatype-) "worldmodel_msgs/LaneStrategyData")
(setf (get worldmodel_msgs::LaneStrategyData :definition-)
      "worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane
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



(provide :worldmodel_msgs/LaneStrategyData "8c4049161b57995c7a9f1a3f35dc74a3")


