// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SteeringType = require('./SteeringType.js');
let RWhSteerModType = require('./RWhSteerModType.js');
let RWhSteerDirection = require('./RWhSteerDirection.js');

//-----------------------------------------------------------

class SteeringCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.steering_enable = null;
      this.steering_type = null;
      this.steering_command = null;
      this.steering_rate = null;
      this.rwheel_steer_mode = null;
      this.rwheel_command = null;
      this.rwheel_steer_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('steering_enable')) {
        this.steering_enable = initObj.steering_enable
      }
      else {
        this.steering_enable = false;
      }
      if (initObj.hasOwnProperty('steering_type')) {
        this.steering_type = initObj.steering_type
      }
      else {
        this.steering_type = new SteeringType();
      }
      if (initObj.hasOwnProperty('steering_command')) {
        this.steering_command = initObj.steering_command
      }
      else {
        this.steering_command = 0.0;
      }
      if (initObj.hasOwnProperty('steering_rate')) {
        this.steering_rate = initObj.steering_rate
      }
      else {
        this.steering_rate = 0.0;
      }
      if (initObj.hasOwnProperty('rwheel_steer_mode')) {
        this.rwheel_steer_mode = initObj.rwheel_steer_mode
      }
      else {
        this.rwheel_steer_mode = new RWhSteerModType();
      }
      if (initObj.hasOwnProperty('rwheel_command')) {
        this.rwheel_command = initObj.rwheel_command
      }
      else {
        this.rwheel_command = 0.0;
      }
      if (initObj.hasOwnProperty('rwheel_steer_direction')) {
        this.rwheel_steer_direction = initObj.rwheel_steer_direction
      }
      else {
        this.rwheel_steer_direction = new RWhSteerDirection();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SteeringCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [steering_enable]
    bufferOffset = _serializer.bool(obj.steering_enable, buffer, bufferOffset);
    // Serialize message field [steering_type]
    bufferOffset = SteeringType.serialize(obj.steering_type, buffer, bufferOffset);
    // Serialize message field [steering_command]
    bufferOffset = _serializer.float32(obj.steering_command, buffer, bufferOffset);
    // Serialize message field [steering_rate]
    bufferOffset = _serializer.float32(obj.steering_rate, buffer, bufferOffset);
    // Serialize message field [rwheel_steer_mode]
    bufferOffset = RWhSteerModType.serialize(obj.rwheel_steer_mode, buffer, bufferOffset);
    // Serialize message field [rwheel_command]
    bufferOffset = _serializer.float32(obj.rwheel_command, buffer, bufferOffset);
    // Serialize message field [rwheel_steer_direction]
    bufferOffset = RWhSteerDirection.serialize(obj.rwheel_steer_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteeringCommandData
    let len;
    let data = new SteeringCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [steering_enable]
    data.steering_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_type]
    data.steering_type = SteeringType.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_command]
    data.steering_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_rate]
    data.steering_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rwheel_steer_mode]
    data.rwheel_steer_mode = RWhSteerModType.deserialize(buffer, bufferOffset);
    // Deserialize message field [rwheel_command]
    data.rwheel_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rwheel_steer_direction]
    data.rwheel_steer_direction = RWhSteerDirection.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SteeringCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74daa77130cbc9d11a8502a26e4f9bc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SteeringCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.steering_enable !== undefined) {
      resolved.steering_enable = msg.steering_enable;
    }
    else {
      resolved.steering_enable = false
    }

    if (msg.steering_type !== undefined) {
      resolved.steering_type = SteeringType.Resolve(msg.steering_type)
    }
    else {
      resolved.steering_type = new SteeringType()
    }

    if (msg.steering_command !== undefined) {
      resolved.steering_command = msg.steering_command;
    }
    else {
      resolved.steering_command = 0.0
    }

    if (msg.steering_rate !== undefined) {
      resolved.steering_rate = msg.steering_rate;
    }
    else {
      resolved.steering_rate = 0.0
    }

    if (msg.rwheel_steer_mode !== undefined) {
      resolved.rwheel_steer_mode = RWhSteerModType.Resolve(msg.rwheel_steer_mode)
    }
    else {
      resolved.rwheel_steer_mode = new RWhSteerModType()
    }

    if (msg.rwheel_command !== undefined) {
      resolved.rwheel_command = msg.rwheel_command;
    }
    else {
      resolved.rwheel_command = 0.0
    }

    if (msg.rwheel_steer_direction !== undefined) {
      resolved.rwheel_steer_direction = RWhSteerDirection.Resolve(msg.rwheel_steer_direction)
    }
    else {
      resolved.rwheel_steer_direction = new RWhSteerDirection()
    }

    return resolved;
    }
};

module.exports = SteeringCommandData;
