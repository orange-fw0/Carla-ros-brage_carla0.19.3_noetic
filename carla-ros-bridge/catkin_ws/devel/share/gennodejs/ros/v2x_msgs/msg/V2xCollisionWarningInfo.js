// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2xCollisionWarningData = require('./V2xCollisionWarningData.js');

//-----------------------------------------------------------

class V2xCollisionWarningInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.v2x_collision_warning_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('v2x_collision_warning_data')) {
        this.v2x_collision_warning_data = initObj.v2x_collision_warning_data
      }
      else {
        this.v2x_collision_warning_data = new V2xCollisionWarningData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xCollisionWarningInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [v2x_collision_warning_data]
    bufferOffset = V2xCollisionWarningData.serialize(obj.v2x_collision_warning_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xCollisionWarningInfo
    let len;
    let data = new V2xCollisionWarningInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [v2x_collision_warning_data]
    data.v2x_collision_warning_data = V2xCollisionWarningData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += V2xCollisionWarningData.getMessageSize(object.v2x_collision_warning_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xCollisionWarningInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc9c0babfcfa3077953b61f3ac92e573';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 V2X_COLLISION_WARNING_DATA = 1
    uint8 available
    v2x_msgs/V2xCollisionWarningData v2x_collision_warning_data
    
    ================================================================================
    MSG: v2x_msgs/V2xCollisionWarningData
    int32[] id
    string warning
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xCollisionWarningInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.v2x_collision_warning_data !== undefined) {
      resolved.v2x_collision_warning_data = V2xCollisionWarningData.Resolve(msg.v2x_collision_warning_data)
    }
    else {
      resolved.v2x_collision_warning_data = new V2xCollisionWarningData()
    }

    return resolved;
    }
};

// Constants for message
V2xCollisionWarningInfo.Constants = {
  V2X_COLLISION_WARNING_DATA: 1,
}

module.exports = V2xCollisionWarningInfo;
