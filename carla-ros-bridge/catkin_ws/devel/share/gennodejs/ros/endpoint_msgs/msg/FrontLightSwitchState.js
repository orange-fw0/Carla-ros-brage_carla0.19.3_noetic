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

class FrontLightSwitchState {
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
    // Serializes a message object of type FrontLightSwitchState
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrontLightSwitchState
    let len;
    let data = new FrontLightSwitchState(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/FrontLightSwitchState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a417f739017c3f09d1308d90996bfcf8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FRONT_LIGHT_OFF = 0
    uint8 FRONT_LIGHT_LOW = 1
    uint8 FRONT_LIGHT_HIGH = 2
    uint8 FRONT_LIGHT_FLASH = 3
    uint8 RESERVED1 = 4
    uint8 RESERVED2 = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrontLightSwitchState(null);
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
FrontLightSwitchState.Constants = {
  FRONT_LIGHT_OFF: 0,
  FRONT_LIGHT_LOW: 1,
  FRONT_LIGHT_HIGH: 2,
  FRONT_LIGHT_FLASH: 3,
  RESERVED1: 4,
  RESERVED2: 5,
}

module.exports = FrontLightSwitchState;
