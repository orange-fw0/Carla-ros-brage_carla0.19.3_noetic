;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::PredictionTrajectory)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'PredictionTrajectory (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::PREDICTIONTRAJECTORY")
  (make-package "WORLDMODEL_MSGS::PREDICTIONTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude PredictionTrajectory.msg.html


(defclass worldmodel_msgs::PredictionTrajectory
  :super ros::object
  :slots (_confidence _prediction_interval _intention _lateral_intents _longtudinal_intents _trajectory_points _extra_json ))

(defmethod worldmodel_msgs::PredictionTrajectory
  (:init
   (&key
    ((:confidence __confidence) 0.0)
    ((:prediction_interval __prediction_interval) 0.0)
    ((:intention __intention) (instance worldmodel_msgs::IntentionType :init))
    ((:lateral_intents __lateral_intents) ())
    ((:longtudinal_intents __longtudinal_intents) ())
    ((:trajectory_points __trajectory_points) ())
    ((:extra_json __extra_json) "")
    )
   (send-super :init)
   (setq _confidence (float __confidence))
   (setq _prediction_interval (float __prediction_interval))
   (setq _intention __intention)
   (setq _lateral_intents __lateral_intents)
   (setq _longtudinal_intents __longtudinal_intents)
   (setq _trajectory_points __trajectory_points)
   (setq _extra_json (string __extra_json))
   self)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:prediction_interval
   (&optional __prediction_interval)
   (if __prediction_interval (setq _prediction_interval __prediction_interval)) _prediction_interval)
  (:intention
   (&rest __intention)
   (if (keywordp (car __intention))
       (send* _intention __intention)
     (progn
       (if __intention (setq _intention (car __intention)))
       _intention)))
  (:lateral_intents
   (&rest __lateral_intents)
   (if (keywordp (car __lateral_intents))
       (send* _lateral_intents __lateral_intents)
     (progn
       (if __lateral_intents (setq _lateral_intents (car __lateral_intents)))
       _lateral_intents)))
  (:longtudinal_intents
   (&rest __longtudinal_intents)
   (if (keywordp (car __longtudinal_intents))
       (send* _longtudinal_intents __longtudinal_intents)
     (progn
       (if __longtudinal_intents (setq _longtudinal_intents (car __longtudinal_intents)))
       _longtudinal_intents)))
  (:trajectory_points
   (&rest __trajectory_points)
   (if (keywordp (car __trajectory_points))
       (send* _trajectory_points __trajectory_points)
     (progn
       (if __trajectory_points (setq _trajectory_points (car __trajectory_points)))
       _trajectory_points)))
  (:extra_json
   (&optional __extra_json)
   (if __extra_json (setq _extra_json __extra_json)) _extra_json)
  (:serialization-length
   ()
   (+
    ;; float32 _confidence
    4
    ;; float32 _prediction_interval
    4
    ;; worldmodel_msgs/IntentionType _intention
    (send _intention :serialization-length)
    ;; worldmodel_msgs/LateralIntention[] _lateral_intents
    (apply #'+ (send-all _lateral_intents :serialization-length)) 4
    ;; worldmodel_msgs/LongitudinalIntention[] _longtudinal_intents
    (apply #'+ (send-all _longtudinal_intents :serialization-length)) 4
    ;; worldmodel_msgs/PredictionTrajectoryPoint[] _trajectory_points
    (apply #'+ (send-all _trajectory_points :serialization-length)) 4
    ;; string _extra_json
    4 (length _extra_json)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prediction_interval
       (sys::poke _prediction_interval (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; worldmodel_msgs/IntentionType _intention
       (send _intention :serialize s)
     ;; worldmodel_msgs/LateralIntention[] _lateral_intents
     (write-long (length _lateral_intents) s)
     (dolist (elem _lateral_intents)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/LongitudinalIntention[] _longtudinal_intents
     (write-long (length _longtudinal_intents) s)
     (dolist (elem _longtudinal_intents)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/PredictionTrajectoryPoint[] _trajectory_points
     (write-long (length _trajectory_points) s)
     (dolist (elem _trajectory_points)
       (send elem :serialize s)
       )
     ;; string _extra_json
       (write-long (length _extra_json) s) (princ _extra_json s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prediction_interval
     (setq _prediction_interval (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; worldmodel_msgs/IntentionType _intention
     (send _intention :deserialize buf ptr-) (incf ptr- (send _intention :serialization-length))
   ;; worldmodel_msgs/LateralIntention[] _lateral_intents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lateral_intents (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LateralIntention :init) r)) r))
     (dolist (elem- _lateral_intents)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/LongitudinalIntention[] _longtudinal_intents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _longtudinal_intents (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LongitudinalIntention :init) r)) r))
     (dolist (elem- _longtudinal_intents)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/PredictionTrajectoryPoint[] _trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_points (let (r) (dotimes (i n) (push (instance worldmodel_msgs::PredictionTrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _extra_json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra_json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get worldmodel_msgs::PredictionTrajectory :md5sum-) "5517c8aaac675df4ed45f9cb7b330f08")
(setf (get worldmodel_msgs::PredictionTrajectory :datatype-) "worldmodel_msgs/PredictionTrajectory")
(setf (get worldmodel_msgs::PredictionTrajectory :definition-)
      "float32 confidence
float32 prediction_interval
worldmodel_msgs/IntentionType intention
worldmodel_msgs/LateralIntention[] lateral_intents
worldmodel_msgs/LongitudinalIntention[] longtudinal_intents
worldmodel_msgs/PredictionTrajectoryPoint[] trajectory_points
string extra_json

================================================================================
MSG: worldmodel_msgs/IntentionType
int32 INVALID = -1
int32 FREE_MOVE = 0
int32 KEEP_LANE = 1
int32 LEFT_CHANGE_LANE_OUT = 2
int32 LEFT_CHANGE_LANE_IN = 3
int32 RIGHT_CHANGE_LANE_OUT = 4
int32 RIGHT_CHANGE_LANE_IN = 5
int32 GO_STRAIGHT = 11
int32 TURN_LEFT = 12
int32 TURN_RIGHT = 13
int32 U_TURN = 14
int32 value

================================================================================
MSG: worldmodel_msgs/LateralIntention
uint16 INVALID = 0
uint16 GO_STRAIGHT = 1
uint16 TURN_LEFT = 2
uint16 TURN_RIGHT = 3
uint16 U_TURN = 4
uint16 CHANGE_LANE_LEFT = 5
uint16 CHANGE_LANE_RIGHT = 6
float32 score
uint16 value

================================================================================
MSG: worldmodel_msgs/LongitudinalIntention
uint16 INVALID = 0
uint16 ACCELERATE = 1
uint16 DECELERATE = 2
uint16 CRUISE = 3
uint16 START_MOVE = 4
uint16 STATIONARY = 5
uint16 REVERSE = 6
float32 score
uint16 value

================================================================================
MSG: worldmodel_msgs/PredictionTrajectoryPoint
perception_interface_msgs/Point2f position
float32 yaw
float32 theta
float32 velocity
float32 confidence
worldmodel_msgs/Matrix2f covariance_xy

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: worldmodel_msgs/Matrix2f
float32 x00
float32 x01
float32 x10
float32 x11

")



(provide :worldmodel_msgs/PredictionTrajectory "5517c8aaac675df4ed45f9cb7b330f08")


