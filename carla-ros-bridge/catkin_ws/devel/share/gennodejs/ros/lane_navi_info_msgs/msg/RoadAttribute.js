// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SpeedLimit = require('./SpeedLimit.js');
let ExperienceSpeedLimit = require('./ExperienceSpeedLimit.js');
let Curvature = require('./Curvature.js');
let Slope = require('./Slope.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class RoadAttribute {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_limits = null;
      this.experience_speed_limits = null;
      this.curvatures = null;
      this.slopes = null;
      this.special_situation = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_limits')) {
        this.speed_limits = initObj.speed_limits
      }
      else {
        this.speed_limits = [];
      }
      if (initObj.hasOwnProperty('experience_speed_limits')) {
        this.experience_speed_limits = initObj.experience_speed_limits
      }
      else {
        this.experience_speed_limits = [];
      }
      if (initObj.hasOwnProperty('curvatures')) {
        this.curvatures = initObj.curvatures
      }
      else {
        this.curvatures = [];
      }
      if (initObj.hasOwnProperty('slopes')) {
        this.slopes = initObj.slopes
      }
      else {
        this.slopes = [];
      }
      if (initObj.hasOwnProperty('special_situation')) {
        this.special_situation = initObj.special_situation
      }
      else {
        this.special_situation = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadAttribute
    // Serialize message field [speed_limits]
    // Serialize the length for message field [speed_limits]
    bufferOffset = _serializer.uint32(obj.speed_limits.length, buffer, bufferOffset);
    obj.speed_limits.forEach((val) => {
      bufferOffset = SpeedLimit.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [experience_speed_limits]
    // Serialize the length for message field [experience_speed_limits]
    bufferOffset = _serializer.uint32(obj.experience_speed_limits.length, buffer, bufferOffset);
    obj.experience_speed_limits.forEach((val) => {
      bufferOffset = ExperienceSpeedLimit.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [curvatures]
    // Serialize the length for message field [curvatures]
    bufferOffset = _serializer.uint32(obj.curvatures.length, buffer, bufferOffset);
    obj.curvatures.forEach((val) => {
      bufferOffset = Curvature.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [slopes]
    // Serialize the length for message field [slopes]
    bufferOffset = _serializer.uint32(obj.slopes.length, buffer, bufferOffset);
    obj.slopes.forEach((val) => {
      bufferOffset = Slope.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [special_situation]
    // Serialize the length for message field [special_situation]
    bufferOffset = _serializer.uint32(obj.special_situation.length, buffer, bufferOffset);
    obj.special_situation.forEach((val) => {
      bufferOffset = landmark_msgs.msg.SpecialSituation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadAttribute
    let len;
    let data = new RoadAttribute(null);
    // Deserialize message field [speed_limits]
    // Deserialize array length for message field [speed_limits]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.speed_limits = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.speed_limits[i] = SpeedLimit.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [experience_speed_limits]
    // Deserialize array length for message field [experience_speed_limits]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.experience_speed_limits = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.experience_speed_limits[i] = ExperienceSpeedLimit.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [curvatures]
    // Deserialize array length for message field [curvatures]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.curvatures = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.curvatures[i] = Curvature.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [slopes]
    // Deserialize array length for message field [slopes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.slopes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.slopes[i] = Slope.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [special_situation]
    // Deserialize array length for message field [special_situation]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.special_situation = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.special_situation[i] = landmark_msgs.msg.SpecialSituation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.speed_limits.forEach((val) => {
      length += SpeedLimit.getMessageSize(val);
    });
    length += 12 * object.experience_speed_limits.length;
    object.curvatures.forEach((val) => {
      length += Curvature.getMessageSize(val);
    });
    object.slopes.forEach((val) => {
      length += Slope.getMessageSize(val);
    });
    length += 4 * object.special_situation.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/RoadAttribute';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1024dd2551dabd4ed614f34f10170ecb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane_navi_info_msgs/SpeedLimit[] speed_limits
    lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits
    lane_navi_info_msgs/Curvature[] curvatures
    lane_navi_info_msgs/Slope[] slopes
    landmark_msgs/SpecialSituation[] special_situation
    
    ================================================================================
    MSG: lane_navi_info_msgs/SpeedLimit
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: lane_navi_info_msgs/InterpolationType
    uint8 UNKNOWN = 0
    uint8 STEP = 1
    uint8 LINEAR = 2
    uint8 GENERAL = 3
    uint8 OHTERS = 255
    uint8 type
    float32[] addition_values
    float32[] params
    
    ================================================================================
    MSG: lane_navi_info_msgs/ExperienceSpeedLimit
    float32 value
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: lane_navi_info_msgs/Curvature
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: lane_navi_info_msgs/Slope
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: landmark_msgs/SpecialSituation
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
    const resolved = new RoadAttribute(null);
    if (msg.speed_limits !== undefined) {
      resolved.speed_limits = new Array(msg.speed_limits.length);
      for (let i = 0; i < resolved.speed_limits.length; ++i) {
        resolved.speed_limits[i] = SpeedLimit.Resolve(msg.speed_limits[i]);
      }
    }
    else {
      resolved.speed_limits = []
    }

    if (msg.experience_speed_limits !== undefined) {
      resolved.experience_speed_limits = new Array(msg.experience_speed_limits.length);
      for (let i = 0; i < resolved.experience_speed_limits.length; ++i) {
        resolved.experience_speed_limits[i] = ExperienceSpeedLimit.Resolve(msg.experience_speed_limits[i]);
      }
    }
    else {
      resolved.experience_speed_limits = []
    }

    if (msg.curvatures !== undefined) {
      resolved.curvatures = new Array(msg.curvatures.length);
      for (let i = 0; i < resolved.curvatures.length; ++i) {
        resolved.curvatures[i] = Curvature.Resolve(msg.curvatures[i]);
      }
    }
    else {
      resolved.curvatures = []
    }

    if (msg.slopes !== undefined) {
      resolved.slopes = new Array(msg.slopes.length);
      for (let i = 0; i < resolved.slopes.length; ++i) {
        resolved.slopes[i] = Slope.Resolve(msg.slopes[i]);
      }
    }
    else {
      resolved.slopes = []
    }

    if (msg.special_situation !== undefined) {
      resolved.special_situation = new Array(msg.special_situation.length);
      for (let i = 0; i < resolved.special_situation.length; ++i) {
        resolved.special_situation[i] = landmark_msgs.msg.SpecialSituation.Resolve(msg.special_situation[i]);
      }
    }
    else {
      resolved.special_situation = []
    }

    return resolved;
    }
};

module.exports = RoadAttribute;
