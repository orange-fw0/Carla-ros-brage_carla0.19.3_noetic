// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AebSysFaultStatus {
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
    // Serializes a message object of type AebSysFaultStatus
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AebSysFaultStatus
    let len;
    let data = new AebSysFaultStatus(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AebSysFaultStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '751d882f63f405b4529da3ed221c5804';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AEB_SYS_FALULT_NO_ERROR = 0
    uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1
    uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2
    uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3
    uint8 AEB_SYS_FALULT_RESERVED1 = 4
    uint8 AEB_SYS_FALULT_RESERVED2 = 5
    uint8 AEB_SYS_FALULT_RESERVED3 = 6
    uint8 AEB_SYS_FALULT_RESERVED4 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AebSysFaultStatus(null);
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
AebSysFaultStatus.Constants = {
  AEB_SYS_FALULT_NO_ERROR: 0,
  AEB_SYS_FALULT_PERFORMANCE_DEGRADATION: 1,
  AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE: 2,
  AEB_SYS_FALULT_SERVICE_REQUIRED: 3,
  AEB_SYS_FALULT_RESERVED1: 4,
  AEB_SYS_FALULT_RESERVED2: 5,
  AEB_SYS_FALULT_RESERVED3: 6,
  AEB_SYS_FALULT_RESERVED4: 7,
}

module.exports = AebSysFaultStatus;
