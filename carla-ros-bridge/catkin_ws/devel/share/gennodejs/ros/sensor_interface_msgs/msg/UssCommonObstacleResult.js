// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommonUltrasonicObstacleData = require('./CommonUltrasonicObstacleData.js');

//-----------------------------------------------------------

class UssCommonObstacleResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_obstacle_data = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_obstacle_data')) {
        this.uss_obstacle_data = initObj.uss_obstacle_data
      }
      else {
        this.uss_obstacle_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssCommonObstacleResult
    // Serialize message field [uss_obstacle_data]
    // Serialize the length for message field [uss_obstacle_data]
    bufferOffset = _serializer.uint32(obj.uss_obstacle_data.length, buffer, bufferOffset);
    obj.uss_obstacle_data.forEach((val) => {
      bufferOffset = CommonUltrasonicObstacleData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssCommonObstacleResult
    let len;
    let data = new UssCommonObstacleResult(null);
    // Deserialize message field [uss_obstacle_data]
    // Deserialize array length for message field [uss_obstacle_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_obstacle_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_obstacle_data[i] = CommonUltrasonicObstacleData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.uss_obstacle_data.forEach((val) => {
      length += CommonUltrasonicObstacleData.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssCommonObstacleResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36ee27dbfe13421216dc2ea48c895d50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/CommonUltrasonicObstacleData[] uss_obstacle_data
    
    ================================================================================
    MSG: sensor_interface_msgs/CommonUltrasonicObstacleData
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    sensor_interface_msgs/UltrasonicObjectType obj_type
    sensor_interface_msgs/UltrasonicObjectHeiType obj_height
    float32 obj_height_probability
    float32 obj_probability
    float32 obj_start_X
    float32 obj_start_Y
    float32 obj_end_X
    float32 obj_end_Y
    float32 obj_height_value
    float32 major_axis_error
    float32 minor_axis_variance
    float32 ellipse_theta_variance
    string reserved_info
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicObjectType
    uint8 NONE = 0
    uint8 POINT = 1
    uint8 STRAIGHT_LINE = 2
    uint8 RAYS = 3
    uint8 LINE_SEGMENT = 5
    uint8 SNA = 7
    uint8 RESERVED_INFO = 8
    uint8 value
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicObjectHeiType
    uint8 LOW = 0
    uint8 HIGH = 1
    uint8 TRAVERSIBLE = 2
    uint8 UNKONOWN = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UssCommonObstacleResult(null);
    if (msg.uss_obstacle_data !== undefined) {
      resolved.uss_obstacle_data = new Array(msg.uss_obstacle_data.length);
      for (let i = 0; i < resolved.uss_obstacle_data.length; ++i) {
        resolved.uss_obstacle_data[i] = CommonUltrasonicObstacleData.Resolve(msg.uss_obstacle_data[i]);
      }
    }
    else {
      resolved.uss_obstacle_data = []
    }

    return resolved;
    }
};

module.exports = UssCommonObstacleResult;
