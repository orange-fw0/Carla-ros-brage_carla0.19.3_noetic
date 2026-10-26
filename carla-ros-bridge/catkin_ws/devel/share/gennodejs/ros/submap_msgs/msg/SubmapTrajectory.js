// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('./Position.js');

//-----------------------------------------------------------

class SubmapTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.positions = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapTrajectory
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [positions]
    // Serialize the length for message field [positions]
    bufferOffset = _serializer.uint32(obj.positions.length, buffer, bufferOffset);
    obj.positions.forEach((val) => {
      bufferOffset = Position.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapTrajectory
    let len;
    let data = new SubmapTrajectory(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [positions]
    // Deserialize array length for message field [positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.positions[i] = Position.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 64 * object.positions.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/SubmapTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aecb4b9dd86e97ea0eef1ea45e4a9304';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance
    submap_msgs/Position[] positions
    
    ================================================================================
    MSG: submap_msgs/Position
    geometry_msgs/Quaternion orientation
    geometry_msgs/Vector3 translation
    float64 timestamp
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new SubmapTrajectory(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.positions !== undefined) {
      resolved.positions = new Array(msg.positions.length);
      for (let i = 0; i < resolved.positions.length; ++i) {
        resolved.positions[i] = Position.Resolve(msg.positions[i]);
      }
    }
    else {
      resolved.positions = []
    }

    return resolved;
    }
};

module.exports = SubmapTrajectory;
