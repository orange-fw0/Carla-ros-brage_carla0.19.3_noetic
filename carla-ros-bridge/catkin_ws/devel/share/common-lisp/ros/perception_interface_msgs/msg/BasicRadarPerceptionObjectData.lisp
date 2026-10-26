; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude BasicRadarPerceptionObjectData.msg.html

(cl:defclass <BasicRadarPerceptionObjectData> (roslisp-msg-protocol:ros-message)
  ((object_id
    :reader object_id
    :initarg :object_id
    :type cl:fixnum
    :initform 0)
   (type_info
    :reader type_info
    :initarg :type_info
    :type perception_interface_msgs-msg:ObjectTypeInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:ObjectTypeInfo))
   (relative_position
    :reader relative_position
    :initarg :relative_position
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (relative_velocity
    :reader relative_velocity
    :initarg :relative_velocity
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (obstacle_prob
    :reader obstacle_prob
    :initarg :obstacle_prob
    :type cl:float
    :initform 0.0)
   (exist_prob
    :reader exist_prob
    :initarg :exist_prob
    :type cl:float
    :initform 0.0))
)

(cl:defclass BasicRadarPerceptionObjectData (<BasicRadarPerceptionObjectData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BasicRadarPerceptionObjectData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BasicRadarPerceptionObjectData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<BasicRadarPerceptionObjectData> is deprecated: use perception_interface_msgs-msg:BasicRadarPerceptionObjectData instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <BasicRadarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:object_id-val is deprecated.  Use perception_interface_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'type_info-val :lambda-list '(m))
(cl:defmethod type_info-val ((m <BasicRadarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type_info-val is deprecated.  Use perception_interface_msgs-msg:type_info instead.")
  (type_info m))

(cl:ensure-generic-function 'relative_position-val :lambda-list '(m))
(cl:defmethod relative_position-val ((m <BasicRadarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_position-val is deprecated.  Use perception_interface_msgs-msg:relative_position instead.")
  (relative_position m))

(cl:ensure-generic-function 'relative_velocity-val :lambda-list '(m))
(cl:defmethod relative_velocity-val ((m <BasicRadarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_velocity-val is deprecated.  Use perception_interface_msgs-msg:relative_velocity instead.")
  (relative_velocity m))

(cl:ensure-generic-function 'obstacle_prob-val :lambda-list '(m))
(cl:defmethod obstacle_prob-val ((m <BasicRadarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:obstacle_prob-val is deprecated.  Use perception_interface_msgs-msg:obstacle_prob instead.")
  (obstacle_prob m))

(cl:ensure-generic-function 'exist_prob-val :lambda-list '(m))
(cl:defmethod exist_prob-val ((m <BasicRadarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:exist_prob-val is deprecated.  Use perception_interface_msgs-msg:exist_prob instead.")
  (exist_prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BasicRadarPerceptionObjectData>) ostream)
  "Serializes a message object of type '<BasicRadarPerceptionObjectData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obstacle_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'exist_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BasicRadarPerceptionObjectData>) istream)
  "Deserializes a message object of type '<BasicRadarPerceptionObjectData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obstacle_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'exist_prob) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BasicRadarPerceptionObjectData>)))
  "Returns string type for a message object of type '<BasicRadarPerceptionObjectData>"
  "perception_interface_msgs/BasicRadarPerceptionObjectData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BasicRadarPerceptionObjectData)))
  "Returns string type for a message object of type 'BasicRadarPerceptionObjectData"
  "perception_interface_msgs/BasicRadarPerceptionObjectData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BasicRadarPerceptionObjectData>)))
  "Returns md5sum for a message object of type '<BasicRadarPerceptionObjectData>"
  "abbce95a1d5f83b736965e0d2cd88027")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BasicRadarPerceptionObjectData)))
  "Returns md5sum for a message object of type 'BasicRadarPerceptionObjectData"
  "abbce95a1d5f83b736965e0d2cd88027")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BasicRadarPerceptionObjectData>)))
  "Returns full string definition for message of type '<BasicRadarPerceptionObjectData>"
  (cl:format cl:nil "uint16 object_id~%perception_interface_msgs/ObjectTypeInfo type_info~%perception_interface_msgs/Point3d relative_position~%perception_interface_msgs/Point3d relative_velocity~%float32 obstacle_prob~%float32 exist_prob~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BasicRadarPerceptionObjectData)))
  "Returns full string definition for message of type 'BasicRadarPerceptionObjectData"
  (cl:format cl:nil "uint16 object_id~%perception_interface_msgs/ObjectTypeInfo type_info~%perception_interface_msgs/Point3d relative_position~%perception_interface_msgs/Point3d relative_velocity~%float32 obstacle_prob~%float32 exist_prob~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BasicRadarPerceptionObjectData>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BasicRadarPerceptionObjectData>))
  "Converts a ROS message object to a list"
  (cl:list 'BasicRadarPerceptionObjectData
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':type_info (type_info msg))
    (cl:cons ':relative_position (relative_position msg))
    (cl:cons ':relative_velocity (relative_velocity msg))
    (cl:cons ':obstacle_prob (obstacle_prob msg))
    (cl:cons ':exist_prob (exist_prob msg))
))
