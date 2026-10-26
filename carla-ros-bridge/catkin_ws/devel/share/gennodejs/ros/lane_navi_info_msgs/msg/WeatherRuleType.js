// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WeatherRuleType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeatherRuleType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeatherRuleType
    let len;
    let data = new WeatherRuleType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/WeatherRuleType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ba6de65c9d99b9e8281b1ebdfb9929e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WEATHERTYPE_INVALID = 0
    uint8 WEATHERTYPE_SUNSHINE = 1
    uint8 WEATHERTYPE_RAINSNOW = 2
    uint8 WEATHERTYPE_ICE = 3
    uint8 WEATHERTYPE_FOG = 4
    uint8 WEATHERTYPE_WIND = 5
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WeatherRuleType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
WeatherRuleType.Constants = {
  WEATHERTYPE_INVALID: 0,
  WEATHERTYPE_SUNSHINE: 1,
  WEATHERTYPE_RAINSNOW: 2,
  WEATHERTYPE_ICE: 3,
  WEATHERTYPE_FOG: 4,
  WEATHERTYPE_WIND: 5,
}

module.exports = WeatherRuleType;
