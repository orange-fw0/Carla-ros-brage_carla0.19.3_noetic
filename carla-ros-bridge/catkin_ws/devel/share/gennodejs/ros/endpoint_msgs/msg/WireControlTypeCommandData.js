// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WireControlType = require('./WireControlType.js');

//-----------------------------------------------------------

class WireControlTypeCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.wire_type = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('wire_type')) {
        this.wire_type = initObj.wire_type
      }
      else {
        this.wire_type = new WireControlType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WireControlTypeCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [wire_type]
    bufferOffset = WireControlType.serialize(obj.wire_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WireControlTypeCommandData
    let len;
    let data = new WireControlTypeCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [wire_type]
    data.wire_type = WireControlType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WireControlTypeCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6a28884676b53e9cfe8c617659e54a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/WireControlType wire_type
    
    ================================================================================
    MSG: endpoint_msgs/WireControlType
    uint8 SYETEM_REQ_NONE = 0
    uint8 SYSTEM_REQ_PILOT = 1
    uint8 SYSTEM_REQ_APA = 2
    uint8 SYSTEM_REQ_ACC = 3
    uint8 SYSTEM_REQ_AVP = 4
    uint8 SYSTEM_REQ_LVP = 5
    uint8 SYSTEM_REQ_MRC = 6
    uint8 RESERVED = 7
    uint8 wire_control_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WireControlTypeCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.wire_type !== undefined) {
      resolved.wire_type = WireControlType.Resolve(msg.wire_type)
    }
    else {
      resolved.wire_type = new WireControlType()
    }

    return resolved;
    }
};

module.exports = WireControlTypeCommandData;
