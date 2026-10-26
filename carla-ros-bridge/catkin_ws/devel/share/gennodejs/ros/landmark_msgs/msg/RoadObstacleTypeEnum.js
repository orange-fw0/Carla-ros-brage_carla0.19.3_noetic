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

class RoadObstacleTypeEnum {
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
    // Serializes a message object of type RoadObstacleTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadObstacleTypeEnum
    let len;
    let data = new RoadObstacleTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadObstacleTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1bcb34cfae7ea8cc1017cbfc2e9ac6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4
    uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5
    uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadObstacleTypeEnum(null);
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
RoadObstacleTypeEnum.Constants = {
  ROAD_OBSTACLE_TYPE_UNKONWN: 0,
  ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL: 1,
  ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR: 2,
  ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL: 3,
  ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE: 4,
  ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP: 5,
  ROAD_OBSTACLE_TYPE_PILLAR: 6,
}

module.exports = RoadObstacleTypeEnum;
