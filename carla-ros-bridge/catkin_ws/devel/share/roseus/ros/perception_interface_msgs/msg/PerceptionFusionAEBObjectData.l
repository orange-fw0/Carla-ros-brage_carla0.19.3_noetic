;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PerceptionFusionAEBObjectData)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PerceptionFusionAEBObjectData (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBOBJECTDATA")
  (make-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBOBJECTDATA"))

(in-package "ROS")
;;//! \htmlinclude PerceptionFusionAEBObjectData.msg.html


(defclass perception_interface_msgs::PerceptionFusionAEBObjectData
  :super ros::object
  :slots (_track_id _type_info _score _ttc _shape _relative_position _relative_velocity _relative_acceleration _relative_heading_yaw _relative_angular_velocity _velocity_relative_to_ground _acceleration_relative_to_ground ))

(defmethod perception_interface_msgs::PerceptionFusionAEBObjectData
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:type_info __type_info) (instance perception_interface_msgs::ObjectTypeInfo :init))
    ((:score __score) 0.0)
    ((:ttc __ttc) 0.0)
    ((:shape __shape) (instance perception_interface_msgs::Shape3d :init))
    ((:relative_position __relative_position) (instance perception_interface_msgs::Point3d :init))
    ((:relative_velocity __relative_velocity) (instance perception_interface_msgs::Vector3d :init))
    ((:relative_acceleration __relative_acceleration) (instance perception_interface_msgs::Vector3d :init))
    ((:relative_heading_yaw __relative_heading_yaw) 0.0)
    ((:relative_angular_velocity __relative_angular_velocity) 0.0)
    ((:velocity_relative_to_ground __velocity_relative_to_ground) (instance perception_interface_msgs::Vector3d :init))
    ((:acceleration_relative_to_ground __acceleration_relative_to_ground) (instance perception_interface_msgs::Vector3d :init))
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _type_info __type_info)
   (setq _score (float __score))
   (setq _ttc (float __ttc))
   (setq _shape __shape)
   (setq _relative_position __relative_position)
   (setq _relative_velocity __relative_velocity)
   (setq _relative_acceleration __relative_acceleration)
   (setq _relative_heading_yaw (float __relative_heading_yaw))
   (setq _relative_angular_velocity (float __relative_angular_velocity))
   (setq _velocity_relative_to_ground __velocity_relative_to_ground)
   (setq _acceleration_relative_to_ground __acceleration_relative_to_ground)
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:type_info
   (&rest __type_info)
   (if (keywordp (car __type_info))
       (send* _type_info __type_info)
     (progn
       (if __type_info (setq _type_info (car __type_info)))
       _type_info)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:ttc
   (&optional __ttc)
   (if __ttc (setq _ttc __ttc)) _ttc)
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
  (:relative_angular_velocity
   (&optional __relative_angular_velocity)
   (if __relative_angular_velocity (setq _relative_angular_velocity __relative_angular_velocity)) _relative_angular_velocity)
  (:velocity_relative_to_ground
   (&rest __velocity_relative_to_ground)
   (if (keywordp (car __velocity_relative_to_ground))
       (send* _velocity_relative_to_ground __velocity_relative_to_ground)
     (progn
       (if __velocity_relative_to_ground (setq _velocity_relative_to_ground (car __velocity_relative_to_ground)))
       _velocity_relative_to_ground)))
  (:acceleration_relative_to_ground
   (&rest __acceleration_relative_to_ground)
   (if (keywordp (car __acceleration_relative_to_ground))
       (send* _acceleration_relative_to_ground __acceleration_relative_to_ground)
     (progn
       (if __acceleration_relative_to_ground (setq _acceleration_relative_to_ground (car __acceleration_relative_to_ground)))
       _acceleration_relative_to_ground)))
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; perception_interface_msgs/ObjectTypeInfo _type_info
    (send _type_info :serialization-length)
    ;; float32 _score
    4
    ;; float32 _ttc
    4
    ;; perception_interface_msgs/Shape3d _shape
    (send _shape :serialization-length)
    ;; perception_interface_msgs/Point3d _relative_position
    (send _relative_position :serialization-length)
    ;; perception_interface_msgs/Vector3d _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; perception_interface_msgs/Vector3d _relative_acceleration
    (send _relative_acceleration :serialization-length)
    ;; float32 _relative_heading_yaw
    4
    ;; float32 _relative_angular_velocity
    4
    ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground
    (send _velocity_relative_to_ground :serialization-length)
    ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground
    (send _acceleration_relative_to_ground :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;; perception_interface_msgs/ObjectTypeInfo _type_info
       (send _type_info :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ttc
       (sys::poke _ttc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Shape3d _shape
       (send _shape :serialize s)
     ;; perception_interface_msgs/Point3d _relative_position
       (send _relative_position :serialize s)
     ;; perception_interface_msgs/Vector3d _relative_velocity
       (send _relative_velocity :serialize s)
     ;; perception_interface_msgs/Vector3d _relative_acceleration
       (send _relative_acceleration :serialize s)
     ;; float32 _relative_heading_yaw
       (sys::poke _relative_heading_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_angular_velocity
       (sys::poke _relative_angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground
       (send _velocity_relative_to_ground :serialize s)
     ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground
       (send _acceleration_relative_to_ground :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _track_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; perception_interface_msgs/ObjectTypeInfo _type_info
     (send _type_info :deserialize buf ptr-) (incf ptr- (send _type_info :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ttc
     (setq _ttc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Shape3d _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; perception_interface_msgs/Point3d _relative_position
     (send _relative_position :deserialize buf ptr-) (incf ptr- (send _relative_position :serialization-length))
   ;; perception_interface_msgs/Vector3d _relative_velocity
     (send _relative_velocity :deserialize buf ptr-) (incf ptr- (send _relative_velocity :serialization-length))
   ;; perception_interface_msgs/Vector3d _relative_acceleration
     (send _relative_acceleration :deserialize buf ptr-) (incf ptr- (send _relative_acceleration :serialization-length))
   ;; float32 _relative_heading_yaw
     (setq _relative_heading_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_angular_velocity
     (setq _relative_angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground
     (send _velocity_relative_to_ground :deserialize buf ptr-) (incf ptr- (send _velocity_relative_to_ground :serialization-length))
   ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground
     (send _acceleration_relative_to_ground :deserialize buf ptr-) (incf ptr- (send _acceleration_relative_to_ground :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::PerceptionFusionAEBObjectData :md5sum-) "9f5e0450010ff92a19eae803bb4452f8")
(setf (get perception_interface_msgs::PerceptionFusionAEBObjectData :datatype-) "perception_interface_msgs/PerceptionFusionAEBObjectData")
(setf (get perception_interface_msgs::PerceptionFusionAEBObjectData :definition-)
      "uint64 track_id
perception_interface_msgs/ObjectTypeInfo type_info
float32 score
float32 ttc
perception_interface_msgs/Shape3d shape
perception_interface_msgs/Point3d relative_position
perception_interface_msgs/Vector3d relative_velocity
perception_interface_msgs/Vector3d relative_acceleration
float32 relative_heading_yaw
float32 relative_angular_velocity
perception_interface_msgs/Vector3d velocity_relative_to_ground
perception_interface_msgs/Vector3d acceleration_relative_to_ground

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

")



(provide :perception_interface_msgs/PerceptionFusionAEBObjectData "9f5e0450010ff92a19eae803bb4452f8")


