// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2xIntersectionData = require('./V2xIntersectionData.js');

//-----------------------------------------------------------

class V2xIntersectionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.v2x_intersection_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('v2x_intersection_data')) {
        this.v2x_intersection_data = initObj.v2x_intersection_data
      }
      else {
        this.v2x_intersection_data = new V2xIntersectionData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xIntersectionInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [v2x_intersection_data]
    bufferOffset = V2xIntersectionData.serialize(obj.v2x_intersection_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xIntersectionInfo
    let len;
    let data = new V2xIntersectionInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [v2x_intersection_data]
    data.v2x_intersection_data = V2xIntersectionData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xIntersectionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4914ab9e446bf43eb2315fece0a5df38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 V2X_INTERSECTION_DATA = 1
    uint8 available
    v2x_msgs/V2xIntersectionData v2x_intersection_data
    
    ================================================================================
    MSG: v2x_msgs/V2xIntersectionData
    int32 intersection_id
    float64 enter_angle
    float64 exit_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xIntersectionInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.v2x_intersection_data !== undefined) {
      resolved.v2x_intersection_data = V2xIntersectionData.Resolve(msg.v2x_intersection_data)
    }
    else {
      resolved.v2x_intersection_data = new V2xIntersectionData()
    }

    return resolved;
    }
};

// Constants for message
V2xIntersectionInfo.Constants = {
  V2X_INTERSECTION_DATA: 1,
}

module.exports = V2xIntersectionInfo;
