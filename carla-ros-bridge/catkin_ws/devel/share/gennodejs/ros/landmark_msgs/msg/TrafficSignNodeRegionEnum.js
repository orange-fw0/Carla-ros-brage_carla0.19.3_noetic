// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrafficSignNodeRegionEnum {
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
    // Serializes a message object of type TrafficSignNodeRegionEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignNodeRegionEnum
    let len;
    let data = new TrafficSignNodeRegionEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficSignNodeRegionEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e474a0bb3fae4ea18a9b6ce939732af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2
    uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3
    uint8 TRAFFIC_SIGN_NODE_REGION_US = 4
    uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignNodeRegionEnum(null);
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
TrafficSignNodeRegionEnum.Constants = {
  TRAFFIC_SIGN_NODE_REGION_INVALID: 0,
  TRAFFIC_SIGN_NODE_REGION_UNKNOWN: 1,
  TRAFFIC_SIGN_NODE_REGION_CN: 2,
  TRAFFIC_SIGN_NODE_REGION_EU: 3,
  TRAFFIC_SIGN_NODE_REGION_US: 4,
  TRAFFIC_SIGN_NODE_REGION_OTHER: 255,
}

module.exports = TrafficSignNodeRegionEnum;
