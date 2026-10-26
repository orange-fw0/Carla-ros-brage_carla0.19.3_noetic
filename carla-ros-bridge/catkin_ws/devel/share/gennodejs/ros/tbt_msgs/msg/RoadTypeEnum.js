// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RoadTypeEnum {
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
    // Serializes a message object of type RoadTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadTypeEnum
    let len;
    let data = new RoadTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/RoadTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1a5ee1a2d787fe532cc9820bd909bff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LinkTypeCommon = 0
    uint8 LinkTypeFerry = 1
    uint8 LinkTypeTunnel = 2
    uint8 LinkTypeBridge = 3
    uint8 LinkTypeElevatedRd = 4
    uint8 LinkTypeNull = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadTypeEnum(null);
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
RoadTypeEnum.Constants = {
  LINKTYPECOMMON: 0,
  LINKTYPEFERRY: 1,
  LINKTYPETUNNEL: 2,
  LINKTYPEBRIDGE: 3,
  LINKTYPEELEVATEDRD: 4,
  LINKTYPENULL: 255,
}

module.exports = RoadTypeEnum;
