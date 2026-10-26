// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneChangeTypeEnum = require('./LaneChangeTypeEnum.js');
let LaneChangeDirectionEnum = require('./LaneChangeDirectionEnum.js');

//-----------------------------------------------------------

class LaneChangeCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new LaneChangeTypeEnum();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new LaneChangeDirectionEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneChangeCmd
    // Serialize message field [type]
    bufferOffset = LaneChangeTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = LaneChangeDirectionEnum.serialize(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneChangeCmd
    let len;
    let data = new LaneChangeCmd(null);
    // Deserialize message field [type]
    data.type = LaneChangeTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = LaneChangeDirectionEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/LaneChangeCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b28b244e0f7f96a3811cc9ee5ce717e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_manager_msgs/LaneChangeTypeEnum type
    system_manager_msgs/LaneChangeDirectionEnum direction
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeTypeEnum
    uint8 FORBIDDEN = 0
    uint8 INTERACTIVE = 1
    uint8 REMOVE_FORBIDDEN = 2
    uint8 REMOVE_INTERACTIVE = 3
    uint8 CONFIRM_MODE = 4
    uint8 REMOVE_CONFIRM_MODE = 5
    uint8 CONFIRM_APPROVED = 6
    uint8 CONFIRM_REFUSED = 7
    uint8 ENABLE_EVASIVE = 10
    uint8 DISABLE_EVASIVE = 11
    uint8 FORBIDDEN_INTERACTIVE = 12
    uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13
    uint8 FORBIDDEN_AUTO = 14
    uint8 REMOVE_FORBIDDEN_AUTO = 15
    uint8 FORBIDDEN_NAVI = 16
    uint8 REMOVE_FORBIDDEN_NAVI = 17
    uint8 CONFIRM_TIMEOUT = 18
    uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20
    uint8 ENABLE_RECOMMAND_AUTOMOUS = 21
    uint8 DISABLE_AUTOMOUS = 22
    uint8 ENABLE_PREFERED_LANE = 23
    uint8 DISABLE_PREFERED_LANE = 24
    uint8 LEFT_FIRST_LANE = 25
    uint8 LEFT_SECOND_LANE = 26
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeDirectionEnum
    uint8 LEFT = 0
    uint8 RIGHT = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneChangeCmd(null);
    if (msg.type !== undefined) {
      resolved.type = LaneChangeTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new LaneChangeTypeEnum()
    }

    if (msg.direction !== undefined) {
      resolved.direction = LaneChangeDirectionEnum.Resolve(msg.direction)
    }
    else {
      resolved.direction = new LaneChangeDirectionEnum()
    }

    return resolved;
    }
};

module.exports = LaneChangeCmd;
