// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaneBoundaryDirectionTypeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneBoundaryDirectionTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundaryDirectionTypeEnum
    let len;
    let data = new LaneBoundaryDirectionTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneBoundaryDirectionTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c40bb7d175ce8e27090133aa1cd1366';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2
    uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundaryDirectionTypeEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
LaneBoundaryDirectionTypeEnum.Constants = {
  LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN: 0,
  LANE_BOUNDARY_DIRECTION_TYPE_SAME: 1,
  LANE_BOUNDARY_DIRECTION_TYPE_REVERSE: 2,
  LANE_BOUNDARY_DIRECTION_TYPE_BOTH: 3,
}

module.exports = LaneBoundaryDirectionTypeEnum;
