// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SDFacilityType = require('./SDFacilityType.js');
let SDSpeedLimitType = require('./SDSpeedLimitType.js');
let TimeRegulationRange = require('./TimeRegulationRange.js');
let WeatherRule = require('./WeatherRule.js');

//-----------------------------------------------------------

class SDFacility {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.facility_type = null;
      this.speed_limit_type = null;
      this.speed_limit_value = null;
      this.time_limit_list = null;
      this.weather_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('facility_type')) {
        this.facility_type = initObj.facility_type
      }
      else {
        this.facility_type = new SDFacilityType();
      }
      if (initObj.hasOwnProperty('speed_limit_type')) {
        this.speed_limit_type = initObj.speed_limit_type
      }
      else {
        this.speed_limit_type = new SDSpeedLimitType();
      }
      if (initObj.hasOwnProperty('speed_limit_value')) {
        this.speed_limit_value = initObj.speed_limit_value
      }
      else {
        this.speed_limit_value = 0;
      }
      if (initObj.hasOwnProperty('time_limit_list')) {
        this.time_limit_list = initObj.time_limit_list
      }
      else {
        this.time_limit_list = [];
      }
      if (initObj.hasOwnProperty('weather_limit')) {
        this.weather_limit = initObj.weather_limit
      }
      else {
        this.weather_limit = new WeatherRule();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDFacility
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    // Serialize message field [facility_type]
    bufferOffset = SDFacilityType.serialize(obj.facility_type, buffer, bufferOffset);
    // Serialize message field [speed_limit_type]
    bufferOffset = SDSpeedLimitType.serialize(obj.speed_limit_type, buffer, bufferOffset);
    // Serialize message field [speed_limit_value]
    bufferOffset = _serializer.uint16(obj.speed_limit_value, buffer, bufferOffset);
    // Serialize message field [time_limit_list]
    // Serialize the length for message field [time_limit_list]
    bufferOffset = _serializer.uint32(obj.time_limit_list.length, buffer, bufferOffset);
    obj.time_limit_list.forEach((val) => {
      bufferOffset = TimeRegulationRange.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [weather_limit]
    bufferOffset = WeatherRule.serialize(obj.weather_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDFacility
    let len;
    let data = new SDFacility(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [facility_type]
    data.facility_type = SDFacilityType.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_limit_type]
    data.speed_limit_type = SDSpeedLimitType.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_limit_value]
    data.speed_limit_value = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [time_limit_list]
    // Deserialize array length for message field [time_limit_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.time_limit_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.time_limit_list[i] = TimeRegulationRange.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [weather_limit]
    data.weather_limit = WeatherRule.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 15 * object.time_limit_list.length;
    length += WeatherRule.getMessageSize(object.weather_limit);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDFacility';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '704e402118b95161ec3c53cc3b1fb070';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 offset
    lane_navi_info_msgs/SDFacilityType facility_type
    lane_navi_info_msgs/SDSpeedLimitType speed_limit_type
    uint16 speed_limit_value
    lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
    lane_navi_info_msgs/WeatherRule weather_limit
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDFacilityType
    uint8 FACILITY_LEFT_INTER_FLOW = 1
    uint8 FACILITY_RIGHT_INTER_FLOW = 2
    uint8 FACILITY_REVERSE_TURN = 4
    uint8 FACILITY_LINKING_TURN = 5
    uint8 FACILITY_ACCIDENT_AREA = 6
    uint8 FACILITY_RAILWAY_CROSS = 8
    uint8 FACILITY_SLIPPERY = 9
    uint8 FACILITY_MAX_SPEED_LIMIT = 10
    uint8 FACILITY_MIN_SPEED_LIMIT = 11
    uint8 FACILITY_VILLAGE = 12
    uint8 FACILITY_LEFT_NARROW = 13
    uint8 FACILITY_RIGHT_NARROW = 14
    uint8 FACILITY_DOUBLE_NARROW = 15
    uint8 FACILITY_CROSS_WIND_AREA = 16
    uint8 FACILITY_SCHOOL = 17
    uint8 FACILITY_NOPASSING = 18
    uint8 FACILITY_NARROW_BRIDGE = 19
    uint8 FACILITY_AROUND_THE_LINE = 20
    uint8 FACILITY_LEFT_BYPASS = 21
    uint8 FACILITY_RIGHT_BYPASS = 22
    uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23
    uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24
    uint8 FACILITY_ONSTEEPLOPE = 25
    uint8 FACILITY_UNDERSTEEPLOPE = 26
    uint8 FACILITY_OVER_WATER_ROAD = 27
    uint8 FACILITY_UNEVEN_ROAD = 28
    uint8 FACILITY_STROLL = 29
    uint8 FACILITY_ATTENTION_TO_DANGER = 30
    uint8 FACILITY_CROSSWALK = 31
    uint8 FACILITY_RIVER_BANK_LEFT = 33
    uint8 FACILITY_RIVER_BANK_RIGHT = 34
    uint8 FACILITY_CHILDREN = 35
    uint8 FACILITY_CYCLISTS = 36
    uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37
    uint8 FACILITY_GIVE_WAY = 38
    uint8 FACILITY_STOP = 39
    uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40
    uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41
    uint8 FACILITY_HUMPBACK_BRIDGE = 42
    uint8 FACILITY_END_OF_SPEED_LIMIT = 43
    uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44
    uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50
    uint8 FACILITY_RAILWAY_WITH_GATES = 51
    uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52
    uint8 FACILITY_VARIABLE_SPEED = 53
    uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54
    uint8 FACILITY_PEDESTRIANS = 56
    uint8 FACILITY_UNKNOWN = 255
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDSpeedLimitType
    uint8 SPEED_LIMIT_TYPE_DEFAULT = 0
    uint8 SPEED_LIMIT_TYPE_RAMP = 2
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeRegulationRange
    lane_navi_info_msgs/TimeRegulation start_time
    lane_navi_info_msgs/TimeRegulation end_time
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeRegulation
    lane_navi_info_msgs/TimeOfDay day
    uint8 week
    lane_navi_info_msgs/DayOfYear year
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeOfDay
    uint8 hours
    uint8 minutes
    
    ================================================================================
    MSG: lane_navi_info_msgs/DayOfYear
    uint16 year
    uint8 month
    uint8 day
    
    ================================================================================
    MSG: lane_navi_info_msgs/WeatherRule
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
    const resolved = new SDFacility(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.facility_type !== undefined) {
      resolved.facility_type = SDFacilityType.Resolve(msg.facility_type)
    }
    else {
      resolved.facility_type = new SDFacilityType()
    }

    if (msg.speed_limit_type !== undefined) {
      resolved.speed_limit_type = SDSpeedLimitType.Resolve(msg.speed_limit_type)
    }
    else {
      resolved.speed_limit_type = new SDSpeedLimitType()
    }

    if (msg.speed_limit_value !== undefined) {
      resolved.speed_limit_value = msg.speed_limit_value;
    }
    else {
      resolved.speed_limit_value = 0
    }

    if (msg.time_limit_list !== undefined) {
      resolved.time_limit_list = new Array(msg.time_limit_list.length);
      for (let i = 0; i < resolved.time_limit_list.length; ++i) {
        resolved.time_limit_list[i] = TimeRegulationRange.Resolve(msg.time_limit_list[i]);
      }
    }
    else {
      resolved.time_limit_list = []
    }

    if (msg.weather_limit !== undefined) {
      resolved.weather_limit = WeatherRule.Resolve(msg.weather_limit)
    }
    else {
      resolved.weather_limit = new WeatherRule()
    }

    return resolved;
    }
};

module.exports = SDFacility;
