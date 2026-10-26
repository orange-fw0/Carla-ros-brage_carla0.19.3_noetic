// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAOriStdXyz = require('./MLAOriStdXyz.js');

//-----------------------------------------------------------

class MLAOrientationStd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.ori_std_xyz = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('ori_std_xyz')) {
        this.ori_std_xyz = initObj.ori_std_xyz
      }
      else {
        this.ori_std_xyz = new MLAOriStdXyz();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAOrientationStd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [ori_std_xyz]
    bufferOffset = MLAOriStdXyz.serialize(obj.ori_std_xyz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAOrientationStd
    let len;
    let data = new MLAOrientationStd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ori_std_xyz]
    data.ori_std_xyz = MLAOriStdXyz.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLAOrientationStd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e2301a2abe192f5c2b01527e58d8ac4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_ORI_STD_XYZ = 1
    uint8 available
    mla_localization_msgs/MLAOriStdXyz ori_std_xyz
    
    ================================================================================
    MSG: mla_localization_msgs/MLAOriStdXyz
    float64 std_faix
    float64 std_faiy
    float64 std_faiz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAOrientationStd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.ori_std_xyz !== undefined) {
      resolved.ori_std_xyz = MLAOriStdXyz.Resolve(msg.ori_std_xyz)
    }
    else {
      resolved.ori_std_xyz = new MLAOriStdXyz()
    }

    return resolved;
    }
};

// Constants for message
MLAOrientationStd.Constants = {
  MLA_ORI_STD_XYZ: 1,
}

module.exports = MLAOrientationStd;
