// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WeatherRuleType = require('./WeatherRuleType.js');

//-----------------------------------------------------------

class WeatherRule {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.weather_rule_type = null;
      this.is_limited = null;
    }
    else {
      if (initObj.hasOwnProperty('weather_rule_type')) {
        this.weather_rule_type = initObj.weather_rule_type
      }
      else {
        this.weather_rule_type = [];
      }
      if (initObj.hasOwnProperty('is_limited')) {
        this.is_limited = initObj.is_limited
      }
      else {
        this.is_limited = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeatherRule
    // Serialize message field [weather_rule_type]
    // Serialize the length for message field [weather_rule_type]
    bufferOffset = _serializer.uint32(obj.weather_rule_type.length, buffer, bufferOffset);
    obj.weather_rule_type.forEach((val) => {
      bufferOffset = WeatherRuleType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_limited]
    bufferOffset = _serializer.bool(obj.is_limited, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeatherRule
    let len;
    let data = new WeatherRule(null);
    // Deserialize message field [weather_rule_type]
    // Deserialize array length for message field [weather_rule_type]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.weather_rule_type = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.weather_rule_type[i] = WeatherRuleType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_limited]
    data.is_limited = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.weather_rule_type.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/WeatherRule';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '641fafa69f93c44b2fc9f1ec0104482a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane_navi_info_msgs/WeatherRuleType[] weather_rule_type
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/WeatherRuleType
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
    const resolved = new WeatherRule(null);
    if (msg.weather_rule_type !== undefined) {
      resolved.weather_rule_type = new Array(msg.weather_rule_type.length);
      for (let i = 0; i < resolved.weather_rule_type.length; ++i) {
        resolved.weather_rule_type[i] = WeatherRuleType.Resolve(msg.weather_rule_type[i]);
      }
    }
    else {
      resolved.weather_rule_type = []
    }

    if (msg.is_limited !== undefined) {
      resolved.is_limited = msg.is_limited;
    }
    else {
      resolved.is_limited = false
    }

    return resolved;
    }
};

module.exports = WeatherRule;
