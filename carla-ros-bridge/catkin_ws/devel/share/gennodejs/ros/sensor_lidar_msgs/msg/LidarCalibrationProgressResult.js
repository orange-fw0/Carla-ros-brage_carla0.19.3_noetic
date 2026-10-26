// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LidarCalibrationProgressResult {
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
    // Serializes a message object of type LidarCalibrationProgressResult
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarCalibrationProgressResult
    let len;
    let data = new LidarCalibrationProgressResult(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarCalibrationProgressResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '930f2fdef13c3190fdbeda7406771f57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 None = 0
    uint8 Init = 1
    uint8 Ongoing = 2
    uint8 Complete_Successful = 3
    uint8 Complete_With_Error = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarCalibrationProgressResult(null);
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
LidarCalibrationProgressResult.Constants = {
  NONE: 0,
  INIT: 1,
  ONGOING: 2,
  COMPLETE_SUCCESSFUL: 3,
  COMPLETE_WITH_ERROR: 4,
}

module.exports = LidarCalibrationProgressResult;
