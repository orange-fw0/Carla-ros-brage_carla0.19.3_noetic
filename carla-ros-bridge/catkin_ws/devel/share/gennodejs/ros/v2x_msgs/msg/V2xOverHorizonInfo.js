// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2xOverHorizonData = require('./V2xOverHorizonData.js');

//-----------------------------------------------------------

class V2xOverHorizonInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.v2x_over_horizon_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('v2x_over_horizon_data')) {
        this.v2x_over_horizon_data = initObj.v2x_over_horizon_data
      }
      else {
        this.v2x_over_horizon_data = new V2xOverHorizonData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xOverHorizonInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [v2x_over_horizon_data]
    bufferOffset = V2xOverHorizonData.serialize(obj.v2x_over_horizon_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xOverHorizonInfo
    let len;
    let data = new V2xOverHorizonInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [v2x_over_horizon_data]
    data.v2x_over_horizon_data = V2xOverHorizonData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += V2xOverHorizonData.getMessageSize(object.v2x_over_horizon_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xOverHorizonInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9db2d5066d1096c28b17d4fbc24f2ef0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 V2X_OVER_HORIZON_DATA = 1
    uint8 available
    v2x_msgs/V2xOverHorizonData v2x_over_horizon_data
    
    ================================================================================
    MSG: v2x_msgs/V2xOverHorizonData
    int32 intersection_id
    string video_url
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xOverHorizonInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.v2x_over_horizon_data !== undefined) {
      resolved.v2x_over_horizon_data = V2xOverHorizonData.Resolve(msg.v2x_over_horizon_data)
    }
    else {
      resolved.v2x_over_horizon_data = new V2xOverHorizonData()
    }

    return resolved;
    }
};

// Constants for message
V2xOverHorizonInfo.Constants = {
  V2X_OVER_HORIZON_DATA: 1,
}

module.exports = V2xOverHorizonInfo;
