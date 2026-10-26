// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SingleDiskStatus = require('./SingleDiskStatus.js');

//-----------------------------------------------------------

class FleetDiskStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.health_status = null;
      this.timestamp_us = null;
      this.single_disk_list = null;
      this.reserved_info = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('health_status')) {
        this.health_status = initObj.health_status
      }
      else {
        this.health_status = 0;
      }
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('single_disk_list')) {
        this.single_disk_list = initObj.single_disk_list
      }
      else {
        this.single_disk_list = [];
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FleetDiskStatusData
    // Serialize message field [health_status]
    bufferOffset = _serializer.uint8(obj.health_status, buffer, bufferOffset);
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [single_disk_list]
    // Serialize the length for message field [single_disk_list]
    bufferOffset = _serializer.uint32(obj.single_disk_list.length, buffer, bufferOffset);
    obj.single_disk_list.forEach((val) => {
      bufferOffset = SingleDiskStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FleetDiskStatusData
    let len;
    let data = new FleetDiskStatusData(null);
    // Deserialize message field [health_status]
    data.health_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [single_disk_list]
    // Deserialize array length for message field [single_disk_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.single_disk_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.single_disk_list[i] = SingleDiskStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.single_disk_list.forEach((val) => {
      length += SingleDiskStatus.getMessageSize(val);
    });
    length += _getByteLength(object.reserved_info);
    length += _getByteLength(object.message);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/FleetDiskStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8f555a00f4163ed2113c12110612f05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    uint64 timestamp_us
    framework_status_msgs/SingleDiskStatus[] single_disk_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/SingleDiskStatus
    string sn
    string disk_type
    string status
    uint64 space_size
    uint64 space_used
    string driver
    string speed
    int64 availability
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FleetDiskStatusData(null);
    if (msg.health_status !== undefined) {
      resolved.health_status = msg.health_status;
    }
    else {
      resolved.health_status = 0
    }

    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.single_disk_list !== undefined) {
      resolved.single_disk_list = new Array(msg.single_disk_list.length);
      for (let i = 0; i < resolved.single_disk_list.length; ++i) {
        resolved.single_disk_list[i] = SingleDiskStatus.Resolve(msg.single_disk_list[i]);
      }
    }
    else {
      resolved.single_disk_list = []
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
FleetDiskStatusData.Constants = {
  NORM: 0,
  WARNING: 1,
  ERROR: 2,
}

module.exports = FleetDiskStatusData;
