// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectTrackInfo = require('./ObjectTrackInfo.js');
let ObjectTypeInfo = require('./ObjectTypeInfo.js');
let Shape3f = require('./Shape3f.js');
let Point3f = require('./Point3f.js');
let Vector3f = require('./Vector3f.js');
let ObjectConfidenceEnum = require('./ObjectConfidenceEnum.js');
let DirectionEnum = require('./DirectionEnum.js');
let Vector2f = require('./Vector2f.js');

//-----------------------------------------------------------

class ADBObjectData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_info = null;
      this.type_info = null;
      this.shape = null;
      this.relative_position = null;
      this.relative_velocity = null;
      this.relative_acceleration = null;
      this.relative_heading_yaw = null;
      this.score = null;
      this.confidence_level = null;
      this.relative_distance = null;
      this.direction = null;
      this.horizontal_angle = null;
      this.horizontal_angular_velocity = null;
      this.vertical_angle = null;
      this.vertical_angular_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('track_info')) {
        this.track_info = initObj.track_info
      }
      else {
        this.track_info = new ObjectTrackInfo();
      }
      if (initObj.hasOwnProperty('type_info')) {
        this.type_info = initObj.type_info
      }
      else {
        this.type_info = new ObjectTypeInfo();
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new Shape3f();
      }
      if (initObj.hasOwnProperty('relative_position')) {
        this.relative_position = initObj.relative_position
      }
      else {
        this.relative_position = new Point3f();
      }
      if (initObj.hasOwnProperty('relative_velocity')) {
        this.relative_velocity = initObj.relative_velocity
      }
      else {
        this.relative_velocity = new Vector3f();
      }
      if (initObj.hasOwnProperty('relative_acceleration')) {
        this.relative_acceleration = initObj.relative_acceleration
      }
      else {
        this.relative_acceleration = new Vector3f();
      }
      if (initObj.hasOwnProperty('relative_heading_yaw')) {
        this.relative_heading_yaw = initObj.relative_heading_yaw
      }
      else {
        this.relative_heading_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('confidence_level')) {
        this.confidence_level = initObj.confidence_level
      }
      else {
        this.confidence_level = new ObjectConfidenceEnum();
      }
      if (initObj.hasOwnProperty('relative_distance')) {
        this.relative_distance = initObj.relative_distance
      }
      else {
        this.relative_distance = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new DirectionEnum();
      }
      if (initObj.hasOwnProperty('horizontal_angle')) {
        this.horizontal_angle = initObj.horizontal_angle
      }
      else {
        this.horizontal_angle = new Vector2f();
      }
      if (initObj.hasOwnProperty('horizontal_angular_velocity')) {
        this.horizontal_angular_velocity = initObj.horizontal_angular_velocity
      }
      else {
        this.horizontal_angular_velocity = new Vector2f();
      }
      if (initObj.hasOwnProperty('vertical_angle')) {
        this.vertical_angle = initObj.vertical_angle
      }
      else {
        this.vertical_angle = new Vector2f();
      }
      if (initObj.hasOwnProperty('vertical_angular_velocity')) {
        this.vertical_angular_velocity = initObj.vertical_angular_velocity
      }
      else {
        this.vertical_angular_velocity = new Vector2f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADBObjectData
    // Serialize message field [track_info]
    bufferOffset = ObjectTrackInfo.serialize(obj.track_info, buffer, bufferOffset);
    // Serialize message field [type_info]
    bufferOffset = ObjectTypeInfo.serialize(obj.type_info, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = Shape3f.serialize(obj.shape, buffer, bufferOffset);
    // Serialize message field [relative_position]
    bufferOffset = Point3f.serialize(obj.relative_position, buffer, bufferOffset);
    // Serialize message field [relative_velocity]
    bufferOffset = Vector3f.serialize(obj.relative_velocity, buffer, bufferOffset);
    // Serialize message field [relative_acceleration]
    bufferOffset = Vector3f.serialize(obj.relative_acceleration, buffer, bufferOffset);
    // Serialize message field [relative_heading_yaw]
    bufferOffset = _serializer.float32(obj.relative_heading_yaw, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [confidence_level]
    bufferOffset = ObjectConfidenceEnum.serialize(obj.confidence_level, buffer, bufferOffset);
    // Serialize message field [relative_distance]
    bufferOffset = _serializer.float32(obj.relative_distance, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = DirectionEnum.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [horizontal_angle]
    bufferOffset = Vector2f.serialize(obj.horizontal_angle, buffer, bufferOffset);
    // Serialize message field [horizontal_angular_velocity]
    bufferOffset = Vector2f.serialize(obj.horizontal_angular_velocity, buffer, bufferOffset);
    // Serialize message field [vertical_angle]
    bufferOffset = Vector2f.serialize(obj.vertical_angle, buffer, bufferOffset);
    // Serialize message field [vertical_angular_velocity]
    bufferOffset = Vector2f.serialize(obj.vertical_angular_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADBObjectData
    let len;
    let data = new ADBObjectData(null);
    // Deserialize message field [track_info]
    data.track_info = ObjectTrackInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [type_info]
    data.type_info = ObjectTypeInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = Shape3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_position]
    data.relative_position = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_velocity]
    data.relative_velocity = Vector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_acceleration]
    data.relative_acceleration = Vector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_heading_yaw]
    data.relative_heading_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence_level]
    data.confidence_level = ObjectConfidenceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_distance]
    data.relative_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = DirectionEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [horizontal_angle]
    data.horizontal_angle = Vector2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [horizontal_angular_velocity]
    data.horizontal_angular_velocity = Vector2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [vertical_angle]
    data.vertical_angle = Vector2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [vertical_angular_velocity]
    data.vertical_angular_velocity = Vector2f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObjectTypeInfo.getMessageSize(object.type_info);
    return length + 114;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ADBObjectData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '438e0802cd603d3e169832e0fef8c4f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/ObjectTrackInfo track_info
    perception_interface_msgs/ObjectTypeInfo type_info
    perception_interface_msgs/Shape3f shape
    perception_interface_msgs/Point3f relative_position
    perception_interface_msgs/Vector3f relative_velocity
    perception_interface_msgs/Vector3f relative_acceleration
    float32 relative_heading_yaw
    float32 score
    perception_interface_msgs/ObjectConfidenceEnum confidence_level
    float32 relative_distance
    perception_interface_msgs/DirectionEnum direction
    perception_interface_msgs/Vector2f horizontal_angle
    perception_interface_msgs/Vector2f horizontal_angular_velocity
    perception_interface_msgs/Vector2f vertical_angle
    perception_interface_msgs/Vector2f vertical_angular_velocity
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectTrackInfo
    uint64 track_id
    uint64 track_times
    float32 age_in_seconds
    
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
    MSG: perception_interface_msgs/Shape3f
    float32 length
    float32 height
    float32 width
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/ObjectConfidenceEnum
    uint8 LOW_CONFIDENCE = 0
    uint8 MIDIUM_CONFIDENCE = 1
    uint8 HIGH_CONFIDENCE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/DirectionEnum
    uint8 UNKNOWN = 0
    uint8 ONCOMING = 1
    uint8 PRECEDING = 2
    uint8 OTHERS = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Vector2f
    float32 x
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADBObjectData(null);
    if (msg.track_info !== undefined) {
      resolved.track_info = ObjectTrackInfo.Resolve(msg.track_info)
    }
    else {
      resolved.track_info = new ObjectTrackInfo()
    }

    if (msg.type_info !== undefined) {
      resolved.type_info = ObjectTypeInfo.Resolve(msg.type_info)
    }
    else {
      resolved.type_info = new ObjectTypeInfo()
    }

    if (msg.shape !== undefined) {
      resolved.shape = Shape3f.Resolve(msg.shape)
    }
    else {
      resolved.shape = new Shape3f()
    }

    if (msg.relative_position !== undefined) {
      resolved.relative_position = Point3f.Resolve(msg.relative_position)
    }
    else {
      resolved.relative_position = new Point3f()
    }

    if (msg.relative_velocity !== undefined) {
      resolved.relative_velocity = Vector3f.Resolve(msg.relative_velocity)
    }
    else {
      resolved.relative_velocity = new Vector3f()
    }

    if (msg.relative_acceleration !== undefined) {
      resolved.relative_acceleration = Vector3f.Resolve(msg.relative_acceleration)
    }
    else {
      resolved.relative_acceleration = new Vector3f()
    }

    if (msg.relative_heading_yaw !== undefined) {
      resolved.relative_heading_yaw = msg.relative_heading_yaw;
    }
    else {
      resolved.relative_heading_yaw = 0.0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.confidence_level !== undefined) {
      resolved.confidence_level = ObjectConfidenceEnum.Resolve(msg.confidence_level)
    }
    else {
      resolved.confidence_level = new ObjectConfidenceEnum()
    }

    if (msg.relative_distance !== undefined) {
      resolved.relative_distance = msg.relative_distance;
    }
    else {
      resolved.relative_distance = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = DirectionEnum.Resolve(msg.direction)
    }
    else {
      resolved.direction = new DirectionEnum()
    }

    if (msg.horizontal_angle !== undefined) {
      resolved.horizontal_angle = Vector2f.Resolve(msg.horizontal_angle)
    }
    else {
      resolved.horizontal_angle = new Vector2f()
    }

    if (msg.horizontal_angular_velocity !== undefined) {
      resolved.horizontal_angular_velocity = Vector2f.Resolve(msg.horizontal_angular_velocity)
    }
    else {
      resolved.horizontal_angular_velocity = new Vector2f()
    }

    if (msg.vertical_angle !== undefined) {
      resolved.vertical_angle = Vector2f.Resolve(msg.vertical_angle)
    }
    else {
      resolved.vertical_angle = new Vector2f()
    }

    if (msg.vertical_angular_velocity !== undefined) {
      resolved.vertical_angular_velocity = Vector2f.Resolve(msg.vertical_angular_velocity)
    }
    else {
      resolved.vertical_angular_velocity = new Vector2f()
    }

    return resolved;
    }
};

module.exports = ADBObjectData;
