;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LidarPerceptionObjects)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LidarPerceptionObjects (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LIDARPERCEPTIONOBJECTS")
  (make-package "PERCEPTION_INTERFACE_MSGS::LIDARPERCEPTIONOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude LidarPerceptionObjects.msg.html


(intern "*LIDAR_PERCEPTION_OBJECT_DATA*" (find-package "PERCEPTION_INTERFACE_MSGS::LIDARPERCEPTIONOBJECTS"))
(shadow '*LIDAR_PERCEPTION_OBJECT_DATA* (find-package "PERCEPTION_INTERFACE_MSGS::LIDARPERCEPTIONOBJECTS"))
(defconstant perception_interface_msgs::LidarPerceptionObjects::*LIDAR_PERCEPTION_OBJECT_DATA* 1)

(defun perception_interface_msgs::LidarPerceptionObjects-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::LidarPerceptionObjects::*LIDAR_PERCEPTION_OBJECT_DATA*)
        (t nil)))

(defclass perception_interface_msgs::LidarPerceptionObjects
  :super ros::object
  :slots (_available _lidar_perception_object_data ))

(defmethod perception_interface_msgs::LidarPerceptionObjects
  (:init
   (&key
    ((:available __available) 0)
    ((:lidar_perception_object_data __lidar_perception_object_data) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lidar_perception_object_data __lidar_perception_object_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lidar_perception_object_data
   (&rest __lidar_perception_object_data)
   (if (keywordp (car __lidar_perception_object_data))
       (send* _lidar_perception_object_data __lidar_perception_object_data)
     (progn
       (if __lidar_perception_object_data (setq _lidar_perception_object_data (car __lidar_perception_object_data)))
       _lidar_perception_object_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; perception_interface_msgs/LidarPerceptionObjectData[] _lidar_perception_object_data
    (apply #'+ (send-all _lidar_perception_object_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; perception_interface_msgs/LidarPerceptionObjectData[] _lidar_perception_object_data
     (write-long (length _lidar_perception_object_data) s)
     (dolist (elem _lidar_perception_object_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/LidarPerceptionObjectData[] _lidar_perception_object_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lidar_perception_object_data (let (r) (dotimes (i n) (push (instance perception_interface_msgs::LidarPerceptionObjectData :init) r)) r))
     (dolist (elem- _lidar_perception_object_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::LidarPerceptionObjects :md5sum-) "1e35a703984483971b51dfe033cd45d4")
(setf (get perception_interface_msgs::LidarPerceptionObjects :datatype-) "perception_interface_msgs/LidarPerceptionObjects")
(setf (get perception_interface_msgs::LidarPerceptionObjects :definition-)
      "uint8 LIDAR_PERCEPTION_OBJECT_DATA = 1
uint8 available
perception_interface_msgs/LidarPerceptionObjectData[] lidar_perception_object_data

================================================================================
MSG: perception_interface_msgs/LidarPerceptionObjectData
uint64 track_id
perception_interface_msgs/ObjectTypeInfo type_info
perception_interface_msgs/Shape3d shape
perception_interface_msgs/Shape3d shape_sigma
perception_interface_msgs/Point3d position
perception_interface_msgs/Point3d position_sigma
perception_interface_msgs/Vector3d velocity
perception_interface_msgs/Vector3d velocity_sigma
perception_interface_msgs/Vector3d acceleration
perception_interface_msgs/Vector3d acceleration_sigma
float32 heading_yaw
float32 heading_yaw_sigma
float32 angular_velocity
float32 angular_velocity_sigma
perception_interface_msgs/Point3d relative_position
perception_interface_msgs/Point3d relative_position_sigma
perception_interface_msgs/Vector3d relative_velocity
perception_interface_msgs/Vector3d relative_velocity_sigma
perception_interface_msgs/Vector3d relative_acceleration
perception_interface_msgs/Vector3d relative_acceleration_sigma
float32 relative_heading_yaw
float32 relative_heading_yaw_sigma
float32 relative_angular_velocity
float32 relative_angular_velocity_sigma
perception_interface_msgs/Vector3d velocity_relative_to_ground
perception_interface_msgs/Vector3d velocity_relative_to_ground_sigma
perception_interface_msgs/Vector3d acceleration_relative_to_ground
perception_interface_msgs/Vector3d acceleration_relative_to_ground_sigma
float32 score
perception_interface_msgs/Polygon3f polygon_bottom
perception_interface_msgs/Polygon3f polygon_top
uint8 available
string reserved_info

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
MSG: perception_interface_msgs/Shape3d
float64 height
float64 length
float64 width

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
MSG: perception_interface_msgs/Polygon3f
perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :perception_interface_msgs/LidarPerceptionObjects "1e35a703984483971b51dfe033cd45d4")


