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

class ImageRetrievalDescriptor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tag = null;
      this.available = null;
      this.feature_descriptor = null;
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
      if (initObj.hasOwnProperty('feature_descriptor')) {
        this.feature_descriptor = initObj.feature_descriptor
      }
      else {
        this.feature_descriptor = [];
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
    // Serializes a message object of type ImageRetrievalDescriptor
    // Serialize message field [tag]
    bufferOffset = _serializer.string(obj.tag, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [feature_descriptor]
    bufferOffset = _arraySerializer.float32(obj.feature_descriptor, buffer, bufferOffset, null);
    // Serialize message field [log_info_2d]
    bufferOffset = _serializer.string(obj.log_info_2d, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageRetrievalDescriptor
    let len;
    let data = new ImageRetrievalDescriptor(null);
    // Deserialize message field [tag]
    data.tag = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [feature_descriptor]
    data.feature_descriptor = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [log_info_2d]
    data.log_info_2d = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tag);
    length += 4 * object.feature_descriptor.length;
    length += _getByteLength(object.log_info_2d);
    length += _getByteLength(object.reserved_info);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ImageRetrievalDescriptor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aadb9376782722101ee023374c6a713';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tag
    uint8 available
    float32[] feature_descriptor
    string log_info_2d
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageRetrievalDescriptor(null);
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

    if (msg.feature_descriptor !== undefined) {
      resolved.feature_descriptor = msg.feature_descriptor;
    }
    else {
      resolved.feature_descriptor = []
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

module.exports = ImageRetrievalDescriptor;
