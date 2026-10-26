// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AirConditioningReportData = require('./AirConditioningReportData.js');

//-----------------------------------------------------------

class AirConditioningReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.air_conditioning_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('air_conditioning_data')) {
        this.air_conditioning_data = initObj.air_conditioning_data
      }
      else {
        this.air_conditioning_data = new AirConditioningReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AirConditioningReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [air_conditioning_data]
    bufferOffset = AirConditioningReportData.serialize(obj.air_conditioning_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AirConditioningReport
    let len;
    let data = new AirConditioningReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [air_conditioning_data]
    data.air_conditioning_data = AirConditioningReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AirConditioningReportData.getMessageSize(object.air_conditioning_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AirConditioningReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f31394351cc00a250b32576f38af64c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AIR_CONDITIONING_DATA = 1
    uint8 available
    endpoint_msgs/AirConditioningReportData air_conditioning_data
    
    ================================================================================
    MSG: endpoint_msgs/AirConditioningReportData
    uint64 timestamp_us
    endpoint_msgs/AirOutletMode[] air_outlet_mode_array
    bool air_outlet_mode_array_valid
    endpoint_msgs/AirTempMode[] air_temp_mode_array
    bool air_temp_mode_array_valid
    endpoint_msgs/AirDefrostMode[] air_defrost_mode_array
    bool air_defrost_mode_array_valid
    endpoint_msgs/AirWorkStatus air_work_status
    
    ================================================================================
    MSG: endpoint_msgs/AirOutletMode
    uint8 AIR_OUTLET_MODE_FACE = 0
    uint8 AIR_OUTLET_MODE_FOOT = 1
    uint8 AIR_OUTLET_MODE_BODY = 2
    uint8 AIR_OUTLET_MODE_KNEE = 3
    uint8 AIR_OUTLET_MODE_AUTO = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AirTempMode
    uint8 AIR_TEMP_MODE_NORMAL = 0
    uint8 AIR_TEMP_MODE_COLD = 1
    uint8 AIR_TEMP_MODE_HOT = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AirDefrostMode
    uint8 AIR_DEFROS_MODE_OFF = 0
    uint8 AIR_DEFROS_MODE_FONT = 1
    uint8 AIR_DEFROS_MODE_REAR = 2
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AirWorkStatus
    uint8 AIR_WORK_STATUS_NONE = 0
    uint8 AIR_WORK_STATUS_CLOSE = 1
    uint8 AIR_WORK_STATUS_OPEN = 2
    uint8 AIR_WORK_STATUS_INVALID = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AirConditioningReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.air_conditioning_data !== undefined) {
      resolved.air_conditioning_data = AirConditioningReportData.Resolve(msg.air_conditioning_data)
    }
    else {
      resolved.air_conditioning_data = new AirConditioningReportData()
    }

    return resolved;
    }
};

// Constants for message
AirConditioningReport.Constants = {
  AIR_CONDITIONING_DATA: 1,
}

module.exports = AirConditioningReport;
