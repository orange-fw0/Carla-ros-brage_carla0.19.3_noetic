// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrafficBarrierTypeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficBarrierTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficBarrierTypeEnum
    let len;
    let data = new TrafficBarrierTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficBarrierTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31db85895201704e77e307146acd3a05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficBarrierTypeEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
TrafficBarrierTypeEnum.Constants = {
  TRAFFIC_BARRIER_TYPE_UNKNOWN: 0,
  TRAFFIC_BARRIER_TYPE_CONE: 1,
  TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE: 2,
  TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE: 3,
  TRAFFIC_BARRIER_TYPE_PARKING_LOCK: 4,
  TRAFFIC_BARRIER_TYPE_AFRAME_SIGN: 5,
  TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET: 6,
  TRAFFIC_BARRIER_TYPE_DUSTBIN: 7,
  TRAFFIC_BARRIER_TYPE_BARRIER_STONE: 8,
  TRAFFIC_BARRIER_TYPE_WATER_BARRIER: 9,
  TRAFFIC_BARRIER_TYPE_PARKING_STOPPER: 10,
  TRAFFIC_BARRIER_TYPE_UNMARKED: 11,
  TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN: 12,
  TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER: 13,
  TRAFFIC_BARRIER_TYPE_PARKING_GATE: 14,
  TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON: 15,
  TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF: 16,
  TRAFFIC_BARRIER_TYPE_EU_FENCE: 17,
  TRAFFIC_BARRIER_TYPE_US_CONE: 18,
  TRAFFIC_BARRIER_TYPE_PAPER_BOX: 19,
  TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS: 20,
  TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE: 21,
  TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING: 22,
  TRAFFIC_BARRIER_TYPE_AVIOD: 23,
  TRAFFIC_BARRIER_TYPE_BRAKE: 24,
  TRAFFIC_BARRIER_TYPE_FAR: 25,
  TRAFFIC_BARRIER_TYPE_NEAR: 26,
}

module.exports = TrafficBarrierTypeEnum;
