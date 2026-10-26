// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WlcStatus = require('./WlcStatus.js');

//-----------------------------------------------------------

class ParkInInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parkin_direction = null;
      this.wlc_status = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('parkin_direction')) {
        this.parkin_direction = initObj.parkin_direction
      }
      else {
        this.parkin_direction = 0;
      }
      if (initObj.hasOwnProperty('wlc_status')) {
        this.wlc_status = initObj.wlc_status
      }
      else {
        this.wlc_status = new WlcStatus();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkInInfo
    // Serialize message field [parkin_direction]
    bufferOffset = _serializer.uint32(obj.parkin_direction, buffer, bufferOffset);
    // Serialize message field [wlc_status]
    bufferOffset = WlcStatus.serialize(obj.wlc_status, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkInInfo
    let len;
    let data = new ParkInInfo(null);
    // Deserialize message field [parkin_direction]
    data.parkin_direction = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wlc_status]
    data.wlc_status = WlcStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ParkInInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db550575a6336f00e9add342260502d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 parkin_direction
    planning_msgs/WlcStatus wlc_status
    string reserved
    
    ================================================================================
    MSG: planning_msgs/WlcStatus
    uint32 NO_WLC = 0
    uint32 APPROACHING = 1
    uint32 APPROACHED = 2
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkInInfo(null);
    if (msg.parkin_direction !== undefined) {
      resolved.parkin_direction = msg.parkin_direction;
    }
    else {
      resolved.parkin_direction = 0
    }

    if (msg.wlc_status !== undefined) {
      resolved.wlc_status = WlcStatus.Resolve(msg.wlc_status)
    }
    else {
      resolved.wlc_status = new WlcStatus()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = ParkInInfo;
