// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FusionObstacleTypeEnum {
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
    // Serializes a message object of type FusionObstacleTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionObstacleTypeEnum
    let len;
    let data = new FusionObstacleTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FusionObstacleTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd8f5aa40adb65615ebb954ffa75bf9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0
    uint8 FUSION_OBSTACLE_TYPE_WALL = 1
    uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2
    uint8 FUSION_OBSTACLE_TYPE_FENCE = 3
    uint8 FUSION_OBSTACLE_TYPE_STEP = 4
    uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5
    uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6
    uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7
    uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8
    uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9
    uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10
    uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11
    uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12
    uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13
    uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14
    uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionObstacleTypeEnum(null);
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
FusionObstacleTypeEnum.Constants = {
  FUSION_OBSTACLE_TYPE_UNKNOWN: 0,
  FUSION_OBSTACLE_TYPE_WALL: 1,
  FUSION_OBSTACLE_TYPE_PILLAR: 2,
  FUSION_OBSTACLE_TYPE_FENCE: 3,
  FUSION_OBSTACLE_TYPE_STEP: 4,
  FUSION_OBSTACLE_TYPE_SPECIAL: 5,
  FUSION_OBSTACLE_TYPE_VEHICLE: 6,
  FUSION_OBSTACLE_TYPE_STATIC_BARRIER: 7,
  FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN: 8,
  FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE: 9,
  FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT: 10,
  FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT: 11,
  FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS: 12,
  FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR: 13,
  FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS: 14,
  FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST: 15,
}

module.exports = FusionObstacleTypeEnum;
