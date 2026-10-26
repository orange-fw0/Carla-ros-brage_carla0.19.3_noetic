;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LidarBEVGridMapResult)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LidarBEVGridMapResult (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LIDARBEVGRIDMAPRESULT")
  (make-package "PERCEPTION_INTERFACE_MSGS::LIDARBEVGRIDMAPRESULT"))

(in-package "ROS")
;;//! \htmlinclude LidarBEVGridMapResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::LidarBEVGridMapResult
  :super ros::object
  :slots (_header _meta _available _width _height _sparse_flag _score _visibility _type_info _velocity _angular_velocity _grid_height _sparse_x _sparse_y _front _back _left _right _grid_size_w _grid_size_h ))

(defmethod perception_interface_msgs::LidarBEVGridMapResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::LidarPerceptionResultMeta :init))
    ((:available __available) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:sparse_flag __sparse_flag) nil)
    ((:score __score) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:visibility __visibility) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:type_info __type_info) ())
    ((:velocity __velocity) ())
    ((:angular_velocity __angular_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:grid_height __grid_height) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sparse_x __sparse_x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sparse_y __sparse_y) (make-array 0 :initial-element 0 :element-type :integer))
    ((:front __front) 0.0)
    ((:back __back) 0.0)
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    ((:grid_size_w __grid_size_w) 0.0)
    ((:grid_size_h __grid_size_h) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _available (round __available))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _sparse_flag __sparse_flag)
   (setq _score __score)
   (setq _visibility __visibility)
   (setq _type_info __type_info)
   (setq _velocity __velocity)
   (setq _angular_velocity __angular_velocity)
   (setq _grid_height __grid_height)
   (setq _sparse_x __sparse_x)
   (setq _sparse_y __sparse_y)
   (setq _front (float __front))
   (setq _back (float __back))
   (setq _left (float __left))
   (setq _right (float __right))
   (setq _grid_size_w (float __grid_size_w))
   (setq _grid_size_h (float __grid_size_h))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:sparse_flag
   (&optional (__sparse_flag :null))
   (if (not (eq __sparse_flag :null)) (setq _sparse_flag __sparse_flag)) _sparse_flag)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:visibility
   (&optional __visibility)
   (if __visibility (setq _visibility __visibility)) _visibility)
  (:type_info
   (&rest __type_info)
   (if (keywordp (car __type_info))
       (send* _type_info __type_info)
     (progn
       (if __type_info (setq _type_info (car __type_info)))
       _type_info)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:grid_height
   (&optional __grid_height)
   (if __grid_height (setq _grid_height __grid_height)) _grid_height)
  (:sparse_x
   (&optional __sparse_x)
   (if __sparse_x (setq _sparse_x __sparse_x)) _sparse_x)
  (:sparse_y
   (&optional __sparse_y)
   (if __sparse_y (setq _sparse_y __sparse_y)) _sparse_y)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:back
   (&optional __back)
   (if __back (setq _back __back)) _back)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:grid_size_w
   (&optional __grid_size_w)
   (if __grid_size_w (setq _grid_size_w __grid_size_w)) _grid_size_w)
  (:grid_size_h
   (&optional __grid_size_h)
   (if __grid_size_h (setq _grid_size_h __grid_size_h)) _grid_size_h)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/LidarPerceptionResultMeta _meta
    (send _meta :serialization-length)
    ;; uint8 _available
    1
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ;; bool _sparse_flag
    1
    ;; float32[] _score
    (* 4    (length _score)) 4
    ;; float32[] _visibility
    (* 4    (length _visibility)) 4
    ;; perception_interface_msgs/ObjectTypeInfo[] _type_info
    (apply #'+ (send-all _type_info :serialization-length)) 4
    ;; perception_interface_msgs/Vector2d[] _velocity
    (apply #'+ (send-all _velocity :serialization-length)) 4
    ;; float32[] _angular_velocity
    (* 4    (length _angular_velocity)) 4
    ;; float32[] _grid_height
    (* 4    (length _grid_height)) 4
    ;; uint16[] _sparse_x
    (* 2    (length _sparse_x)) 4
    ;; uint16[] _sparse_y
    (* 2    (length _sparse_y)) 4
    ;; float32 _front
    4
    ;; float32 _back
    4
    ;; float32 _left
    4
    ;; float32 _right
    4
    ;; float32 _grid_size_w
    4
    ;; float32 _grid_size_h
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/LidarPerceptionResultMeta _meta
       (send _meta :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;; bool _sparse_flag
       (if _sparse_flag (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _score
     (write-long (length _score) s)
     (dotimes (i (length _score))
       (sys::poke (elt _score i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _visibility
     (write-long (length _visibility) s)
     (dotimes (i (length _visibility))
       (sys::poke (elt _visibility i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_interface_msgs/ObjectTypeInfo[] _type_info
     (write-long (length _type_info) s)
     (dolist (elem _type_info)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Vector2d[] _velocity
     (write-long (length _velocity) s)
     (dolist (elem _velocity)
       (send elem :serialize s)
       )
     ;; float32[] _angular_velocity
     (write-long (length _angular_velocity) s)
     (dotimes (i (length _angular_velocity))
       (sys::poke (elt _angular_velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _grid_height
     (write-long (length _grid_height) s)
     (dotimes (i (length _grid_height))
       (sys::poke (elt _grid_height i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint16[] _sparse_x
     (write-long (length _sparse_x) s)
     (dotimes (i (length _sparse_x))
       (write-word (elt _sparse_x i) s)
       )
     ;; uint16[] _sparse_y
     (write-long (length _sparse_y) s)
     (dotimes (i (length _sparse_y))
       (write-word (elt _sparse_y i) s)
       )
     ;; float32 _front
       (sys::poke _front (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _back
       (sys::poke _back (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _grid_size_w
       (sys::poke _grid_size_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _grid_size_h
       (sys::poke _grid_size_h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/LidarPerceptionResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _sparse_flag
     (setq _sparse_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _score i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _visibility
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _visibility (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _visibility i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_interface_msgs/ObjectTypeInfo[] _type_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _type_info (let (r) (dotimes (i n) (push (instance perception_interface_msgs::ObjectTypeInfo :init) r)) r))
     (dolist (elem- _type_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Vector2d[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Vector2d :init) r)) r))
     (dolist (elem- _velocity)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _angular_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angular_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angular_velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _grid_height
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _grid_height (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _grid_height i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint16[] _sparse_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sparse_x (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sparse_x i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _sparse_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sparse_y (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sparse_y i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32 _front
     (setq _front (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _back
     (setq _back (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _grid_size_w
     (setq _grid_size_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _grid_size_h
     (setq _grid_size_h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::LidarBEVGridMapResult :md5sum-) "9ab5eed7390b21b0dcc92d6ba46d3b7d")
(setf (get perception_interface_msgs::LidarBEVGridMapResult :datatype-) "perception_interface_msgs/LidarBEVGridMapResult")
(setf (get perception_interface_msgs::LidarBEVGridMapResult :definition-)
      "std_msgs/Header header
perception_interface_msgs/LidarPerceptionResultMeta meta
uint8 available
uint32 width
uint32 height
bool sparse_flag
float32[] score
float32[] visibility
perception_interface_msgs/ObjectTypeInfo[] type_info
perception_interface_msgs/Vector2d[] velocity
float32[] angular_velocity
float32[] grid_height
uint16[] sparse_x
uint16[] sparse_y
float32 front
float32 back
float32 left
float32 right
float32 grid_size_w
float32 grid_size_h

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: perception_interface_msgs/LidarPerceptionResultMeta
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
string version_tag

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
MSG: perception_interface_msgs/Vector2d
float64 x
float64 y

")



(provide :perception_interface_msgs/LidarBEVGridMapResult "9ab5eed7390b21b0dcc92d6ba46d3b7d")


