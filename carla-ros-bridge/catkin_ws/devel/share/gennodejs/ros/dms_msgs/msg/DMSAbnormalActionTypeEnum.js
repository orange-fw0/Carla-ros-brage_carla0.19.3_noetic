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

class DMSAbnormalActionTypeEnum {
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
    // Serializes a message object of type DMSAbnormalActionTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSAbnormalActionTypeEnum
    let len;
    let data = new DMSAbnormalActionTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSAbnormalActionTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61f8ca89ffba856d7bfec3e8a3142b36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 NORMAL = 1
    uint16 EYE_CLOSE = 2
    uint16 YAWN = 4
    uint16 DRINK = 8
    uint16 PHONE_CALL = 16
    uint16 SMOKE = 32
    uint16 EAT = 64
    uint16 PHONE_HAND = 128
    uint16 PHONE_EAR = 256
    uint16 RESERVED1 = 512
    uint16 RESERVED2 = 1024
    uint16 RESERVED3 = 2048
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSAbnormalActionTypeEnum(null);
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
DMSAbnormalActionTypeEnum.Constants = {
  NORMAL: 1,
  EYE_CLOSE: 2,
  YAWN: 4,
  DRINK: 8,
  PHONE_CALL: 16,
  SMOKE: 32,
  EAT: 64,
  PHONE_HAND: 128,
  PHONE_EAR: 256,
  RESERVED1: 512,
  RESERVED2: 1024,
  RESERVED3: 2048,
}

module.exports = DMSAbnormalActionTypeEnum;
