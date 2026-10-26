;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficBarrierEgoLaneRelationInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficBarrierEgoLaneRelationInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONINFO"))

(in-package "ROS")
;;//! \htmlinclude TrafficBarrierEgoLaneRelationInfo.msg.html


(defclass perception_interface_msgs::TrafficBarrierEgoLaneRelationInfo
  :super ros::object
  :slots (_distance_to_left_line _distance_to_right_line _ego_lane_relation _useful ))

(defmethod perception_interface_msgs::TrafficBarrierEgoLaneRelationInfo
  (:init
   (&key
    ((:distance_to_left_line __distance_to_left_line) 0.0)
    ((:distance_to_right_line __distance_to_right_line) 0.0)
    ((:ego_lane_relation __ego_lane_relation) (instance perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum :init))
    ((:useful __useful) (instance perception_interface_msgs::TrafficBarrierUsefulEnum :init))
    )
   (send-super :init)
   (setq _distance_to_left_line (float __distance_to_left_line))
   (setq _distance_to_right_line (float __distance_to_right_line))
   (setq _ego_lane_relation __ego_lane_relation)
   (setq _useful __useful)
   self)
  (:distance_to_left_line
   (&optional __distance_to_left_line)
   (if __distance_to_left_line (setq _distance_to_left_line __distance_to_left_line)) _distance_to_left_line)
  (:distance_to_right_line
   (&optional __distance_to_right_line)
   (if __distance_to_right_line (setq _distance_to_right_line __distance_to_right_line)) _distance_to_right_line)
  (:ego_lane_relation
   (&rest __ego_lane_relation)
   (if (keywordp (car __ego_lane_relation))
       (send* _ego_lane_relation __ego_lane_relation)
     (progn
       (if __ego_lane_relation (setq _ego_lane_relation (car __ego_lane_relation)))
       _ego_lane_relation)))
  (:useful
   (&rest __useful)
   (if (keywordp (car __useful))
       (send* _useful __useful)
     (progn
       (if __useful (setq _useful (car __useful)))
       _useful)))
  (:serialization-length
   ()
   (+
    ;; float32 _distance_to_left_line
    4
    ;; float32 _distance_to_right_line
    4
    ;; perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum _ego_lane_relation
    (send _ego_lane_relation :serialization-length)
    ;; perception_interface_msgs/TrafficBarrierUsefulEnum _useful
    (send _useful :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance_to_left_line
       (sys::poke _distance_to_left_line (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_right_line
       (sys::poke _distance_to_right_line (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum _ego_lane_relation
       (send _ego_lane_relation :serialize s)
     ;; perception_interface_msgs/TrafficBarrierUsefulEnum _useful
       (send _useful :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance_to_left_line
     (setq _distance_to_left_line (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_right_line
     (setq _distance_to_right_line (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum _ego_lane_relation
     (send _ego_lane_relation :deserialize buf ptr-) (incf ptr- (send _ego_lane_relation :serialization-length))
   ;; perception_interface_msgs/TrafficBarrierUsefulEnum _useful
     (send _useful :deserialize buf ptr-) (incf ptr- (send _useful :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::TrafficBarrierEgoLaneRelationInfo :md5sum-) "7bc86d60438d376cf6651538ae553991")
(setf (get perception_interface_msgs::TrafficBarrierEgoLaneRelationInfo :datatype-) "perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo")
(setf (get perception_interface_msgs::TrafficBarrierEgoLaneRelationInfo :definition-)
      "float32 distance_to_left_line
float32 distance_to_right_line
perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation
perception_interface_msgs/TrafficBarrierUsefulEnum useful

================================================================================
MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum
uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0
uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1
uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2
uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficBarrierUsefulEnum
uint8 TRAFFIC_BARRIER_UNUSEFUL = 0
uint8 TRAFFIC_BARRIER_USEFUL = 1
uint8 value

")



(provide :perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo "7bc86d60438d376cf6651538ae553991")


