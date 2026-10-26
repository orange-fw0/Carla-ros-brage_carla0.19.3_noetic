// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3d = require('./Point3d.js');
let Vector3d = require('./Vector3d.js');
let ObjectTypeInfo = require('./ObjectTypeInfo.js');
let ContiRadarDynamicProperty = require('./ContiRadarDynamicProperty.js');
let ContiRadarMeasurementState = require('./ContiRadarMeasurementState.js');
let ContiRadarExistenceProbabilityType = require('./ContiRadarExistenceProbabilityType.js');

//-----------------------------------------------------------

class ContiRadarPerceptionObjectData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_id = null;
      this.relative_position = null;
      this.relative_velocity = null;
      this.orientation_angle = null;
      this.longitudinal_relative_acceleration = null;
      this.lateral_relative_acceleration = null;
      this.length = null;
      this.width = null;
      this.radar_cross_section = null;
      this.longitudinal_relative_distance_rms = null;
      this.lateral_relative_distance_rms = null;
      this.longitudinal_relative_velocity_rms = null;
      this.lateral_relative_velocity_rms = null;
      this.longitudinal_relative_acceleration_rms = null;
      this.lateral_relative_acceleration_rms = null;
      this.relative_orientation_angle_rms = null;
      this.type_info = null;
      this.dynamic_property = null;
      this.measurement_state = null;
      this.existence_probability_type = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
      }
      if (initObj.hasOwnProperty('relative_position')) {
        this.relative_position = initObj.relative_position
      }
      else {
        this.relative_position = new Point3d();
      }
      if (initObj.hasOwnProperty('relative_velocity')) {
        this.relative_velocity = initObj.relative_velocity
      }
      else {
        this.relative_velocity = new Vector3d();
      }
      if (initObj.hasOwnProperty('orientation_angle')) {
        this.orientation_angle = initObj.orientation_angle
      }
      else {
        this.orientation_angle = 0.0;
      }
      if (initObj.hasOwnProperty('longitudinal_relative_acceleration')) {
        this.longitudinal_relative_acceleration = initObj.longitudinal_relative_acceleration
      }
      else {
        this.longitudinal_relative_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_relative_acceleration')) {
        this.lateral_relative_acceleration = initObj.lateral_relative_acceleration
      }
      else {
        this.lateral_relative_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('radar_cross_section')) {
        this.radar_cross_section = initObj.radar_cross_section
      }
      else {
        this.radar_cross_section = 0.0;
      }
      if (initObj.hasOwnProperty('longitudinal_relative_distance_rms')) {
        this.longitudinal_relative_distance_rms = initObj.longitudinal_relative_distance_rms
      }
      else {
        this.longitudinal_relative_distance_rms = 0;
      }
      if (initObj.hasOwnProperty('lateral_relative_distance_rms')) {
        this.lateral_relative_distance_rms = initObj.lateral_relative_distance_rms
      }
      else {
        this.lateral_relative_distance_rms = 0;
      }
      if (initObj.hasOwnProperty('longitudinal_relative_velocity_rms')) {
        this.longitudinal_relative_velocity_rms = initObj.longitudinal_relative_velocity_rms
      }
      else {
        this.longitudinal_relative_velocity_rms = 0;
      }
      if (initObj.hasOwnProperty('lateral_relative_velocity_rms')) {
        this.lateral_relative_velocity_rms = initObj.lateral_relative_velocity_rms
      }
      else {
        this.lateral_relative_velocity_rms = 0;
      }
      if (initObj.hasOwnProperty('longitudinal_relative_acceleration_rms')) {
        this.longitudinal_relative_acceleration_rms = initObj.longitudinal_relative_acceleration_rms
      }
      else {
        this.longitudinal_relative_acceleration_rms = 0;
      }
      if (initObj.hasOwnProperty('lateral_relative_acceleration_rms')) {
        this.lateral_relative_acceleration_rms = initObj.lateral_relative_acceleration_rms
      }
      else {
        this.lateral_relative_acceleration_rms = 0;
      }
      if (initObj.hasOwnProperty('relative_orientation_angle_rms')) {
        this.relative_orientation_angle_rms = initObj.relative_orientation_angle_rms
      }
      else {
        this.relative_orientation_angle_rms = 0;
      }
      if (initObj.hasOwnProperty('type_info')) {
        this.type_info = initObj.type_info
      }
      else {
        this.type_info = new ObjectTypeInfo();
      }
      if (initObj.hasOwnProperty('dynamic_property')) {
        this.dynamic_property = initObj.dynamic_property
      }
      else {
        this.dynamic_property = new ContiRadarDynamicProperty();
      }
      if (initObj.hasOwnProperty('measurement_state')) {
        this.measurement_state = initObj.measurement_state
      }
      else {
        this.measurement_state = new ContiRadarMeasurementState();
      }
      if (initObj.hasOwnProperty('existence_probability_type')) {
        this.existence_probability_type = initObj.existence_probability_type
      }
      else {
        this.existence_probability_type = new ContiRadarExistenceProbabilityType();
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContiRadarPerceptionObjectData
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint16(obj.object_id, buffer, bufferOffset);
    // Serialize message field [relative_position]
    bufferOffset = Point3d.serialize(obj.relative_position, buffer, bufferOffset);
    // Serialize message field [relative_velocity]
    bufferOffset = Vector3d.serialize(obj.relative_velocity, buffer, bufferOffset);
    // Serialize message field [orientation_angle]
    bufferOffset = _serializer.float32(obj.orientation_angle, buffer, bufferOffset);
    // Serialize message field [longitudinal_relative_acceleration]
    bufferOffset = _serializer.float32(obj.longitudinal_relative_acceleration, buffer, bufferOffset);
    // Serialize message field [lateral_relative_acceleration]
    bufferOffset = _serializer.float32(obj.lateral_relative_acceleration, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [radar_cross_section]
    bufferOffset = _serializer.float32(obj.radar_cross_section, buffer, bufferOffset);
    // Serialize message field [longitudinal_relative_distance_rms]
    bufferOffset = _serializer.uint8(obj.longitudinal_relative_distance_rms, buffer, bufferOffset);
    // Serialize message field [lateral_relative_distance_rms]
    bufferOffset = _serializer.uint8(obj.lateral_relative_distance_rms, buffer, bufferOffset);
    // Serialize message field [longitudinal_relative_velocity_rms]
    bufferOffset = _serializer.uint8(obj.longitudinal_relative_velocity_rms, buffer, bufferOffset);
    // Serialize message field [lateral_relative_velocity_rms]
    bufferOffset = _serializer.uint8(obj.lateral_relative_velocity_rms, buffer, bufferOffset);
    // Serialize message field [longitudinal_relative_acceleration_rms]
    bufferOffset = _serializer.uint8(obj.longitudinal_relative_acceleration_rms, buffer, bufferOffset);
    // Serialize message field [lateral_relative_acceleration_rms]
    bufferOffset = _serializer.uint8(obj.lateral_relative_acceleration_rms, buffer, bufferOffset);
    // Serialize message field [relative_orientation_angle_rms]
    bufferOffset = _serializer.uint8(obj.relative_orientation_angle_rms, buffer, bufferOffset);
    // Serialize message field [type_info]
    bufferOffset = ObjectTypeInfo.serialize(obj.type_info, buffer, bufferOffset);
    // Serialize message field [dynamic_property]
    bufferOffset = ContiRadarDynamicProperty.serialize(obj.dynamic_property, buffer, bufferOffset);
    // Serialize message field [measurement_state]
    bufferOffset = ContiRadarMeasurementState.serialize(obj.measurement_state, buffer, bufferOffset);
    // Serialize message field [existence_probability_type]
    bufferOffset = ContiRadarExistenceProbabilityType.serialize(obj.existence_probability_type, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContiRadarPerceptionObjectData
    let len;
    let data = new ContiRadarPerceptionObjectData(null);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [relative_position]
    data.relative_position = Point3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_velocity]
    data.relative_velocity = Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_angle]
    data.orientation_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitudinal_relative_acceleration]
    data.longitudinal_relative_acceleration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_relative_acceleration]
    data.lateral_relative_acceleration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radar_cross_section]
    data.radar_cross_section = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitudinal_relative_distance_rms]
    data.longitudinal_relative_distance_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lateral_relative_distance_rms]
    data.lateral_relative_distance_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [longitudinal_relative_velocity_rms]
    data.longitudinal_relative_velocity_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lateral_relative_velocity_rms]
    data.lateral_relative_velocity_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [longitudinal_relative_acceleration_rms]
    data.longitudinal_relative_acceleration_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lateral_relative_acceleration_rms]
    data.lateral_relative_acceleration_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [relative_orientation_angle_rms]
    data.relative_orientation_angle_rms = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [type_info]
    data.type_info = ObjectTypeInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [dynamic_property]
    data.dynamic_property = ContiRadarDynamicProperty.deserialize(buffer, bufferOffset);
    // Deserialize message field [measurement_state]
    data.measurement_state = ContiRadarMeasurementState.deserialize(buffer, bufferOffset);
    // Deserialize message field [existence_probability_type]
    data.existence_probability_type = ContiRadarExistenceProbabilityType.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObjectTypeInfo.getMessageSize(object.type_info);
    length += _getByteLength(object.reserved_info);
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ContiRadarPerceptionObjectData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49e79b4e2258ff942724a3f1d206fc88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 object_id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContiRadarPerceptionObjectData(null);
    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
    }

    if (msg.relative_position !== undefined) {
      resolved.relative_position = Point3d.Resolve(msg.relative_position)
    }
    else {
      resolved.relative_position = new Point3d()
    }

    if (msg.relative_velocity !== undefined) {
      resolved.relative_velocity = Vector3d.Resolve(msg.relative_velocity)
    }
    else {
      resolved.relative_velocity = new Vector3d()
    }

    if (msg.orientation_angle !== undefined) {
      resolved.orientation_angle = msg.orientation_angle;
    }
    else {
      resolved.orientation_angle = 0.0
    }

    if (msg.longitudinal_relative_acceleration !== undefined) {
      resolved.longitudinal_relative_acceleration = msg.longitudinal_relative_acceleration;
    }
    else {
      resolved.longitudinal_relative_acceleration = 0.0
    }

    if (msg.lateral_relative_acceleration !== undefined) {
      resolved.lateral_relative_acceleration = msg.lateral_relative_acceleration;
    }
    else {
      resolved.lateral_relative_acceleration = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.radar_cross_section !== undefined) {
      resolved.radar_cross_section = msg.radar_cross_section;
    }
    else {
      resolved.radar_cross_section = 0.0
    }

    if (msg.longitudinal_relative_distance_rms !== undefined) {
      resolved.longitudinal_relative_distance_rms = msg.longitudinal_relative_distance_rms;
    }
    else {
      resolved.longitudinal_relative_distance_rms = 0
    }

    if (msg.lateral_relative_distance_rms !== undefined) {
      resolved.lateral_relative_distance_rms = msg.lateral_relative_distance_rms;
    }
    else {
      resolved.lateral_relative_distance_rms = 0
    }

    if (msg.longitudinal_relative_velocity_rms !== undefined) {
      resolved.longitudinal_relative_velocity_rms = msg.longitudinal_relative_velocity_rms;
    }
    else {
      resolved.longitudinal_relative_velocity_rms = 0
    }

    if (msg.lateral_relative_velocity_rms !== undefined) {
      resolved.lateral_relative_velocity_rms = msg.lateral_relative_velocity_rms;
    }
    else {
      resolved.lateral_relative_velocity_rms = 0
    }

    if (msg.longitudinal_relative_acceleration_rms !== undefined) {
      resolved.longitudinal_relative_acceleration_rms = msg.longitudinal_relative_acceleration_rms;
    }
    else {
      resolved.longitudinal_relative_acceleration_rms = 0
    }

    if (msg.lateral_relative_acceleration_rms !== undefined) {
      resolved.lateral_relative_acceleration_rms = msg.lateral_relative_acceleration_rms;
    }
    else {
      resolved.lateral_relative_acceleration_rms = 0
    }

    if (msg.relative_orientation_angle_rms !== undefined) {
      resolved.relative_orientation_angle_rms = msg.relative_orientation_angle_rms;
    }
    else {
      resolved.relative_orientation_angle_rms = 0
    }

    if (msg.type_info !== undefined) {
      resolved.type_info = ObjectTypeInfo.Resolve(msg.type_info)
    }
    else {
      resolved.type_info = new ObjectTypeInfo()
    }

    if (msg.dynamic_property !== undefined) {
      resolved.dynamic_property = ContiRadarDynamicProperty.Resolve(msg.dynamic_property)
    }
    else {
      resolved.dynamic_property = new ContiRadarDynamicProperty()
    }

    if (msg.measurement_state !== undefined) {
      resolved.measurement_state = ContiRadarMeasurementState.Resolve(msg.measurement_state)
    }
    else {
      resolved.measurement_state = new ContiRadarMeasurementState()
    }

    if (msg.existence_probability_type !== undefined) {
      resolved.existence_probability_type = ContiRadarExistenceProbabilityType.Resolve(msg.existence_probability_type)
    }
    else {
      resolved.existence_probability_type = new ContiRadarExistenceProbabilityType()
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = ContiRadarPerceptionObjectData;
