// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DiskStatusData = require('./DiskStatusData.js');

//-----------------------------------------------------------

class DiskStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.disk_status_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('disk_status_data')) {
        this.disk_status_data = initObj.disk_status_data
      }
      else {
        this.disk_status_data = new DiskStatusData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiskStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [disk_status_data]
    bufferOffset = DiskStatusData.serialize(obj.disk_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiskStatus
    let len;
    let data = new DiskStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [disk_status_data]
    data.disk_status_data = DiskStatusData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DiskStatusData.getMessageSize(object.disk_status_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/DiskStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2f0c0136545a80d0f4a61bb427a8865';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DISK_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/DiskStatusData disk_status_data
    
    ================================================================================
    MSG: framework_status_msgs/DiskStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    float32 disk_usage
    string disk_io_counters
    string reserved_info
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiskStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.disk_status_data !== undefined) {
      resolved.disk_status_data = DiskStatusData.Resolve(msg.disk_status_data)
    }
    else {
      resolved.disk_status_data = new DiskStatusData()
    }

    return resolved;
    }
};

// Constants for message
DiskStatus.Constants = {
  DISK_STATUS_DATA: 1,
}

module.exports = DiskStatus;
