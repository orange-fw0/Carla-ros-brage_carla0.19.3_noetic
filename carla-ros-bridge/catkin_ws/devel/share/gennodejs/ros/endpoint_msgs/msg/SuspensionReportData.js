// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HeightLevel = require('./HeightLevel.js');
let SuspensionHeight = require('./SuspensionHeight.js');
let SuspensionHeightValid = require('./SuspensionHeightValid.js');
let FailureStatus = require('./FailureStatus.js');
let SuspensionAdjustStatus = require('./SuspensionAdjustStatus.js');

//-----------------------------------------------------------

class SuspensionReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.calibration_completed = null;
      this.requested_target_level = null;
      this.cur_height_status = null;
      this.suspension_height = null;
      this.suspension_hight_valid = null;
      this.failure_status = null;
      this.reserved1 = null;
      this.reserved2 = null;
      this.adjust_status = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('calibration_completed')) {
        this.calibration_completed = initObj.calibration_completed
      }
      else {
        this.calibration_completed = false;
      }
      if (initObj.hasOwnProperty('requested_target_level')) {
        this.requested_target_level = initObj.requested_target_level
      }
      else {
        this.requested_target_level = new HeightLevel();
      }
      if (initObj.hasOwnProperty('cur_height_status')) {
        this.cur_height_status = initObj.cur_height_status
      }
      else {
        this.cur_height_status = new HeightLevel();
      }
      if (initObj.hasOwnProperty('suspension_height')) {
        this.suspension_height = initObj.suspension_height
      }
      else {
        this.suspension_height = new SuspensionHeight();
      }
      if (initObj.hasOwnProperty('suspension_hight_valid')) {
        this.suspension_hight_valid = initObj.suspension_hight_valid
      }
      else {
        this.suspension_hight_valid = new SuspensionHeightValid();
      }
      if (initObj.hasOwnProperty('failure_status')) {
        this.failure_status = initObj.failure_status
      }
      else {
        this.failure_status = new FailureStatus();
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0.0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0.0;
      }
      if (initObj.hasOwnProperty('adjust_status')) {
        this.adjust_status = initObj.adjust_status
      }
      else {
        this.adjust_status = new SuspensionAdjustStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SuspensionReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [calibration_completed]
    bufferOffset = _serializer.bool(obj.calibration_completed, buffer, bufferOffset);
    // Serialize message field [requested_target_level]
    bufferOffset = HeightLevel.serialize(obj.requested_target_level, buffer, bufferOffset);
    // Serialize message field [cur_height_status]
    bufferOffset = HeightLevel.serialize(obj.cur_height_status, buffer, bufferOffset);
    // Serialize message field [suspension_height]
    bufferOffset = SuspensionHeight.serialize(obj.suspension_height, buffer, bufferOffset);
    // Serialize message field [suspension_hight_valid]
    bufferOffset = SuspensionHeightValid.serialize(obj.suspension_hight_valid, buffer, bufferOffset);
    // Serialize message field [failure_status]
    bufferOffset = FailureStatus.serialize(obj.failure_status, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float32(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.float32(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [adjust_status]
    bufferOffset = SuspensionAdjustStatus.serialize(obj.adjust_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuspensionReportData
    let len;
    let data = new SuspensionReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [calibration_completed]
    data.calibration_completed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [requested_target_level]
    data.requested_target_level = HeightLevel.deserialize(buffer, bufferOffset);
    // Deserialize message field [cur_height_status]
    data.cur_height_status = HeightLevel.deserialize(buffer, bufferOffset);
    // Deserialize message field [suspension_height]
    data.suspension_height = SuspensionHeight.deserialize(buffer, bufferOffset);
    // Deserialize message field [suspension_hight_valid]
    data.suspension_hight_valid = SuspensionHeightValid.deserialize(buffer, bufferOffset);
    // Deserialize message field [failure_status]
    data.failure_status = FailureStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [adjust_status]
    data.adjust_status = SuspensionAdjustStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SuspensionReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edb923c971181c057278446d61875f55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    bool calibration_completed
    endpoint_msgs/HeightLevel requested_target_level
    endpoint_msgs/HeightLevel cur_height_status
    endpoint_msgs/SuspensionHeight suspension_height
    endpoint_msgs/SuspensionHeightValid suspension_hight_valid
    endpoint_msgs/FailureStatus failure_status
    float32 reserved1
    float32 reserved2
    endpoint_msgs/SuspensionAdjustStatus adjust_status
    
    ================================================================================
    MSG: endpoint_msgs/HeightLevel
    uint8 NONE = 0
    uint8 LEVEL1 = 1
    uint8 LEVEL2 = 2
    uint8 LEVEL3 = 3
    uint8 LEVEL4 = 4
    uint8 LEVEL5 = 5
    uint8 LEVEL6 = 6
    uint8 LEVEL7 = 7
    uint8 LEVEL8 = 8
    uint8 LEVEL9 = 9
    uint8 LEVEL10 = 10
    uint8 RESERVED1 = 11
    uint8 RESERVED2 = 12
    uint8 RESERVED3 = 13
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionHeight
    int8 front_left
    int8 front_right
    int8 rear_left
    int8 rear_right
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionHeightValid
    bool front_left
    bool front_right
    bool rear_left
    bool rear_right
    
    ================================================================================
    MSG: endpoint_msgs/FailureStatus
    uint8 NOFAILURE = 0
    uint8 TEMPORARYFAILURE = 1
    uint8 FAILURE = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionAdjustStatus
    uint8 NOACTION = 0
    uint8 LOWERING = 1
    uint8 LIFTING = 2
    uint8 PENDING = 3
    uint8 ADJUSTING = 4
    uint8 RESERVED = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SuspensionReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.calibration_completed !== undefined) {
      resolved.calibration_completed = msg.calibration_completed;
    }
    else {
      resolved.calibration_completed = false
    }

    if (msg.requested_target_level !== undefined) {
      resolved.requested_target_level = HeightLevel.Resolve(msg.requested_target_level)
    }
    else {
      resolved.requested_target_level = new HeightLevel()
    }

    if (msg.cur_height_status !== undefined) {
      resolved.cur_height_status = HeightLevel.Resolve(msg.cur_height_status)
    }
    else {
      resolved.cur_height_status = new HeightLevel()
    }

    if (msg.suspension_height !== undefined) {
      resolved.suspension_height = SuspensionHeight.Resolve(msg.suspension_height)
    }
    else {
      resolved.suspension_height = new SuspensionHeight()
    }

    if (msg.suspension_hight_valid !== undefined) {
      resolved.suspension_hight_valid = SuspensionHeightValid.Resolve(msg.suspension_hight_valid)
    }
    else {
      resolved.suspension_hight_valid = new SuspensionHeightValid()
    }

    if (msg.failure_status !== undefined) {
      resolved.failure_status = FailureStatus.Resolve(msg.failure_status)
    }
    else {
      resolved.failure_status = new FailureStatus()
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0.0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0.0
    }

    if (msg.adjust_status !== undefined) {
      resolved.adjust_status = SuspensionAdjustStatus.Resolve(msg.adjust_status)
    }
    else {
      resolved.adjust_status = new SuspensionAdjustStatus()
    }

    return resolved;
    }
};

module.exports = SuspensionReportData;
