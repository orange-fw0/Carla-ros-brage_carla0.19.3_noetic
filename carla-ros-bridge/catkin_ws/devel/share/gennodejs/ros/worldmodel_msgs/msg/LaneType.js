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

class LaneType {
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
    // Serializes a message object of type LaneType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneType
    let len;
    let data = new LaneType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fb4cc01a35d399e06b3df66aa882780';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 NORMAL = 1
    uint8 VIRTUAL = 2
    uint8 PARKING = 3
    uint8 ACCELERATE = 4
    uint8 DECELERATE = 5
    uint8 BUS = 6
    uint8 EMERGENCY = 7
    uint8 ACCELERATE_DECELERATE = 8
    uint8 LEFT_TURN_WAITTING_AREA = 9
    uint8 NON_MOTOR = 10
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneType(null);
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
LaneType.Constants = {
  UNKNOWN: 0,
  NORMAL: 1,
  VIRTUAL: 2,
  PARKING: 3,
  ACCELERATE: 4,
  DECELERATE: 5,
  BUS: 6,
  EMERGENCY: 7,
  ACCELERATE_DECELERATE: 8,
  LEFT_TURN_WAITTING_AREA: 9,
  NON_MOTOR: 10,
}

module.exports = LaneType;
