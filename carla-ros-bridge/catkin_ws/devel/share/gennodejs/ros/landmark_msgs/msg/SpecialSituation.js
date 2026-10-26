// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SpecialSituation {
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
    // Serializes a message object of type SpecialSituation
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpecialSituation
    let len;
    let data = new SpecialSituation(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/SpecialSituation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75f39bf8b1af7dc37486bbd9b97a1597';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 UNKNOWN = 0
    uint32 TUNNEL_BEGIN = 1
    uint32 TUNNEL_END = 2
    uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
    uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpecialSituation(null);
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
SpecialSituation.Constants = {
  UNKNOWN: 0,
  TUNNEL_BEGIN: 1,
  TUNNEL_END: 2,
  BAD_WEATHER_EFFECTED_ZONE_BEGIN: 3,
  BAD_WEATHER_EFFECTED_ZONE_END: 4,
}

module.exports = SpecialSituation;
