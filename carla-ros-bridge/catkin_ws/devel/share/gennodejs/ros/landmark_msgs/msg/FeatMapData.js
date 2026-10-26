// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FloatRange = require('./FloatRange.js');

//-----------------------------------------------------------

class FeatMapData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shape = null;
      this.map_scalar = null;
      this.x_range = null;
      this.y_range = null;
      this.cls_num = null;
      this.cls_map = null;
      this.feat_map = null;
      this.cls_range = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = [];
      }
      if (initObj.hasOwnProperty('map_scalar')) {
        this.map_scalar = initObj.map_scalar
      }
      else {
        this.map_scalar = 0.0;
      }
      if (initObj.hasOwnProperty('x_range')) {
        this.x_range = initObj.x_range
      }
      else {
        this.x_range = new FloatRange();
      }
      if (initObj.hasOwnProperty('y_range')) {
        this.y_range = initObj.y_range
      }
      else {
        this.y_range = new FloatRange();
      }
      if (initObj.hasOwnProperty('cls_num')) {
        this.cls_num = initObj.cls_num
      }
      else {
        this.cls_num = 0;
      }
      if (initObj.hasOwnProperty('cls_map')) {
        this.cls_map = initObj.cls_map
      }
      else {
        this.cls_map = [];
      }
      if (initObj.hasOwnProperty('feat_map')) {
        this.feat_map = initObj.feat_map
      }
      else {
        this.feat_map = [];
      }
      if (initObj.hasOwnProperty('cls_range')) {
        this.cls_range = initObj.cls_range
      }
      else {
        this.cls_range = [];
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
    // Serializes a message object of type FeatMapData
    // Serialize message field [shape]
    bufferOffset = _arraySerializer.int32(obj.shape, buffer, bufferOffset, null);
    // Serialize message field [map_scalar]
    bufferOffset = _serializer.float32(obj.map_scalar, buffer, bufferOffset);
    // Serialize message field [x_range]
    bufferOffset = FloatRange.serialize(obj.x_range, buffer, bufferOffset);
    // Serialize message field [y_range]
    bufferOffset = FloatRange.serialize(obj.y_range, buffer, bufferOffset);
    // Serialize message field [cls_num]
    bufferOffset = _serializer.int16(obj.cls_num, buffer, bufferOffset);
    // Serialize message field [cls_map]
    bufferOffset = _arraySerializer.uint8(obj.cls_map, buffer, bufferOffset, null);
    // Serialize message field [feat_map]
    bufferOffset = _arraySerializer.float32(obj.feat_map, buffer, bufferOffset, null);
    // Serialize message field [cls_range]
    // Serialize the length for message field [cls_range]
    bufferOffset = _serializer.uint32(obj.cls_range.length, buffer, bufferOffset);
    obj.cls_range.forEach((val) => {
      bufferOffset = FloatRange.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeatMapData
    let len;
    let data = new FeatMapData(null);
    // Deserialize message field [shape]
    data.shape = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [map_scalar]
    data.map_scalar = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_range]
    data.x_range = FloatRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [y_range]
    data.y_range = FloatRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [cls_num]
    data.cls_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cls_map]
    data.cls_map = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [feat_map]
    data.feat_map = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cls_range]
    // Deserialize array length for message field [cls_range]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cls_range = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cls_range[i] = FloatRange.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.shape.length;
    length += object.cls_map.length;
    length += 4 * object.feat_map.length;
    length += 8 * object.cls_range.length;
    length += _getByteLength(object.reserved_info);
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/FeatMapData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64a274ab3be400fd28c99ce404b8f383';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] shape
    float32 map_scalar
    landmark_msgs/FloatRange x_range
    landmark_msgs/FloatRange y_range
    int16 cls_num
    uint8[] cls_map
    float32[] feat_map
    landmark_msgs/FloatRange[] cls_range
    string reserved_info
    
    ================================================================================
    MSG: landmark_msgs/FloatRange
    float32 min
    float32 max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeatMapData(null);
    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = []
    }

    if (msg.map_scalar !== undefined) {
      resolved.map_scalar = msg.map_scalar;
    }
    else {
      resolved.map_scalar = 0.0
    }

    if (msg.x_range !== undefined) {
      resolved.x_range = FloatRange.Resolve(msg.x_range)
    }
    else {
      resolved.x_range = new FloatRange()
    }

    if (msg.y_range !== undefined) {
      resolved.y_range = FloatRange.Resolve(msg.y_range)
    }
    else {
      resolved.y_range = new FloatRange()
    }

    if (msg.cls_num !== undefined) {
      resolved.cls_num = msg.cls_num;
    }
    else {
      resolved.cls_num = 0
    }

    if (msg.cls_map !== undefined) {
      resolved.cls_map = msg.cls_map;
    }
    else {
      resolved.cls_map = []
    }

    if (msg.feat_map !== undefined) {
      resolved.feat_map = msg.feat_map;
    }
    else {
      resolved.feat_map = []
    }

    if (msg.cls_range !== undefined) {
      resolved.cls_range = new Array(msg.cls_range.length);
      for (let i = 0; i < resolved.cls_range.length; ++i) {
        resolved.cls_range[i] = FloatRange.Resolve(msg.cls_range[i]);
      }
    }
    else {
      resolved.cls_range = []
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

module.exports = FeatMapData;
