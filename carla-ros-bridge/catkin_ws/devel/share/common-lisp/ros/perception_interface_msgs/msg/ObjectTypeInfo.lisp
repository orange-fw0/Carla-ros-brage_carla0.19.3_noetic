; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ObjectTypeInfo.msg.html

(cl:defclass <ObjectTypeInfo> (roslisp-msg-protocol:ros-message)
  ((type_properties
    :reader type_properties
    :initarg :type_properties
    :type (cl:vector perception_interface_msgs-msg:ObjectTypePropertyEnum)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:ObjectTypePropertyEnum :initial-element (cl:make-instance 'perception_interface_msgs-msg:ObjectTypePropertyEnum)))
   (type
    :reader type
    :initarg :type
    :type perception_interface_msgs-msg:ObjectTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:ObjectTypeEnum))
   (general_object_type
    :reader general_object_type
    :initarg :general_object_type
    :type perception_interface_msgs-msg:GeneralObjectTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:GeneralObjectTypeEnum))
   (vehicle_type
    :reader vehicle_type
    :initarg :vehicle_type
    :type perception_interface_msgs-msg:VehicleTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleTypeEnum))
   (vehicle_sub_type
    :reader vehicle_sub_type
    :initarg :vehicle_sub_type
    :type perception_interface_msgs-msg:VehicleSubTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleSubTypeEnum))
   (vru_type
    :reader vru_type
    :initarg :vru_type
    :type perception_interface_msgs-msg:VRUTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VRUTypeEnum))
   (vru_sub_type
    :reader vru_sub_type
    :initarg :vru_sub_type
    :type perception_interface_msgs-msg:VRUSubTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VRUSubTypeEnum))
   (vru_ani_sub_type
    :reader vru_ani_sub_type
    :initarg :vru_ani_sub_type
    :type perception_interface_msgs-msg:VRUAniSubTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VRUAniSubTypeEnum))
   (vru_ped_sub_type
    :reader vru_ped_sub_type
    :initarg :vru_ped_sub_type
    :type perception_interface_msgs-msg:VRUPedSubTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VRUPedSubTypeEnum))
   (traffic_barrier_type
    :reader traffic_barrier_type
    :initarg :traffic_barrier_type
    :type perception_interface_msgs-msg:TrafficBarrierTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficBarrierTypeEnum))
   (traffic_light_type
    :reader traffic_light_type
    :initarg :traffic_light_type
    :type perception_interface_msgs-msg:TrafficLightTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficLightTypeEnum))
   (avoid_object_type
    :reader avoid_object_type
    :initarg :avoid_object_type
    :type perception_interface_msgs-msg:AvoidObjectTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:AvoidObjectTypeEnum)))
)

