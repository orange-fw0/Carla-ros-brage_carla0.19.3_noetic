// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let APATrajectoryExtendType = require('./APATrajectoryExtendType.js');
let Gear = require('./Gear.js');

//-----------------------------------------------------------

class APATrajectoryInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.extend_type = null;
      this.at_last_segment = null;
      this.remain_safe_distance = null;
      this.first_remain_distance = null;
      this.second_remain_distance = null;
      this.second_target_v = null;
      this.first_gear = null;
      this.second_gear = null;
      this.second_start_index = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('extend_type')) {
        this.extend_type = initObj.extend_type
      }
      else {
        this.extend_type = new APATrajectoryExtendType();
      }
      if (initObj.hasOwnProperty('at_last_segment')) {
        this.at_last_segment = initObj.at_last_segment
      }
      else {
        this.at_last_segment = false;
      }
      if (initObj.hasOwnProperty('remain_safe_distance')) {
        this.remain_safe_distance = initObj.remain_safe_distance
      }
      else {
        this.remain_safe_distance = 0.0;
      }
      if (initObj.hasOwnProperty('first_remain_distance')) {
        this.first_remain_distance = initObj.first_remain_distance
      }
      else {
        this.first_remain_distance = 0.0;
      }
      if (initObj.hasOwnProperty('second_remain_distance')) {
        this.second_remain_distance = initObj.second_remain_distance
      }
      else {
        this.second_remain_distance = 0.0;
      }
      if (initObj.hasOwnProperty('second_target_v')) {
        this.second_target_v = initObj.second_target_v
      }
      else {
        this.second_target_v = 0.0;
      }
      if (initObj.hasOwnProperty('first_gear')) {
        this.first_gear = initObj.first_gear
      }
      else {
        this.first_gear = new Gear();
      }
      if (initObj.hasOwnProperty('second_gear')) {
        this.second_gear = initObj.second_gear
      }
      else {
        this.second_gear = new Gear();
      }
      if (initObj.hasOwnProperty('second_start_index')) {
        this.second_start_index = initObj.second_start_index
      }
      else {
        this.second_start_index = 0;
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
    // Serializes a message object of type APATrajectoryInfo
    // Serialize message field [extend_type]
    bufferOffset = APATrajectoryExtendType.serialize(obj.extend_type, buffer, bufferOffset);
    // Serialize message field [at_last_segment]
    bufferOffset = _serializer.bool(obj.at_last_segment, buffer, bufferOffset);
    // Serialize message field [remain_safe_distance]
    bufferOffset = _serializer.float32(obj.remain_safe_distance, buffer, bufferOffset);
    // Serialize message field [first_remain_distance]
    bufferOffset = _serializer.float32(obj.first_remain_distance, buffer, bufferOffset);
    // Serialize message field [second_remain_distance]
    bufferOffset = _serializer.float32(obj.second_remain_distance, buffer, bufferOffset);
    // Serialize message field [second_target_v]
    bufferOffset = _serializer.float32(obj.second_target_v, buffer, bufferOffset);
    // Serialize message field [first_gear]
    bufferOffset = Gear.serialize(obj.first_gear, buffer, bufferOffset);
    // Serialize message field [second_gear]
    bufferOffset = Gear.serialize(obj.second_gear, buffer, bufferOffset);
    // Serialize message field [second_start_index]
    bufferOffset = _serializer.uint32(obj.second_start_index, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type APATrajectoryInfo
    let len;
    let data = new APATrajectoryInfo(null);
    // Deserialize message field [extend_type]
    data.extend_type = APATrajectoryExtendType.deserialize(buffer, bufferOffset);
    // Deserialize message field [at_last_segment]
    data.at_last_segment = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [remain_safe_distance]
    data.remain_safe_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [first_remain_distance]
    data.first_remain_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [second_remain_distance]
    data.second_remain_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [second_target_v]
    data.second_target_v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [first_gear]
    data.first_gear = Gear.deserialize(buffer, bufferOffset);
    // Deserialize message field [second_gear]
    data.second_gear = Gear.deserialize(buffer, bufferOffset);
    // Deserialize message field [second_start_index]
    data.second_start_index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/APATrajectoryInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da508b5fa999bcd13fcd323ade31d18a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    planning_msgs/APATrajectoryExtendType extend_type
    bool at_last_segment
    float32 remain_safe_distance
    float32 first_remain_distance
    float32 second_remain_distance
    float32 second_target_v
    planning_msgs/Gear first_gear
    planning_msgs/Gear second_gear
    uint32 second_start_index
    string reserved
    
    ================================================================================
    MSG: planning_msgs/APATrajectoryExtendType
    uint8 UNEXTENDED = 0
    uint8 STRAIGHT = 1
    uint8 CIRCULAR_CURVE = 2
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/Gear
    uint8 NONE = 0
    uint8 PARK = 1
    uint8 REVERSE = 2
    uint8 NEUTRAL = 3
    uint8 DRIVE = 4
    uint8 LOW = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new APATrajectoryInfo(null);
    if (msg.extend_type !== undefined) {
      resolved.extend_type = APATrajectoryExtendType.Resolve(msg.extend_type)
    }
    else {
      resolved.extend_type = new APATrajectoryExtendType()
    }

    if (msg.at_last_segment !== undefined) {
      resolved.at_last_segment = msg.at_last_segment;
    }
    else {
      resolved.at_last_segment = false
    }

    if (msg.remain_safe_distance !== undefined) {
      resolved.remain_safe_distance = msg.remain_safe_distance;
    }
    else {
      resolved.remain_safe_distance = 0.0
    }

    if (msg.first_remain_distance !== undefined) {
      resolved.first_remain_distance = msg.first_remain_distance;
    }
    else {
      resolved.first_remain_distance = 0.0
    }

    if (msg.second_remain_distance !== undefined) {
      resolved.second_remain_distance = msg.second_remain_distance;
    }
    else {
      resolved.second_remain_distance = 0.0
    }

    if (msg.second_target_v !== undefined) {
      resolved.second_target_v = msg.second_target_v;
    }
    else {
      resolved.second_target_v = 0.0
    }

    if (msg.first_gear !== undefined) {
      resolved.first_gear = Gear.Resolve(msg.first_gear)
    }
    else {
      resolved.first_gear = new Gear()
    }

    if (msg.second_gear !== undefined) {
      resolved.second_gear = Gear.Resolve(msg.second_gear)
    }
    else {
      resolved.second_gear = new Gear()
    }

    if (msg.second_start_index !== undefined) {
      resolved.second_start_index = msg.second_start_index;
    }
    else {
      resolved.second_start_index = 0
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

module.exports = APATrajectoryInfo;
