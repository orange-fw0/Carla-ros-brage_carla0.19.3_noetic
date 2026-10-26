// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SolverStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat_motion_status = null;
      this.lat_solver_status = null;
      this.lon_motion_status = null;
      this.lon_solver_status = null;
    }
    else {
      if (initObj.hasOwnProperty('lat_motion_status')) {
        this.lat_motion_status = initObj.lat_motion_status
      }
      else {
        this.lat_motion_status = [];
      }
      if (initObj.hasOwnProperty('lat_solver_status')) {
        this.lat_solver_status = initObj.lat_solver_status
      }
      else {
        this.lat_solver_status = [];
      }
      if (initObj.hasOwnProperty('lon_motion_status')) {
        this.lon_motion_status = initObj.lon_motion_status
      }
      else {
        this.lon_motion_status = [];
      }
      if (initObj.hasOwnProperty('lon_solver_status')) {
        this.lon_solver_status = initObj.lon_solver_status
      }
      else {
        this.lon_solver_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SolverStatus
    // Serialize message field [lat_motion_status]
    bufferOffset = _arraySerializer.uint8(obj.lat_motion_status, buffer, bufferOffset, null);
    // Serialize message field [lat_solver_status]
    bufferOffset = _arraySerializer.uint8(obj.lat_solver_status, buffer, bufferOffset, null);
    // Serialize message field [lon_motion_status]
    bufferOffset = _arraySerializer.uint8(obj.lon_motion_status, buffer, bufferOffset, null);
    // Serialize message field [lon_solver_status]
    bufferOffset = _arraySerializer.uint8(obj.lon_solver_status, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SolverStatus
    let len;
    let data = new SolverStatus(null);
    // Deserialize message field [lat_motion_status]
    data.lat_motion_status = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lat_solver_status]
    data.lat_solver_status = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lon_motion_status]
    data.lon_motion_status = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lon_solver_status]
    data.lon_solver_status = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lat_motion_status.length;
    length += object.lat_solver_status.length;
    length += object.lon_motion_status.length;
    length += object.lon_solver_status.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/SolverStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '402b203189b794d7f6e7355152cdcb2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] lat_motion_status
    uint8[] lat_solver_status
    uint8[] lon_motion_status
    uint8[] lon_solver_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SolverStatus(null);
    if (msg.lat_motion_status !== undefined) {
      resolved.lat_motion_status = msg.lat_motion_status;
    }
    else {
      resolved.lat_motion_status = []
    }

    if (msg.lat_solver_status !== undefined) {
      resolved.lat_solver_status = msg.lat_solver_status;
    }
    else {
      resolved.lat_solver_status = []
    }

    if (msg.lon_motion_status !== undefined) {
      resolved.lon_motion_status = msg.lon_motion_status;
    }
    else {
      resolved.lon_motion_status = []
    }

    if (msg.lon_solver_status !== undefined) {
      resolved.lon_solver_status = msg.lon_solver_status;
    }
    else {
      resolved.lon_solver_status = []
    }

    return resolved;
    }
};

module.exports = SolverStatus;
