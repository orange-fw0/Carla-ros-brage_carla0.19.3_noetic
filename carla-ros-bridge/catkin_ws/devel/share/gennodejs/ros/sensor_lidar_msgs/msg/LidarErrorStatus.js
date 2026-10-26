// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarErrorReport = require('./LidarErrorReport.js');

//-----------------------------------------------------------

class LidarErrorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarErrorStatus
    // Serialize message field [status]
    // Serialize the length for message field [status]
    bufferOffset = _serializer.uint32(obj.status.length, buffer, bufferOffset);
    obj.status.forEach((val) => {
      bufferOffset = LidarErrorReport.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarErrorStatus
    let len;
    let data = new LidarErrorStatus(null);
    // Deserialize message field [status]
    // Deserialize array length for message field [status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.status[i] = LidarErrorReport.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.status.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarErrorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1b605ada709c81bf6788f8ef8da4154';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_lidar_msgs/LidarErrorReport[] status
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarErrorReport
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
    const resolved = new LidarErrorStatus(null);
    if (msg.status !== undefined) {
      resolved.status = new Array(msg.status.length);
      for (let i = 0; i < resolved.status.length; ++i) {
        resolved.status[i] = LidarErrorReport.Resolve(msg.status[i]);
      }
    }
    else {
      resolved.status = []
    }

    return resolved;
    }
};

module.exports = LidarErrorStatus;
