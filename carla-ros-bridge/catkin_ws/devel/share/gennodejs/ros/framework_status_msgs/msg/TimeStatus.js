// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TimeStatusData = require('./TimeStatusData.js');

//-----------------------------------------------------------

class TimeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.time_status_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('time_status_data')) {
        this.time_status_data = initObj.time_status_data
      }
      else {
        this.time_status_data = new TimeStatusData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [time_status_data]
    bufferOffset = TimeStatusData.serialize(obj.time_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeStatus
    let len;
    let data = new TimeStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_status_data]
    data.time_status_data = TimeStatusData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TimeStatusData.getMessageSize(object.time_status_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/TimeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '583f0270ac255a2d8356cb80504fd440';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TIME_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/TimeStatusData time_status_data
    
    ================================================================================
    MSG: framework_status_msgs/TimeStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    string reserved_info
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.time_status_data !== undefined) {
      resolved.time_status_data = TimeStatusData.Resolve(msg.time_status_data)
    }
    else {
      resolved.time_status_data = new TimeStatusData()
    }

    return resolved;
    }
};

// Constants for message
TimeStatus.Constants = {
  TIME_STATUS_DATA: 1,
}

module.exports = TimeStatus;
