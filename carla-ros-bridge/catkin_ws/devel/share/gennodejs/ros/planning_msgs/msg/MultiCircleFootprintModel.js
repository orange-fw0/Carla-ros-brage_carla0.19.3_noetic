// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Circle = require('./Circle.js');

//-----------------------------------------------------------

class MultiCircleFootprintModel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.circles = null;
    }
    else {
      if (initObj.hasOwnProperty('circles')) {
        this.circles = initObj.circles
      }
      else {
        this.circles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiCircleFootprintModel
    // Serialize message field [circles]
    // Serialize the length for message field [circles]
    bufferOffset = _serializer.uint32(obj.circles.length, buffer, bufferOffset);
    obj.circles.forEach((val) => {
      bufferOffset = Circle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiCircleFootprintModel
    let len;
    let data = new MultiCircleFootprintModel(null);
    // Deserialize message field [circles]
    // Deserialize array length for message field [circles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.circles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.circles[i] = Circle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 32 * object.circles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/MultiCircleFootprintModel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a385c264c95c8149636a068648ab7b73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    planning_msgs/Circle[] circles
    
    ================================================================================
    MSG: planning_msgs/Circle
    float64 x
    float64 y
    float64 z
    float64 r
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiCircleFootprintModel(null);
    if (msg.circles !== undefined) {
      resolved.circles = new Array(msg.circles.length);
      for (let i = 0; i < resolved.circles.length; ++i) {
        resolved.circles[i] = Circle.Resolve(msg.circles[i]);
      }
    }
    else {
      resolved.circles = []
    }

    return resolved;
    }
};

module.exports = MultiCircleFootprintModel;
