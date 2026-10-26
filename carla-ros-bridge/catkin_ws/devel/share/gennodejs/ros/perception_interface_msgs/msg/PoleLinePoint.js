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

//-----------------------------------------------------------

class PoleLinePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.visibility = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point2f();
      }
      if (initObj.hasOwnProperty('visibility')) {
        this.visibility = initObj.visibility
      }
      else {
        this.visibility = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoleLinePoint
    // Serialize message field [position]
    bufferOffset = Point2f.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [visibility]
    bufferOffset = _serializer.float32(obj.visibility, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoleLinePoint
    let len;
    let data = new PoleLinePoint(null);
    // Deserialize message field [position]
    data.position = Point2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [visibility]
    data.visibility = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/PoleLinePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55f6a2c955a230791ba601376c12a539';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/Point2f position
    float32 visibility
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoleLinePoint(null);
    if (msg.position !== undefined) {
      resolved.position = Point2f.Resolve(msg.position)
    }
    else {
      resolved.position = new Point2f()
    }

    if (msg.visibility !== undefined) {
      resolved.visibility = msg.visibility;
    }
    else {
      resolved.visibility = 0.0
    }

    return resolved;
    }
};

module.exports = PoleLinePoint;
