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

class LeverStatus {
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
    // Serializes a message object of type LeverStatus
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeverStatus
    let len;
    let data = new LeverStatus(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/LeverStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15bad8e81cba86ce97105bd413cab318';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LEVER_STATE_OFF = 0
    uint8 LEVER_STATE_LEFT = 1
    uint8 LEVER_STATE_RIGHT = 2
    uint8 LEVER_STATE_LEFT_INVALID = 3
    uint8 LEVER_STATE_RIGHT_INVALID = 4
    uint8 LEVER_STATE_LEFT_LIGHT = 5
    uint8 LEVER_STATE_RIGHT_LIGHT = 6
    uint8 LEVER_STATE_RESERVED1 = 7
    uint8 LEVER_STATE_RESERVED3 = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeverStatus(null);
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
LeverStatus.Constants = {
  LEVER_STATE_OFF: 0,
  LEVER_STATE_LEFT: 1,
  LEVER_STATE_RIGHT: 2,
  LEVER_STATE_LEFT_INVALID: 3,
  LEVER_STATE_RIGHT_INVALID: 4,
  LEVER_STATE_LEFT_LIGHT: 5,
  LEVER_STATE_RIGHT_LIGHT: 6,
  LEVER_STATE_RESERVED1: 7,
  LEVER_STATE_RESERVED3: 8,
}

module.exports = LeverStatus;
