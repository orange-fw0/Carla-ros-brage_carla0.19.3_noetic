;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleEgoLaneRelationInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleEgoLaneRelationInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleEgoLaneRelationInfo.msg.html


(defclass perception_interface_msgs::VehicleEgoLaneRelationInfo
  :super ros::object
  :slots (_ego_lane_overlap_score _ego_lane_no_overlap_score _ego_lane_relation ))

(defmethod perception_interface_msgs::VehicleEgoLaneRelationInfo
  (:init
   (&key
    ((:ego_lane_overlap_score __ego_lane_overlap_score) 0.0)
    ((:ego_lane_no_overlap_score __ego_lane_no_overlap_score) 0.0)
    ((:ego_lane_relation __ego_lane_relation) (instance perception_interface_msgs::VehicleEgoLaneRelationEnum :init))
    )
   (send-super :init)
   (setq _ego_lane_overlap_score (float __ego_lane_overlap_score))
   (setq _ego_lane_no_overlap_score (float __ego_lane_no_overlap_score))
   (setq _ego_lane_relation __ego_lane_relation)
   self)
  (:ego_lane_overlap_score
   (&optional __ego_lane_overlap_score)
   (if __ego_lane_overlap_score (setq _ego_lane_overlap_score __ego_lane_overlap_score)) _ego_lane_overlap_score)
  (:ego_lane_no_overlap_score
   (&optional __ego_lane_no_overlap_score)
   (if __ego_lane_no_overlap_score (setq _ego_lane_no_overlap_score __ego_lane_no_overlap_score)) _ego_lane_no_overlap_score)
  (:ego_lane_relation
   (&rest __ego_lane_relation)
   (if (keywordp (car __ego_lane_relation))
       (send* _ego_lane_relation __ego_lane_relation)
     (progn
       (if __ego_lane_relation (setq _ego_lane_relation (car __ego_lane_relation)))
       _ego_lane_relation)))
  (:serialization-length
   ()
   (+
    ;; float32 _ego_lane_overlap_score
    4
    ;; float32 _ego_lane_no_overlap_score
    4
    ;; perception_interface_msgs/VehicleEgoLaneRelationEnum _ego_lane_relation
    (send _ego_lane_relation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ego_lane_overlap_score
       (sys::poke _ego_lane_overlap_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ego_lane_no_overlap_score
       (sys::poke _ego_lane_no_overlap_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/VehicleEgoLaneRelationEnum _ego_lane_relation
       (send _ego_lane_relation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ego_lane_overlap_score
     (setq _ego_lane_overlap_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ego_lane_no_overlap_score
     (setq _ego_lane_no_overlap_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/VehicleEgoLaneRelationEnum _ego_lane_relation
     (send _ego_lane_relation :deserialize buf ptr-) (incf ptr- (send _ego_lane_relation :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleEgoLaneRelationInfo :md5sum-) "1f395e671d62e5b2052d6c52364fed8d")
(setf (get perception_interface_msgs::VehicleEgoLaneRelationInfo :datatype-) "perception_interface_msgs/VehicleEgoLaneRelationInfo")
(setf (get perception_interface_msgs::VehicleEgoLaneRelationInfo :definition-)
      "float32 ego_lane_overlap_score
float32 ego_lane_no_overlap_score
perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation

================================================================================
MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum
uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0
uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1
uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2
uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3
uint8 value

")



(provide :perception_interface_msgs/VehicleEgoLaneRelationInfo "1f395e671d62e5b2052d6c52364fed8d")


