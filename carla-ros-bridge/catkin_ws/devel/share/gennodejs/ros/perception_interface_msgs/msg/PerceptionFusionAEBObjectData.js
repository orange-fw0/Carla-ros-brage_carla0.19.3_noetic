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
let Shape3d = require('./Shape3d.js');
let Point3d = require('./Point3d.js');
let Vector3d = require('./Vector3d.js');

//-----------------------------------------------------------

class PerceptionFusionAEBObjectData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.type_info = null;
      this.score = null;
      this.ttc = null;
      this.shape = null;
      this.relative_position = null;
      this.relative_velocity = null;
      this.relative_acceleration = null;
      this.relative_heading_yaw = null;
      this.relative_angular_velocity = null;
      this.velocity_relative_to_ground = null;
      this.acceleration_relative_to_ground = null;
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
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('ttc')) {
        this.ttc = initObj.ttc
      }
      else {
        this.ttc = 0.0;
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new Shape3d();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceptionFusionAEBObjectData
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [type_info]
    bufferOffset = ObjectTypeInfo.serialize(obj.type_info, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [ttc]
    bufferOffset = _serializer.float32(obj.ttc, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = Shape3d.serialize(obj.shape, buffer, bufferOffset);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionFusionAEBObjectData
    let len;
    let data = new PerceptionFusionAEBObjectData(null);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [type_info]
    data.type_info = ObjectTypeInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ttc]
    data.ttc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = Shape3d.deserialize(buffer, bufferOffset);
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
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObjectTypeInfo.getMessageSize(object.type_info);
    return length + 168;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/PerceptionFusionAEBObjectData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f5e0450010ff92a19eae803bb4452f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 track_id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PerceptionFusionAEBObjectData(null);
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

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.ttc !== undefined) {
      resolved.ttc = msg.ttc;
    }
    else {
      resolved.ttc = 0.0
    }

    if (msg.shape !== undefined) {
      resolved.shape = Shape3d.Resolve(msg.shape)
    }
    else {
      resolved.shape = new Shape3d()
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

    return resolved;
    }
};

module.exports = PerceptionFusionAEBObjectData;
