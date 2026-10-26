// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SubmapTrajectory = require('./SubmapTrajectory.js');

//-----------------------------------------------------------

class SubmapAuxiliaryInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new SubmapTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapAuxiliaryInfo
    // Serialize message field [trajectory]
    bufferOffset = SubmapTrajectory.serialize(obj.trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapAuxiliaryInfo
    let len;
    let data = new SubmapAuxiliaryInfo(null);
    // Deserialize message field [trajectory]
    data.trajectory = SubmapTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SubmapTrajectory.getMessageSize(object.trajectory);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/SubmapAuxiliaryInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9886ee6af805062c3b253e95f141d40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    submap_msgs/SubmapTrajectory trajectory
    
    ================================================================================
    MSG: submap_msgs/SubmapTrajectory
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
    const resolved = new SubmapAuxiliaryInfo(null);
    if (msg.trajectory !== undefined) {
      resolved.trajectory = SubmapTrajectory.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new SubmapTrajectory()
    }

    return resolved;
    }
};

module.exports = SubmapAuxiliaryInfo;
