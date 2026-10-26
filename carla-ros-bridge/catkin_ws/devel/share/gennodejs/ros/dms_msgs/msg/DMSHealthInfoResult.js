// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSHeartRate = require('./DMSHeartRate.js');
let RespiratoryRate = require('./RespiratoryRate.js');

//-----------------------------------------------------------

class DMSHealthInfoResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heart_rate_result = null;
      this.respiratory_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('heart_rate_result')) {
        this.heart_rate_result = initObj.heart_rate_result
      }
      else {
        this.heart_rate_result = new DMSHeartRate();
      }
      if (initObj.hasOwnProperty('respiratory_rate')) {
        this.respiratory_rate = initObj.respiratory_rate
      }
      else {
        this.respiratory_rate = new RespiratoryRate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSHealthInfoResult
    // Serialize message field [heart_rate_result]
    bufferOffset = DMSHeartRate.serialize(obj.heart_rate_result, buffer, bufferOffset);
    // Serialize message field [respiratory_rate]
    bufferOffset = RespiratoryRate.serialize(obj.respiratory_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSHealthInfoResult
    let len;
    let data = new DMSHealthInfoResult(null);
    // Deserialize message field [heart_rate_result]
    data.heart_rate_result = DMSHeartRate.deserialize(buffer, bufferOffset);
    // Deserialize message field [respiratory_rate]
    data.respiratory_rate = RespiratoryRate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSHealthInfoResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '709a0586a1fbf002e6c59aea0e7e5ca8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    dms_msgs/DMSHeartRate heart_rate_result
    dms_msgs/RespiratoryRate respiratory_rate
    
    ================================================================================
    MSG: dms_msgs/DMSHeartRate
    uint8 CURRENT_RATE_AVAILABLE = 1
    uint8 MAX_RATE_AVAILABLE = 2
    uint8 MIN_RATE_AVAILABLE = 4
    uint8 AVERAGE_RATE_AVAILABLE = 8
    uint8 HEART_RATE_VARIABILITY_AVAILABLE = 16
    uint8 RESERVED = 32
    uint8 available
    float32 current_rate
    float32 max_heart_rate
    float32 min_heart_rate
    float32 average_rate
    float32 heart_rate_variability
    float32 reserved
    
    ================================================================================
    MSG: dms_msgs/RespiratoryRate
    uint8 RESP_RATE_AVAILABLE = 1
    uint8 RESERVED = 2
    uint8 RESERVED1 = 4
    uint8 available
    float32 resp_rate
    float32 reserved
    float32 reserved1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSHealthInfoResult(null);
    if (msg.heart_rate_result !== undefined) {
      resolved.heart_rate_result = DMSHeartRate.Resolve(msg.heart_rate_result)
    }
    else {
      resolved.heart_rate_result = new DMSHeartRate()
    }

    if (msg.respiratory_rate !== undefined) {
      resolved.respiratory_rate = RespiratoryRate.Resolve(msg.respiratory_rate)
    }
    else {
      resolved.respiratory_rate = new RespiratoryRate()
    }

    return resolved;
    }
};

module.exports = DMSHealthInfoResult;
