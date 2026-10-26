// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HumanProtectedDeviceType = require('./HumanProtectedDeviceType.js');

//-----------------------------------------------------------

class HumanProtectedDeviceReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.enabled_human_protected_device_array = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('enabled_human_protected_device_array')) {
        this.enabled_human_protected_device_array = initObj.enabled_human_protected_device_array
      }
      else {
        this.enabled_human_protected_device_array = [];
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
    // Serializes a message object of type HumanProtectedDeviceReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [enabled_human_protected_device_array]
    // Serialize the length for message field [enabled_human_protected_device_array]
    bufferOffset = _serializer.uint32(obj.enabled_human_protected_device_array.length, buffer, bufferOffset);
    obj.enabled_human_protected_device_array.forEach((val) => {
      bufferOffset = HumanProtectedDeviceType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanProtectedDeviceReportData
    let len;
    let data = new HumanProtectedDeviceReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [enabled_human_protected_device_array]
    // Deserialize array length for message field [enabled_human_protected_device_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.enabled_human_protected_device_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.enabled_human_protected_device_array[i] = HumanProtectedDeviceType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.enabled_human_protected_device_array.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/HumanProtectedDeviceReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0866423dbad9507bb9f69bf05c1caaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/HumanProtectedDeviceType
    uint8 DRIVER_SEATBELT = 0
    uint8 PASSENGER_SEATBELT = 1
    uint8 PASSENGER_DETECT = 2
    uint8 PASSENGER_AIRBAG = 3
    uint8 SECOND_LEFT_BELT = 4
    uint8 SECOND_MID_BELT = 5
    uint8 SECOND_RIGHT_BELT = 6
    uint8 RESERVED1 = 7
    uint8 RESERVED2 = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanProtectedDeviceReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.enabled_human_protected_device_array !== undefined) {
      resolved.enabled_human_protected_device_array = new Array(msg.enabled_human_protected_device_array.length);
      for (let i = 0; i < resolved.enabled_human_protected_device_array.length; ++i) {
        resolved.enabled_human_protected_device_array[i] = HumanProtectedDeviceType.Resolve(msg.enabled_human_protected_device_array[i]);
      }
    }
    else {
      resolved.enabled_human_protected_device_array = []
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

module.exports = HumanProtectedDeviceReportData;
