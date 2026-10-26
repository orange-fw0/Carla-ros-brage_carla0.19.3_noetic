// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ECameraType = require('./ECameraType.js');

//-----------------------------------------------------------

class SDCameraInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.ecamera_type = null;
      this.speed_limit_value = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('ecamera_type')) {
        this.ecamera_type = initObj.ecamera_type
      }
      else {
        this.ecamera_type = new ECameraType();
      }
      if (initObj.hasOwnProperty('speed_limit_value')) {
        this.speed_limit_value = initObj.speed_limit_value
      }
      else {
        this.speed_limit_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDCameraInfo
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    // Serialize message field [ecamera_type]
    bufferOffset = ECameraType.serialize(obj.ecamera_type, buffer, bufferOffset);
    // Serialize message field [speed_limit_value]
    bufferOffset = _serializer.uint32(obj.speed_limit_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDCameraInfo
    let len;
    let data = new SDCameraInfo(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ecamera_type]
    data.ecamera_type = ECameraType.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_limit_value]
    data.speed_limit_value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDCameraInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3087adc6327518167dcd0f490d93b989';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 offset
    lane_navi_info_msgs/ECameraType ecamera_type
    uint32 speed_limit_value
    
    ================================================================================
    MSG: lane_navi_info_msgs/ECameraType
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
    const resolved = new SDCameraInfo(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.ecamera_type !== undefined) {
      resolved.ecamera_type = ECameraType.Resolve(msg.ecamera_type)
    }
    else {
      resolved.ecamera_type = new ECameraType()
    }

    if (msg.speed_limit_value !== undefined) {
      resolved.speed_limit_value = msg.speed_limit_value;
    }
    else {
      resolved.speed_limit_value = 0
    }

    return resolved;
    }
};

module.exports = SDCameraInfo;
