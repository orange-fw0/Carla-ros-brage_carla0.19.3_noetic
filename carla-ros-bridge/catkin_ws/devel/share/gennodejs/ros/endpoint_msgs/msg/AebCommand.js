// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AebCommandData = require('./AebCommandData.js');

//-----------------------------------------------------------

class AebCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.aeb_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('aeb_command_data')) {
        this.aeb_command_data = initObj.aeb_command_data
      }
      else {
        this.aeb_command_data = new AebCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AebCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [aeb_command_data]
    bufferOffset = AebCommandData.serialize(obj.aeb_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AebCommand
    let len;
    let data = new AebCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [aeb_command_data]
    data.aeb_command_data = AebCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AebCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd37f19f69ac775b6e80f877abae45c9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AEB_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/AebCommandData aeb_command_data
    
    ================================================================================
    MSG: endpoint_msgs/AebCommandData
    uint64 timestamp_us
    endpoint_msgs/AebBrkJerkReq awb_request
    endpoint_msgs/AebDclReqSts dcl_req_state
    float32 dcl_req_command
    endpoint_msgs/AebHydBrkReq hba_request_level
    bool prefill_request
    
    ================================================================================
    MSG: endpoint_msgs/AebBrkJerkReq
    uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
    uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1
    uint8 AEB_BRAKE_JERK_MID_LEVEL = 2
    uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3
    uint8 AEV_BRAKE_JERK_RESERVED = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebDclReqSts
    uint8 AEB_DLC_STATE_NO_REQUEST = 0
    uint8 AEB_DLC_STATE_DECELERATION = 1
    uint8 AEB_DLC_STATE_RESERVED = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebHydBrkReq
    uint8 AEB_HYD_BRAKE_NO_REQUEST = 0
    uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1
    uint8 AEB_HYD_BRAKE_MID_LEVEL = 2
    uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3
    uint8 AEB_HYD_BRAKE_RESERVED1 = 4
    uint8 AEB_HYD_BRAKE_RESERVED2 = 5
    uint8 AEB_HYD_BRAKE_RESERVED3 = 6
    uint8 AEB_HYD_BRAKE_RESERVED4 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AebCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.aeb_command_data !== undefined) {
      resolved.aeb_command_data = AebCommandData.Resolve(msg.aeb_command_data)
    }
    else {
      resolved.aeb_command_data = new AebCommandData()
    }

    return resolved;
    }
};

// Constants for message
AebCommand.Constants = {
  AEB_COMMAND_DATA: 1,
}

module.exports = AebCommand;
