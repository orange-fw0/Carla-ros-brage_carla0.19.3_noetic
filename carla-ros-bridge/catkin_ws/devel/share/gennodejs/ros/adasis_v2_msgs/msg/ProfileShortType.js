// Auto-generated. Do not edit!

// (in-package adasis_v2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProfileShortType {
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
    // Serializes a message object of type ProfileShortType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProfileShortType
    let len;
    let data = new ProfileShortType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/ProfileShortType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff195243e3bdc4f717336e14b7b79d5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CURVATURE = 1
    uint8 ROUTE_NUMBER_TYPES = 2
    uint8 SLOPE_STEP = 3
    uint8 SLOPE_LINEAR = 4
    uint8 ROAD_ACCESSIBILITY = 5
    uint8 ROAD_CONDITION = 6
    uint8 VARIABLE_SPEED_SIGN_POSITION = 7
    uint8 HEADING_CHANGE = 8
    uint8 SPEED_LIMIT_ASSIST_LOCATION = 16
    uint8 HISTORY_AVERAGE_SPEED = 18
    uint8 TRAFFIC_FLOW = 19
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProfileShortType(null);
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
ProfileShortType.Constants = {
  CURVATURE: 1,
  ROUTE_NUMBER_TYPES: 2,
  SLOPE_STEP: 3,
  SLOPE_LINEAR: 4,
  ROAD_ACCESSIBILITY: 5,
  ROAD_CONDITION: 6,
  VARIABLE_SPEED_SIGN_POSITION: 7,
  HEADING_CHANGE: 8,
  SPEED_LIMIT_ASSIST_LOCATION: 16,
  HISTORY_AVERAGE_SPEED: 18,
  TRAFFIC_FLOW: 19,
}

module.exports = ProfileShortType;
