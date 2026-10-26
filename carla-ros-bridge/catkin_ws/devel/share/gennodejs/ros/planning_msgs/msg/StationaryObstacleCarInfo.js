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

class StationaryObstacleCarInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.close_to_obstacle = null;
      this.steering_wheel_rad_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('close_to_obstacle')) {
        this.close_to_obstacle = initObj.close_to_obstacle
      }
      else {
        this.close_to_obstacle = false;
      }
      if (initObj.hasOwnProperty('steering_wheel_rad_limit')) {
        this.steering_wheel_rad_limit = initObj.steering_wheel_rad_limit
      }
      else {
        this.steering_wheel_rad_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StationaryObstacleCarInfo
    // Serialize message field [close_to_obstacle]
    bufferOffset = _serializer.bool(obj.close_to_obstacle, buffer, bufferOffset);
    // Serialize message field [steering_wheel_rad_limit]
    bufferOffset = _serializer.float64(obj.steering_wheel_rad_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationaryObstacleCarInfo
    let len;
    let data = new StationaryObstacleCarInfo(null);
    // Deserialize message field [close_to_obstacle]
    data.close_to_obstacle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_rad_limit]
    data.steering_wheel_rad_limit = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/StationaryObstacleCarInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0165017c0b62d496f0fe338d65fcd41e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool close_to_obstacle
    float64 steering_wheel_rad_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StationaryObstacleCarInfo(null);
    if (msg.close_to_obstacle !== undefined) {
      resolved.close_to_obstacle = msg.close_to_obstacle;
    }
    else {
      resolved.close_to_obstacle = false
    }

    if (msg.steering_wheel_rad_limit !== undefined) {
      resolved.steering_wheel_rad_limit = msg.steering_wheel_rad_limit;
    }
    else {
      resolved.steering_wheel_rad_limit = 0.0
    }

    return resolved;
    }
};

module.exports = StationaryObstacleCarInfo;
