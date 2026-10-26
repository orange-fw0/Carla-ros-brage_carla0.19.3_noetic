// Auto-generated. Do not edit!

// (in-package e2e_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class DLPTrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.velocity = null;
      this.acceleration = null;
      this.jerk = null;
      this.heading_angle = null;
      this.score = null;
      this.timestamp_us = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new perception_interface_msgs.msg.Point3d();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new perception_interface_msgs.msg.Vector3d();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new perception_interface_msgs.msg.Vector3d();
      }
      if (initObj.hasOwnProperty('jerk')) {
        this.jerk = initObj.jerk
      }
      else {
        this.jerk = new perception_interface_msgs.msg.Vector3d();
      }
      if (initObj.hasOwnProperty('heading_angle')) {
        this.heading_angle = initObj.heading_angle
      }
      else {
        this.heading_angle = 0.0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DLPTrajectoryPoint
    // Serialize message field [position]
    bufferOffset = perception_interface_msgs.msg.Point3d.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = perception_interface_msgs.msg.Vector3d.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = perception_interface_msgs.msg.Vector3d.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [jerk]
    bufferOffset = perception_interface_msgs.msg.Vector3d.serialize(obj.jerk, buffer, bufferOffset);
    // Serialize message field [heading_angle]
    bufferOffset = _serializer.float64(obj.heading_angle, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DLPTrajectoryPoint
    let len;
    let data = new DLPTrajectoryPoint(null);
    // Deserialize message field [position]
    data.position = perception_interface_msgs.msg.Point3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = perception_interface_msgs.msg.Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = perception_interface_msgs.msg.Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [jerk]
    data.jerk = perception_interface_msgs.msg.Vector3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading_angle]
    data.heading_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 121;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_planning_msgs/DLPTrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '521241416e0c4ef02461fd962ac448e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/Point3d position
    perception_interface_msgs/Vector3d velocity
    perception_interface_msgs/Vector3d acceleration
    perception_interface_msgs/Vector3d jerk
    float64 heading_angle
    float64 score
    uint64 timestamp_us
    bool valid
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/Vector3d
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
    const resolved = new DLPTrajectoryPoint(null);
    if (msg.position !== undefined) {
      resolved.position = perception_interface_msgs.msg.Point3d.Resolve(msg.position)
    }
    else {
      resolved.position = new perception_interface_msgs.msg.Point3d()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = perception_interface_msgs.msg.Vector3d.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new perception_interface_msgs.msg.Vector3d()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = perception_interface_msgs.msg.Vector3d.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new perception_interface_msgs.msg.Vector3d()
    }

    if (msg.jerk !== undefined) {
      resolved.jerk = perception_interface_msgs.msg.Vector3d.Resolve(msg.jerk)
    }
    else {
      resolved.jerk = new perception_interface_msgs.msg.Vector3d()
    }

    if (msg.heading_angle !== undefined) {
      resolved.heading_angle = msg.heading_angle;
    }
    else {
      resolved.heading_angle = 0.0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = DLPTrajectoryPoint;
