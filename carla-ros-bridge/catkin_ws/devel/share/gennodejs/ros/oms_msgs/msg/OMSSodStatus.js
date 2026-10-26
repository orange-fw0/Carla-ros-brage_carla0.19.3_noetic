// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OMSSodStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.seat_id = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('seat_id')) {
        this.seat_id = initObj.seat_id
      }
      else {
        this.seat_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSSodStatus
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    // Serialize message field [seat_id]
    bufferOffset = _serializer.uint8(obj.seat_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSSodStatus
    let len;
    let data = new OMSSodStatus(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [seat_id]
    data.seat_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSSodStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fd1a2bf39837db4df483bd667904c5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNAVAILABLE = 0
    uint8 OCCUPIED = 1
    uint8 UNOCCUPIED = 2
    uint8 UNCERTAIN = 3
    uint8 value
    uint8 seat_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSSodStatus(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.seat_id !== undefined) {
      resolved.seat_id = msg.seat_id;
    }
    else {
      resolved.seat_id = 0
    }

    return resolved;
    }
};

// Constants for message
OMSSodStatus.Constants = {
  UNAVAILABLE: 0,
  OCCUPIED: 1,
  UNOCCUPIED: 2,
  UNCERTAIN: 3,
}

module.exports = OMSSodStatus;
