;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ObjectPredictionData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ObjectPredictionData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::OBJECTPREDICTIONDATA")
  (make-package "WORLDMODEL_MSGS::OBJECTPREDICTIONDATA"))

(in-package "ROS")
;;//! \htmlinclude ObjectPredictionData.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::ObjectPredictionData
  :super ros::object
  :slots (_object_id _trajectories _extra_json _object_type ))

(defmethod worldmodel_msgs::ObjectPredictionData
  (:init
   (&key
    ((:object_id __object_id) 0)
    ((:trajectories __trajectories) ())
    ((:extra_json __extra_json) "")
    ((:object_type __object_type) (instance perception_interface_msgs::PerceptionObjectTypeEnum :init))
    )
   (send-super :init)
   (setq _object_id (round __object_id))
   (setq _trajectories __trajectories)
   (setq _extra_json (string __extra_json))
   (setq _object_type __object_type)
   self)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:extra_json
   (&optional __extra_json)
   (if __extra_json (setq _extra_json __extra_json)) _extra_json)
  (:object_type
   (&rest __object_type)
   (if (keywordp (car __object_type))
       (send* _object_type __object_type)
     (progn
       (if __object_type (setq _object_type (car __object_type)))
       _object_type)))
  (:serialization-length
   ()
   (+
    ;; uint64 _object_id
    8
    ;; worldmodel_msgs/PredictionTrajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ;; string _extra_json
    4 (length _extra_json)
    ;; perception_interface_msgs/PerceptionObjectTypeEnum _object_type
    (send _object_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _object_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _object_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _object_id) (= (length (_object_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_object_id . bv) 0) 0) s)
              (write-long (ash (elt (_object_id . bv) 1) -1) s))
             ((and (class _object_id) (= (length (_object_id . bv)) 1)) ;; big1
              (write-long (elt (_object_id . bv) 0) s)
              (write-long (if (>= _object_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _object_id s)(write-long (if (>= _object_id 0) 0 #xffffffff) s)))
     ;; worldmodel_msgs/PredictionTrajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;; string _extra_json
       (write-long (length _extra_json) s) (princ _extra_json s)
     ;; perception_interface_msgs/PerceptionObjectTypeEnum _object_type
       (send _object_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _object_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _object_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _object_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; worldmodel_msgs/PredictionTrajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance worldmodel_msgs::PredictionTrajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _extra_json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra_json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; perception_interface_msgs/PerceptionObjectTypeEnum _object_type
     (send _object_type :deserialize buf ptr-) (incf ptr- (send _object_type :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ObjectPredictionData :md5sum-) "7c41ada686ede37812e69452eff1174f")
(setf (get worldmodel_msgs::ObjectPredictionData :datatype-) "worldmodel_msgs/ObjectPredictionData")
(setf (get worldmodel_msgs::ObjectPredictionData :definition-)
      "uint64 object_id
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



(provide :worldmodel_msgs/ObjectPredictionData "7c41ada686ede37812e69452eff1174f")


