// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SceneObjectType {
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
    // Serializes a message object of type SceneObjectType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneObjectType
    let len;
    let data = new SceneObjectType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/SceneObjectType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93fe33ddd84b93acb2c80d5e0d721a48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
    uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
    uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
    uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
    uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
    uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
    uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
    uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
    uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
    uint8 MAP_FIRE_EXIT_DOOR = 10
    uint8 MAP_PILLAR = 11
    uint8 MAP_TOLL_GATE = 12
    uint8 MAP_BORDER_SOLID_LINE = 13
    uint8 MAP_BORDER_DASH_LINE = 14
    uint8 MAP_BORDER_PHYSICAL = 15
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SceneObjectType(null);
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
SceneObjectType.Constants = {
  UNKNOWN: 0,
  TRAFFIC_BARRIER_TYPE_CONE: 1,
  TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE: 2,
  TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE: 3,
  TRAFFIC_BARRIER_TYPE_PARKING_LOCK: 4,
  TRAFFIC_BARRIER_TYPE_AFRAME_SIGN: 5,
  TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET: 6,
  TRAFFIC_BARRIER_TYPE_DUSTBIN: 7,
  TRAFFIC_BARRIER_TYPE_BARRIER_STONE: 8,
  TRAFFIC_BARRIER_TYPE_WATER_BARRIER: 9,
  MAP_FIRE_EXIT_DOOR: 10,
  MAP_PILLAR: 11,
  MAP_TOLL_GATE: 12,
  MAP_BORDER_SOLID_LINE: 13,
  MAP_BORDER_DASH_LINE: 14,
  MAP_BORDER_PHYSICAL: 15,
}

module.exports = SceneObjectType;
