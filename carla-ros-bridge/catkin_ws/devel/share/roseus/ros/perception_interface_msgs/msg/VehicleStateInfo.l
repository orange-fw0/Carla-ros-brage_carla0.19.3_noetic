;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleStateInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleStateInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESTATEINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLESTATEINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleStateInfo.msg.html


(defclass perception_interface_msgs::VehicleStateInfo
  :super ros::object
  :slots (_brake_light_info _tail_light_info _blink_light_info _beam_light_info _door_state_info _ego_lane_relation_info _cutin_info ))

(defmethod perception_interface_msgs::VehicleStateInfo
  (:init
   (&key
    ((:brake_light_info __brake_light_info) (instance perception_interface_msgs::VehicleBrakeLightInfo :init))
    ((:tail_light_info __tail_light_info) (instance perception_interface_msgs::VehicleTailLightInfo :init))
    ((:blink_light_info __blink_light_info) (instance perception_interface_msgs::VehicleBlinkLightInfo :init))
    ((:beam_light_info __beam_light_info) (instance perception_interface_msgs::VehicleBeamLightInfo :init))
    ((:door_state_info __door_state_info) (instance perception_interface_msgs::VehicleDoorStateInfo :init))
    ((:ego_lane_relation_info __ego_lane_relation_info) (instance perception_interface_msgs::VehicleEgoLaneRelationInfo :init))
    ((:cutin_info __cutin_info) (instance perception_interface_msgs::VehicleCutinStateInfo :init))
    )
   (send-super :init)
   (setq _brake_light_info __brake_light_info)
   (setq _tail_light_info __tail_light_info)
   (setq _blink_light_info __blink_light_info)
   (setq _beam_light_info __beam_light_info)
   (setq _door_state_info __door_state_info)
   (setq _ego_lane_relation_info __ego_lane_relation_info)
   (setq _cutin_info __cutin_info)
   self)
  (:brake_light_info
   (&rest __brake_light_info)
   (if (keywordp (car __brake_light_info))
       (send* _brake_light_info __brake_light_info)
     (progn
       (if __brake_light_info (setq _brake_light_info (car __brake_light_info)))
       _brake_light_info)))
  (:tail_light_info
   (&rest __tail_light_info)
   (if (keywordp (car __tail_light_info))
       (send* _tail_light_info __tail_light_info)
     (progn
       (if __tail_light_info (setq _tail_light_info (car __tail_light_info)))
       _tail_light_info)))
  (:blink_light_info
   (&rest __blink_light_info)
   (if (keywordp (car __blink_light_info))
       (send* _blink_light_info __blink_light_info)
     (progn
       (if __blink_light_info (setq _blink_light_info (car __blink_light_info)))
       _blink_light_info)))
  (:beam_light_info
   (&rest __beam_light_info)
   (if (keywordp (car __beam_light_info))
       (send* _beam_light_info __beam_light_info)
     (progn
       (if __beam_light_info (setq _beam_light_info (car __beam_light_info)))
       _beam_light_info)))
  (:door_state_info
   (&rest __door_state_info)
   (if (keywordp (car __door_state_info))
       (send* _door_state_info __door_state_info)
     (progn
       (if __door_state_info (setq _door_state_info (car __door_state_info)))
       _door_state_info)))
  (:ego_lane_relation_info
   (&rest __ego_lane_relation_info)
   (if (keywordp (car __ego_lane_relation_info))
       (send* _ego_lane_relation_info __ego_lane_relation_info)
     (progn
       (if __ego_lane_relation_info (setq _ego_lane_relation_info (car __ego_lane_relation_info)))
       _ego_lane_relation_info)))
  (:cutin_info
   (&rest __cutin_info)
   (if (keywordp (car __cutin_info))
       (send* _cutin_info __cutin_info)
     (progn
       (if __cutin_info (setq _cutin_info (car __cutin_info)))
       _cutin_info)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/VehicleBrakeLightInfo _brake_light_info
    (send _brake_light_info :serialization-length)
    ;; perception_interface_msgs/VehicleTailLightInfo _tail_light_info
    (send _tail_light_info :serialization-length)
    ;; perception_interface_msgs/VehicleBlinkLightInfo _blink_light_info
    (send _blink_light_info :serialization-length)
    ;; perception_interface_msgs/VehicleBeamLightInfo _beam_light_info
    (send _beam_light_info :serialization-length)
    ;; perception_interface_msgs/VehicleDoorStateInfo _door_state_info
    (send _door_state_info :serialization-length)
    ;; perception_interface_msgs/VehicleEgoLaneRelationInfo _ego_lane_relation_info
    (send _ego_lane_relation_info :serialization-length)
    ;; perception_interface_msgs/VehicleCutinStateInfo _cutin_info
    (send _cutin_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/VehicleBrakeLightInfo _brake_light_info
       (send _brake_light_info :serialize s)
     ;; perception_interface_msgs/VehicleTailLightInfo _tail_light_info
       (send _tail_light_info :serialize s)
     ;; perception_interface_msgs/VehicleBlinkLightInfo _blink_light_info
       (send _blink_light_info :serialize s)
     ;; perception_interface_msgs/VehicleBeamLightInfo _beam_light_info
       (send _beam_light_info :serialize s)
     ;; perception_interface_msgs/VehicleDoorStateInfo _door_state_info
       (send _door_state_info :serialize s)
     ;; perception_interface_msgs/VehicleEgoLaneRelationInfo _ego_lane_relation_info
       (send _ego_lane_relation_info :serialize s)
     ;; perception_interface_msgs/VehicleCutinStateInfo _cutin_info
       (send _cutin_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/VehicleBrakeLightInfo _brake_light_info
     (send _brake_light_info :deserialize buf ptr-) (incf ptr- (send _brake_light_info :serialization-length))
   ;; perception_interface_msgs/VehicleTailLightInfo _tail_light_info
     (send _tail_light_info :deserialize buf ptr-) (incf ptr- (send _tail_light_info :serialization-length))
   ;; perception_interface_msgs/VehicleBlinkLightInfo _blink_light_info
     (send _blink_light_info :deserialize buf ptr-) (incf ptr- (send _blink_light_info :serialization-length))
   ;; perception_interface_msgs/VehicleBeamLightInfo _beam_light_info
     (send _beam_light_info :deserialize buf ptr-) (incf ptr- (send _beam_light_info :serialization-length))
   ;; perception_interface_msgs/VehicleDoorStateInfo _door_state_info
     (send _door_state_info :deserialize buf ptr-) (incf ptr- (send _door_state_info :serialization-length))
   ;; perception_interface_msgs/VehicleEgoLaneRelationInfo _ego_lane_relation_info
     (send _ego_lane_relation_info :deserialize buf ptr-) (incf ptr- (send _ego_lane_relation_info :serialization-length))
   ;; perception_interface_msgs/VehicleCutinStateInfo _cutin_info
     (send _cutin_info :deserialize buf ptr-) (incf ptr- (send _cutin_info :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleStateInfo :md5sum-) "85ebd6c8f833ac9da1a9c871dec878c8")
(setf (get perception_interface_msgs::VehicleStateInfo :datatype-) "perception_interface_msgs/VehicleStateInfo")
(setf (get perception_interface_msgs::VehicleStateInfo :definition-)
      "perception_interface_msgs/VehicleBrakeLightInfo brake_light_info
perception_interface_msgs/VehicleTailLightInfo tail_light_info
perception_interface_msgs/VehicleBlinkLightInfo blink_light_info
perception_interface_msgs/VehicleBeamLightInfo beam_light_info
perception_interface_msgs/VehicleDoorStateInfo door_state_info
perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info
perception_interface_msgs/VehicleCutinStateInfo cutin_info

================================================================================
MSG: perception_interface_msgs/VehicleBrakeLightInfo
float32 brake_light_on_score
perception_interface_msgs/VehicleBrakeLightEnum brake_light_state

================================================================================
MSG: perception_interface_msgs/VehicleBrakeLightEnum
uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0
uint8 VEHICLE_BRAKELIGHT_OFF = 1
uint8 VEHICLE_BRAKELIGHT_ON = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleTailLightInfo
float32 tail_light_score
float32 tail_light_unkown_score
float32 tail_light_off_score
float32 tail_light_on_score
float32 tail_light_high_on_score
perception_interface_msgs/VehicleTailLightEnum tail_light_state

================================================================================
MSG: perception_interface_msgs/VehicleTailLightEnum
uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0
uint8 VEHICLE_TAILLIGHT_OFF = 1
uint8 VEHICLE_TAILLIGHT_ON = 2
uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleBlinkLightInfo
float32 blink_light_left_score
float32 blink_light_right_score
float32 blink_light_both_score
perception_interface_msgs/VehicleBlinkLightEnum blink_light_state

================================================================================
MSG: perception_interface_msgs/VehicleBlinkLightEnum
uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0
uint8 VEHICLE_BLINKLIGHT_OFF = 1
uint8 VEHICLE_BLINKLIGHT_LEFT = 2
uint8 VEHICLE_BLINKLIGHT_RIGHT = 3
uint8 VEHICLE_BLINKLIGHT_BOTH = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleBeamLightInfo
float32 beam_light_on_score
perception_interface_msgs/VehicleBeamLightEnum beam_light_state

================================================================================
MSG: perception_interface_msgs/VehicleBeamLightEnum
uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0
uint8 VEHICLE_BEAMLIGHT_OFF = 1
uint8 VEHICLE_BEAMLIGHT_LOW = 2
uint8 VEHICLE_BEAMLIGHT_HIGH = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleDoorStateInfo
float32 door_state_on_score
perception_interface_msgs/VehicleDoorStateEnum door_state

================================================================================
MSG: perception_interface_msgs/VehicleDoorStateEnum
uint8 VEHICLE_DOORSTATE_UNKNOWN = 0
uint8 VEHICLE_DOORSTATE_OFF = 1
uint8 VEHICLE_DOORSTATE_ON = 2
uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3
uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4
uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5
uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6
uint8 VEHICLE_DOOR_OPEN_BOTH = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo
float32 ego_lane_overlap_score
float32 ego_lane_no_overlap_score
perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation

================================================================================
MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum
uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0
uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1
uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2
uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleCutinStateInfo
float32 cutin_state_on_score
perception_interface_msgs/VehicleCutinStateEnum cutin_state

================================================================================
MSG: perception_interface_msgs/VehicleCutinStateEnum
uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0
uint8 VEHICLE_CUTINSTATE_OFF = 1
uint8 VEHICLE_CUTINSTATE_ON = 2
uint8 value

")



(provide :perception_interface_msgs/VehicleStateInfo "85ebd6c8f833ac9da1a9c871dec878c8")


