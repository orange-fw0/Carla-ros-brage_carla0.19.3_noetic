;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ADBObjectData)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ADBObjectData (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ADBOBJECTDATA")
  (make-package "PERCEPTION_INTERFACE_MSGS::ADBOBJECTDATA"))

(in-package "ROS")
;;//! \htmlinclude ADBObjectData.msg.html


(defclass perception_interface_msgs::ADBObjectData
  :super ros::object
  :slots (_track_info _type_info _shape _relative_position _relative_velocity _relative_acceleration _relative_heading_yaw _score _confidence_level _relative_distance _direction _horizontal_angle _horizontal_angular_velocity _vertical_angle _vertical_angular_velocity ))

(defmethod perception_interface_msgs::ADBObjectData
  (:init
   (&key
    ((:track_info __track_info) (instance perception_interface_msgs::ObjectTrackInfo :init))
    ((:type_info __type_info) (instance perception_interface_msgs::ObjectTypeInfo :init))
    ((:shape __shape) (instance perception_interface_msgs::Shape3f :init))
    ((:relative_position __relative_position) (instance perception_interface_msgs::Point3f :init))
    ((:relative_velocity __relative_velocity) (instance perception_interface_msgs::Vector3f :init))
    ((:relative_acceleration __relative_acceleration) (instance perception_interface_msgs::Vector3f :init))
    ((:relative_heading_yaw __relative_heading_yaw) 0.0)
    ((:score __score) 0.0)
    ((:confidence_level __confidence_level) (instance perception_interface_msgs::ObjectConfidenceEnum :init))
    ((:relative_distance __relative_distance) 0.0)
    ((:direction __direction) (instance perception_interface_msgs::DirectionEnum :init))
    ((:horizontal_angle __horizontal_angle) (instance perception_interface_msgs::Vector2f :init))
    ((:horizontal_angular_velocity __horizontal_angular_velocity) (instance perception_interface_msgs::Vector2f :init))
    ((:vertical_angle __vertical_angle) (instance perception_interface_msgs::Vector2f :init))
    ((:vertical_angular_velocity __vertical_angular_velocity) (instance perception_interface_msgs::Vector2f :init))
    )
   (send-super :init)
   (setq _track_info __track_info)
   (setq _type_info __type_info)
   (setq _shape __shape)
   (setq _relative_position __relative_position)
   (setq _relative_velocity __relative_velocity)
   (setq _relative_acceleration __relative_acceleration)
   (setq _relative_heading_yaw (float __relative_heading_yaw))
   (setq _score (float __score))
   (setq _confidence_level __confidence_level)
   (setq _relative_distance (float __relative_distance))
   (setq _direction __direction)
   (setq _horizontal_angle __horizontal_angle)
   (setq _horizontal_angular_velocity __horizontal_angular_velocity)
   (setq _vertical_angle __vertical_angle)
   (setq _vertical_angular_velocity __vertical_angular_velocity)
   self)
  (:track_info
   (&rest __track_info)
   (if (keywordp (car __track_info))
       (send* _track_info __track_info)
     (progn
       (if __track_info (setq _track_info (car __track_info)))
       _track_info)))
  (:type_info
   (&rest __type_info)
   (if (keywordp (car __type_info))
       (send* _type_info __type_info)
     (progn
       (if __type_info (setq _type_info (car __type_info)))
       _type_info)))
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:relative_position
   (&rest __relative_position)
   (if (keywordp (car __relative_position))
       (send* _relative_position __relative_position)
     (progn
       (if __relative_position (setq _relative_position (car __relative_position)))
       _relative_position)))
  (:relative_velocity
   (&rest __relative_velocity)
   (if (keywordp (car __relative_velocity))
       (send* _relative_velocity __relative_velocity)
     (progn
       (if __relative_velocity (setq _relative_velocity (car __relative_velocity)))
       _relative_velocity)))
  (:relative_acceleration
   (&rest __relative_acceleration)
   (if (keywordp (car __relative_acceleration))
       (send* _relative_acceleration __relative_acceleration)
     (progn
       (if __relative_acceleration (setq _relative_acceleration (car __relative_acceleration)))
       _relative_acceleration)))
  (:relative_heading_yaw
   (&optional __relative_heading_yaw)
   (if __relative_heading_yaw (setq _relative_heading_yaw __relative_heading_yaw)) _relative_heading_yaw)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:confidence_level
   (&rest __confidence_level)
   (if (keywordp (car __confidence_level))
       (send* _confidence_level __confidence_level)
     (progn
       (if __confidence_level (setq _confidence_level (car __confidence_level)))
       _confidence_level)))
  (:relative_distance
   (&optional __relative_distance)
   (if __relative_distance (setq _relative_distance __relative_distance)) _relative_distance)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:horizontal_angle
   (&rest __horizontal_angle)
   (if (keywordp (car __horizontal_angle))
       (send* _horizontal_angle __horizontal_angle)
     (progn
       (if __horizontal_angle (setq _horizontal_angle (car __horizontal_angle)))
       _horizontal_angle)))
  (:horizontal_angular_velocity
   (&rest __horizontal_angular_velocity)
   (if (keywordp (car __horizontal_angular_velocity))
       (send* _horizontal_angular_velocity __horizontal_angular_velocity)
     (progn
       (if __horizontal_angular_velocity (setq _horizontal_angular_velocity (car __horizontal_angular_velocity)))
       _horizontal_angular_velocity)))
  (:vertical_angle
   (&rest __vertical_angle)
   (if (keywordp (car __vertical_angle))
       (send* _vertical_angle __vertical_angle)
     (progn
       (if __vertical_angle (setq _vertical_angle (car __vertical_angle)))
       _vertical_angle)))
  (:vertical_angular_velocity
   (&rest __vertical_angular_velocity)
   (if (keywordp (car __vertical_angular_velocity))
       (send* _vertical_angular_velocity __vertical_angular_velocity)
     (progn
       (if __vertical_angular_velocity (setq _vertical_angular_velocity (car __vertical_angular_velocity)))
       _vertical_angular_velocity)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/ObjectTrackInfo _track_info
    (send _track_info :serialization-length)
    ;; perception_interface_msgs/ObjectTypeInfo _type_info
    (send _type_info :serialization-length)
    ;; perception_interface_msgs/Shape3f _shape
    (send _shape :serialization-length)
    ;; perception_interface_msgs/Point3f _relative_position
    (send _relative_position :serialization-length)
    ;; perception_interface_msgs/Vector3f _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; perception_interface_msgs/Vector3f _relative_acceleration
    (send _relative_acceleration :serialization-length)
    ;; float32 _relative_heading_yaw
    4
    ;; float32 _score
    4
    ;; perception_interface_msgs/ObjectConfidenceEnum _confidence_level
    (send _confidence_level :serialization-length)
    ;; float32 _relative_distance
    4
    ;; perception_interface_msgs/DirectionEnum _direction
    (send _direction :serialization-length)
    ;; perception_interface_msgs/Vector2f _horizontal_angle
    (send _horizontal_angle :serialization-length)
    ;; perception_interface_msgs/Vector2f _horizontal_angular_velocity
    (send _horizontal_angular_velocity :serialization-length)
    ;; perception_interface_msgs/Vector2f _vertical_angle
    (send _vertical_angle :serialization-length)
    ;; perception_interface_msgs/Vector2f _vertical_angular_velocity
    (send _vertical_angular_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/ObjectTrackInfo _track_info
       (send _track_info :serialize s)
     ;; perception_interface_msgs/ObjectTypeInfo _type_info
       (send _type_info :serialize s)
     ;; perception_interface_msgs/Shape3f _shape
       (send _shape :serialize s)
     ;; perception_interface_msgs/Point3f _relative_position
       (send _relative_position :serialize s)
     ;; perception_interface_msgs/Vector3f _relative_velocity
       (send _relative_velocity :serialize s)
     ;; perception_interface_msgs/Vector3f _relative_acceleration
       (send _relative_acceleration :serialize s)
     ;; float32 _relative_heading_yaw
       (sys::poke _relative_heading_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/ObjectConfidenceEnum _confidence_level
       (send _confidence_level :serialize s)
     ;; float32 _relative_distance
       (sys::poke _relative_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/DirectionEnum _direction
       (send _direction :serialize s)
     ;; perception_interface_msgs/Vector2f _horizontal_angle
       (send _horizontal_angle :serialize s)
     ;; perception_interface_msgs/Vector2f _horizontal_angular_velocity
       (send _horizontal_angular_velocity :serialize s)
     ;; perception_interface_msgs/Vector2f _vertical_angle
       (send _vertical_angle :serialize s)
     ;; perception_interface_msgs/Vector2f _vertical_angular_velocity
       (send _vertical_angular_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/ObjectTrackInfo _track_info
     (send _track_info :deserialize buf ptr-) (incf ptr- (send _track_info :serialization-length))
   ;; perception_interface_msgs/ObjectTypeInfo _type_info
     (send _type_info :deserialize buf ptr-) (incf ptr- (send _type_info :serialization-length))
   ;; perception_interface_msgs/Shape3f _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; perception_interface_msgs/Point3f _relative_position
     (send _relative_position :deserialize buf ptr-) (incf ptr- (send _relative_position :serialization-length))
   ;; perception_interface_msgs/Vector3f _relative_velocity
     (send _relative_velocity :deserialize buf ptr-) (incf ptr- (send _relative_velocity :serialization-length))
   ;; perception_interface_msgs/Vector3f _relative_acceleration
     (send _relative_acceleration :deserialize buf ptr-) (incf ptr- (send _relative_acceleration :serialization-length))
   ;; float32 _relative_heading_yaw
     (setq _relative_heading_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/ObjectConfidenceEnum _confidence_level
     (send _confidence_level :deserialize buf ptr-) (incf ptr- (send _confidence_level :serialization-length))
   ;; float32 _relative_distance
     (setq _relative_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/DirectionEnum _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; perception_interface_msgs/Vector2f _horizontal_angle
     (send _horizontal_angle :deserialize buf ptr-) (incf ptr- (send _horizontal_angle :serialization-length))
   ;; perception_interface_msgs/Vector2f _horizontal_angular_velocity
     (send _horizontal_angular_velocity :deserialize buf ptr-) (incf ptr- (send _horizontal_angular_velocity :serialization-length))
   ;; perception_interface_msgs/Vector2f _vertical_angle
     (send _vertical_angle :deserialize buf ptr-) (incf ptr- (send _vertical_angle :serialization-length))
   ;; perception_interface_msgs/Vector2f _vertical_angular_velocity
     (send _vertical_angular_velocity :deserialize buf ptr-) (incf ptr- (send _vertical_angular_velocity :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::ADBObjectData :md5sum-) "438e0802cd603d3e169832e0fef8c4f3")
(setf (get perception_interface_msgs::ADBObjectData :datatype-) "perception_interface_msgs/ADBObjectData")
(setf (get perception_interface_msgs::ADBObjectData :definition-)
      "perception_interface_msgs/ObjectTrackInfo track_info
perception_interface_msgs/ObjectTypeInfo type_info
perception_interface_msgs/Shape3f shape
perception_interface_msgs/Point3f relative_position
perception_interface_msgs/Vector3f relative_velocity
perception_interface_msgs/Vector3f relative_acceleration
float32 relative_heading_yaw
float32 score
perception_interface_msgs/ObjectConfidenceEnum confidence_level
float32 relative_distance
perception_interface_msgs/DirectionEnum direction
perception_interface_msgs/Vector2f horizontal_angle
perception_interface_msgs/Vector2f horizontal_angular_velocity
perception_interface_msgs/Vector2f vertical_angle
perception_interface_msgs/Vector2f vertical_angular_velocity

================================================================================
MSG: perception_interface_msgs/ObjectTrackInfo
uint64 track_id
uint64 track_times
float32 age_in_seconds

================================================================================
MSG: perception_interface_msgs/ObjectTypeInfo
perception_interface_msgs/ObjectTypePropertyEnum[] type_properties
perception_interface_msgs/ObjectTypeEnum type
perception_interface_msgs/GeneralObjectTypeEnum general_object_type
perception_interface_msgs/VehicleTypeEnum vehicle_type
perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type
perception_interface_msgs/VRUTypeEnum vru_type
perception_interface_msgs/VRUSubTypeEnum vru_sub_type
perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type
perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type
perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type
perception_interface_msgs/TrafficLightTypeEnum traffic_light_type
perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type

================================================================================
MSG: perception_interface_msgs/ObjectTypePropertyEnum
uint8 PROPERTY_OBJECT_TYPE_ENUM = 0
uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1
uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2
uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3
uint8 PROPERTY_VRU_TYPE_ENUM = 4
uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5
uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6
uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/ObjectTypeEnum
uint8 OBJECT_TYPE_GENERAL_OBJECT = 0
uint8 OBJECT_TYPE_VEHICLE = 1
uint8 OBJECT_TYPE_VRU = 2
uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3
uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/GeneralObjectTypeEnum
uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0
uint8 GENERAL_OBJECT_TYPE_POINT = 1
uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleTypeEnum
uint8 VEHICLE_TYPE_UNKNOWN = 0
uint8 VEHICLE_TYPE_CAR = 1
uint8 VEHICLE_TYPE_TRUCK = 2
uint8 VEHICLE_TYPE_BUS = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleSubTypeEnum
uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0
uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1
uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2
uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3
uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4
uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5
uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6
uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7
uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8
uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9
uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10
uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11
uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12
uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13
uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14
uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15
uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16
uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17
uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18
uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19
uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20
uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21
uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22
uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23
uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24
uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25
uint8 VEHICLE_SUB_TYPE_RV_BUS = 26
uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27
uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28
uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29
uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30
uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31
uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32
uint8 value

================================================================================
MSG: perception_interface_msgs/VRUTypeEnum
uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_TYPE_PEDESTRIAN = 1
uint8 VRU_TYPE_BICYCLIST = 2
uint8 VRU_TYPE_TRICYCLIST = 3
uint8 VRU_TYPE_TROLLEY = 4
uint8 VRU_TYPE_ANIMAL = 5
uint8 value

================================================================================
MSG: perception_interface_msgs/VRUSubTypeEnum
uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0
uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1
uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2
uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3
uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4
uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5
uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6
uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7
uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8
uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9
uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10
uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11
uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12
uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13
uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14
uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15
uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16
uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17
uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18
uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19
uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20
uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21
uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22
uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23
uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24
uint8 VRU_SUB_TYPE_ANIMAL = 25
uint8 value

================================================================================
MSG: perception_interface_msgs/VRUAniSubTypeEnum
uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_ANI_TYPE_DOG = 1
uint8 VRU_ANI_TYPE_CAT = 2
uint8 VRU_ANI_TYPE_HORSE = 3
uint8 VRU_ANI_TYPE_COW = 4
uint8 VRU_ANI_TYPE_SHEEP = 5
uint8 VRU_ANI_TYPE_PIG = 6
uint8 VRU_ANI_TYPE_OTHER = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/VRUPedSubTypeEnum
uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_PED_TYPE_WORKER = 1
uint8 VRU_PED_TYPE_CHILD = 2
uint8 VRU_PED_TYPE_ADULT = 3
uint8 VRU_PED_TYPE_POLICE = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficBarrierTypeEnum
uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0
uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10
uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12
uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13
uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14
uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16
uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17
uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18
uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19
uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22
uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23
uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24
uint8 TRAFFIC_BARRIER_TYPE_FAR = 25
uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightTypeEnum
uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/AvoidObjectTypeEnum
uint8 AVOID_VEHICLE_TYPE = 0
uint8 AVOID_VRU_TYPE = 1
uint8 AVOID_BARRIER_TYPE = 2
uint8 AVOID_OTHER_TYPE = 3
uint8 AVOID_TYPE_UNMARKED = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/Shape3f
float32 length
float32 height
float32 width

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/Vector3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/ObjectConfidenceEnum
uint8 LOW_CONFIDENCE = 0
uint8 MIDIUM_CONFIDENCE = 1
uint8 HIGH_CONFIDENCE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/DirectionEnum
uint8 UNKNOWN = 0
uint8 ONCOMING = 1
uint8 PRECEDING = 2
uint8 OTHERS = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/Vector2f
float32 x
float32 y

")



(provide :perception_interface_msgs/ADBObjectData "438e0802cd603d3e169832e0fef8c4f3")


