// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class TOSRequestCandidate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.candidate_id = null;
      this.traj = null;
    }
    else {
      if (initObj.hasOwnProperty('candidate_id')) {
        this.candidate_id = initObj.candidate_id
      }
      else {
        this.candidate_id = 0;
      }
      if (initObj.hasOwnProperty('traj')) {
        this.traj = initObj.traj
      }
      else {
        this.traj = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSRequestCandidate
    // Serialize message field [candidate_id]
    bufferOffset = _serializer.uint32(obj.candidate_id, buffer, bufferOffset);
    // Serialize message field [traj]
    // Serialize the length for message field [traj]
    bufferOffset = _serializer.uint32(obj.traj.length, buffer, bufferOffset);
    obj.traj.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSRequestCandidate
    let len;
    let data = new TOSRequestCandidate(null);
    // Deserialize message field [candidate_id]
    data.candidate_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [traj]
    // Deserialize array length for message field [traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traj[i] = perception_interface_msgs.msg.Point3d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.traj.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSRequestCandidate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c1d15627e1447d3cf6bdaaaa85f0747';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 candidate_id
    perception_interface_msgs/Point3d[] traj
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSRequestCandidate(null);
    if (msg.candidate_id !== undefined) {
      resolved.candidate_id = msg.candidate_id;
    }
    else {
      resolved.candidate_id = 0
    }

    if (msg.traj !== undefined) {
      resolved.traj = new Array(msg.traj.length);
      for (let i = 0; i < resolved.traj.length; ++i) {
        resolved.traj[i] = perception_interface_msgs.msg.Point3d.Resolve(msg.traj[i]);
      }
    }
    else {
      resolved.traj = []
    }

    return resolved;
    }
};

module.exports = TOSRequestCandidate;
