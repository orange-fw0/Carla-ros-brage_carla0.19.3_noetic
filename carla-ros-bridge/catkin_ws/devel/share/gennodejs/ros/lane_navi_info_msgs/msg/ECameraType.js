// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ECameraType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ECameraType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ECameraType
    let len;
    let data = new ECameraType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/ECameraType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f9c792de18abf7ccc45063122f6085b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ECAMERA_SPEED = 0
    uint8 ECAMERA_MONITOR = 1
    uint8 ECAMERA_TRAFIC_LIGHT = 2
    uint8 ECAMERA_RULE = 3
    uint8 ECAMERA_BUS = 4
    uint8 ECAMERA_EMERGENCY = 5
    uint8 ECAMERA_NON_MOTORIZED = 6
    uint8 ECAMERA_RANGE = 7
    uint8 ECAMERA_INTER_SPEED_START = 8
    uint8 ECAMERA_INTER_SPEED_END = 9
    uint8 ECAMERA_UNKNOWN = 255
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ECameraType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
ECameraType.Constants = {
  ECAMERA_SPEED: 0,
  ECAMERA_MONITOR: 1,
  ECAMERA_TRAFIC_LIGHT: 2,
  ECAMERA_RULE: 3,
  ECAMERA_BUS: 4,
  ECAMERA_EMERGENCY: 5,
  ECAMERA_NON_MOTORIZED: 6,
  ECAMERA_RANGE: 7,
  ECAMERA_INTER_SPEED_START: 8,
  ECAMERA_INTER_SPEED_END: 9,
  ECAMERA_UNKNOWN: 255,
}

module.exports = ECameraType;
