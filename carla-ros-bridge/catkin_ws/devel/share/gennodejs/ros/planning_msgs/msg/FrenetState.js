// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2d = require('./Point2d.js');

//-----------------------------------------------------------

class FrenetState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_frenet = null;
      this.dl = null;
      this.ddl = null;
    }
    else {
      if (initObj.hasOwnProperty('position_frenet')) {
        this.position_frenet = initObj.position_frenet
      }
      else {
        this.position_frenet = new Point2d();
      }
      if (initObj.hasOwnProperty('dl')) {
        this.dl = initObj.dl
      }
      else {
        this.dl = 0.0;
      }
      if (initObj.hasOwnProperty('ddl')) {
        this.ddl = initObj.ddl
      }
      else {
        this.ddl = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrenetState
    // Serialize message field [position_frenet]
    bufferOffset = Point2d.serialize(obj.position_frenet, buffer, bufferOffset);
    // Serialize message field [dl]
    bufferOffset = _serializer.float64(obj.dl, buffer, bufferOffset);
    // Serialize message field [ddl]
    bufferOffset = _serializer.float64(obj.ddl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrenetState
    let len;
    let data = new FrenetState(null);
    // Deserialize message field [position_frenet]
    data.position_frenet = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [dl]
    data.dl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ddl]
    data.ddl = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/FrenetState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b854f1907dd1e925fedf8ce687ee633';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    planning_msgs/Point2d position_frenet
    float64 dl
    float64 ddl
    
    ================================================================================
    MSG: planning_msgs/Point2d
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrenetState(null);
    if (msg.position_frenet !== undefined) {
      resolved.position_frenet = Point2d.Resolve(msg.position_frenet)
    }
    else {
      resolved.position_frenet = new Point2d()
    }

    if (msg.dl !== undefined) {
      resolved.dl = msg.dl;
    }
    else {
      resolved.dl = 0.0
    }

    if (msg.ddl !== undefined) {
      resolved.ddl = msg.ddl;
    }
    else {
      resolved.ddl = 0.0
    }

    return resolved;
    }
};

module.exports = FrenetState;