(cl:defclass ObjectTypeInfo (<ObjectTypeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectTypeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectTypeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ObjectTypeInfo> is deprecated: use perception_interface_msgs-msg:ObjectTypeInfo instead.")))

(cl:ensure-generic-function 'type_properties-val :lambda-list '(m))
(cl:defmethod type_properties-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type_properties-val is deprecated.  Use perception_interface_msgs-msg:type_properties instead.")
  (type_properties m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type-val is deprecated.  Use perception_interface_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'general_object_type-val :lambda-list '(m))
(cl:defmethod general_object_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:general_object_type-val is deprecated.  Use perception_interface_msgs-msg:general_object_type instead.")
  (general_object_type m))

(cl:ensure-generic-function 'vehicle_type-val :lambda-list '(m))
(cl:defmethod vehicle_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vehicle_type-val is deprecated.  Use perception_interface_msgs-msg:vehicle_type instead.")
  (vehicle_type m))

(cl:ensure-generic-function 'vehicle_sub_type-val :lambda-list '(m))
(cl:defmethod vehicle_sub_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vehicle_sub_type-val is deprecated.  Use perception_interface_msgs-msg:vehicle_sub_type instead.")
  (vehicle_sub_type m))

(cl:ensure-generic-function 'vru_type-val :lambda-list '(m))
(cl:defmethod vru_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vru_type-val is deprecated.  Use perception_interface_msgs-msg:vru_type instead.")
  (vru_type m))

(cl:ensure-generic-function 'vru_sub_type-val :lambda-list '(m))
(cl:defmethod vru_sub_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vru_sub_type-val is deprecated.  Use perception_interface_msgs-msg:vru_sub_type instead.")
  (vru_sub_type m))

(cl:ensure-generic-function 'vru_ani_sub_type-val :lambda-list '(m))
(cl:defmethod vru_ani_sub_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vru_ani_sub_type-val is deprecated.  Use perception_interface_msgs-msg:vru_ani_sub_type instead.")
  (vru_ani_sub_type m))

(cl:ensure-generic-function 'vru_ped_sub_type-val :lambda-list '(m))
(cl:defmethod vru_ped_sub_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vru_ped_sub_type-val is deprecated.  Use perception_interface_msgs-msg:vru_ped_sub_type instead.")
  (vru_ped_sub_type m))

(cl:ensure-generic-function 'traffic_barrier_type-val :lambda-list '(m))
(cl:defmethod traffic_barrier_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:traffic_barrier_type-val is deprecated.  Use perception_interface_msgs-msg:traffic_barrier_type instead.")
  (traffic_barrier_type m))

(cl:ensure-generic-function 'traffic_light_type-val :lambda-list '(m))
(cl:defmethod traffic_light_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:traffic_light_type-val is deprecated.  Use perception_interface_msgs-msg:traffic_light_type instead.")
  (traffic_light_type m))

(cl:ensure-generic-function 'avoid_object_type-val :lambda-list '(m))
(cl:defmethod avoid_object_type-val ((m <ObjectTypeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:avoid_object_type-val is deprecated.  Use perception_interface_msgs-msg:avoid_object_type instead.")
  (avoid_object_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectTypeInfo>) ostream)
  "Serializes a message object of type '<ObjectTypeInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'type_properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'type_properties))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'general_object_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_sub_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vru_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vru_sub_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vru_ani_sub_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vru_ped_sub_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traffic_barrier_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traffic_light_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'avoid_object_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectTypeInfo>) istream)
  "Deserializes a message object of type '<ObjectTypeInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'type_properties) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'type_properties)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:ObjectTypePropertyEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'general_object_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_sub_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vru_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vru_sub_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vru_ani_sub_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vru_ped_sub_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traffic_barrier_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traffic_light_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'avoid_object_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectTypeInfo>)))
  "Returns string type for a message object of type '<ObjectTypeInfo>"
  "perception_interface_msgs/ObjectTypeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectTypeInfo)))
  "Returns string type for a message object of type 'ObjectTypeInfo"
  "perception_interface_msgs/ObjectTypeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectTypeInfo>)))
  "Returns md5sum for a message object of type '<ObjectTypeInfo>"
  "4637895383d5d51460d2b4a01eedfd62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectTypeInfo)))
  "Returns md5sum for a message object of type 'ObjectTypeInfo"
  "4637895383d5d51460d2b4a01eedfd62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectTypeInfo>)))
  "Returns full string definition for message of type '<ObjectTypeInfo>"
  (cl:format cl:nil "perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectTypeInfo)))
  "Returns full string definition for message of type 'ObjectTypeInfo"
  (cl:format cl:nil "perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectTypeInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'type_properties) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'general_object_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_sub_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vru_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vru_sub_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vru_ani_sub_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vru_ped_sub_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traffic_barrier_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traffic_light_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'avoid_object_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectTypeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectTypeInfo
    (cl:cons ':type_properties (type_properties msg))
    (cl:cons ':type (type msg))
    (cl:cons ':general_object_type (general_object_type msg))
    (cl:cons ':vehicle_type (vehicle_type msg))
    (cl:cons ':vehicle_sub_type (vehicle_sub_type msg))
    (cl:cons ':vru_type (vru_type msg))
    (cl:cons ':vru_sub_type (vru_sub_type msg))
    (cl:cons ':vru_ani_sub_type (vru_ani_sub_type msg))
    (cl:cons ':vru_ped_sub_type (vru_ped_sub_type msg))
    (cl:cons ':traffic_barrier_type (traffic_barrier_type msg))
    (cl:cons ':traffic_light_type (traffic_light_type msg))
    (cl:cons ':avoid_object_type (avoid_object_type msg))
))
