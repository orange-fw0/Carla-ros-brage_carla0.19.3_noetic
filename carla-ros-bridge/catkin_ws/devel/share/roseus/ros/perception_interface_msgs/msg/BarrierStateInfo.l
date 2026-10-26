;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::BarrierStateInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'BarrierStateInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::BARRIERSTATEINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::BARRIERSTATEINFO"))

(in-package "ROS")
;;//! \htmlinclude BarrierStateInfo.msg.html


(defclass perception_interface_msgs::BarrierStateInfo
  :super ros::object
  :slots (_traffic_barrier_ego_lane_relation_info ))

(defmethod perception_interface_msgs::BarrierStateInfo
  (:init
   (&key
    ((:traffic_barrier_ego_lane_relation_info __traffic_barrier_ego_lane_relation_info) (instance perception_interface_msgs::TrafficBarrierEgoLaneRelationInfo :init))
    )
   (send-super :init)
   (setq _traffic_barrier_ego_lane_relation_info __traffic_barrier_ego_lane_relation_info)
   self)
  (:traffic_barrier_ego_lane_relation_info
   (&rest __traffic_barrier_ego_lane_relation_info)
   (if (keywordp (car __traffic_barrier_ego_lane_relation_info))
       (send* _traffic_barrier_ego_lane_relation_info __traffic_barrier_ego_lane_relation_info)
     (progn
       (if __traffic_barrier_ego_lane_relation_info (setq _traffic_barrier_ego_lane_relation_info (car __traffic_barrier_ego_lane_relation_info)))
       _traffic_barrier_ego_lane_relation_info)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo _traffic_barrier_ego_lane_relation_info
    (send _traffic_barrier_ego_lane_relation_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo _traffic_barrier_ego_lane_relation_info
       (send _traffic_barrier_ego_lane_relation_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo _traffic_barrier_ego_lane_relation_info
     (send _traffic_barrier_ego_lane_relation_info :deserialize buf ptr-) (incf ptr- (send _traffic_barrier_ego_lane_relation_info :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::BarrierStateInfo :md5sum-) "cc7ea95f1c37971401aaf8cef9929ef9")
(setf (get perception_interface_msgs::BarrierStateInfo :datatype-) "perception_interface_msgs/BarrierStateInfo")
(setf (get perception_interface_msgs::BarrierStateInfo :definition-)
      "perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info

================================================================================
MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo
float32 distance_to_left_line
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



(provide :perception_interface_msgs/BarrierStateInfo "cc7ea95f1c37971401aaf8cef9929ef9")


