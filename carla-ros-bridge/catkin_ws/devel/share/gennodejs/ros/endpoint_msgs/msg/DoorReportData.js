// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DoorType = require('./DoorType.js');

//-----------------------------------------------------------

class DoorReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.opened_door_array = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('opened_door_array')) {
        this.opened_door_array = initObj.opened_door_array
      }
      else {
        this.opened_door_array = [];
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
    // Serializes a message object of type DoorReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [opened_door_array]
    // Serialize the length for message field [opened_door_array]
    bufferOffset = _serializer.uint32(obj.opened_door_array.length, buffer, bufferOffset);
    obj.opened_door_array.forEach((val) => {
      bufferOffset = DoorType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoorReportData
    let len;
    let data = new DoorReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [opened_door_array]
    // Deserialize array length for message field [opened_door_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.opened_door_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.opened_door_array[i] = DoorType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.opened_door_array.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/DoorReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85a4ee7ea87c38816f3b71fbd0df1296';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/DoorType[] opened_door_array
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/DoorType
    uint8 DRIVER = 0
    uint8 PASSENGER = 1
    uint8 REAR_LEFT = 2
    uint8 REAR_RIGHT = 3
    uint8 HOOD = 4
    uint8 TRUNK = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DoorReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.opened_door_array !== undefined) {
      resolved.opened_door_array = new Array(msg.opened_door_array.length);
      for (let i = 0; i < resolved.opened_door_array.length; ++i) {
        resolved.opened_door_array[i] = DoorType.Resolve(msg.opened_door_array[i]);
      }
    }
    else {
      resolved.opened_door_array = []
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

module.exports = DoorReportData;
