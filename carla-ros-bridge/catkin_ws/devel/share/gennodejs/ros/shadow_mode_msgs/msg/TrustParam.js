// Auto-generated. Do not edit!

// (in-package shadow_mode_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrustParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trust_value = null;
    }
    else {
      if (initObj.hasOwnProperty('trust_value')) {
        this.trust_value = initObj.trust_value
      }
      else {
        this.trust_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrustParam
    // Serialize message field [trust_value]
    bufferOffset = _serializer.uint8(obj.trust_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrustParam
    let len;
    let data = new TrustParam(null);
    // Deserialize message field [trust_value]
    data.trust_value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shadow_mode_msgs/TrustParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1edeb9fd6ed1d68d4a45e9e6425ce6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NONE = 0
    uint8 BEFORE = 1
    uint8 AFTER = 2
    uint8 trust_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrustParam(null);
    if (msg.trust_value !== undefined) {
      resolved.trust_value = msg.trust_value;
    }
    else {
      resolved.trust_value = 0
    }

    return resolved;
    }
};

// Constants for message
TrustParam.Constants = {
  NONE: 0,
  BEFORE: 1,
  AFTER: 2,
}

module.exports = TrustParam;
