// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AebBrkJerkReq = require('./AebBrkJerkReq.js');
let AebDclReqSts = require('./AebDclReqSts.js');
let AebHydBrkReq = require('./AebHydBrkReq.js');

//-----------------------------------------------------------

class AebCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.awb_request = null;
      this.dcl_req_state = null;
      this.dcl_req_command = null;
      this.hba_request_level = null;
      this.prefill_request = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('awb_request')) {
        this.awb_request = initObj.awb_request
      }
      else {
        this.awb_request = new AebBrkJerkReq();
      }
      if (initObj.hasOwnProperty('dcl_req_state')) {
        this.dcl_req_state = initObj.dcl_req_state
      }
      else {
        this.dcl_req_state = new AebDclReqSts();
      }
      if (initObj.hasOwnProperty('dcl_req_command')) {
        this.dcl_req_command = initObj.dcl_req_command
      }
      else {
        this.dcl_req_command = 0.0;
      }
      if (initObj.hasOwnProperty('hba_request_level')) {
        this.hba_request_level = initObj.hba_request_level
      }
      else {
        this.hba_request_level = new AebHydBrkReq();
      }
      if (initObj.hasOwnProperty('prefill_request')) {
        this.prefill_request = initObj.prefill_request
      }
      else {
        this.prefill_request = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AebCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [awb_request]
    bufferOffset = AebBrkJerkReq.serialize(obj.awb_request, buffer, bufferOffset);
    // Serialize message field [dcl_req_state]
    bufferOffset = AebDclReqSts.serialize(obj.dcl_req_state, buffer, bufferOffset);
    // Serialize message field [dcl_req_command]
    bufferOffset = _serializer.float32(obj.dcl_req_command, buffer, bufferOffset);
    // Serialize message field [hba_request_level]
    bufferOffset = AebHydBrkReq.serialize(obj.hba_request_level, buffer, bufferOffset);
    // Serialize message field [prefill_request]
    bufferOffset = _serializer.bool(obj.prefill_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AebCommandData
    let len;
    let data = new AebCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [awb_request]
    data.awb_request = AebBrkJerkReq.deserialize(buffer, bufferOffset);
    // Deserialize message field [dcl_req_state]
    data.dcl_req_state = AebDclReqSts.deserialize(buffer, bufferOffset);
    // Deserialize message field [dcl_req_command]
    data.dcl_req_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hba_request_level]
    data.hba_request_level = AebHydBrkReq.deserialize(buffer, bufferOffset);
    // Deserialize message field [prefill_request]
    data.prefill_request = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AebCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2664fcc8b4bedb987279119824de4255';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AebCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.awb_request !== undefined) {
      resolved.awb_request = AebBrkJerkReq.Resolve(msg.awb_request)
    }
    else {
      resolved.awb_request = new AebBrkJerkReq()
    }

    if (msg.dcl_req_state !== undefined) {
      resolved.dcl_req_state = AebDclReqSts.Resolve(msg.dcl_req_state)
    }
    else {
      resolved.dcl_req_state = new AebDclReqSts()
    }

    if (msg.dcl_req_command !== undefined) {
      resolved.dcl_req_command = msg.dcl_req_command;
    }
    else {
      resolved.dcl_req_command = 0.0
    }

    if (msg.hba_request_level !== undefined) {
      resolved.hba_request_level = AebHydBrkReq.Resolve(msg.hba_request_level)
    }
    else {
      resolved.hba_request_level = new AebHydBrkReq()
    }

    if (msg.prefill_request !== undefined) {
      resolved.prefill_request = msg.prefill_request;
    }
    else {
      resolved.prefill_request = false
    }

    return resolved;
    }
};

module.exports = AebCommandData;
