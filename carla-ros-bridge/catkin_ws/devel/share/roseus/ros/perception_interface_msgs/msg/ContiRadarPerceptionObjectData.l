;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ContiRadarPerceptionObjectData)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ContiRadarPerceptionObjectData (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARPERCEPTIONOBJECTDATA")
  (make-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARPERCEPTIONOBJECTDATA"))

(in-package "ROS")
;;//! \htmlinclude ContiRadarPerceptionObjectData.msg.html


(defclass perception_interface_msgs::ContiRadarPerceptionObjectData
  :super ros::object
  :slots (_object_id _relative_position _relative_velocity _orientation_angle _longitudinal_relative_acceleration _lateral_relative_acceleration _length _width _radar_cross_section _longitudinal_relative_distance_rms _lateral_relative_distance_rms _longitudinal_relative_velocity_rms _lateral_relative_velocity_rms _longitudinal_relative_acceleration_rms _lateral_relative_acceleration_rms _relative_orientation_angle_rms _type_info _dynamic_property _measurement_state _existence_probability_type _reserved_info ))

(defmethod perception_interface_msgs::ContiRadarPerceptionObjectData
  (:init
   (&key
    ((:object_id __object_id) 0)
    ((:relative_position __relative_position) (instance perception_interface_msgs::Point3d :init))
    ((:relative_velocity __relative_velocity) (instance perception_interface_msgs::Vector3d :init))
    ((:orientation_angle __orientation_angle) 0.0)
    ((:longitudinal_relative_acceleration __longitudinal_relative_acceleration) 0.0)
    ((:lateral_relative_acceleration __lateral_relative_acceleration) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:radar_cross_section __radar_cross_section) 0.0)
    ((:longitudinal_relative_distance_rms __longitudinal_relative_distance_rms) 0)
    ((:lateral_relative_distance_rms __lateral_relative_distance_rms) 0)
    ((:longitudinal_relative_velocity_rms __longitudinal_relative_velocity_rms) 0)
    ((:lateral_relative_velocity_rms __lateral_relative_velocity_rms) 0)
    ((:longitudinal_relative_acceleration_rms __longitudinal_relative_acceleration_rms) 0)
    ((:lateral_relative_acceleration_rms __lateral_relative_acceleration_rms) 0)
    ((:relative_orientation_angle_rms __relative_orientation_angle_rms) 0)
    ((:type_info __type_info) (instance perception_interface_msgs::ObjectTypeInfo :init))
    ((:dynamic_property __dynamic_property) (instance perception_interface_msgs::ContiRadarDynamicProperty :init))
    ((:measurement_state __measurement_state) (instance perception_interface_msgs::ContiRadarMeasurementState :init))
    ((:existence_probability_type __existence_probability_type) (instance perception_interface_msgs::ContiRadarExistenceProbabilityType :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _object_id (round __object_id))
   (setq _relative_position __relative_position)
   (setq _relative_velocity __relative_velocity)
   (setq _orientation_angle (float __orientation_angle))
   (setq _longitudinal_relative_acceleration (float __longitudinal_relative_acceleration))
   (setq _lateral_relative_acceleration (float __lateral_relative_acceleration))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _radar_cross_section (float __radar_cross_section))
   (setq _longitudinal_relative_distance_rms (round __longitudinal_relative_distance_rms))
   (setq _lateral_relative_distance_rms (round __lateral_relative_distance_rms))
   (setq _longitudinal_relative_velocity_rms (round __longitudinal_relative_velocity_rms))
   (setq _lateral_relative_velocity_rms (round __lateral_relative_velocity_rms))
   (setq _longitudinal_relative_acceleration_rms (round __longitudinal_relative_acceleration_rms))
   (setq _lateral_relative_acceleration_rms (round __lateral_relative_acceleration_rms))
   (setq _relative_orientation_angle_rms (round __relative_orientation_angle_rms))
   (setq _type_info __type_info)
   (setq _dynamic_property __dynamic_property)
   (setq _measurement_state __measurement_state)
   (setq _existence_probability_type __existence_probability_type)
   (setq _reserved_info (string __reserved_info))
   self)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
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
  (:orientation_angle
   (&optional __orientation_angle)
   (if __orientation_angle (setq _orientation_angle __orientation_angle)) _orientation_angle)
  (:longitudinal_relative_acceleration
   (&optional __longitudinal_relative_acceleration)
   (if __longitudinal_relative_acceleration (setq _longitudinal_relative_acceleration __longitudinal_relative_acceleration)) _longitudinal_relative_acceleration)
  (:lateral_relative_acceleration
   (&optional __lateral_relative_acceleration)
   (if __lateral_relative_acceleration (setq _lateral_relative_acceleration __lateral_relative_acceleration)) _lateral_relative_acceleration)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:radar_cross_section
   (&optional __radar_cross_section)
   (if __radar_cross_section (setq _radar_cross_section __radar_cross_section)) _radar_cross_section)
  (:longitudinal_relative_distance_rms
   (&optional __longitudinal_relative_distance_rms)
   (if __longitudinal_relative_distance_rms (setq _longitudinal_relative_distance_rms __longitudinal_relative_distance_rms)) _longitudinal_relative_distance_rms)
  (:lateral_relative_distance_rms
   (&optional __lateral_relative_distance_rms)
   (if __lateral_relative_distance_rms (setq _lateral_relative_distance_rms __lateral_relative_distance_rms)) _lateral_relative_distance_rms)
  (:longitudinal_relative_velocity_rms
   (&optional __longitudinal_relative_velocity_rms)
   (if __longitudinal_relative_velocity_rms (setq _longitudinal_relative_velocity_rms __longitudinal_relative_velocity_rms)) _longitudinal_relative_velocity_rms)
  (:lateral_relative_velocity_rms
   (&optional __lateral_relative_velocity_rms)
   (if __lateral_relative_velocity_rms (setq _lateral_relative_velocity_rms __lateral_relative_velocity_rms)) _lateral_relative_velocity_rms)
  (:longitudinal_relative_acceleration_rms
   (&optional __longitudinal_relative_acceleration_rms)
   (if __longitudinal_relative_acceleration_rms (setq _longitudinal_relative_acceleration_rms __longitudinal_relative_acceleration_rms)) _longitudinal_relative_acceleration_rms)
  (:lateral_relative_acceleration_rms
   (&optional __lateral_relative_acceleration_rms)
   (if __lateral_relative_acceleration_rms (setq _lateral_relative_acceleration_rms __lateral_relative_acceleration_rms)) _lateral_relative_acceleration_rms)
  (:relative_orientation_angle_rms
   (&optional __relative_orientation_angle_rms)
   (if __relative_orientation_angle_rms (setq _relative_orientation_angle_rms __relative_orientation_angle_rms)) _relative_orientation_angle_rms)
  (:type_info
   (&rest __type_info)
   (if (keywordp (car __type_info))
       (send* _type_info __type_info)
     (progn
       (if __type_info (setq _type_info (car __type_info)))
       _type_info)))
  (:dynamic_property
   (&rest __dynamic_property)
   (if (keywordp (car __dynamic_property))
       (send* _dynamic_property __dynamic_property)
     (progn
       (if __dynamic_property (setq _dynamic_property (car __dynamic_property)))
       _dynamic_property)))
  (:measurement_state
   (&rest __measurement_state)
   (if (keywordp (car __measurement_state))
       (send* _measurement_state __measurement_state)
     (progn
       (if __measurement_state (setq _measurement_state (car __measurement_state)))
       _measurement_state)))
  (:existence_probability_type
   (&rest __existence_probability_type)
   (if (keywordp (car __existence_probability_type))
       (send* _existence_probability_type __existence_probability_type)
     (progn
       (if __existence_probability_type (setq _existence_probability_type (car __existence_probability_type)))
       _existence_probability_type)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint16 _object_id
    2
    ;; perception_interface_msgs/Point3d _relative_position
    (send _relative_position :serialization-length)
    ;; perception_interface_msgs/Vector3d _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; float32 _orientation_angle
    4
    ;; float32 _longitudinal_relative_acceleration
    4
    ;; float32 _lateral_relative_acceleration
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _radar_cross_section
    4
    ;; uint8 _longitudinal_relative_distance_rms
    1
    ;; uint8 _lateral_relative_distance_rms
    1
    ;; uint8 _longitudinal_relative_velocity_rms
    1
    ;; uint8 _lateral_relative_velocity_rms
    1
    ;; uint8 _longitudinal_relative_acceleration_rms
    1
    ;; uint8 _lateral_relative_acceleration_rms
    1
    ;; uint8 _relative_orientation_angle_rms
    1
    ;; perception_interface_msgs/ObjectTypeInfo _type_info
    (send _type_info :serialization-length)
    ;; perception_interface_msgs/ContiRadarDynamicProperty _dynamic_property
    (send _dynamic_property :serialization-length)
    ;; perception_interface_msgs/ContiRadarMeasurementState _measurement_state
    (send _measurement_state :serialization-length)
    ;; perception_interface_msgs/ContiRadarExistenceProbabilityType _existence_probability_type
    (send _existence_probability_type :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _object_id
       (write-word _object_id s)
     ;; perception_interface_msgs/Point3d _relative_position
       (send _relative_position :serialize s)
     ;; perception_interface_msgs/Vector3d _relative_velocity
       (send _relative_velocity :serialize s)
     ;; float32 _orientation_angle
       (sys::poke _orientation_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitudinal_relative_acceleration
       (sys::poke _longitudinal_relative_acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_relative_acceleration
       (sys::poke _lateral_relative_acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radar_cross_section
       (sys::poke _radar_cross_section (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _longitudinal_relative_distance_rms
       (write-byte _longitudinal_relative_distance_rms s)
     ;; uint8 _lateral_relative_distance_rms
       (write-byte _lateral_relative_distance_rms s)
     ;; uint8 _longitudinal_relative_velocity_rms
       (write-byte _longitudinal_relative_velocity_rms s)
     ;; uint8 _lateral_relative_velocity_rms
       (write-byte _lateral_relative_velocity_rms s)
     ;; uint8 _longitudinal_relative_acceleration_rms
       (write-byte _longitudinal_relative_acceleration_rms s)
     ;; uint8 _lateral_relative_acceleration_rms
       (write-byte _lateral_relative_acceleration_rms s)
     ;; uint8 _relative_orientation_angle_rms
       (write-byte _relative_orientation_angle_rms s)
     ;; perception_interface_msgs/ObjectTypeInfo _type_info
       (send _type_info :serialize s)
     ;; perception_interface_msgs/ContiRadarDynamicProperty _dynamic_property
       (send _dynamic_property :serialize s)
     ;; perception_interface_msgs/ContiRadarMeasurementState _measurement_state
       (send _measurement_state :serialize s)
     ;; perception_interface_msgs/ContiRadarExistenceProbabilityType _existence_probability_type
       (send _existence_probability_type :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _object_id
     (setq _object_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; perception_interface_msgs/Point3d _relative_position
     (send _relative_position :deserialize buf ptr-) (incf ptr- (send _relative_position :serialization-length))
   ;; perception_interface_msgs/Vector3d _relative_velocity
     (send _relative_velocity :deserialize buf ptr-) (incf ptr- (send _relative_velocity :serialization-length))
   ;; float32 _orientation_angle
     (setq _orientation_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitudinal_relative_acceleration
     (setq _longitudinal_relative_acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_relative_acceleration
     (setq _lateral_relative_acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radar_cross_section
     (setq _radar_cross_section (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _longitudinal_relative_distance_rms
     (setq _longitudinal_relative_distance_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lateral_relative_distance_rms
     (setq _lateral_relative_distance_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _longitudinal_relative_velocity_rms
     (setq _longitudinal_relative_velocity_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lateral_relative_velocity_rms
     (setq _lateral_relative_velocity_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _longitudinal_relative_acceleration_rms
     (setq _longitudinal_relative_acceleration_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lateral_relative_acceleration_rms
     (setq _lateral_relative_acceleration_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _relative_orientation_angle_rms
     (setq _relative_orientation_angle_rms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/ObjectTypeInfo _type_info
     (send _type_info :deserialize buf ptr-) (incf ptr- (send _type_info :serialization-length))
   ;; perception_interface_msgs/ContiRadarDynamicProperty _dynamic_property
     (send _dynamic_property :deserialize buf ptr-) (incf ptr- (send _dynamic_property :serialization-length))
   ;; perception_interface_msgs/ContiRadarMeasurementState _measurement_state
     (send _measurement_state :deserialize buf ptr-) (incf ptr- (send _measurement_state :serialization-length))
   ;; perception_interface_msgs/ContiRadarExistenceProbabilityType _existence_probability_type
     (send _existence_probability_type :deserialize buf ptr-) (incf ptr- (send _existence_probability_type :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::ContiRadarPerceptionObjectData :md5sum-) "49e79b4e2258ff942724a3f1d206fc88")
(setf (get perception_interface_msgs::ContiRadarPerceptionObjectData :datatype-) "perception_interface_msgs/ContiRadarPerceptionObjectData")
(setf (get perception_interface_msgs::ContiRadarPerceptionObjectData :definition-)
      "uint16 object_id
perception_interface_msgs/Point3d relative_position
perception_interface_msgs/Vector3d relative_velocity
float32 orientation_angle
float32 longitudinal_relative_acceleration
float32 lateral_relative_acceleration
float32 length
float32 width
float32 radar_cross_section
uint8 longitudinal_relative_distance_rms
uint8 lateral_relative_distance_rms
uint8 longitudinal_relative_velocity_rms
uint8 lateral_relative_velocity_rms
uint8 longitudinal_relative_acceleration_rms
uint8 lateral_relative_acceleration_rms
uint8 relative_orientation_angle_rms
perception_interface_msgs/ObjectTypeInfo type_info
perception_interface_msgs/ContiRadarDynamicProperty dynamic_property
perception_interface_msgs/ContiRadarMeasurementState measurement_state
perception_interface_msgs/ContiRadarExistenceProbabilityType existence_probability_type
string reserved_info

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/Vector3d
float64 x
float64 y
float64 z

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
MSG: perception_interface_msgs/ContiRadarDynamicProperty
uint8 MOVING = 0
uint8 STATIONARY = 1
uint8 ON_COMING = 2
uint8 STATIONARY_CANDIDATE = 3
uint8 UNKNOWN = 4
uint8 CROSSING_STATIONARY = 5
uint8 CROSSING_MOVING = 6
uint8 STOPPED = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/ContiRadarMeasurementState
uint8 DELETED = 0
uint8 NEW = 1
uint8 MEASURED = 2
uint8 PREDICTED = 3
uint8 DELETED_FOR_MERGE = 4
uint8 NEW_FROM_MERGE = 5
uint8 value

================================================================================
MSG: perception_interface_msgs/ContiRadarExistenceProbabilityType
uint8 INVALID = 0
uint8 PROBABILITY_25 = 1
uint8 PROBABILITY_50 = 2
uint8 PROBABILITY_75 = 3
uint8 PROBABILITY_90 = 4
uint8 PROBABILITY_99 = 5
uint8 PROBABILITY_99_9 = 6
uint8 PROBABILITY_100 = 7
uint8 value

")



(provide :perception_interface_msgs/ContiRadarPerceptionObjectData "49e79b4e2258ff942724a3f1d206fc88")


