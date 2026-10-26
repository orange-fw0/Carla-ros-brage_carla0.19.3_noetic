// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarID = require('./LidarID.js');

//-----------------------------------------------------------

class LidarErrorReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.error_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new LidarID();
      }
      if (initObj.hasOwnProperty('error_mode')) {
        this.error_mode = initObj.error_mode
      }
      else {
        this.error_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarErrorReport
    // Serialize message field [id]
    bufferOffset = LidarID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [error_mode]
    bufferOffset = _serializer.uint32(obj.error_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarErrorReport
    let len;
    let data = new LidarErrorReport(null);
    // Deserialize message field [id]
    data.id = LidarID.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_mode]
    data.error_mode = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarErrorReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64113973402cc388561582a486791df9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 Normal = 0
    uint32 Hardware_error = 1
    uint32 WindowContamination_Err = 2
    uint32 FailSafe_error = 3
    uint32 No_Calibration_error = 4
    sensor_lidar_msgs/LidarID id
    uint32 error_mode
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarID
    uint32 None = 0
    uint32 Front_Left = 1
    uint32 Front_Right = 2
    uint32 Middle_Left = 4
    uint32 Middle_Right = 8
    uint32 Rear_Left = 16
    uint32 Rear_Right = 32
    uint32 Front_Down = 64
    uint32 Front_Up = 128
    uint32 Rear_Down = 256
    uint32 Rear_Up = 512
    uint32 Centre = 1024
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarErrorReport(null);
    if (msg.id !== undefined) {
      resolved.id = LidarID.Resolve(msg.id)
    }
    else {
      resolved.id = new LidarID()
    }

    if (msg.error_mode !== undefined) {
      resolved.error_mode = msg.error_mode;
    }
    else {
      resolved.error_mode = 0
    }

    return resolved;
    }
};

// Constants for message
LidarErrorReport.Constants = {
  NORMAL: 0,
  HARDWARE_ERROR: 1,
  WINDOWCONTAMINATION_ERR: 2,
  FAILSAFE_ERROR: 3,
  NO_CALIBRATION_ERROR: 4,
}

module.exports = LidarErrorReport;
