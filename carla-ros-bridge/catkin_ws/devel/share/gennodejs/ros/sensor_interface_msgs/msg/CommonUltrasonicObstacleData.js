// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicResultMeta = require('./UltrasonicResultMeta.js');
let UltrasonicObjectType = require('./UltrasonicObjectType.js');
let UltrasonicObjectHeiType = require('./UltrasonicObjectHeiType.js');

//-----------------------------------------------------------

class CommonUltrasonicObstacleData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.meta = null;
      this.obj_type = null;
      this.obj_height = null;
      this.obj_height_probability = null;
      this.obj_probability = null;
      this.obj_start_X = null;
      this.obj_start_Y = null;
      this.obj_end_X = null;
      this.obj_end_Y = null;
      this.obj_height_value = null;
      this.major_axis_error = null;
      this.minor_axis_variance = null;
      this.ellipse_theta_variance = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new UltrasonicResultMeta();
      }
      if (initObj.hasOwnProperty('obj_type')) {
        this.obj_type = initObj.obj_type
      }
      else {
        this.obj_type = new UltrasonicObjectType();
      }
      if (initObj.hasOwnProperty('obj_height')) {
        this.obj_height = initObj.obj_height
      }
      else {
        this.obj_height = new UltrasonicObjectHeiType();
      }
      if (initObj.hasOwnProperty('obj_height_probability')) {
        this.obj_height_probability = initObj.obj_height_probability
      }
      else {
        this.obj_height_probability = 0.0;
      }
      if (initObj.hasOwnProperty('obj_probability')) {
        this.obj_probability = initObj.obj_probability
      }
      else {
        this.obj_probability = 0.0;
      }
      if (initObj.hasOwnProperty('obj_start_X')) {
        this.obj_start_X = initObj.obj_start_X
      }
      else {
        this.obj_start_X = 0.0;
      }
      if (initObj.hasOwnProperty('obj_start_Y')) {
        this.obj_start_Y = initObj.obj_start_Y
      }
      else {
        this.obj_start_Y = 0.0;
      }
      if (initObj.hasOwnProperty('obj_end_X')) {
        this.obj_end_X = initObj.obj_end_X
      }
      else {
        this.obj_end_X = 0.0;
      }
      if (initObj.hasOwnProperty('obj_end_Y')) {
        this.obj_end_Y = initObj.obj_end_Y
      }
      else {
        this.obj_end_Y = 0.0;
      }
      if (initObj.hasOwnProperty('obj_height_value')) {
        this.obj_height_value = initObj.obj_height_value
      }
      else {
        this.obj_height_value = 0.0;
      }
      if (initObj.hasOwnProperty('major_axis_error')) {
        this.major_axis_error = initObj.major_axis_error
      }
      else {
        this.major_axis_error = 0.0;
      }
      if (initObj.hasOwnProperty('minor_axis_variance')) {
        this.minor_axis_variance = initObj.minor_axis_variance
      }
      else {
        this.minor_axis_variance = 0.0;
      }
      if (initObj.hasOwnProperty('ellipse_theta_variance')) {
        this.ellipse_theta_variance = initObj.ellipse_theta_variance
      }
      else {
        this.ellipse_theta_variance = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonUltrasonicObstacleData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = UltrasonicResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [obj_type]
    bufferOffset = UltrasonicObjectType.serialize(obj.obj_type, buffer, bufferOffset);
    // Serialize message field [obj_height]
    bufferOffset = UltrasonicObjectHeiType.serialize(obj.obj_height, buffer, bufferOffset);
    // Serialize message field [obj_height_probability]
    bufferOffset = _serializer.float32(obj.obj_height_probability, buffer, bufferOffset);
    // Serialize message field [obj_probability]
    bufferOffset = _serializer.float32(obj.obj_probability, buffer, bufferOffset);
    // Serialize message field [obj_start_X]
    bufferOffset = _serializer.float32(obj.obj_start_X, buffer, bufferOffset);
    // Serialize message field [obj_start_Y]
    bufferOffset = _serializer.float32(obj.obj_start_Y, buffer, bufferOffset);
    // Serialize message field [obj_end_X]
    bufferOffset = _serializer.float32(obj.obj_end_X, buffer, bufferOffset);
    // Serialize message field [obj_end_Y]
    bufferOffset = _serializer.float32(obj.obj_end_Y, buffer, bufferOffset);
    // Serialize message field [obj_height_value]
    bufferOffset = _serializer.float32(obj.obj_height_value, buffer, bufferOffset);
    // Serialize message field [major_axis_error]
    bufferOffset = _serializer.float32(obj.major_axis_error, buffer, bufferOffset);
    // Serialize message field [minor_axis_variance]
    bufferOffset = _serializer.float32(obj.minor_axis_variance, buffer, bufferOffset);
    // Serialize message field [ellipse_theta_variance]
    bufferOffset = _serializer.float32(obj.ellipse_theta_variance, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonUltrasonicObstacleData
    let len;
    let data = new CommonUltrasonicObstacleData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = UltrasonicResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_type]
    data.obj_type = UltrasonicObjectType.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_height]
    data.obj_height = UltrasonicObjectHeiType.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_height_probability]
    data.obj_height_probability = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obj_probability]
    data.obj_probability = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obj_start_X]
    data.obj_start_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obj_start_Y]
    data.obj_start_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obj_end_X]
    data.obj_end_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obj_end_Y]
    data.obj_end_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obj_height_value]
    data.obj_height_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [major_axis_error]
    data.major_axis_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [minor_axis_variance]
    data.minor_axis_variance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ellipse_theta_variance]
    data.ellipse_theta_variance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved_info);
    return length + 63;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/CommonUltrasonicObstacleData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac4d088e90f3561263ca5d0ce0641340';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CommonUltrasonicObstacleData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.meta !== undefined) {
      resolved.meta = UltrasonicResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new UltrasonicResultMeta()
    }

    if (msg.obj_type !== undefined) {
      resolved.obj_type = UltrasonicObjectType.Resolve(msg.obj_type)
    }
    else {
      resolved.obj_type = new UltrasonicObjectType()
    }

    if (msg.obj_height !== undefined) {
      resolved.obj_height = UltrasonicObjectHeiType.Resolve(msg.obj_height)
    }
    else {
      resolved.obj_height = new UltrasonicObjectHeiType()
    }

    if (msg.obj_height_probability !== undefined) {
      resolved.obj_height_probability = msg.obj_height_probability;
    }
    else {
      resolved.obj_height_probability = 0.0
    }

    if (msg.obj_probability !== undefined) {
      resolved.obj_probability = msg.obj_probability;
    }
    else {
      resolved.obj_probability = 0.0
    }

    if (msg.obj_start_X !== undefined) {
      resolved.obj_start_X = msg.obj_start_X;
    }
    else {
      resolved.obj_start_X = 0.0
    }

    if (msg.obj_start_Y !== undefined) {
      resolved.obj_start_Y = msg.obj_start_Y;
    }
    else {
      resolved.obj_start_Y = 0.0
    }

    if (msg.obj_end_X !== undefined) {
      resolved.obj_end_X = msg.obj_end_X;
    }
    else {
      resolved.obj_end_X = 0.0
    }

    if (msg.obj_end_Y !== undefined) {
      resolved.obj_end_Y = msg.obj_end_Y;
    }
    else {
      resolved.obj_end_Y = 0.0
    }

    if (msg.obj_height_value !== undefined) {
      resolved.obj_height_value = msg.obj_height_value;
    }
    else {
      resolved.obj_height_value = 0.0
    }

    if (msg.major_axis_error !== undefined) {
      resolved.major_axis_error = msg.major_axis_error;
    }
    else {
      resolved.major_axis_error = 0.0
    }

    if (msg.minor_axis_variance !== undefined) {
      resolved.minor_axis_variance = msg.minor_axis_variance;
    }
    else {
      resolved.minor_axis_variance = 0.0
    }

    if (msg.ellipse_theta_variance !== undefined) {
      resolved.ellipse_theta_variance = msg.ellipse_theta_variance;
    }
    else {
      resolved.ellipse_theta_variance = 0.0
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = CommonUltrasonicObstacleData;
