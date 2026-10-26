// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RestrictionSignTypeEnum {
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
    // Serializes a message object of type RestrictionSignTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RestrictionSignTypeEnum
    let len;
    let data = new RestrictionSignTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/RestrictionSignTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be50291993090a3423538c4109fb9e0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0
    uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1
    uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2
    uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RestrictionSignTypeEnum(null);
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
RestrictionSignTypeEnum.Constants = {
  RESTRINCTION_SIGN_TYPE_UNKNOWN: 0,
  RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT: 1,
  RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT: 2,
  RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT: 3,
}

module.exports = RestrictionSignTypeEnum;
