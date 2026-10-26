// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectTypePropertyEnum = require('./ObjectTypePropertyEnum.js');
let ObjectTypeEnum = require('./ObjectTypeEnum.js');
let GeneralObjectTypeEnum = require('./GeneralObjectTypeEnum.js');
let VehicleTypeEnum = require('./VehicleTypeEnum.js');
let VehicleSubTypeEnum = require('./VehicleSubTypeEnum.js');
let VRUTypeEnum = require('./VRUTypeEnum.js');
let VRUSubTypeEnum = require('./VRUSubTypeEnum.js');
let VRUAniSubTypeEnum = require('./VRUAniSubTypeEnum.js');
let VRUPedSubTypeEnum = require('./VRUPedSubTypeEnum.js');
let TrafficBarrierTypeEnum = require('./TrafficBarrierTypeEnum.js');
let TrafficLightTypeEnum = require('./TrafficLightTypeEnum.js');
let AvoidObjectTypeEnum = require('./AvoidObjectTypeEnum.js');

//-----------------------------------------------------------

class ObjectTypeInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type_properties = null;
      this.type = null;
      this.general_object_type = null;
      this.vehicle_type = null;
      this.vehicle_sub_type = null;
      this.vru_type = null;
      this.vru_sub_type = null;
      this.vru_ani_sub_type = null;
      this.vru_ped_sub_type = null;
      this.traffic_barrier_type = null;
      this.traffic_light_type = null;
      this.avoid_object_type = null;
    }
    else {
      if (initObj.hasOwnProperty('type_properties')) {
        this.type_properties = initObj.type_properties
      }
      else {
        this.type_properties = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ObjectTypeEnum();
      }
      if (initObj.hasOwnProperty('general_object_type')) {
        this.general_object_type = initObj.general_object_type
      }
      else {
        this.general_object_type = new GeneralObjectTypeEnum();
      }
      if (initObj.hasOwnProperty('vehicle_type')) {
        this.vehicle_type = initObj.vehicle_type
      }
      else {
        this.vehicle_type = new VehicleTypeEnum();
      }
      if (initObj.hasOwnProperty('vehicle_sub_type')) {
        this.vehicle_sub_type = initObj.vehicle_sub_type
      }
      else {
        this.vehicle_sub_type = new VehicleSubTypeEnum();
      }
      if (initObj.hasOwnProperty('vru_type')) {
        this.vru_type = initObj.vru_type
      }
      else {
        this.vru_type = new VRUTypeEnum();
      }
      if (initObj.hasOwnProperty('vru_sub_type')) {
        this.vru_sub_type = initObj.vru_sub_type
      }
      else {
        this.vru_sub_type = new VRUSubTypeEnum();
      }
      if (initObj.hasOwnProperty('vru_ani_sub_type')) {
        this.vru_ani_sub_type = initObj.vru_ani_sub_type
      }
      else {
        this.vru_ani_sub_type = new VRUAniSubTypeEnum();
      }
      if (initObj.hasOwnProperty('vru_ped_sub_type')) {
        this.vru_ped_sub_type = initObj.vru_ped_sub_type
      }
      else {
        this.vru_ped_sub_type = new VRUPedSubTypeEnum();
      }
      if (initObj.hasOwnProperty('traffic_barrier_type')) {
        this.traffic_barrier_type = initObj.traffic_barrier_type
      }
      else {
        this.traffic_barrier_type = new TrafficBarrierTypeEnum();
      }
      if (initObj.hasOwnProperty('traffic_light_type')) {
        this.traffic_light_type = initObj.traffic_light_type
      }
      else {
        this.traffic_light_type = new TrafficLightTypeEnum();
      }
      if (initObj.hasOwnProperty('avoid_object_type')) {
        this.avoid_object_type = initObj.avoid_object_type
      }
      else {
        this.avoid_object_type = new AvoidObjectTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectTypeInfo
    // Serialize message field [type_properties]
    // Serialize the length for message field [type_properties]
    bufferOffset = _serializer.uint32(obj.type_properties.length, buffer, bufferOffset);
    obj.type_properties.forEach((val) => {
      bufferOffset = ObjectTypePropertyEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [type]
    bufferOffset = ObjectTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [general_object_type]
    bufferOffset = GeneralObjectTypeEnum.serialize(obj.general_object_type, buffer, bufferOffset);
    // Serialize message field [vehicle_type]
    bufferOffset = VehicleTypeEnum.serialize(obj.vehicle_type, buffer, bufferOffset);
    // Serialize message field [vehicle_sub_type]
    bufferOffset = VehicleSubTypeEnum.serialize(obj.vehicle_sub_type, buffer, bufferOffset);
    // Serialize message field [vru_type]
    bufferOffset = VRUTypeEnum.serialize(obj.vru_type, buffer, bufferOffset);
    // Serialize message field [vru_sub_type]
    bufferOffset = VRUSubTypeEnum.serialize(obj.vru_sub_type, buffer, bufferOffset);
    // Serialize message field [vru_ani_sub_type]
    bufferOffset = VRUAniSubTypeEnum.serialize(obj.vru_ani_sub_type, buffer, bufferOffset);
    // Serialize message field [vru_ped_sub_type]
    bufferOffset = VRUPedSubTypeEnum.serialize(obj.vru_ped_sub_type, buffer, bufferOffset);
    // Serialize message field [traffic_barrier_type]
    bufferOffset = TrafficBarrierTypeEnum.serialize(obj.traffic_barrier_type, buffer, bufferOffset);
    // Serialize message field [traffic_light_type]
    bufferOffset = TrafficLightTypeEnum.serialize(obj.traffic_light_type, buffer, bufferOffset);
    // Serialize message field [avoid_object_type]
    bufferOffset = AvoidObjectTypeEnum.serialize(obj.avoid_object_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectTypeInfo
    let len;
    let data = new ObjectTypeInfo(null);
    // Deserialize message field [type_properties]
    // Deserialize array length for message field [type_properties]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.type_properties = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.type_properties[i] = ObjectTypePropertyEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [type]
    data.type = ObjectTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [general_object_type]
    data.general_object_type = GeneralObjectTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_type]
    data.vehicle_type = VehicleTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_sub_type]
    data.vehicle_sub_type = VehicleSubTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [vru_type]
    data.vru_type = VRUTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [vru_sub_type]
    data.vru_sub_type = VRUSubTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [vru_ani_sub_type]
    data.vru_ani_sub_type = VRUAniSubTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [vru_ped_sub_type]
    data.vru_ped_sub_type = VRUPedSubTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_barrier_type]
    data.traffic_barrier_type = TrafficBarrierTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_light_type]
    data.traffic_light_type = TrafficLightTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [avoid_object_type]
    data.avoid_object_type = AvoidObjectTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type_properties.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ObjectTypeInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4637895383d5d51460d2b4a01eedfd62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectTypeInfo(null);
    if (msg.type_properties !== undefined) {
      resolved.type_properties = new Array(msg.type_properties.length);
      for (let i = 0; i < resolved.type_properties.length; ++i) {
        resolved.type_properties[i] = ObjectTypePropertyEnum.Resolve(msg.type_properties[i]);
      }
    }
    else {
      resolved.type_properties = []
    }

    if (msg.type !== undefined) {
      resolved.type = ObjectTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new ObjectTypeEnum()
    }

    if (msg.general_object_type !== undefined) {
      resolved.general_object_type = GeneralObjectTypeEnum.Resolve(msg.general_object_type)
    }
    else {
      resolved.general_object_type = new GeneralObjectTypeEnum()
    }

    if (msg.vehicle_type !== undefined) {
      resolved.vehicle_type = VehicleTypeEnum.Resolve(msg.vehicle_type)
    }
    else {
      resolved.vehicle_type = new VehicleTypeEnum()
    }

    if (msg.vehicle_sub_type !== undefined) {
      resolved.vehicle_sub_type = VehicleSubTypeEnum.Resolve(msg.vehicle_sub_type)
    }
    else {
      resolved.vehicle_sub_type = new VehicleSubTypeEnum()
    }

    if (msg.vru_type !== undefined) {
      resolved.vru_type = VRUTypeEnum.Resolve(msg.vru_type)
    }
    else {
      resolved.vru_type = new VRUTypeEnum()
    }

    if (msg.vru_sub_type !== undefined) {
      resolved.vru_sub_type = VRUSubTypeEnum.Resolve(msg.vru_sub_type)
    }
    else {
      resolved.vru_sub_type = new VRUSubTypeEnum()
    }

    if (msg.vru_ani_sub_type !== undefined) {
      resolved.vru_ani_sub_type = VRUAniSubTypeEnum.Resolve(msg.vru_ani_sub_type)
    }
    else {
      resolved.vru_ani_sub_type = new VRUAniSubTypeEnum()
    }

    if (msg.vru_ped_sub_type !== undefined) {
      resolved.vru_ped_sub_type = VRUPedSubTypeEnum.Resolve(msg.vru_ped_sub_type)
    }
    else {
      resolved.vru_ped_sub_type = new VRUPedSubTypeEnum()
    }

    if (msg.traffic_barrier_type !== undefined) {
      resolved.traffic_barrier_type = TrafficBarrierTypeEnum.Resolve(msg.traffic_barrier_type)
    }
    else {
      resolved.traffic_barrier_type = new TrafficBarrierTypeEnum()
    }

    if (msg.traffic_light_type !== undefined) {
      resolved.traffic_light_type = TrafficLightTypeEnum.Resolve(msg.traffic_light_type)
    }
    else {
      resolved.traffic_light_type = new TrafficLightTypeEnum()
    }

    if (msg.avoid_object_type !== undefined) {
      resolved.avoid_object_type = AvoidObjectTypeEnum.Resolve(msg.avoid_object_type)
    }
    else {
      resolved.avoid_object_type = new AvoidObjectTypeEnum()
    }

    return resolved;
    }
};

module.exports = ObjectTypeInfo;
