// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AebSysStatus = require('./AebSysStatus.js');
let AebSysFaultStatus = require('./AebSysFaultStatus.js');
let AebBrkJerkResp = require('./AebBrkJerkResp.js');
let AebDclResp = require('./AebDclResp.js');
let HbaStatus = require('./HbaStatus.js');
let AebPrflResp = require('./AebPrflResp.js');
let FcwStatus = require('./FcwStatus.js');
let VseSysState = require('./VseSysState.js');
let SwcStatus = require('./SwcStatus.js');

//-----------------------------------------------------------

class AebStatusReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.aeb_system_status = null;
      this.aeb_system_fault_status = null;
      this.awb_status = null;
      this.dcl_status = null;
      this.hba_status = null;
      this.prfl_status = null;
      this.aeb_valid = null;
      this.fcw_status = null;
      this.fcw_valid = null;
      this.vse_state = null;
      this.vse_valid = null;
      this.swc_status = null;
      this.swc_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('aeb_system_status')) {
        this.aeb_system_status = initObj.aeb_system_status
      }
      else {
        this.aeb_system_status = new AebSysStatus();
      }
      if (initObj.hasOwnProperty('aeb_system_fault_status')) {
        this.aeb_system_fault_status = initObj.aeb_system_fault_status
      }
      else {
        this.aeb_system_fault_status = new AebSysFaultStatus();
      }
      if (initObj.hasOwnProperty('awb_status')) {
        this.awb_status = initObj.awb_status
      }
      else {
        this.awb_status = new AebBrkJerkResp();
      }
      if (initObj.hasOwnProperty('dcl_status')) {
        this.dcl_status = initObj.dcl_status
      }
      else {
        this.dcl_status = new AebDclResp();
      }
      if (initObj.hasOwnProperty('hba_status')) {
        this.hba_status = initObj.hba_status
      }
      else {
        this.hba_status = new HbaStatus();
      }
      if (initObj.hasOwnProperty('prfl_status')) {
        this.prfl_status = initObj.prfl_status
      }
      else {
        this.prfl_status = new AebPrflResp();
      }
      if (initObj.hasOwnProperty('aeb_valid')) {
        this.aeb_valid = initObj.aeb_valid
      }
      else {
        this.aeb_valid = false;
      }
      if (initObj.hasOwnProperty('fcw_status')) {
        this.fcw_status = initObj.fcw_status
      }
      else {
        this.fcw_status = new FcwStatus();
      }
      if (initObj.hasOwnProperty('fcw_valid')) {
        this.fcw_valid = initObj.fcw_valid
      }
      else {
        this.fcw_valid = false;
      }
      if (initObj.hasOwnProperty('vse_state')) {
        this.vse_state = initObj.vse_state
      }
      else {
        this.vse_state = new VseSysState();
      }
      if (initObj.hasOwnProperty('vse_valid')) {
        this.vse_valid = initObj.vse_valid
      }
      else {
        this.vse_valid = false;
      }
      if (initObj.hasOwnProperty('swc_status')) {
        this.swc_status = initObj.swc_status
      }
      else {
        this.swc_status = new SwcStatus();
      }
      if (initObj.hasOwnProperty('swc_valid')) {
        this.swc_valid = initObj.swc_valid
      }
      else {
        this.swc_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AebStatusReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [aeb_system_status]
    bufferOffset = AebSysStatus.serialize(obj.aeb_system_status, buffer, bufferOffset);
    // Serialize message field [aeb_system_fault_status]
    bufferOffset = AebSysFaultStatus.serialize(obj.aeb_system_fault_status, buffer, bufferOffset);
    // Serialize message field [awb_status]
    bufferOffset = AebBrkJerkResp.serialize(obj.awb_status, buffer, bufferOffset);
    // Serialize message field [dcl_status]
    bufferOffset = AebDclResp.serialize(obj.dcl_status, buffer, bufferOffset);
    // Serialize message field [hba_status]
    bufferOffset = HbaStatus.serialize(obj.hba_status, buffer, bufferOffset);
    // Serialize message field [prfl_status]
    bufferOffset = AebPrflResp.serialize(obj.prfl_status, buffer, bufferOffset);
    // Serialize message field [aeb_valid]
    bufferOffset = _serializer.bool(obj.aeb_valid, buffer, bufferOffset);
    // Serialize message field [fcw_status]
    bufferOffset = FcwStatus.serialize(obj.fcw_status, buffer, bufferOffset);
    // Serialize message field [fcw_valid]
    bufferOffset = _serializer.bool(obj.fcw_valid, buffer, bufferOffset);
    // Serialize message field [vse_state]
    bufferOffset = VseSysState.serialize(obj.vse_state, buffer, bufferOffset);
    // Serialize message field [vse_valid]
    bufferOffset = _serializer.bool(obj.vse_valid, buffer, bufferOffset);
    // Serialize message field [swc_status]
    bufferOffset = SwcStatus.serialize(obj.swc_status, buffer, bufferOffset);
    // Serialize message field [swc_valid]
    bufferOffset = _serializer.bool(obj.swc_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AebStatusReportData
    let len;
    let data = new AebStatusReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [aeb_system_status]
    data.aeb_system_status = AebSysStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [aeb_system_fault_status]
    data.aeb_system_fault_status = AebSysFaultStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [awb_status]
    data.awb_status = AebBrkJerkResp.deserialize(buffer, bufferOffset);
    // Deserialize message field [dcl_status]
    data.dcl_status = AebDclResp.deserialize(buffer, bufferOffset);
    // Deserialize message field [hba_status]
    data.hba_status = HbaStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [prfl_status]
    data.prfl_status = AebPrflResp.deserialize(buffer, bufferOffset);
    // Deserialize message field [aeb_valid]
    data.aeb_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fcw_status]
    data.fcw_status = FcwStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fcw_valid]
    data.fcw_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vse_state]
    data.vse_state = VseSysState.deserialize(buffer, bufferOffset);
    // Deserialize message field [vse_valid]
    data.vse_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [swc_status]
    data.swc_status = SwcStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [swc_valid]
    data.swc_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AebStatusReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e42c12d20e48f5461d66160ba2f1653';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/AebSysStatus aeb_system_status
    endpoint_msgs/AebSysFaultStatus aeb_system_fault_status
    endpoint_msgs/AebBrkJerkResp awb_status
    endpoint_msgs/AebDclResp dcl_status
    endpoint_msgs/HbaStatus hba_status
    endpoint_msgs/AebPrflResp prfl_status
    bool aeb_valid
    endpoint_msgs/FcwStatus fcw_status
    bool fcw_valid
    endpoint_msgs/VseSysState vse_state
    bool vse_valid
    endpoint_msgs/SwcStatus swc_status
    bool swc_valid
    
    ================================================================================
    MSG: endpoint_msgs/AebSysStatus
    uint8 OFF = 0
    uint8 STANDBY = 1
    uint8 DISABLE = 2
    uint8 OVERRIDE = 3
    uint8 ACTIVED = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebSysFaultStatus
    uint8 AEB_SYS_FALULT_NO_ERROR = 0
    uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1
    uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2
    uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3
    uint8 AEB_SYS_FALULT_RESERVED1 = 4
    uint8 AEB_SYS_FALULT_RESERVED2 = 5
    uint8 AEB_SYS_FALULT_RESERVED3 = 6
    uint8 AEB_SYS_FALULT_RESERVED4 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebBrkJerkResp
    uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
    uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1
    uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2
    uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_BRAKE_JERK_RESERVED = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebDclResp
    uint8 AEB_DCL_NO_REQUEST = 0
    uint8 AEB_DCL_REQUEST_HONORED = 1
    uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2
    uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_DCL_REQUEST_RESERVED1 = 5
    uint8 AEB_DCL_REQUEST_RESERVED2 = 6
    uint8 AEB_DCL_REQUEST_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/HbaStatus
    uint8 AEB_HBA_NO_REQUEST = 0
    uint8 AEB_HBA_REQUEST_HONORED = 1
    uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2
    uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_HBA_REQUEST_RESERVED1 = 5
    uint8 AEB_HBA_REQUEST_RESERVED2 = 6
    uint8 AEB_HBA_REQUEST_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebPrflResp
    uint8 AEB_PRFL_NO_REQUEST = 0
    uint8 AEB_PRFL_REQUEST_HONORED = 1
    uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2
    uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_PRFL_REQUEST_RESERVED1 = 5
    uint8 AEB_PRFL_REQUEST_RESERVED2 = 6
    uint8 AEB_PRFL_REQUEST_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FcwStatus
    uint8 OFF = 0
    uint8 STANDBY = 1
    uint8 DISABLE = 2
    uint8 OVERRIDE = 3
    uint8 ACTIVED = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VseSysState
    uint8 INAVTIVE = 0
    uint8 ACTIVE = 1
    uint8 FAULT = 2
    uint8 WARMING_UP = 3
    uint8 NOT_READY = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SwcStatus
    uint8 SWC_STATUS_NOT_ACTIVE = 0
    uint8 SWC_STATUS_NORMAL = 1
    uint8 SWC_STATUS_ERROR = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AebStatusReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.aeb_system_status !== undefined) {
      resolved.aeb_system_status = AebSysStatus.Resolve(msg.aeb_system_status)
    }
    else {
      resolved.aeb_system_status = new AebSysStatus()
    }

    if (msg.aeb_system_fault_status !== undefined) {
      resolved.aeb_system_fault_status = AebSysFaultStatus.Resolve(msg.aeb_system_fault_status)
    }
    else {
      resolved.aeb_system_fault_status = new AebSysFaultStatus()
    }

    if (msg.awb_status !== undefined) {
      resolved.awb_status = AebBrkJerkResp.Resolve(msg.awb_status)
    }
    else {
      resolved.awb_status = new AebBrkJerkResp()
    }

    if (msg.dcl_status !== undefined) {
      resolved.dcl_status = AebDclResp.Resolve(msg.dcl_status)
    }
    else {
      resolved.dcl_status = new AebDclResp()
    }

    if (msg.hba_status !== undefined) {
      resolved.hba_status = HbaStatus.Resolve(msg.hba_status)
    }
    else {
      resolved.hba_status = new HbaStatus()
    }

    if (msg.prfl_status !== undefined) {
      resolved.prfl_status = AebPrflResp.Resolve(msg.prfl_status)
    }
    else {
      resolved.prfl_status = new AebPrflResp()
    }

    if (msg.aeb_valid !== undefined) {
      resolved.aeb_valid = msg.aeb_valid;
    }
    else {
      resolved.aeb_valid = false
    }

    if (msg.fcw_status !== undefined) {
      resolved.fcw_status = FcwStatus.Resolve(msg.fcw_status)
    }
    else {
      resolved.fcw_status = new FcwStatus()
    }

    if (msg.fcw_valid !== undefined) {
      resolved.fcw_valid = msg.fcw_valid;
    }
    else {
      resolved.fcw_valid = false
    }

    if (msg.vse_state !== undefined) {
      resolved.vse_state = VseSysState.Resolve(msg.vse_state)
    }
    else {
      resolved.vse_state = new VseSysState()
    }

    if (msg.vse_valid !== undefined) {
      resolved.vse_valid = msg.vse_valid;
    }
    else {
      resolved.vse_valid = false
    }

    if (msg.swc_status !== undefined) {
      resolved.swc_status = SwcStatus.Resolve(msg.swc_status)
    }
    else {
      resolved.swc_status = new SwcStatus()
    }

    if (msg.swc_valid !== undefined) {
      resolved.swc_valid = msg.swc_valid;
    }
    else {
      resolved.swc_valid = false
    }

    return resolved;
    }
};

module.exports = AebStatusReportData;
