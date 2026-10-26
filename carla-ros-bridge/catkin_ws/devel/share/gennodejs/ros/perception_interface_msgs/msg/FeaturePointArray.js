// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FeaturePointArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tag = null;
      this.available = null;
      this.num_point = null;
      this.track_ids = null;
      this.point_xs = null;
      this.point_ys = null;
      this.descriptor_size = null;
      this.descriptors = null;
      this.log_info_2d = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('tag')) {
        this.tag = initObj.tag
      }
      else {
        this.tag = '';
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('num_point')) {
        this.num_point = initObj.num_point
      }
      else {
        this.num_point = 0;
      }
      if (initObj.hasOwnProperty('track_ids')) {
        this.track_ids = initObj.track_ids
      }
      else {
        this.track_ids = [];
      }
      if (initObj.hasOwnProperty('point_xs')) {
        this.point_xs = initObj.point_xs
      }
      else {
        this.point_xs = [];
      }
      if (initObj.hasOwnProperty('point_ys')) {
        this.point_ys = initObj.point_ys
      }
      else {
        this.point_ys = [];
      }
      if (initObj.hasOwnProperty('descriptor_size')) {
        this.descriptor_size = initObj.descriptor_size
      }
      else {
        this.descriptor_size = 0;
      }
      if (initObj.hasOwnProperty('descriptors')) {
        this.descriptors = initObj.descriptors
      }
      else {
        this.descriptors = [];
      }
      if (initObj.hasOwnProperty('log_info_2d')) {
        this.log_info_2d = initObj.log_info_2d
      }
      else {
        this.log_info_2d = '';
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
    // Serializes a message object of type FeaturePointArray
    // Serialize message field [tag]
    bufferOffset = _serializer.string(obj.tag, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [num_point]
    bufferOffset = _serializer.int32(obj.num_point, buffer, bufferOffset);
    // Serialize message field [track_ids]
    bufferOffset = _arraySerializer.uint32(obj.track_ids, buffer, bufferOffset, null);
    // Serialize message field [point_xs]
    bufferOffset = _arraySerializer.float32(obj.point_xs, buffer, bufferOffset, null);
    // Serialize message field [point_ys]
    bufferOffset = _arraySerializer.float32(obj.point_ys, buffer, bufferOffset, null);
    // Serialize message field [descriptor_size]
    bufferOffset = _serializer.int32(obj.descriptor_size, buffer, bufferOffset);
    // Serialize message field [descriptors]
    bufferOffset = _arraySerializer.float32(obj.descriptors, buffer, bufferOffset, null);
    // Serialize message field [log_info_2d]
    bufferOffset = _serializer.string(obj.log_info_2d, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeaturePointArray
    let len;
    let data = new FeaturePointArray(null);
    // Deserialize message field [tag]
    data.tag = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_point]
    data.num_point = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_ids]
    data.track_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [point_xs]
    data.point_xs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [point_ys]
    data.point_ys = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [descriptor_size]
    data.descriptor_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [descriptors]
    data.descriptors = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [log_info_2d]
    data.log_info_2d = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tag);
    length += 4 * object.track_ids.length;
    length += 4 * object.point_xs.length;
    length += 4 * object.point_ys.length;
    length += 4 * object.descriptors.length;
    length += _getByteLength(object.log_info_2d);
    length += _getByteLength(object.reserved_info);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FeaturePointArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7093cb3e63b9e0b78dcf246dfc0428d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tag
    uint8 available
    int32 num_point
    uint32[] track_ids
    float32[] point_xs
    float32[] point_ys
    int32 descriptor_size
    float32[] descriptors
    string log_info_2d
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeaturePointArray(null);
    if (msg.tag !== undefined) {
      resolved.tag = msg.tag;
    }
    else {
      resolved.tag = ''
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.num_point !== undefined) {
      resolved.num_point = msg.num_point;
    }
    else {
      resolved.num_point = 0
    }

    if (msg.track_ids !== undefined) {
      resolved.track_ids = msg.track_ids;
    }
    else {
      resolved.track_ids = []
    }

    if (msg.point_xs !== undefined) {
      resolved.point_xs = msg.point_xs;
    }
    else {
      resolved.point_xs = []
    }

    if (msg.point_ys !== undefined) {
      resolved.point_ys = msg.point_ys;
    }
    else {
      resolved.point_ys = []
    }

    if (msg.descriptor_size !== undefined) {
      resolved.descriptor_size = msg.descriptor_size;
    }
    else {
      resolved.descriptor_size = 0
    }

    if (msg.descriptors !== undefined) {
      resolved.descriptors = msg.descriptors;
    }
    else {
      resolved.descriptors = []
    }

    if (msg.log_info_2d !== undefined) {
      resolved.log_info_2d = msg.log_info_2d;
    }
    else {
      resolved.log_info_2d = ''
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

module.exports = FeaturePointArray;
