// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2f = require('./Point2f.js');
let Point3f = require('./Point3f.js');

//-----------------------------------------------------------

class MagicCarpetRawObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.polygon_2d = null;
      this.polygon_3d = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('polygon_2d')) {
        this.polygon_2d = initObj.polygon_2d
      }
      else {
        this.polygon_2d = [];
      }
      if (initObj.hasOwnProperty('polygon_3d')) {
        this.polygon_3d = initObj.polygon_3d
      }
      else {
        this.polygon_3d = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagicCarpetRawObject
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [polygon_2d]
    // Serialize the length for message field [polygon_2d]
    bufferOffset = _serializer.uint32(obj.polygon_2d.length, buffer, bufferOffset);
    obj.polygon_2d.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [polygon_3d]
    // Serialize the length for message field [polygon_3d]
    bufferOffset = _serializer.uint32(obj.polygon_3d.length, buffer, bufferOffset);
    obj.polygon_3d.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagicCarpetRawObject
    let len;
    let data = new MagicCarpetRawObject(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [polygon_2d]
    // Deserialize array length for message field [polygon_2d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_2d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_2d[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [polygon_3d]
    // Deserialize array length for message field [polygon_3d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_3d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_3d[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.polygon_2d.length;
    length += 12 * object.polygon_3d.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/MagicCarpetRawObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23df4b60585bce242a7e1ae41e4abce1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 type
    perception_interface_msgs/Point2f[] polygon_2d
    perception_interface_msgs/Point3f[] polygon_3d
    float32 score
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagicCarpetRawObject(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.polygon_2d !== undefined) {
      resolved.polygon_2d = new Array(msg.polygon_2d.length);
      for (let i = 0; i < resolved.polygon_2d.length; ++i) {
        resolved.polygon_2d[i] = Point2f.Resolve(msg.polygon_2d[i]);
      }
    }
    else {
      resolved.polygon_2d = []
    }

    if (msg.polygon_3d !== undefined) {
      resolved.polygon_3d = new Array(msg.polygon_3d.length);
      for (let i = 0; i < resolved.polygon_3d.length; ++i) {
        resolved.polygon_3d[i] = Point3f.Resolve(msg.polygon_3d[i]);
      }
    }
    else {
      resolved.polygon_3d = []
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

module.exports = MagicCarpetRawObject;
