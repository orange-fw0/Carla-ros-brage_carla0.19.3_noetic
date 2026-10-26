// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectTypeInfo = require('./ObjectTypeInfo.js');
let BarrierStateInfo = require('./BarrierStateInfo.js');
let VehicleStateInfo = require('./VehicleStateInfo.js');
let Shape3d = require('./Shape3d.js');
let Point3d = require('./Point3d.js');
let Vector3d = require('./Vector3d.js');
let Polygon3f = require('./Polygon3f.js');
let PerceptionObjectTypeEnum = require('./PerceptionObjectTypeEnum.js');
let PerceptionSceneTypeEnum = require('./PerceptionSceneTypeEnum.js');

//-----------------------------------------------------------

class PerceptionFusionObjectData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.type_info = null;
      this.barrier_state_info = null;
      this.is_static = null;
      this.static_confidence = null;
      this.vehicle_state_info = null;
      this.shape = null;
      this.position = null;
      this.velocity = null;
      this.acceleration = null;
      this.heading_yaw = null;
      this.angular_velocity = null;
      this.relative_position = null;
      this.relative_velocity = null;
      this.relative_acceleration = null;
      this.relative_heading_yaw = null;
      this.relative_angular_velocity = null;
      this.velocity_relative_to_ground = null;
      this.acceleration_relative_to_ground = null;
      this.score = null;
      this.crash_risk_ttc = null;
      this.polygon_bottom = null;
      this.polygon_top = null;
      this.available = null;
      this.object_type = null;
      this.scene_type = null;
      this.scene_confidence = null;
      this.source_sensor = null;
      this.source_timestamp = null;
      this.visibility = null;
      this.extra_json = null;
    }
    else {
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('type_info')) {
        this.type_info = initObj.type_info
      }
      else {
        this.type_info = new ObjectTypeInfo();
      }
      if (initObj.hasOwnProperty('barrier_state_info')) {
        this.barrier_state_info = initObj.barrier_state_info
      }
      else {
        this.barrier_state_info = new BarrierStateInfo();
      }
      if (initObj.hasOwnProperty('is_static')) {
        this.is_static = initObj.is_static
      }
      else {
        this.is_static = false;
      }
      if (initObj.hasOwnProperty('static_confidence')) {
        this.static_confidence = initObj.static_confidence
      }
      else {
        this.static_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_state_info')) {
        this.vehicle_state_info = initObj.vehicle_state_info
      }
      else {
        this.vehicle_state_info = new VehicleStateInfo();
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new Shape3d();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point3d();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Vector3d();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new Vector3d();
      }
      if (initObj.hasOwnProperty('heading_yaw')) {
        this.heading_yaw = initObj.heading_yaw
      }
      else {
        this.heading_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0.0;
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
      if (initObj.hasOwnProperty('relative_acceleration')) {
        this.relative_acceleration = initObj.relative_acceleration
      }
      else {
        this.relative_acceleration = new Vector3d();
      }
      if (initObj.hasOwnProperty('relative_heading_yaw')) {
        this.relative_heading_yaw = initObj.relative_heading_yaw
      }
      else {
        this.relative_heading_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('relative_angular_velocity')) {
        this.relative_angular_velocity = initObj.relative_angular_velocity
      }
      else {
        this.relative_angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_relative_to_ground')) {
        this.velocity_relative_to_ground = initObj.velocity_relative_to_ground
      }
      else {
        this.velocity_relative_to_ground = new Vector3d();
      }
      if (initObj.hasOwnProperty('acceleration_relative_to_ground')) {
        this.acceleration_relative_to_ground = initObj.acceleration_relative_to_ground
      }
      else {
        this.acceleration_relative_to_ground = new Vector3d();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('crash_risk_ttc')) {
        this.crash_risk_ttc = initObj.crash_risk_ttc
      }
      else {
        this.crash_risk_ttc = 0.0;
      }
      if (initObj.hasOwnProperty('polygon_bottom')) {
        this.polygon_bottom = initObj.polygon_bottom
      }
      else {
        this.polygon_bottom = new Polygon3f();
      }
      if (initObj.hasOwnProperty('polygon_top')) {
        this.polygon_top = initObj.polygon_top
      }
      else {
        this.polygon_top = new Polygon3f();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('object_type')) {
        this.object_type = initObj.object_type
      }
      else {
        this.object_type = new PerceptionObjectTypeEnum();
      }
      if (initObj.hasOwnProperty('scene_type')) {
        this.scene_type = initObj.scene_type
      }
      else {
        this.scene_type = new PerceptionSceneTypeEnum();
      }
      if (initObj.hasOwnProperty('scene_confidence')) {
        this.scene_confidence = initObj.scene_confidence
      }
      else {
        this.scene_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('source_sensor')) {
        this.source_sensor = initObj.source_sensor
      }
      else {
        this.source_sensor = '';
      }
      if (initObj.hasOwnProperty('source_timestamp')) {
        this.source_timestamp = initObj.source_timestamp
      }
      else {
        this.source_timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('visibility')) {
        this.visibility = initObj.visibility
      }
      else {
        this.visibility = 0.0;
      }
      if (initObj.hasOwnProperty('extra_json')) {
        this.extra_json = initObj.extra_json
      }
      else {
        this.extra_json = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceptionFusionObjectData
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [type_info]
    bufferOffset = ObjectTypeInfo.serialize(obj.type_info, buffer, bufferOffset);
    // Serialize message field [barrier_state_info]
    bufferOffset = BarrierStateInfo.serialize(obj.barrier_state_info, buffer, bufferOffset);
    // Serialize message field [is_static]
    bufferOffset = _serializer.bool(obj.is_static, buffer, bufferOffset);
    // Serialize message field [static_confidence]
    bufferOffset = _serializer.float32(obj.static_confidence, buffer, bufferOffset);
    // Serialize message field [vehicle_state_info]
    bufferOffset = VehicleStateInfo.serialize(obj.vehicle_state_info, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = Shape3d.serialize(obj.shape, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point3d.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Vector3d.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = Vector3d.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [heading_yaw]
    bufferOffset = _serializer.float32(obj.heading_yaw, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float32(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [relative_position]
    bufferOffset = Point3d.serialize(obj.relative_position, buffer, bufferOffset);
    // Serialize message field [relative_velocity]
    bufferOffset = Vector3d.serialize(obj.relative_velocity, buffer, bufferOffset);
    // Serialize message field [relative_acceleration]
    bufferOffset = Vector3d.serialize(obj.relative_acceleration, buffer, bufferOffset);
    // Serialize message field [relative_heading_yaw]
    bufferOffset = _serializer.float32(obj.relative_heading_yaw, buffer, bufferOffset);
    // Serialize message field [relative_angular_velocity]
    bufferOffset = _serializer.float32(obj.relative_angular_velocity, buffer, bufferOffset);
    // Serialize message field [velocity_relative_to_ground]
    bufferOffset = Vector3d.serialize(obj.velocity_relative_to_ground, buffer, bufferOffset);
    // Serialize message field [acceleration_relative_to_ground]
    bufferOffset = Vector3d.serialize(obj.acceleration_relative_to_ground, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [crash_risk_ttc]
    bufferOffset = _serializer.float32(obj.crash_risk_ttc, buffer, bufferOffset);
    // Serialize message field [polygon_bottom]
    bufferOffset = Polygon3f.serialize(obj.polygon_bottom, buffer, bufferOffset);
    // Serialize message field [polygon_top]
    bufferOffset = Polygon3f.serialize(obj.polygon_top, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = PerceptionObjectTypeEnum.serialize(obj.object_type, buffer, bufferOffset);
    // Serialize message field [scene_type]
    bufferOffset = PerceptionSceneTypeEnum.serialize(obj.scene_type, buffer, bufferOffset);
    // Serialize message field [scene_confidence]
    bufferOffset = _serializer.float32(obj.scene_confidence, buffer, bufferOffset);
    // Serialize message field [source_sensor]
    bufferOffset = _serializer.string(obj.source_sensor, buffer, bufferOffset);
    // Serialize message field [source_timestamp]
    bufferOffset = _serializer.float64(obj.source_timestamp, buffer, bufferOffset);
    // Serialize message field [visibility]
    bufferOffset = _serializer.float32(obj.visibility, buffer, bufferOffset);
    // Serialize message field [extra_json]
    bufferOffset = _serializer.string(obj.extra_json, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionFusionObjectData
    let len;
    let data = new PerceptionFusionObjectData(null);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [type_info]
    data.type_info = ObjectTypeInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [barrier_state_info]
    data.barrier_state_info = BarrierStateInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_static]
    data.is_static = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [static_confidence]
    data.static_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_state_info]
    data.vehicle_state_info = VehicleStateInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = Shape3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading_yaw]
    data.heading_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_position]
    data.relative_position = Point3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_velocity]
    data.relative_velocity = Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_acceleration]
    data.relative_acceleration = Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_heading_yaw]
    data.relative_heading_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_angular_velocity]
    data.relative_angular_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_relative_to_ground]
    data.velocity_relative_to_ground = Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_relative_to_ground]
    data.acceleration_relative_to_ground = Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [crash_risk_ttc]
    data.crash_risk_ttc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [polygon_bottom]
    data.polygon_bottom = Polygon3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [polygon_top]
    data.polygon_top = Polygon3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = PerceptionObjectTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [scene_type]
    data.scene_type = PerceptionSceneTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [scene_confidence]
    data.scene_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [source_sensor]
    data.source_sensor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [source_timestamp]
    data.source_timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [visibility]
    data.visibility = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [extra_json]
    data.extra_json = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObjectTypeInfo.getMessageSize(object.type_info);
    length += Polygon3f.getMessageSize(object.polygon_bottom);
    length += Polygon3f.getMessageSize(object.polygon_top);
    length += _getByteLength(object.source_sensor);
    length += _getByteLength(object.extra_json);
    return length + 353;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/PerceptionFusionObjectData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75e388fad6f1c45fee9951697067271e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 track_id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PerceptionFusionObjectData(null);
    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.type_info !== undefined) {
      resolved.type_info = ObjectTypeInfo.Resolve(msg.type_info)
    }
    else {
      resolved.type_info = new ObjectTypeInfo()
    }

    if (msg.barrier_state_info !== undefined) {
      resolved.barrier_state_info = BarrierStateInfo.Resolve(msg.barrier_state_info)
    }
    else {
      resolved.barrier_state_info = new BarrierStateInfo()
    }

    if (msg.is_static !== undefined) {
      resolved.is_static = msg.is_static;
    }
    else {
      resolved.is_static = false
    }

    if (msg.static_confidence !== undefined) {
      resolved.static_confidence = msg.static_confidence;
    }
    else {
      resolved.static_confidence = 0.0
    }

    if (msg.vehicle_state_info !== undefined) {
      resolved.vehicle_state_info = VehicleStateInfo.Resolve(msg.vehicle_state_info)
    }
    else {
      resolved.vehicle_state_info = new VehicleStateInfo()
    }

    if (msg.shape !== undefined) {
      resolved.shape = Shape3d.Resolve(msg.shape)
    }
    else {
      resolved.shape = new Shape3d()
    }

    if (msg.position !== undefined) {
      resolved.position = Point3d.Resolve(msg.position)
    }
    else {
      resolved.position = new Point3d()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Vector3d.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Vector3d()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = Vector3d.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new Vector3d()
    }

    if (msg.heading_yaw !== undefined) {
      resolved.heading_yaw = msg.heading_yaw;
    }
    else {
      resolved.heading_yaw = 0.0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0.0
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

    if (msg.relative_acceleration !== undefined) {
      resolved.relative_acceleration = Vector3d.Resolve(msg.relative_acceleration)
    }
    else {
      resolved.relative_acceleration = new Vector3d()
    }

    if (msg.relative_heading_yaw !== undefined) {
      resolved.relative_heading_yaw = msg.relative_heading_yaw;
    }
    else {
      resolved.relative_heading_yaw = 0.0
    }

    if (msg.relative_angular_velocity !== undefined) {
      resolved.relative_angular_velocity = msg.relative_angular_velocity;
    }
    else {
      resolved.relative_angular_velocity = 0.0
    }

    if (msg.velocity_relative_to_ground !== undefined) {
      resolved.velocity_relative_to_ground = Vector3d.Resolve(msg.velocity_relative_to_ground)
    }
    else {
      resolved.velocity_relative_to_ground = new Vector3d()
    }

    if (msg.acceleration_relative_to_ground !== undefined) {
      resolved.acceleration_relative_to_ground = Vector3d.Resolve(msg.acceleration_relative_to_ground)
    }
    else {
      resolved.acceleration_relative_to_ground = new Vector3d()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.crash_risk_ttc !== undefined) {
      resolved.crash_risk_ttc = msg.crash_risk_ttc;
    }
    else {
      resolved.crash_risk_ttc = 0.0
    }

    if (msg.polygon_bottom !== undefined) {
      resolved.polygon_bottom = Polygon3f.Resolve(msg.polygon_bottom)
    }
    else {
      resolved.polygon_bottom = new Polygon3f()
    }

    if (msg.polygon_top !== undefined) {
      resolved.polygon_top = Polygon3f.Resolve(msg.polygon_top)
    }
    else {
      resolved.polygon_top = new Polygon3f()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.object_type !== undefined) {
      resolved.object_type = PerceptionObjectTypeEnum.Resolve(msg.object_type)
    }
    else {
      resolved.object_type = new PerceptionObjectTypeEnum()
    }

    if (msg.scene_type !== undefined) {
      resolved.scene_type = PerceptionSceneTypeEnum.Resolve(msg.scene_type)
    }
    else {
      resolved.scene_type = new PerceptionSceneTypeEnum()
    }

    if (msg.scene_confidence !== undefined) {
      resolved.scene_confidence = msg.scene_confidence;
    }
    else {
      resolved.scene_confidence = 0.0
    }

    if (msg.source_sensor !== undefined) {
      resolved.source_sensor = msg.source_sensor;
    }
    else {
      resolved.source_sensor = ''
    }

    if (msg.source_timestamp !== undefined) {
      resolved.source_timestamp = msg.source_timestamp;
    }
    else {
      resolved.source_timestamp = 0.0
    }

    if (msg.visibility !== undefined) {
      resolved.visibility = msg.visibility;
    }
    else {
      resolved.visibility = 0.0
    }

    if (msg.extra_json !== undefined) {
      resolved.extra_json = msg.extra_json;
    }
    else {
      resolved.extra_json = ''
    }

    return resolved;
    }
};

module.exports = PerceptionFusionObjectData;
