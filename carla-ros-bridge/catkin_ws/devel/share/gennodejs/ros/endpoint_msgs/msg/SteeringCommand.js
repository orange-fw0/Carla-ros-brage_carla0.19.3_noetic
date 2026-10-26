// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SteeringCommandData = require('./SteeringCommandData.js');

//-----------------------------------------------------------

class SteeringCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.steering_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('steering_command_data')) {
        this.steering_command_data = initObj.steering_command_data
      }
      else {
        this.steering_command_data = new SteeringCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SteeringCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [steering_command_data]
    bufferOffset = SteeringCommandData.serialize(obj.steering_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteeringCommand
    let len;
    let data = new SteeringCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steering_command_data]
    data.steering_command_data = SteeringCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SteeringCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa73e43ae8aed3f4d1bce6a30c1ce479';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STEERING_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/SteeringCommandData steering_command_data
    
    ================================================================================
    MSG: endpoint_msgs/SteeringCommandData
    uint64 timestamp_us
    bool steering_enable
    endpoint_msgs/SteeringType steering_type
    float32 steering_command
    float32 steering_rate
    endpoint_msgs/RWhSteerModType rwheel_steer_mode
    float32 rwheel_command
    endpoint_msgs/RWhSteerDirection rwheel_steer_direction
    
    ================================================================================
    MSG: endpoint_msgs/SteeringType
    uint8 STEERING_ANGLE = 1
    uint8 FRONT_WHEEL_ANGLE = 2
    uint8 YAW_RATE = 3
    uint8 TORQUE = 4
    uint8 ANGLE_SPEED = 5
    uint8 CURVATURE = 6
    uint8 RESERVED = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RWhSteerModType
    uint8 NO_REQUEST = 0
    uint8 CONTROL_REQUEST = 1
    uint8 LOCK_REQUEST = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RWhSteerDirection
    uint8 NONE = 0
    uint8 SAME_DIRECTION = 1
    uint8 OPPOSITE_DIRECTION = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SteeringCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.steering_command_data !== undefined) {
      resolved.steering_command_data = SteeringCommandData.Resolve(msg.steering_command_data)
    }
    else {
      resolved.steering_command_data = new SteeringCommandData()
    }

    return resolved;
    }
};

// Constants for message
SteeringCommand.Constants = {
  STEERING_COMMAND_DATA: 1,
}

module.exports = SteeringCommand;
