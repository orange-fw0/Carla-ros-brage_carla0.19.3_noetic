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

class FrontLightState {
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
    // Serializes a message object of type FrontLightState
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrontLightState
    let len;
    let data = new FrontLightState(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/FrontLightState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9301ac5d44aabafbe62a4490edc1f2ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LIGHT_OFF = 0
    uint8 LOW_BEAM_LIGHT = 1
    uint8 HIGH_BEAM_LIGHT = 2
    uint8 OVERTAKING_FLASH = 3
    uint8 LIGHT_AUTO = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrontLightState(null);
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
FrontLightState.Constants = {
  LIGHT_OFF: 0,
  LOW_BEAM_LIGHT: 1,
  HIGH_BEAM_LIGHT: 2,
  OVERTAKING_FLASH: 3,
  LIGHT_AUTO: 4,
}

module.exports = FrontLightState;
