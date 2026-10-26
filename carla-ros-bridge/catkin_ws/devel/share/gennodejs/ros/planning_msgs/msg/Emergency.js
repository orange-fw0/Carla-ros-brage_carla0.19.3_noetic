// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StationaryObstacleCarInfo = require('./StationaryObstacleCarInfo.js');

//-----------------------------------------------------------

class Emergency {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.jerk_factor = null;
      this.stationary_obstacle_car_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('jerk_factor')) {
        this.jerk_factor = initObj.jerk_factor
      }
      else {
        this.jerk_factor = 0.0;
      }
      if (initObj.hasOwnProperty('stationary_obstacle_car_info')) {
        this.stationary_obstacle_car_info = initObj.stationary_obstacle_car_info
      }
      else {
        this.stationary_obstacle_car_info = new StationaryObstacleCarInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Emergency
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [jerk_factor]
    bufferOffset = _serializer.float64(obj.jerk_factor, buffer, bufferOffset);
    // Serialize message field [stationary_obstacle_car_info]
    bufferOffset = StationaryObstacleCarInfo.serialize(obj.stationary_obstacle_car_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Emergency
    let len;
    let data = new Emergency(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [jerk_factor]
    data.jerk_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stationary_obstacle_car_info]
    data.stationary_obstacle_car_info = StationaryObstacleCarInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Emergency';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f83ebd615dbb6d827fe50140fb96456';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 JERK_FACTOR = 1
    uint8 STATIONARY_OBSTACLE_CAR_INFO = 2
    uint8 available
    float64 jerk_factor
    planning_msgs/StationaryObstacleCarInfo stationary_obstacle_car_info
    
    ================================================================================
    MSG: planning_msgs/StationaryObstacleCarInfo
    bool close_to_obstacle
    float64 steering_wheel_rad_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Emergency(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.jerk_factor !== undefined) {
      resolved.jerk_factor = msg.jerk_factor;
    }
    else {
      resolved.jerk_factor = 0.0
    }

    if (msg.stationary_obstacle_car_info !== undefined) {
      resolved.stationary_obstacle_car_info = StationaryObstacleCarInfo.Resolve(msg.stationary_obstacle_car_info)
    }
    else {
      resolved.stationary_obstacle_car_info = new StationaryObstacleCarInfo()
    }

    return resolved;
    }
};

// Constants for message
Emergency.Constants = {
  JERK_FACTOR: 1,
  STATIONARY_OBSTACLE_CAR_INFO: 2,
}

module.exports = Emergency;
