// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSFunctionLimitedTypeEnum = require('./DMSFunctionLimitedTypeEnum.js');
let L2DMSFunctionLimitedTypeEnum = require('./L2DMSFunctionLimitedTypeEnum.js');
let L3DMSFunctionLimitedTypeEnum = require('./L3DMSFunctionLimitedTypeEnum.js');

//-----------------------------------------------------------

class DMSFuncLimitedResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.function_limited_type = null;
      this.l2_function_limited_type = null;
      this.l3_function_limited_type = null;
      this.reserved = null;
      this.func_limited_params = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('function_limited_type')) {
        this.function_limited_type = initObj.function_limited_type
      }
      else {
        this.function_limited_type = new DMSFunctionLimitedTypeEnum();
      }
      if (initObj.hasOwnProperty('l2_function_limited_type')) {
        this.l2_function_limited_type = initObj.l2_function_limited_type
      }
      else {
        this.l2_function_limited_type = new L2DMSFunctionLimitedTypeEnum();
      }
      if (initObj.hasOwnProperty('l3_function_limited_type')) {
        this.l3_function_limited_type = initObj.l3_function_limited_type
      }
      else {
        this.l3_function_limited_type = new L3DMSFunctionLimitedTypeEnum();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('func_limited_params')) {
        this.func_limited_params = initObj.func_limited_params
      }
      else {
        this.func_limited_params = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFuncLimitedResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [function_limited_type]
    bufferOffset = DMSFunctionLimitedTypeEnum.serialize(obj.function_limited_type, buffer, bufferOffset);
    // Serialize message field [l2_function_limited_type]
    bufferOffset = L2DMSFunctionLimitedTypeEnum.serialize(obj.l2_function_limited_type, buffer, bufferOffset);
    // Serialize message field [l3_function_limited_type]
    bufferOffset = L3DMSFunctionLimitedTypeEnum.serialize(obj.l3_function_limited_type, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    // Serialize message field [func_limited_params]
    bufferOffset = _serializer.string(obj.func_limited_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFuncLimitedResult
    let len;
    let data = new DMSFuncLimitedResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [function_limited_type]
    data.function_limited_type = DMSFunctionLimitedTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l2_function_limited_type]
    data.l2_function_limited_type = L2DMSFunctionLimitedTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l3_function_limited_type]
    data.l3_function_limited_type = L3DMSFunctionLimitedTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [func_limited_params]
    data.func_limited_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.func_limited_params);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFuncLimitedResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f27f64c429ae56367dec0d4320ccb5d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 FUNCTION_LIMITED_TYPE_AVAILABLE = 1
    uint8 L2_FUNCTION_LIMITED_TYPE_AVAILABLE = 2
    uint8 L3_FUNCTION_LIMITED_TYPE_AVAILABLE = 4
    uint8 RESERVED = 8
    uint8 available
    dms_msgs/DMSFunctionLimitedTypeEnum function_limited_type
    dms_msgs/L2DMSFunctionLimitedTypeEnum l2_function_limited_type
    dms_msgs/L3DMSFunctionLimitedTypeEnum l3_function_limited_type
    uint8 reserved
    string func_limited_params
    
    ================================================================================
    MSG: dms_msgs/DMSFunctionLimitedTypeEnum
    uint8 DMS_NORMAL_FUNCTION_STATE = 0
    uint8 DMS_LIMITED_FUNCTION_STATE = 1
    uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSFunctionLimitedTypeEnum
    uint8 DMS_NORMAL_FUNCTION_STATE = 0
    uint8 DMS_LIMITED_FUNCTION_STATE = 1
    uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSFunctionLimitedTypeEnum
    uint8 DMS_NORMAL_FUNCTION_STATE = 0
    uint8 DMS_LIMITED_FUNCTION_STATE = 1
    uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFuncLimitedResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.function_limited_type !== undefined) {
      resolved.function_limited_type = DMSFunctionLimitedTypeEnum.Resolve(msg.function_limited_type)
    }
    else {
      resolved.function_limited_type = new DMSFunctionLimitedTypeEnum()
    }

    if (msg.l2_function_limited_type !== undefined) {
      resolved.l2_function_limited_type = L2DMSFunctionLimitedTypeEnum.Resolve(msg.l2_function_limited_type)
    }
    else {
      resolved.l2_function_limited_type = new L2DMSFunctionLimitedTypeEnum()
    }

    if (msg.l3_function_limited_type !== undefined) {
      resolved.l3_function_limited_type = L3DMSFunctionLimitedTypeEnum.Resolve(msg.l3_function_limited_type)
    }
    else {
      resolved.l3_function_limited_type = new L3DMSFunctionLimitedTypeEnum()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.func_limited_params !== undefined) {
      resolved.func_limited_params = msg.func_limited_params;
    }
    else {
      resolved.func_limited_params = ''
    }

    return resolved;
    }
};

// Constants for message
DMSFuncLimitedResult.Constants = {
  UN_AVAILABLE: 0,
  FUNCTION_LIMITED_TYPE_AVAILABLE: 1,
  L2_FUNCTION_LIMITED_TYPE_AVAILABLE: 2,
  L3_FUNCTION_LIMITED_TYPE_AVAILABLE: 4,
  RESERVED: 8,
}

module.exports = DMSFuncLimitedResult;
