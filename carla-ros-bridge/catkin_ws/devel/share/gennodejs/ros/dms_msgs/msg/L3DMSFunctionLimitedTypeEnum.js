// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class L3DMSFunctionLimitedTypeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type L3DMSFunctionLimitedTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type L3DMSFunctionLimitedTypeEnum
    let len;
    let data = new L3DMSFunctionLimitedTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/L3DMSFunctionLimitedTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0aee695f20be5e0034b84bc87bcea8ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new L3DMSFunctionLimitedTypeEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
L3DMSFunctionLimitedTypeEnum.Constants = {
  DMS_NORMAL_FUNCTION_STATE: 0,
  DMS_LIMITED_FUNCTION_STATE: 1,
  DMS_FUNCTION_LIMIT_RESERVERD_STATE: 2,
}

module.exports = L3DMSFunctionLimitedTypeEnum;
