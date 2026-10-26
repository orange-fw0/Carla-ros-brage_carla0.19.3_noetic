// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkOutDisableReason = require('./ParkOutDisableReason.js');

//-----------------------------------------------------------

class ParkOutInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available_direction = null;
      this.recommend_direction = null;
      this.disable_reason = null;
      this.reached_take_over_point = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('available_direction')) {
        this.available_direction = initObj.available_direction
      }
      else {
        this.available_direction = 0;
      }
      if (initObj.hasOwnProperty('recommend_direction')) {
        this.recommend_direction = initObj.recommend_direction
      }
      else {
        this.recommend_direction = 0;
      }
      if (initObj.hasOwnProperty('disable_reason')) {
        this.disable_reason = initObj.disable_reason
      }
      else {
        this.disable_reason = new ParkOutDisableReason();
      }
      if (initObj.hasOwnProperty('reached_take_over_point')) {
        this.reached_take_over_point = initObj.reached_take_over_point
      }
      else {
        this.reached_take_over_point = false;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkOutInfo
    // Serialize message field [available_direction]
    bufferOffset = _serializer.uint32(obj.available_direction, buffer, bufferOffset);
    // Serialize message field [recommend_direction]
    bufferOffset = _serializer.uint32(obj.recommend_direction, buffer, bufferOffset);
    // Serialize message field [disable_reason]
    bufferOffset = ParkOutDisableReason.serialize(obj.disable_reason, buffer, bufferOffset);
    // Serialize message field [reached_take_over_point]
    bufferOffset = _serializer.bool(obj.reached_take_over_point, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkOutInfo
    let len;
    let data = new ParkOutInfo(null);
    // Deserialize message field [available_direction]
    data.available_direction = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [recommend_direction]
    data.recommend_direction = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [disable_reason]
    data.disable_reason = ParkOutDisableReason.deserialize(buffer, bufferOffset);
    // Deserialize message field [reached_take_over_point]
    data.reached_take_over_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ParkOutInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c6c29f45111b1842a48d69a77ddff9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 available_direction
    uint32 recommend_direction
    planning_msgs/ParkOutDisableReason disable_reason
    bool reached_take_over_point
    string reserved
    
    ================================================================================
    MSG: planning_msgs/ParkOutDisableReason
    uint32 NONE = 0
    uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1
    uint32 DISABLED_NON_PARALLEL = 2
    uint32 NOT_IN_PARKING_SLOT = 3
    uint32 PARKOUT_NOT_READY = 4
    uint32 SLOT_TOO_SMALL = 5
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkOutInfo(null);
    if (msg.available_direction !== undefined) {
      resolved.available_direction = msg.available_direction;
    }
    else {
      resolved.available_direction = 0
    }

    if (msg.recommend_direction !== undefined) {
      resolved.recommend_direction = msg.recommend_direction;
    }
    else {
      resolved.recommend_direction = 0
    }

    if (msg.disable_reason !== undefined) {
      resolved.disable_reason = ParkOutDisableReason.Resolve(msg.disable_reason)
    }
    else {
      resolved.disable_reason = new ParkOutDisableReason()
    }

    if (msg.reached_take_over_point !== undefined) {
      resolved.reached_take_over_point = msg.reached_take_over_point;
    }
    else {
      resolved.reached_take_over_point = false
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = ParkOutInfo;
