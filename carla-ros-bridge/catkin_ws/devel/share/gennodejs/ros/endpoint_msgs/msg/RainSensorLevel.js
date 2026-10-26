// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RainSensorLevel {
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
    // Serializes a message object of type RainSensorLevel
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RainSensorLevel
    let len;
    let data = new RainSensorLevel(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/RainSensorLevel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c07886f318a675994547437acdb7db44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RAIN_SENSOR_OFF = 0
    uint8 RARIN_SENSOR_LEVEL_LOW = 1
    uint8 RARIN_SENSOR_LEVEL_MID = 2
    uint8 RARIN_SENSOR_LEVEL_HIGH = 3
    uint8 RARIN_SENSOR_LEVEL_RESERVED = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RainSensorLevel(null);
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
RainSensorLevel.Constants = {
  RAIN_SENSOR_OFF: 0,
  RARIN_SENSOR_LEVEL_LOW: 1,
  RARIN_SENSOR_LEVEL_MID: 2,
  RARIN_SENSOR_LEVEL_HIGH: 3,
  RARIN_SENSOR_LEVEL_RESERVED: 4,
}

module.exports = RainSensorLevel;
