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

class WarningStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.warning_status = null;
    }
    else {
      if (initObj.hasOwnProperty('warning_status')) {
        this.warning_status = initObj.warning_status
      }
      else {
        this.warning_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarningStatus
    // Serialize message field [warning_status]
    bufferOffset = _serializer.uint64(obj.warning_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarningStatus
    let len;
    let data = new WarningStatus(null);
    // Deserialize message field [warning_status]
    data.warning_status = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/WarningStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41f0a68994d54fc799ff00829b8e88d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 NARROW_ROAD = 1
    uint64 OVERTAKE_CUTIN = 2
    uint64 OVERTAKE_WISDOM_DODGE = 4
    uint64 LANE_CHANGE_REMIND_LANE_END = 8
    uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16
    uint64 LANE_CHANGE_REMIND_ACCIDENT = 32
    uint64 DECEL_WARNING = 64
    uint64 PEDESTRIAN_WARNING = 128
    uint64 LANE_CHANGE_START = 256
    uint64 LANE_CHANGE_STOP = 512
    uint64 FROINT_COLLISION = 1024
    uint64 REAR_COLLISION = 2048
    uint64 LANE_DEPARTURE = 4096
    uint64 PARKING_LOT_UNAVALIABLE = 8192
    uint64 AVOID_IN_LANE = 16384
    uint64 warning_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WarningStatus(null);
    if (msg.warning_status !== undefined) {
      resolved.warning_status = msg.warning_status;
    }
    else {
      resolved.warning_status = 0
    }

    return resolved;
    }
};

// Constants for message
WarningStatus.Constants = {
  NARROW_ROAD: 1,
  OVERTAKE_CUTIN: 2,
  OVERTAKE_WISDOM_DODGE: 4,
  LANE_CHANGE_REMIND_LANE_END: 8,
  LANE_CHANGE_REMIND_CONSTRUCTION: 16,
  LANE_CHANGE_REMIND_ACCIDENT: 32,
  DECEL_WARNING: 64,
  PEDESTRIAN_WARNING: 128,
  LANE_CHANGE_START: 256,
  LANE_CHANGE_STOP: 512,
  FROINT_COLLISION: 1024,
  REAR_COLLISION: 2048,
  LANE_DEPARTURE: 4096,
  PARKING_LOT_UNAVALIABLE: 8192,
  AVOID_IN_LANE: 16384,
}

module.exports = WarningStatus;
