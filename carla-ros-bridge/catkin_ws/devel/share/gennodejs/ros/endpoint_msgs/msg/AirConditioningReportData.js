// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AirOutletMode = require('./AirOutletMode.js');
let AirTempMode = require('./AirTempMode.js');
let AirDefrostMode = require('./AirDefrostMode.js');
let AirWorkStatus = require('./AirWorkStatus.js');

//-----------------------------------------------------------

class AirConditioningReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.air_outlet_mode_array = null;
      this.air_outlet_mode_array_valid = null;
      this.air_temp_mode_array = null;
      this.air_temp_mode_array_valid = null;
      this.air_defrost_mode_array = null;
      this.air_defrost_mode_array_valid = null;
      this.air_work_status = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('air_outlet_mode_array')) {
        this.air_outlet_mode_array = initObj.air_outlet_mode_array
      }
      else {
        this.air_outlet_mode_array = [];
      }
      if (initObj.hasOwnProperty('air_outlet_mode_array_valid')) {
        this.air_outlet_mode_array_valid = initObj.air_outlet_mode_array_valid
      }
      else {
        this.air_outlet_mode_array_valid = false;
      }
      if (initObj.hasOwnProperty('air_temp_mode_array')) {
        this.air_temp_mode_array = initObj.air_temp_mode_array
      }
      else {
        this.air_temp_mode_array = [];
      }
      if (initObj.hasOwnProperty('air_temp_mode_array_valid')) {
        this.air_temp_mode_array_valid = initObj.air_temp_mode_array_valid
      }
      else {
        this.air_temp_mode_array_valid = false;
      }
      if (initObj.hasOwnProperty('air_defrost_mode_array')) {
        this.air_defrost_mode_array = initObj.air_defrost_mode_array
      }
      else {
        this.air_defrost_mode_array = [];
      }
      if (initObj.hasOwnProperty('air_defrost_mode_array_valid')) {
        this.air_defrost_mode_array_valid = initObj.air_defrost_mode_array_valid
      }
      else {
        this.air_defrost_mode_array_valid = false;
      }
      if (initObj.hasOwnProperty('air_work_status')) {
        this.air_work_status = initObj.air_work_status
      }
      else {
        this.air_work_status = new AirWorkStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AirConditioningReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [air_outlet_mode_array]
    // Serialize the length for message field [air_outlet_mode_array]
    bufferOffset = _serializer.uint32(obj.air_outlet_mode_array.length, buffer, bufferOffset);
    obj.air_outlet_mode_array.forEach((val) => {
      bufferOffset = AirOutletMode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [air_outlet_mode_array_valid]
    bufferOffset = _serializer.bool(obj.air_outlet_mode_array_valid, buffer, bufferOffset);
    // Serialize message field [air_temp_mode_array]
    // Serialize the length for message field [air_temp_mode_array]
    bufferOffset = _serializer.uint32(obj.air_temp_mode_array.length, buffer, bufferOffset);
    obj.air_temp_mode_array.forEach((val) => {
      bufferOffset = AirTempMode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [air_temp_mode_array_valid]
    bufferOffset = _serializer.bool(obj.air_temp_mode_array_valid, buffer, bufferOffset);
    // Serialize message field [air_defrost_mode_array]
    // Serialize the length for message field [air_defrost_mode_array]
    bufferOffset = _serializer.uint32(obj.air_defrost_mode_array.length, buffer, bufferOffset);
    obj.air_defrost_mode_array.forEach((val) => {
      bufferOffset = AirDefrostMode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [air_defrost_mode_array_valid]
    bufferOffset = _serializer.bool(obj.air_defrost_mode_array_valid, buffer, bufferOffset);
    // Serialize message field [air_work_status]
    bufferOffset = AirWorkStatus.serialize(obj.air_work_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AirConditioningReportData
    let len;
    let data = new AirConditioningReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [air_outlet_mode_array]
    // Deserialize array length for message field [air_outlet_mode_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.air_outlet_mode_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.air_outlet_mode_array[i] = AirOutletMode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [air_outlet_mode_array_valid]
    data.air_outlet_mode_array_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [air_temp_mode_array]
    // Deserialize array length for message field [air_temp_mode_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.air_temp_mode_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.air_temp_mode_array[i] = AirTempMode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [air_temp_mode_array_valid]
    data.air_temp_mode_array_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [air_defrost_mode_array]
    // Deserialize array length for message field [air_defrost_mode_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.air_defrost_mode_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.air_defrost_mode_array[i] = AirDefrostMode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [air_defrost_mode_array_valid]
    data.air_defrost_mode_array_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [air_work_status]
    data.air_work_status = AirWorkStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.air_outlet_mode_array.length;
    length += object.air_temp_mode_array.length;
    length += object.air_defrost_mode_array.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AirConditioningReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cfae2aa89eb0aebe1c9c7535829c196';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AirConditioningReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.air_outlet_mode_array !== undefined) {
      resolved.air_outlet_mode_array = new Array(msg.air_outlet_mode_array.length);
      for (let i = 0; i < resolved.air_outlet_mode_array.length; ++i) {
        resolved.air_outlet_mode_array[i] = AirOutletMode.Resolve(msg.air_outlet_mode_array[i]);
      }
    }
    else {
      resolved.air_outlet_mode_array = []
    }

    if (msg.air_outlet_mode_array_valid !== undefined) {
      resolved.air_outlet_mode_array_valid = msg.air_outlet_mode_array_valid;
    }
    else {
      resolved.air_outlet_mode_array_valid = false
    }

    if (msg.air_temp_mode_array !== undefined) {
      resolved.air_temp_mode_array = new Array(msg.air_temp_mode_array.length);
      for (let i = 0; i < resolved.air_temp_mode_array.length; ++i) {
        resolved.air_temp_mode_array[i] = AirTempMode.Resolve(msg.air_temp_mode_array[i]);
      }
    }
    else {
      resolved.air_temp_mode_array = []
    }

    if (msg.air_temp_mode_array_valid !== undefined) {
      resolved.air_temp_mode_array_valid = msg.air_temp_mode_array_valid;
    }
    else {
      resolved.air_temp_mode_array_valid = false
    }

    if (msg.air_defrost_mode_array !== undefined) {
      resolved.air_defrost_mode_array = new Array(msg.air_defrost_mode_array.length);
      for (let i = 0; i < resolved.air_defrost_mode_array.length; ++i) {
        resolved.air_defrost_mode_array[i] = AirDefrostMode.Resolve(msg.air_defrost_mode_array[i]);
      }
    }
    else {
      resolved.air_defrost_mode_array = []
    }

    if (msg.air_defrost_mode_array_valid !== undefined) {
      resolved.air_defrost_mode_array_valid = msg.air_defrost_mode_array_valid;
    }
    else {
      resolved.air_defrost_mode_array_valid = false
    }

    if (msg.air_work_status !== undefined) {
      resolved.air_work_status = AirWorkStatus.Resolve(msg.air_work_status)
    }
    else {
      resolved.air_work_status = new AirWorkStatus()
    }

    return resolved;
    }
};

module.exports = AirConditioningReportData;
