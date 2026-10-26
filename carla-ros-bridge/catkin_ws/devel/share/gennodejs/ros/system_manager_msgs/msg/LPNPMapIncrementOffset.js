// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LPNPMapIncrementOffset {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parking_slot = null;
      this.speed_bump = null;
      this.trajectory_point = null;
    }
    else {
      if (initObj.hasOwnProperty('parking_slot')) {
        this.parking_slot = initObj.parking_slot
      }
      else {
        this.parking_slot = 0;
      }
      if (initObj.hasOwnProperty('speed_bump')) {
        this.speed_bump = initObj.speed_bump
      }
      else {
        this.speed_bump = 0;
      }
      if (initObj.hasOwnProperty('trajectory_point')) {
        this.trajectory_point = initObj.trajectory_point
      }
      else {
        this.trajectory_point = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LPNPMapIncrementOffset
    // Serialize message field [parking_slot]
    bufferOffset = _serializer.int32(obj.parking_slot, buffer, bufferOffset);
    // Serialize message field [speed_bump]
    bufferOffset = _serializer.int32(obj.speed_bump, buffer, bufferOffset);
    // Serialize message field [trajectory_point]
    bufferOffset = _serializer.int32(obj.trajectory_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LPNPMapIncrementOffset
    let len;
    let data = new LPNPMapIncrementOffset(null);
    // Deserialize message field [parking_slot]
    data.parking_slot = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_bump]
    data.speed_bump = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trajectory_point]
    data.trajectory_point = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/LPNPMapIncrementOffset';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdb306b306f07d5632f2ea49e6101c24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 parking_slot
    int32 speed_bump
    int32 trajectory_point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LPNPMapIncrementOffset(null);
    if (msg.parking_slot !== undefined) {
      resolved.parking_slot = msg.parking_slot;
    }
    else {
      resolved.parking_slot = 0
    }

    if (msg.speed_bump !== undefined) {
      resolved.speed_bump = msg.speed_bump;
    }
    else {
      resolved.speed_bump = 0
    }

    if (msg.trajectory_point !== undefined) {
      resolved.trajectory_point = msg.trajectory_point;
    }
    else {
      resolved.trajectory_point = 0
    }

    return resolved;
    }
};

module.exports = LPNPMapIncrementOffset;
