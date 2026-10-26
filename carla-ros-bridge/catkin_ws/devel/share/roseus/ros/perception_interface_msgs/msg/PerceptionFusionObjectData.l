;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PerceptionFusionObjectData)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PerceptionFusionObjectData (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONOBJECTDATA")
  (make-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONOBJECTDATA"))

(in-package "ROS")
;;//! \htmlinclude PerceptionFusionObjectData.msg.html


(defclass perception_interface_msgs::PerceptionFusionObjectData
  :super ros::object
  :slots (_track_id _type_info _barrier_state_info _is_static _static_confidence _vehicle_state_info _shape _position _velocity _acceleration _heading_yaw _angular_velocity _relative_position _relative_velocity _relative_acceleration _relative_heading_yaw _relative_angular_velocity _velocity_relative_to_ground _acceleration_relative_to_ground _score _crash_risk_ttc _polygon_bottom _polygon_top _available _object_type _scene_type _scene_confidence _source_sensor _source_timestamp _visibility _extra_json ))

(defmethod perception_interface_msgs::PerceptionFusionObjectData
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:type_info __type_info) (instance perception_interface_msgs::ObjectTypeInfo :init))
    ((:barrier_state_info __barrier_state_info) (instance perception_interface_msgs::BarrierStateInfo :init))
    ((:is_static __is_static) nil)
    ((:static_confidence __static_confidence) 0.0)
    ((:vehicle_state_info __vehicle_state_info) (instance perception_interface_msgs::VehicleStateInfo :init))
    ((:shape __shape) (instance perception_interface_msgs::Shape3d :init))
    ((:position __position) (instance perception_interface_msgs::Point3d :init))
    ((:velocity __velocity) (instance perception_interface_msgs::Vector3d :init))
    ((:acceleration __acceleration) (instance perception_interface_msgs::Vector3d :init))
    ((:heading_yaw __heading_yaw) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    ((:relative_position __relative_position) (instance perception_interface_msgs::Point3d :init))
    ((:relative_velocity __relative_velocity) (instance perception_interface_msgs::Vector3d :init))
    ((:relative_acceleration __relative_acceleration) (instance perception_interface_msgs::Vector3d :init))
    ((:relative_heading_yaw __relative_heading_yaw) 0.0)
    ((:relative_angular_velocity __relative_angular_velocity) 0.0)
    ((:velocity_relative_to_ground __velocity_relative_to_ground) (instance perception_interface_msgs::Vector3d :init))
    ((:acceleration_relative_to_ground __acceleration_relative_to_ground) (instance perception_interface_msgs::Vector3d :init))
    ((:score __score) 0.0)
    ((:crash_risk_ttc __crash_risk_ttc) 0.0)
    ((:polygon_bottom __polygon_bottom) (instance perception_interface_msgs::Polygon3f :init))
    ((:polygon_top __polygon_top) (instance perception_interface_msgs::Polygon3f :init))
    ((:available __available) nil)
    ((:object_type __object_type) (instance perception_interface_msgs::PerceptionObjectTypeEnum :init))
    ((:scene_type __scene_type) (instance perception_interface_msgs::PerceptionSceneTypeEnum :init))
    ((:scene_confidence __scene_confidence) 0.0)
    ((:source_sensor __source_sensor) "")
    ((:source_timestamp __source_timestamp) 0.0)
    ((:visibility __visibility) 0.0)
    ((:extra_json __extra_json) "")
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _type_info __type_info)
   (setq _barrier_state_info __barrier_state_info)
   (setq _is_static __is_static)
   (setq _static_confidence (float __static_confidence))
   (setq _vehicle_state_info __vehicle_state_info)
   (setq _shape __shape)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _heading_yaw (float __heading_yaw))
   (setq _angular_velocity (float __angular_velocity))
   (setq _relative_position __relative_position)
   (setq _relative_velocity __relative_velocity)
   (setq _relative_acceleration __relative_acceleration)
   (setq _relative_heading_yaw (float __relative_heading_yaw))
   (setq _relative_angular_velocity (float __relative_angular_velocity))
   (setq _velocity_relative_to_ground __velocity_relative_to_ground)
   (setq _acceleration_relative_to_ground __acceleration_relative_to_ground)
   (setq _score (float __score))
   (setq _crash_risk_ttc (float __crash_risk_ttc))
   (setq _polygon_bottom __polygon_bottom)
   (setq _polygon_top __polygon_top)
   (setq _available __available)
   (setq _object_type __object_type)
   (setq _scene_type __scene_type)
   (setq _scene_confidence (float __scene_confidence))
   (setq _source_sensor (string __source_sensor))
   (setq _source_timestamp (float __source_timestamp))
   (setq _visibility (float __visibility))
   (setq _extra_json (string __extra_json))
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
  (:barrier_state_info
   (&rest __barrier_state_info)
   (if (keywordp (car __barrier_state_info))
       (send* _barrier_state_info __barrier_state_info)
     (progn
       (if __barrier_state_info (setq _barrier_state_info (car __barrier_state_info)))
       _barrier_state_info)))
  (:is_static
   (&optional (__is_static :null))
   (if (not (eq __is_static :null)) (setq _is_static __is_static)) _is_static)
  (:static_confidence
   (&optional __static_confidence)
   (if __static_confidence (setq _static_confidence __static_confidence)) _static_confidence)
  (:vehicle_state_info
   (&rest __vehicle_state_info)
   (if (keywordp (car __vehicle_state_info))
       (send* _vehicle_state_info __vehicle_state_info)
     (progn
       (if __vehicle_state_info (setq _vehicle_state_info (car __vehicle_state_info)))
       _vehicle_state_info)))
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:heading_yaw
   (&optional __heading_yaw)
   (if __heading_yaw (setq _heading_yaw __heading_yaw)) _heading_yaw)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
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
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:crash_risk_ttc
   (&optional __crash_risk_ttc)
   (if __crash_risk_ttc (setq _crash_risk_ttc __crash_risk_ttc)) _crash_risk_ttc)
  (:polygon_bottom
   (&rest __polygon_bottom)
   (if (keywordp (car __polygon_bottom))
       (send* _polygon_bottom __polygon_bottom)
     (progn
       (if __polygon_bottom (setq _polygon_bottom (car __polygon_bottom)))
       _polygon_bottom)))
  (:polygon_top
   (&rest __polygon_top)
   (if (keywordp (car __polygon_top))
       (send* _polygon_top __polygon_top)
     (progn
       (if __polygon_top (setq _polygon_top (car __polygon_top)))
       _polygon_top)))
  (:available
   (&optional (__available :null))
   (if (not (eq __available :null)) (setq _available __available)) _available)
  (:object_type
   (&rest __object_type)
   (if (keywordp (car __object_type))
       (send* _object_type __object_type)
     (progn
       (if __object_type (setq _object_type (car __object_type)))
       _object_type)))
  (:scene_type
   (&rest __scene_type)
   (if (keywordp (car __scene_type))
       (send* _scene_type __scene_type)
     (progn
       (if __scene_type (setq _scene_type (car __scene_type)))
       _scene_type)))
  (:scene_confidence
   (&optional __scene_confidence)
   (if __scene_confidence (setq _scene_confidence __scene_confidence)) _scene_confidence)
  (:source_sensor
   (&optional __source_sensor)
   (if __source_sensor (setq _source_sensor __source_sensor)) _source_sensor)
  (:source_timestamp
   (&optional __source_timestamp)
   (if __source_timestamp (setq _source_timestamp __source_timestamp)) _source_timestamp)
  (:visibility
   (&optional __visibility)
   (if __visibility (setq _visibility __visibility)) _visibility)
  (:extra_json
   (&optional __extra_json)
   (if __extra_json (setq _extra_json __extra_json)) _extra_json)
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; perception_interface_msgs/ObjectTypeInfo _type_info
    (send _type_info :serialization-length)
    ;; perception_interface_msgs/BarrierStateInfo _barrier_state_info
    (send _barrier_state_info :serialization-length)
    ;; bool _is_static
    1
    ;; float32 _static_confidence
    4
    ;; perception_interface_msgs/VehicleStateInfo _vehicle_state_info
    (send _vehicle_state_info :serialization-length)
    ;; perception_interface_msgs/Shape3d _shape
    (send _shape :serialization-length)
    ;; perception_interface_msgs/Point3d _position
    (send _position :serialization-length)
    ;; perception_interface_msgs/Vector3d _velocity
    (send _velocity :serialization-length)
    ;; perception_interface_msgs/Vector3d _acceleration
    (send _acceleration :serialization-length)
    ;; float32 _heading_yaw
    4
    ;; float32 _angular_velocity
    4
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
    ;; float32 _score
    4
    ;; float32 _crash_risk_ttc
    4
    ;; perception_interface_msgs/Polygon3f _polygon_bottom
    (send _polygon_bottom :serialization-length)
    ;; perception_interface_msgs/Polygon3f _polygon_top
    (send _polygon_top :serialization-length)
    ;; bool _available
    1
    ;; perception_interface_msgs/PerceptionObjectTypeEnum _object_type
    (send _object_type :serialization-length)
    ;; perception_interface_msgs/PerceptionSceneTypeEnum _scene_type
    (send _scene_type :serialization-length)
    ;; float32 _scene_confidence
    4
    ;; string _source_sensor
    4 (length _source_sensor)
    ;; float64 _source_timestamp
    8
    ;; float32 _visibility
    4
    ;; string _extra_json
    4 (length _extra_json)
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
     ;; perception_interface_msgs/BarrierStateInfo _barrier_state_info
       (send _barrier_state_info :serialize s)
     ;; bool _is_static
       (if _is_static (write-byte -1 s) (write-byte 0 s))
     ;; float32 _static_confidence
       (sys::poke _static_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/VehicleStateInfo _vehicle_state_info
       (send _vehicle_state_info :serialize s)
     ;; perception_interface_msgs/Shape3d _shape
       (send _shape :serialize s)
     ;; perception_interface_msgs/Point3d _position
       (send _position :serialize s)
     ;; perception_interface_msgs/Vector3d _velocity
       (send _velocity :serialize s)
     ;; perception_interface_msgs/Vector3d _acceleration
       (send _acceleration :serialize s)
     ;; float32 _heading_yaw
       (sys::poke _heading_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _crash_risk_ttc
       (sys::poke _crash_risk_ttc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Polygon3f _polygon_bottom
       (send _polygon_bottom :serialize s)
     ;; perception_interface_msgs/Polygon3f _polygon_top
       (send _polygon_top :serialize s)
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/PerceptionObjectTypeEnum _object_type
       (send _object_type :serialize s)
     ;; perception_interface_msgs/PerceptionSceneTypeEnum _scene_type
       (send _scene_type :serialize s)
     ;; float32 _scene_confidence
       (sys::poke _scene_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _source_sensor
       (write-long (length _source_sensor) s) (princ _source_sensor s)
     ;; float64 _source_timestamp
       (sys::poke _source_timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _visibility
       (sys::poke _visibility (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _extra_json
       (write-long (length _extra_json) s) (princ _extra_json s)
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
   ;; perception_interface_msgs/BarrierStateInfo _barrier_state_info
     (send _barrier_state_info :deserialize buf ptr-) (incf ptr- (send _barrier_state_info :serialization-length))
   ;; bool _is_static
     (setq _is_static (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _static_confidence
     (setq _static_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/VehicleStateInfo _vehicle_state_info
     (send _vehicle_state_info :deserialize buf ptr-) (incf ptr- (send _vehicle_state_info :serialization-length))
   ;; perception_interface_msgs/Shape3d _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; perception_interface_msgs/Point3d _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; perception_interface_msgs/Vector3d _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; perception_interface_msgs/Vector3d _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; float32 _heading_yaw
     (setq _heading_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _crash_risk_ttc
     (setq _crash_risk_ttc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Polygon3f _polygon_bottom
     (send _polygon_bottom :deserialize buf ptr-) (incf ptr- (send _polygon_bottom :serialization-length))
   ;; perception_interface_msgs/Polygon3f _polygon_top
     (send _polygon_top :deserialize buf ptr-) (incf ptr- (send _polygon_top :serialization-length))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/PerceptionObjectTypeEnum _object_type
     (send _object_type :deserialize buf ptr-) (incf ptr- (send _object_type :serialization-length))
   ;; perception_interface_msgs/PerceptionSceneTypeEnum _scene_type
     (send _scene_type :deserialize buf ptr-) (incf ptr- (send _scene_type :serialization-length))
   ;; float32 _scene_confidence
     (setq _scene_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _source_sensor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_sensor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _source_timestamp
     (setq _source_timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _visibility
     (setq _visibility (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _extra_json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra_json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::PerceptionFusionObjectData :md5sum-) "75e388fad6f1c45fee9951697067271e")
(setf (get perception_interface_msgs::PerceptionFusionObjectData :datatype-) "perception_interface_msgs/PerceptionFusionObjectData")
(setf (get perception_interface_msgs::PerceptionFusionObjectData :definition-)
      "uint64 track_id
perception_interface_msgs/ObjectTypeInfo type_info
perception_interface_msgs/BarrierStateInfo barrier_state_info
bool is_static
float32 static_confidence
perception_interface_msgs/VehicleStateInfo vehicle_state_info
perception_interface_msgs/Shape3d shape
perception_interface_msgs/Point3d position
perception_interface_msgs/Vector3d velocity
perception_interface_msgs/Vector3d acceleration
float32 heading_yaw
float32 angular_velocity
perception_interface_msgs/Point3d relative_position
perception_interface_msgs/Vector3d relative_velocity
perception_interface_msgs/Vector3d relative_acceleration
float32 relative_heading_yaw
float32 relative_angular_velocity
perception_interface_msgs/Vector3d velocity_relative_to_ground
perception_interface_msgs/Vector3d acceleration_relative_to_ground
float32 score
float32 crash_risk_ttc
perception_interface_msgs/Polygon3f polygon_bottom
perception_interface_msgs/Polygon3f polygon_top
bool available
perception_interface_msgs/PerceptionObjectTypeEnum object_type
perception_interface_msgs/PerceptionSceneTypeEnum scene_type
float32 scene_confidence
string source_sensor
float64 source_timestamp
float32 visibility
string extra_json

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

================================================================================
MSG: perception_interface_msgs/PerceptionObjectTypeEnum
uint8 OBJECT_TYPE_UNKNOWN = 0
uint8 OBJECT_TYPE_RAW = 1
uint8 OBJECT_TYPE_NORMAL = 2
uint8 OBJECT_TYPE_RADAR_ONLY = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/PerceptionSceneTypeEnum
uint8 SCENE_TYPE_UNKNOWN = 0
uint8 SCENE_TYPE_QUEUE = 1
uint8 SCENE_TYPE_LONGTERM_LANE_OCCUPATION = 2
uint8 SCENE_TYPE_SHORTTERM_LANE_OCCUPATION = 3
uint8 value

")



(provide :perception_interface_msgs/PerceptionFusionObjectData "75e388fad6f1c45fee9951697067271e")


