;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::Object)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'Object (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::OBJECT")
  (make-package "PERCEPTION_INTERFACE_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html


(defclass perception_interface_msgs::Object
  :super ros::object
  :slots (_camera_source _camera_model _type_info _score _visibility_2d _bounding_box_2d _track_info _reid_feature _vehicle_state_info _barrier_state_info _shape_3d _heading_theta_bv _velocity_bv _location_bv _aeb_feature _ttc _is_cipv _vehicle_vpb_info _available _subtype_score ))

(defmethod perception_interface_msgs::Object
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:type_info __type_info) (instance perception_interface_msgs::ObjectTypeInfo :init))
    ((:score __score) 0.0)
    ((:visibility_2d __visibility_2d) 0.0)
    ((:bounding_box_2d __bounding_box_2d) (instance perception_interface_msgs::Rect4f :init))
    ((:track_info __track_info) (instance perception_interface_msgs::ObjectTrackInfo :init))
    ((:reid_feature __reid_feature) (instance perception_interface_msgs::ObjectReIDFeature :init))
    ((:vehicle_state_info __vehicle_state_info) (instance perception_interface_msgs::VehicleStateInfo :init))
    ((:barrier_state_info __barrier_state_info) (instance perception_interface_msgs::BarrierStateInfo :init))
    ((:shape_3d __shape_3d) (instance perception_interface_msgs::Shape3f :init))
    ((:heading_theta_bv __heading_theta_bv) 0.0)
    ((:velocity_bv __velocity_bv) (instance perception_interface_msgs::Vector3f :init))
    ((:location_bv __location_bv) (instance perception_interface_msgs::Point3f :init))
    ((:aeb_feature __aeb_feature) (instance perception_interface_msgs::ObjectAEBFeature :init))
    ((:ttc __ttc) 0.0)
    ((:is_cipv __is_cipv) nil)
    ((:vehicle_vpb_info __vehicle_vpb_info) (instance perception_interface_msgs::VehicleVPBInfo :init))
    ((:available __available) nil)
    ((:subtype_score __subtype_score) 0.0)
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _type_info __type_info)
   (setq _score (float __score))
   (setq _visibility_2d (float __visibility_2d))
   (setq _bounding_box_2d __bounding_box_2d)
   (setq _track_info __track_info)
   (setq _reid_feature __reid_feature)
   (setq _vehicle_state_info __vehicle_state_info)
   (setq _barrier_state_info __barrier_state_info)
   (setq _shape_3d __shape_3d)
   (setq _heading_theta_bv (float __heading_theta_bv))
   (setq _velocity_bv __velocity_bv)
   (setq _location_bv __location_bv)
   (setq _aeb_feature __aeb_feature)
   (setq _ttc (float __ttc))
   (setq _is_cipv __is_cipv)
   (setq _vehicle_vpb_info __vehicle_vpb_info)
   (setq _available __available)
   (setq _subtype_score (float __subtype_score))
   self)
  (:camera_source
   (&rest __camera_source)
   (if (keywordp (car __camera_source))
       (send* _camera_source __camera_source)
     (progn
       (if __camera_source (setq _camera_source (car __camera_source)))
       _camera_source)))
  (:camera_model
   (&rest __camera_model)
   (if (keywordp (car __camera_model))
       (send* _camera_model __camera_model)
     (progn
       (if __camera_model (setq _camera_model (car __camera_model)))
       _camera_model)))
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
  (:visibility_2d
   (&optional __visibility_2d)
   (if __visibility_2d (setq _visibility_2d __visibility_2d)) _visibility_2d)
  (:bounding_box_2d
   (&rest __bounding_box_2d)
   (if (keywordp (car __bounding_box_2d))
       (send* _bounding_box_2d __bounding_box_2d)
     (progn
       (if __bounding_box_2d (setq _bounding_box_2d (car __bounding_box_2d)))
       _bounding_box_2d)))
  (:track_info
   (&rest __track_info)
   (if (keywordp (car __track_info))
       (send* _track_info __track_info)
     (progn
       (if __track_info (setq _track_info (car __track_info)))
       _track_info)))
  (:reid_feature
   (&rest __reid_feature)
   (if (keywordp (car __reid_feature))
       (send* _reid_feature __reid_feature)
     (progn
       (if __reid_feature (setq _reid_feature (car __reid_feature)))
       _reid_feature)))
  (:vehicle_state_info
   (&rest __vehicle_state_info)
   (if (keywordp (car __vehicle_state_info))
       (send* _vehicle_state_info __vehicle_state_info)
     (progn
       (if __vehicle_state_info (setq _vehicle_state_info (car __vehicle_state_info)))
       _vehicle_state_info)))
  (:barrier_state_info
   (&rest __barrier_state_info)
   (if (keywordp (car __barrier_state_info))
       (send* _barrier_state_info __barrier_state_info)
     (progn
       (if __barrier_state_info (setq _barrier_state_info (car __barrier_state_info)))
       _barrier_state_info)))
  (:shape_3d
   (&rest __shape_3d)
   (if (keywordp (car __shape_3d))
       (send* _shape_3d __shape_3d)
     (progn
       (if __shape_3d (setq _shape_3d (car __shape_3d)))
       _shape_3d)))
  (:heading_theta_bv
   (&optional __heading_theta_bv)
   (if __heading_theta_bv (setq _heading_theta_bv __heading_theta_bv)) _heading_theta_bv)
  (:velocity_bv
   (&rest __velocity_bv)
   (if (keywordp (car __velocity_bv))
       (send* _velocity_bv __velocity_bv)
     (progn
       (if __velocity_bv (setq _velocity_bv (car __velocity_bv)))
       _velocity_bv)))
  (:location_bv
   (&rest __location_bv)
   (if (keywordp (car __location_bv))
       (send* _location_bv __location_bv)
     (progn
       (if __location_bv (setq _location_bv (car __location_bv)))
       _location_bv)))
  (:aeb_feature
   (&rest __aeb_feature)
   (if (keywordp (car __aeb_feature))
       (send* _aeb_feature __aeb_feature)
     (progn
       (if __aeb_feature (setq _aeb_feature (car __aeb_feature)))
       _aeb_feature)))
  (:ttc
   (&optional __ttc)
   (if __ttc (setq _ttc __ttc)) _ttc)
  (:is_cipv
   (&optional (__is_cipv :null))
   (if (not (eq __is_cipv :null)) (setq _is_cipv __is_cipv)) _is_cipv)
  (:vehicle_vpb_info
   (&rest __vehicle_vpb_info)
   (if (keywordp (car __vehicle_vpb_info))
       (send* _vehicle_vpb_info __vehicle_vpb_info)
     (progn
       (if __vehicle_vpb_info (setq _vehicle_vpb_info (car __vehicle_vpb_info)))
       _vehicle_vpb_info)))
  (:available
   (&optional (__available :null))
   (if (not (eq __available :null)) (setq _available __available)) _available)
  (:subtype_score
   (&optional __subtype_score)
   (if __subtype_score (setq _subtype_score __subtype_score)) _subtype_score)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; perception_interface_msgs/ObjectTypeInfo _type_info
    (send _type_info :serialization-length)
    ;; float32 _score
    4
    ;; float32 _visibility_2d
    4
    ;; perception_interface_msgs/Rect4f _bounding_box_2d
    (send _bounding_box_2d :serialization-length)
    ;; perception_interface_msgs/ObjectTrackInfo _track_info
    (send _track_info :serialization-length)
    ;; perception_interface_msgs/ObjectReIDFeature _reid_feature
    (send _reid_feature :serialization-length)
    ;; perception_interface_msgs/VehicleStateInfo _vehicle_state_info
    (send _vehicle_state_info :serialization-length)
    ;; perception_interface_msgs/BarrierStateInfo _barrier_state_info
    (send _barrier_state_info :serialization-length)
    ;; perception_interface_msgs/Shape3f _shape_3d
    (send _shape_3d :serialization-length)
    ;; float32 _heading_theta_bv
    4
    ;; perception_interface_msgs/Vector3f _velocity_bv
    (send _velocity_bv :serialization-length)
    ;; perception_interface_msgs/Point3f _location_bv
    (send _location_bv :serialization-length)
    ;; perception_interface_msgs/ObjectAEBFeature _aeb_feature
    (send _aeb_feature :serialization-length)
    ;; float32 _ttc
    4
    ;; bool _is_cipv
    1
    ;; perception_interface_msgs/VehicleVPBInfo _vehicle_vpb_info
    (send _vehicle_vpb_info :serialization-length)
    ;; bool _available
    1
    ;; float32 _subtype_score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_source
       (send _camera_source :serialize s)
     ;; perception_interface_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; perception_interface_msgs/ObjectTypeInfo _type_info
       (send _type_info :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _visibility_2d
       (sys::poke _visibility_2d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Rect4f _bounding_box_2d
       (send _bounding_box_2d :serialize s)
     ;; perception_interface_msgs/ObjectTrackInfo _track_info
       (send _track_info :serialize s)
     ;; perception_interface_msgs/ObjectReIDFeature _reid_feature
       (send _reid_feature :serialize s)
     ;; perception_interface_msgs/VehicleStateInfo _vehicle_state_info
       (send _vehicle_state_info :serialize s)
     ;; perception_interface_msgs/BarrierStateInfo _barrier_state_info
       (send _barrier_state_info :serialize s)
     ;; perception_interface_msgs/Shape3f _shape_3d
       (send _shape_3d :serialize s)
     ;; float32 _heading_theta_bv
       (sys::poke _heading_theta_bv (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Vector3f _velocity_bv
       (send _velocity_bv :serialize s)
     ;; perception_interface_msgs/Point3f _location_bv
       (send _location_bv :serialize s)
     ;; perception_interface_msgs/ObjectAEBFeature _aeb_feature
       (send _aeb_feature :serialize s)
     ;; float32 _ttc
       (sys::poke _ttc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_cipv
       (if _is_cipv (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/VehicleVPBInfo _vehicle_vpb_info
       (send _vehicle_vpb_info :serialize s)
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; float32 _subtype_score
       (sys::poke _subtype_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_source
     (send _camera_source :deserialize buf ptr-) (incf ptr- (send _camera_source :serialization-length))
   ;; perception_interface_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; perception_interface_msgs/ObjectTypeInfo _type_info
     (send _type_info :deserialize buf ptr-) (incf ptr- (send _type_info :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _visibility_2d
     (setq _visibility_2d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Rect4f _bounding_box_2d
     (send _bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d :serialization-length))
   ;; perception_interface_msgs/ObjectTrackInfo _track_info
     (send _track_info :deserialize buf ptr-) (incf ptr- (send _track_info :serialization-length))
   ;; perception_interface_msgs/ObjectReIDFeature _reid_feature
     (send _reid_feature :deserialize buf ptr-) (incf ptr- (send _reid_feature :serialization-length))
   ;; perception_interface_msgs/VehicleStateInfo _vehicle_state_info
     (send _vehicle_state_info :deserialize buf ptr-) (incf ptr- (send _vehicle_state_info :serialization-length))
   ;; perception_interface_msgs/BarrierStateInfo _barrier_state_info
     (send _barrier_state_info :deserialize buf ptr-) (incf ptr- (send _barrier_state_info :serialization-length))
   ;; perception_interface_msgs/Shape3f _shape_3d
     (send _shape_3d :deserialize buf ptr-) (incf ptr- (send _shape_3d :serialization-length))
   ;; float32 _heading_theta_bv
     (setq _heading_theta_bv (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Vector3f _velocity_bv
     (send _velocity_bv :deserialize buf ptr-) (incf ptr- (send _velocity_bv :serialization-length))
   ;; perception_interface_msgs/Point3f _location_bv
     (send _location_bv :deserialize buf ptr-) (incf ptr- (send _location_bv :serialization-length))
   ;; perception_interface_msgs/ObjectAEBFeature _aeb_feature
     (send _aeb_feature :deserialize buf ptr-) (incf ptr- (send _aeb_feature :serialization-length))
   ;; float32 _ttc
     (setq _ttc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_cipv
     (setq _is_cipv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/VehicleVPBInfo _vehicle_vpb_info
     (send _vehicle_vpb_info :deserialize buf ptr-) (incf ptr- (send _vehicle_vpb_info :serialization-length))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _subtype_score
     (setq _subtype_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::Object :md5sum-) "c17608303369a0d2549284c16303a11b")
(setf (get perception_interface_msgs::Object :datatype-) "perception_interface_msgs/Object")
(setf (get perception_interface_msgs::Object :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/ObjectTypeInfo type_info
float32 score
float32 visibility_2d
perception_interface_msgs/Rect4f bounding_box_2d
perception_interface_msgs/ObjectTrackInfo track_info
perception_interface_msgs/ObjectReIDFeature reid_feature
perception_interface_msgs/VehicleStateInfo vehicle_state_info
perception_interface_msgs/BarrierStateInfo barrier_state_info
perception_interface_msgs/Shape3f shape_3d
float32 heading_theta_bv
perception_interface_msgs/Vector3f velocity_bv
perception_interface_msgs/Point3f location_bv
perception_interface_msgs/ObjectAEBFeature aeb_feature
float32 ttc
bool is_cipv
perception_interface_msgs/VehicleVPBInfo vehicle_vpb_info
bool available
float32 subtype_score

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

================================================================================
MSG: perception_interface_msgs/CameraModelEnum
uint8 CAMERA_MODEL_UNKNOWN = 0
uint8 CAMERA_MODEL_RAW = 1
uint8 CAMERA_MODEL_CYLINDER = 2
uint8 CAMERA_MODEL_DEDISTORT = 3
uint8 CAMERA_MODEL_PSTITCH = 4
uint8 CAMERA_MODEL_RESERVED_A = 5
uint8 CAMERA_MODEL_RESERVED_B = 6
uint8 CAMERA_MODEL_RESERVED_C = 7
uint8 value

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
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

================================================================================
MSG: perception_interface_msgs/ObjectTrackInfo
uint64 track_id
uint64 track_times
float32 age_in_seconds

================================================================================
MSG: perception_interface_msgs/ObjectReIDFeature
float32[] data

================================================================================
MSG: perception_interface_msgs/VehicleStateInfo
perception_interface_msgs/VehicleBrakeLightInfo brake_light_info
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

================================================================================
MSG: perception_interface_msgs/BarrierStateInfo
perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info

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

================================================================================
MSG: perception_interface_msgs/Shape3f
float32 length
float32 height
float32 width

================================================================================
MSG: perception_interface_msgs/Vector3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/ObjectAEBFeature
float32[] data

================================================================================
MSG: perception_interface_msgs/VehicleVPBInfo
uint8 vpb_point_num
float32[] vpb_bv_x
float32[] vpb_bv_y
float32[] vpb_bv_z

")



(provide :perception_interface_msgs/Object "c17608303369a0d2549284c16303a11b")


