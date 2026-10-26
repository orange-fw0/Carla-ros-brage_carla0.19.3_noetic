;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::PredictionResult)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'PredictionResult (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::PREDICTIONRESULT")
  (make-package "WORLDMODEL_MSGS::PREDICTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude PredictionResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass worldmodel_msgs::PredictionResult
  :super ros::object
  :slots (_header _meta _object_prediction_data ))

(defmethod worldmodel_msgs::PredictionResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance worldmodel_msgs::PredictionResultMeta :init))
    ((:object_prediction_data __object_prediction_data) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _object_prediction_data __object_prediction_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:object_prediction_data
   (&rest __object_prediction_data)
   (if (keywordp (car __object_prediction_data))
       (send* _object_prediction_data __object_prediction_data)
     (progn
       (if __object_prediction_data (setq _object_prediction_data (car __object_prediction_data)))
       _object_prediction_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; worldmodel_msgs/PredictionResultMeta _meta
    (send _meta :serialization-length)
    ;; worldmodel_msgs/ObjectPredictionData[] _object_prediction_data
    (apply #'+ (send-all _object_prediction_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; worldmodel_msgs/PredictionResultMeta _meta
       (send _meta :serialize s)
     ;; worldmodel_msgs/ObjectPredictionData[] _object_prediction_data
     (write-long (length _object_prediction_data) s)
     (dolist (elem _object_prediction_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; worldmodel_msgs/PredictionResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; worldmodel_msgs/ObjectPredictionData[] _object_prediction_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_prediction_data (let (r) (dotimes (i n) (push (instance worldmodel_msgs::ObjectPredictionData :init) r)) r))
     (dolist (elem- _object_prediction_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get worldmodel_msgs::PredictionResult :md5sum-) "10924c289eea7b16586c77c49438ff19")
(setf (get worldmodel_msgs::PredictionResult :datatype-) "worldmodel_msgs/PredictionResult")
(setf (get worldmodel_msgs::PredictionResult :definition-)
      "std_msgs/Header header
worldmodel_msgs/PredictionResultMeta meta
worldmodel_msgs/ObjectPredictionData[] object_prediction_data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: worldmodel_msgs/PredictionResultMeta
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
string frame_id

================================================================================
MSG: worldmodel_msgs/ObjectPredictionData
uint64 object_id
worldmodel_msgs/PredictionTrajectory[] trajectories
string extra_json
perception_interface_msgs/PerceptionObjectTypeEnum object_type

================================================================================
MSG: worldmodel_msgs/PredictionTrajectory
float32 confidence
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

================================================================================
MSG: perception_interface_msgs/PerceptionObjectTypeEnum
uint8 OBJECT_TYPE_UNKNOWN = 0
uint8 OBJECT_TYPE_RAW = 1
uint8 OBJECT_TYPE_NORMAL = 2
uint8 OBJECT_TYPE_RADAR_ONLY = 3
uint8 value

")



(provide :worldmodel_msgs/PredictionResult "10924c289eea7b16586c77c49438ff19")


