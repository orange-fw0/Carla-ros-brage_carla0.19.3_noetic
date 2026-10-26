// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WindowState = require('./WindowState.js');

//-----------------------------------------------------------

class WindowReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.window_lock = null;
      this.window_state_left_front = null;
      this.window_state_right_front = null;
      this.window_state_left_rear = null;
      this.window_state_right_rear = null;
      this.window_state_top = null;
      this.valid = null;
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
      if (initObj.hasOwnProperty('window_state_left_front')) {
        this.window_state_left_front = initObj.window_state_left_front
      }
      else {
        this.window_state_left_front = new WindowState();
      }
      if (initObj.hasOwnProperty('window_state_right_front')) {
        this.window_state_right_front = initObj.window_state_right_front
      }
      else {
        this.window_state_right_front = new WindowState();
      }
      if (initObj.hasOwnProperty('window_state_left_rear')) {
        this.window_state_left_rear = initObj.window_state_left_rear
      }
      else {
        this.window_state_left_rear = new WindowState();
      }
      if (initObj.hasOwnProperty('window_state_right_rear')) {
        this.window_state_right_rear = initObj.window_state_right_rear
      }
      else {
        this.window_state_right_rear = new WindowState();
      }
      if (initObj.hasOwnProperty('window_state_top')) {
        this.window_state_top = initObj.window_state_top
      }
      else {
        this.window_state_top = new WindowState();
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WindowReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [window_lock]
    bufferOffset = _serializer.bool(obj.window_lock, buffer, bufferOffset);
    // Serialize message field [window_state_left_front]
    bufferOffset = WindowState.serialize(obj.window_state_left_front, buffer, bufferOffset);
    // Serialize message field [window_state_right_front]
    bufferOffset = WindowState.serialize(obj.window_state_right_front, buffer, bufferOffset);
    // Serialize message field [window_state_left_rear]
    bufferOffset = WindowState.serialize(obj.window_state_left_rear, buffer, bufferOffset);
    // Serialize message field [window_state_right_rear]
    bufferOffset = WindowState.serialize(obj.window_state_right_rear, buffer, bufferOffset);
    // Serialize message field [window_state_top]
    bufferOffset = WindowState.serialize(obj.window_state_top, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WindowReportData
    let len;
    let data = new WindowReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [window_lock]
    data.window_lock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [window_state_left_front]
    data.window_state_left_front = WindowState.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_state_right_front]
    data.window_state_right_front = WindowState.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_state_left_rear]
    data.window_state_left_rear = WindowState.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_state_right_rear]
    data.window_state_right_rear = WindowState.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_state_top]
    data.window_state_top = WindowState.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WindowReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f072ee52e155260b4ecbe7f25e3f6c5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    bool window_lock
    endpoint_msgs/WindowState window_state_left_front
    endpoint_msgs/WindowState window_state_right_front
    endpoint_msgs/WindowState window_state_left_rear
    endpoint_msgs/WindowState window_state_right_rear
    endpoint_msgs/WindowState window_state_top
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WindowState
    uint8 WINDOW_CLOSED = 0
    uint8 WINDOW_OPENED = 1
    uint8 WINDOW_MIDDLE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WindowReportData(null);
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

    if (msg.window_state_left_front !== undefined) {
      resolved.window_state_left_front = WindowState.Resolve(msg.window_state_left_front)
    }
    else {
      resolved.window_state_left_front = new WindowState()
    }

    if (msg.window_state_right_front !== undefined) {
      resolved.window_state_right_front = WindowState.Resolve(msg.window_state_right_front)
    }
    else {
      resolved.window_state_right_front = new WindowState()
    }

    if (msg.window_state_left_rear !== undefined) {
      resolved.window_state_left_rear = WindowState.Resolve(msg.window_state_left_rear)
    }
    else {
      resolved.window_state_left_rear = new WindowState()
    }

    if (msg.window_state_right_rear !== undefined) {
      resolved.window_state_right_rear = WindowState.Resolve(msg.window_state_right_rear)
    }
    else {
      resolved.window_state_right_rear = new WindowState()
    }

    if (msg.window_state_top !== undefined) {
      resolved.window_state_top = WindowState.Resolve(msg.window_state_top)
    }
    else {
      resolved.window_state_top = new WindowState()
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = WindowReportData;
