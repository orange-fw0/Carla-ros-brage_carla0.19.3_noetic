// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CtaState = require('./CtaState.js');
let DlpStatus = require('./DlpStatus.js');
let HdcState = require('./HdcState.js');
let LdpStatus = require('./LdpStatus.js');
let LdwStatus = require('./LdwStatus.js');
let SrsCollosion = require('./SrsCollosion.js');
let ExtraReport = require('./ExtraReport.js');

//-----------------------------------------------------------

class VehicleExtraReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.cta_lf = null;
      this.cta_rf = null;
      this.cta_lr = null;
      this.cta_rr = null;
      this.cta_valid = null;
      this.dlp_state = null;
      this.dlp_valid = null;
      this.hdc_state = null;
      this.hdc_valid = null;
      this.ldp_status_left_lane = null;
      this.ldp_status_right_lane = null;
      this.ldp_valid = null;
      this.ldw_status = null;
      this.ldw_valid = null;
      this.srs_collosion = null;
      this.extra = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('cta_lf')) {
        this.cta_lf = initObj.cta_lf
      }
      else {
        this.cta_lf = new CtaState();
      }
      if (initObj.hasOwnProperty('cta_rf')) {
        this.cta_rf = initObj.cta_rf
      }
      else {
        this.cta_rf = new CtaState();
      }
      if (initObj.hasOwnProperty('cta_lr')) {
        this.cta_lr = initObj.cta_lr
      }
      else {
        this.cta_lr = new CtaState();
      }
      if (initObj.hasOwnProperty('cta_rr')) {
        this.cta_rr = initObj.cta_rr
      }
      else {
        this.cta_rr = new CtaState();
      }
      if (initObj.hasOwnProperty('cta_valid')) {
        this.cta_valid = initObj.cta_valid
      }
      else {
        this.cta_valid = false;
      }
      if (initObj.hasOwnProperty('dlp_state')) {
        this.dlp_state = initObj.dlp_state
      }
      else {
        this.dlp_state = new DlpStatus();
      }
      if (initObj.hasOwnProperty('dlp_valid')) {
        this.dlp_valid = initObj.dlp_valid
      }
      else {
        this.dlp_valid = false;
      }
      if (initObj.hasOwnProperty('hdc_state')) {
        this.hdc_state = initObj.hdc_state
      }
      else {
        this.hdc_state = new HdcState();
      }
      if (initObj.hasOwnProperty('hdc_valid')) {
        this.hdc_valid = initObj.hdc_valid
      }
      else {
        this.hdc_valid = false;
      }
      if (initObj.hasOwnProperty('ldp_status_left_lane')) {
        this.ldp_status_left_lane = initObj.ldp_status_left_lane
      }
      else {
        this.ldp_status_left_lane = new LdpStatus();
      }
      if (initObj.hasOwnProperty('ldp_status_right_lane')) {
        this.ldp_status_right_lane = initObj.ldp_status_right_lane
      }
      else {
        this.ldp_status_right_lane = new LdpStatus();
      }
      if (initObj.hasOwnProperty('ldp_valid')) {
        this.ldp_valid = initObj.ldp_valid
      }
      else {
        this.ldp_valid = false;
      }
      if (initObj.hasOwnProperty('ldw_status')) {
        this.ldw_status = initObj.ldw_status
      }
      else {
        this.ldw_status = new LdwStatus();
      }
      if (initObj.hasOwnProperty('ldw_valid')) {
        this.ldw_valid = initObj.ldw_valid
      }
      else {
        this.ldw_valid = false;
      }
      if (initObj.hasOwnProperty('srs_collosion')) {
        this.srs_collosion = initObj.srs_collosion
      }
      else {
        this.srs_collosion = new SrsCollosion();
      }
      if (initObj.hasOwnProperty('extra')) {
        this.extra = initObj.extra
      }
      else {
        this.extra = new ExtraReport();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleExtraReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [cta_lf]
    bufferOffset = CtaState.serialize(obj.cta_lf, buffer, bufferOffset);
    // Serialize message field [cta_rf]
    bufferOffset = CtaState.serialize(obj.cta_rf, buffer, bufferOffset);
    // Serialize message field [cta_lr]
    bufferOffset = CtaState.serialize(obj.cta_lr, buffer, bufferOffset);
    // Serialize message field [cta_rr]
    bufferOffset = CtaState.serialize(obj.cta_rr, buffer, bufferOffset);
    // Serialize message field [cta_valid]
    bufferOffset = _serializer.bool(obj.cta_valid, buffer, bufferOffset);
    // Serialize message field [dlp_state]
    bufferOffset = DlpStatus.serialize(obj.dlp_state, buffer, bufferOffset);
    // Serialize message field [dlp_valid]
    bufferOffset = _serializer.bool(obj.dlp_valid, buffer, bufferOffset);
    // Serialize message field [hdc_state]
    bufferOffset = HdcState.serialize(obj.hdc_state, buffer, bufferOffset);
    // Serialize message field [hdc_valid]
    bufferOffset = _serializer.bool(obj.hdc_valid, buffer, bufferOffset);
    // Serialize message field [ldp_status_left_lane]
    bufferOffset = LdpStatus.serialize(obj.ldp_status_left_lane, buffer, bufferOffset);
    // Serialize message field [ldp_status_right_lane]
    bufferOffset = LdpStatus.serialize(obj.ldp_status_right_lane, buffer, bufferOffset);
    // Serialize message field [ldp_valid]
    bufferOffset = _serializer.bool(obj.ldp_valid, buffer, bufferOffset);
    // Serialize message field [ldw_status]
    bufferOffset = LdwStatus.serialize(obj.ldw_status, buffer, bufferOffset);
    // Serialize message field [ldw_valid]
    bufferOffset = _serializer.bool(obj.ldw_valid, buffer, bufferOffset);
    // Serialize message field [srs_collosion]
    bufferOffset = SrsCollosion.serialize(obj.srs_collosion, buffer, bufferOffset);
    // Serialize message field [extra]
    bufferOffset = ExtraReport.serialize(obj.extra, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleExtraReportData
    let len;
    let data = new VehicleExtraReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [cta_lf]
    data.cta_lf = CtaState.deserialize(buffer, bufferOffset);
    // Deserialize message field [cta_rf]
    data.cta_rf = CtaState.deserialize(buffer, bufferOffset);
    // Deserialize message field [cta_lr]
    data.cta_lr = CtaState.deserialize(buffer, bufferOffset);
    // Deserialize message field [cta_rr]
    data.cta_rr = CtaState.deserialize(buffer, bufferOffset);
    // Deserialize message field [cta_valid]
    data.cta_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dlp_state]
    data.dlp_state = DlpStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [dlp_valid]
    data.dlp_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hdc_state]
    data.hdc_state = HdcState.deserialize(buffer, bufferOffset);
    // Deserialize message field [hdc_valid]
    data.hdc_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ldp_status_left_lane]
    data.ldp_status_left_lane = LdpStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [ldp_status_right_lane]
    data.ldp_status_right_lane = LdpStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [ldp_valid]
    data.ldp_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ldw_status]
    data.ldw_status = LdwStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [ldw_valid]
    data.ldw_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [srs_collosion]
    data.srs_collosion = SrsCollosion.deserialize(buffer, bufferOffset);
    // Deserialize message field [extra]
    data.extra = ExtraReport.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ExtraReport.getMessageSize(object.extra);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleExtraReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '240b37eb7464abfe670438de392535fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/CtaState cta_lf
    endpoint_msgs/CtaState cta_rf
    endpoint_msgs/CtaState cta_lr
    endpoint_msgs/CtaState cta_rr
    bool cta_valid
    endpoint_msgs/DlpStatus dlp_state
    bool dlp_valid
    endpoint_msgs/HdcState hdc_state
    bool hdc_valid
    endpoint_msgs/LdpStatus ldp_status_left_lane
    endpoint_msgs/LdpStatus ldp_status_right_lane
    bool ldp_valid
    endpoint_msgs/LdwStatus ldw_status
    bool ldw_valid
    endpoint_msgs/SrsCollosion srs_collosion
    endpoint_msgs/ExtraReport extra
    
    ================================================================================
    MSG: endpoint_msgs/CtaState
    uint8 NO_WARNING = 0
    uint8 WARNING_LEVE_1 = 1
    uint8 WARNING_LEVE_2 = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/DlpStatus
    uint8 NO_WARNING = 0
    uint8 WARNING_LEVEL1 = 1
    uint8 WARNING_LEVEL2 = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/HdcState
    uint8 NORMAL = 0
    uint8 ENABLED = 1
    uint8 ACTIVED = 2
    uint8 FAILED = 3
    uint8 TEMPORARILY_INHIBITED = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LdpStatus
    uint8 LDP_STATUS_OFF = 0
    uint8 LDP_STATUS_STANDBY = 1
    uint8 LDP_STATUS_ACTIVE = 2
    uint8 LDP_STATUS_RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/LdwStatus
    uint8 LDW_STATUS_OFF = 0
    uint8 LDW_STATUS_STANDBY = 1
    uint8 LDW_STATUS_DISABLED = 2
    uint8 LDW_STATUS_OVERIDE = 3
    uint8 LDW_STATUS_ACTIVE = 4
    uint8 LDW_STATUS_RESERVED1 = 5
    uint8 LDW_STATUS_RESERVED2 = 6
    uint8 LDW_STATUS_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SrsCollosion
    uint8 NONE = 0
    uint8 NOT_COLLOSION = 1
    uint8 COLLOSION = 2
    uint8 INVALID = 255
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/ExtraReport
    uint8 available
    string json
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleExtraReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.cta_lf !== undefined) {
      resolved.cta_lf = CtaState.Resolve(msg.cta_lf)
    }
    else {
      resolved.cta_lf = new CtaState()
    }

    if (msg.cta_rf !== undefined) {
      resolved.cta_rf = CtaState.Resolve(msg.cta_rf)
    }
    else {
      resolved.cta_rf = new CtaState()
    }

    if (msg.cta_lr !== undefined) {
      resolved.cta_lr = CtaState.Resolve(msg.cta_lr)
    }
    else {
      resolved.cta_lr = new CtaState()
    }

    if (msg.cta_rr !== undefined) {
      resolved.cta_rr = CtaState.Resolve(msg.cta_rr)
    }
    else {
      resolved.cta_rr = new CtaState()
    }

    if (msg.cta_valid !== undefined) {
      resolved.cta_valid = msg.cta_valid;
    }
    else {
      resolved.cta_valid = false
    }

    if (msg.dlp_state !== undefined) {
      resolved.dlp_state = DlpStatus.Resolve(msg.dlp_state)
    }
    else {
      resolved.dlp_state = new DlpStatus()
    }

    if (msg.dlp_valid !== undefined) {
      resolved.dlp_valid = msg.dlp_valid;
    }
    else {
      resolved.dlp_valid = false
    }

    if (msg.hdc_state !== undefined) {
      resolved.hdc_state = HdcState.Resolve(msg.hdc_state)
    }
    else {
      resolved.hdc_state = new HdcState()
    }

    if (msg.hdc_valid !== undefined) {
      resolved.hdc_valid = msg.hdc_valid;
    }
    else {
      resolved.hdc_valid = false
    }

    if (msg.ldp_status_left_lane !== undefined) {
      resolved.ldp_status_left_lane = LdpStatus.Resolve(msg.ldp_status_left_lane)
    }
    else {
      resolved.ldp_status_left_lane = new LdpStatus()
    }

    if (msg.ldp_status_right_lane !== undefined) {
      resolved.ldp_status_right_lane = LdpStatus.Resolve(msg.ldp_status_right_lane)
    }
    else {
      resolved.ldp_status_right_lane = new LdpStatus()
    }

    if (msg.ldp_valid !== undefined) {
      resolved.ldp_valid = msg.ldp_valid;
    }
    else {
      resolved.ldp_valid = false
    }

    if (msg.ldw_status !== undefined) {
      resolved.ldw_status = LdwStatus.Resolve(msg.ldw_status)
    }
    else {
      resolved.ldw_status = new LdwStatus()
    }

    if (msg.ldw_valid !== undefined) {
      resolved.ldw_valid = msg.ldw_valid;
    }
    else {
      resolved.ldw_valid = false
    }

    if (msg.srs_collosion !== undefined) {
      resolved.srs_collosion = SrsCollosion.Resolve(msg.srs_collosion)
    }
    else {
      resolved.srs_collosion = new SrsCollosion()
    }

    if (msg.extra !== undefined) {
      resolved.extra = ExtraReport.Resolve(msg.extra)
    }
    else {
      resolved.extra = new ExtraReport()
    }

    return resolved;
    }
};

module.exports = VehicleExtraReportData;
