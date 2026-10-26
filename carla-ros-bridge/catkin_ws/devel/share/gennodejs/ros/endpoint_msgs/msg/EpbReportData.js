// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WorkType = require('./WorkType.js');
let EpbStatus = require('./EpbStatus.js');
let AutoHoldStatus = require('./AutoHoldStatus.js');

//-----------------------------------------------------------

class EpbReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.driver_work_type = null;
      this.epb_report = null;
      this.auto_hold_state = null;
      this.vehicle_hold_active = null;
      this.overide = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('driver_work_type')) {
        this.driver_work_type = initObj.driver_work_type
      }
      else {
        this.driver_work_type = new WorkType();
      }
      if (initObj.hasOwnProperty('epb_report')) {
        this.epb_report = initObj.epb_report
      }
      else {
        this.epb_report = new EpbStatus();
      }
      if (initObj.hasOwnProperty('auto_hold_state')) {
        this.auto_hold_state = initObj.auto_hold_state
      }
      else {
        this.auto_hold_state = new AutoHoldStatus();
      }
      if (initObj.hasOwnProperty('vehicle_hold_active')) {
        this.vehicle_hold_active = initObj.vehicle_hold_active
      }
      else {
        this.vehicle_hold_active = false;
      }
      if (initObj.hasOwnProperty('overide')) {
        this.overide = initObj.overide
      }
      else {
        this.overide = false;
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
    // Serializes a message object of type EpbReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [driver_work_type]
    bufferOffset = WorkType.serialize(obj.driver_work_type, buffer, bufferOffset);
    // Serialize message field [epb_report]
    bufferOffset = EpbStatus.serialize(obj.epb_report, buffer, bufferOffset);
    // Serialize message field [auto_hold_state]
    bufferOffset = AutoHoldStatus.serialize(obj.auto_hold_state, buffer, bufferOffset);
    // Serialize message field [vehicle_hold_active]
    bufferOffset = _serializer.bool(obj.vehicle_hold_active, buffer, bufferOffset);
    // Serialize message field [overide]
    bufferOffset = _serializer.bool(obj.overide, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EpbReportData
    let len;
    let data = new EpbReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [driver_work_type]
    data.driver_work_type = WorkType.deserialize(buffer, bufferOffset);
    // Deserialize message field [epb_report]
    data.epb_report = EpbStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_hold_state]
    data.auto_hold_state = AutoHoldStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_hold_active]
    data.vehicle_hold_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [overide]
    data.overide = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/EpbReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce462684a53c617db505f9faac2ca167';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/EpbStatus epb_report
    endpoint_msgs/AutoHoldStatus auto_hold_state
    bool vehicle_hold_active
    bool overide
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WorkType
    uint8 MANUALPILOT = 0
    uint8 AUTOPILOT_PILOT = 1
    uint8 AUTOPILOT_APA = 2
    uint8 AUTOPILOT_ACC = 3
    uint8 AUTOPILOT_RESERVED1 = 4
    uint8 AUTOPILOT_RESERVED2 = 5
    uint8 AUTOPILOT_RESERVED3 = 6
    uint8 AUTOPILOT_RESERVED4 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/EpbStatus
    uint8 RELEASE = 0
    uint8 PULLING = 1
    uint8 PULL = 2
    uint8 RELEASING = 3
    uint8 RESERVED = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AutoHoldStatus
    uint8 SYS_OFF = 0
    uint8 SYS_INTERVENTION = 1
    uint8 SYS_STANDBY = 2
    uint8 SYS_ERR = 3
    uint8 RESERVED = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EpbReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.driver_work_type !== undefined) {
      resolved.driver_work_type = WorkType.Resolve(msg.driver_work_type)
    }
    else {
      resolved.driver_work_type = new WorkType()
    }

    if (msg.epb_report !== undefined) {
      resolved.epb_report = EpbStatus.Resolve(msg.epb_report)
    }
    else {
      resolved.epb_report = new EpbStatus()
    }

    if (msg.auto_hold_state !== undefined) {
      resolved.auto_hold_state = AutoHoldStatus.Resolve(msg.auto_hold_state)
    }
    else {
      resolved.auto_hold_state = new AutoHoldStatus()
    }

    if (msg.vehicle_hold_active !== undefined) {
      resolved.vehicle_hold_active = msg.vehicle_hold_active;
    }
    else {
      resolved.vehicle_hold_active = false
    }

    if (msg.overide !== undefined) {
      resolved.overide = msg.overide;
    }
    else {
      resolved.overide = false
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

module.exports = EpbReportData;
