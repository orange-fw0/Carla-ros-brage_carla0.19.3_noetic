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

class LaneBoundarySceneTypeEnum {
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
    // Serializes a message object of type LaneBoundarySceneTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundarySceneTypeEnum
    let len;
    let data = new LaneBoundarySceneTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneBoundarySceneTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5316f78aec7fd19d20a0439c3b3f8a02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1
    uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2
    uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3
    uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4
    uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundarySceneTypeEnum(null);
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
LaneBoundarySceneTypeEnum.Constants = {
  LANE_BOUNDARY_SCENE_TYPE_UNKNOWN: 0,
  LANE_BOUNDARY_SCENE_TYPE_DISCARDED: 1,
  LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK: 2,
  LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE: 3,
  LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA: 4,
  LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE: 5,
}

module.exports = LaneBoundarySceneTypeEnum;
