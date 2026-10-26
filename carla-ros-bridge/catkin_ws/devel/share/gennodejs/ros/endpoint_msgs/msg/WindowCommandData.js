// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WindowType = require('./WindowType.js');

//-----------------------------------------------------------

class WindowCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.window_lock = null;
      this.window_left_front = null;
      this.window_right_front = null;
      this.window_left_rear = null;
      this.window_right_rear = null;
      this.window_top = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('window_lock')) {
        this.window_lock = initObj.window_lock
      }
      else {
        this.window_lock = false;
      }
      if (initObj.hasOwnProperty('window_left_front')) {
        this.window_left_front = initObj.window_left_front
      }
      else {
        this.window_left_front = new WindowType();
      }
      if (initObj.hasOwnProperty('window_right_front')) {
        this.window_right_front = initObj.window_right_front
      }
      else {
        this.window_right_front = new WindowType();
      }
      if (initObj.hasOwnProperty('window_left_rear')) {
        this.window_left_rear = initObj.window_left_rear
      }
      else {
        this.window_left_rear = new WindowType();
      }
      if (initObj.hasOwnProperty('window_right_rear')) {
        this.window_right_rear = initObj.window_right_rear
      }
      else {
        this.window_right_rear = new WindowType();
      }
      if (initObj.hasOwnProperty('window_top')) {
        this.window_top = initObj.window_top
      }
      else {
        this.window_top = new WindowType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WindowCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [window_lock]
    bufferOffset = _serializer.bool(obj.window_lock, buffer, bufferOffset);
    // Serialize message field [window_left_front]
    bufferOffset = WindowType.serialize(obj.window_left_front, buffer, bufferOffset);
    // Serialize message field [window_right_front]
    bufferOffset = WindowType.serialize(obj.window_right_front, buffer, bufferOffset);
    // Serialize message field [window_left_rear]
    bufferOffset = WindowType.serialize(obj.window_left_rear, buffer, bufferOffset);
    // Serialize message field [window_right_rear]
    bufferOffset = WindowType.serialize(obj.window_right_rear, buffer, bufferOffset);
    // Serialize message field [window_top]
    bufferOffset = WindowType.serialize(obj.window_top, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WindowCommandData
    let len;
    let data = new WindowCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [window_lock]
    data.window_lock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [window_left_front]
    data.window_left_front = WindowType.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_right_front]
    data.window_right_front = WindowType.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_left_rear]
    data.window_left_rear = WindowType.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_right_rear]
    data.window_right_rear = WindowType.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_top]
    data.window_top = WindowType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WindowCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7547f26f8cd2ee6600aeb12eff893dae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    bool window_lock
    endpoint_msgs/WindowType window_left_front
    endpoint_msgs/WindowType window_right_front
    endpoint_msgs/WindowType window_left_rear
    endpoint_msgs/WindowType window_right_rear
    endpoint_msgs/WindowType window_top
    
    ================================================================================
    MSG: endpoint_msgs/WindowType
    uint8 LIFT_STOP = 0
    uint8 LIFT_UP = 1
    uint8 LIFT_DOWN = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WindowCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.window_lock !== undefined) {
      resolved.window_lock = msg.window_lock;
    }
    else {
      resolved.window_lock = false
    }

    if (msg.window_left_front !== undefined) {
      resolved.window_left_front = WindowType.Resolve(msg.window_left_front)
    }
    else {
      resolved.window_left_front = new WindowType()
    }

    if (msg.window_right_front !== undefined) {
      resolved.window_right_front = WindowType.Resolve(msg.window_right_front)
    }
    else {
      resolved.window_right_front = new WindowType()
    }

    if (msg.window_left_rear !== undefined) {
      resolved.window_left_rear = WindowType.Resolve(msg.window_left_rear)
    }
    else {
      resolved.window_left_rear = new WindowType()
    }

    if (msg.window_right_rear !== undefined) {
      resolved.window_right_rear = WindowType.Resolve(msg.window_right_rear)
    }
    else {
      resolved.window_right_rear = new WindowType()
    }

    if (msg.window_top !== undefined) {
      resolved.window_top = WindowType.Resolve(msg.window_top)
    }
    else {
      resolved.window_top = new WindowType()
    }

    return resolved;
    }
};

module.exports = WindowCommandData;
