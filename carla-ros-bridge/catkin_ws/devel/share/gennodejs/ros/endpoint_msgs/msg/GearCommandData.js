// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Gear = require('./Gear.js');

//-----------------------------------------------------------

class GearCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.gear_enable = null;
      this.gear_type = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('gear_enable')) {
        this.gear_enable = initObj.gear_enable
      }
      else {
        this.gear_enable = false;
      }
      if (initObj.hasOwnProperty('gear_type')) {
        this.gear_type = initObj.gear_type
      }
      else {
        this.gear_type = new Gear();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GearCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [gear_enable]
    bufferOffset = _serializer.bool(obj.gear_enable, buffer, bufferOffset);
    // Serialize message field [gear_type]
    bufferOffset = Gear.serialize(obj.gear_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GearCommandData
    let len;
    let data = new GearCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [gear_enable]
    data.gear_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gear_type]
    data.gear_type = Gear.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/GearCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86c7880c669a37780aba2223a30bda18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    bool gear_enable
    endpoint_msgs/Gear gear_type
    
    ================================================================================
    MSG: endpoint_msgs/Gear
    uint8 NONE = 0
    uint8 PARK = 1
    uint8 REVERSE = 2
    uint8 NEUTRAL = 3
    uint8 DRIVE = 4
    uint8 LOW = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GearCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.gear_enable !== undefined) {
      resolved.gear_enable = msg.gear_enable;
    }
    else {
      resolved.gear_enable = false
    }

    if (msg.gear_type !== undefined) {
      resolved.gear_type = Gear.Resolve(msg.gear_type)
    }
    else {
      resolved.gear_type = new Gear()
    }

    return resolved;
    }
};

module.exports = GearCommandData;
