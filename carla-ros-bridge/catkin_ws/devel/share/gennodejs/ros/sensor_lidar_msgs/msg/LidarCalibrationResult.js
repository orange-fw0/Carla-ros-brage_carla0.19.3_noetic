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
let LidarCalibResult = require('./LidarCalibResult.js');
let LidarHorizontResult = require('./LidarHorizontResult.js');
let LidarRotationResult = require('./LidarRotationResult.js');

//-----------------------------------------------------------

class LidarCalibrationResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.calib_result = null;
      this.horizont_result = null;
      this.rotation_result = null;
      this.canmsg_result = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new LidarID();
      }
      if (initObj.hasOwnProperty('calib_result')) {
        this.calib_result = initObj.calib_result
      }
      else {
        this.calib_result = new LidarCalibResult();
      }
      if (initObj.hasOwnProperty('horizont_result')) {
        this.horizont_result = initObj.horizont_result
      }
      else {
        this.horizont_result = new LidarHorizontResult();
      }
      if (initObj.hasOwnProperty('rotation_result')) {
        this.rotation_result = initObj.rotation_result
      }
      else {
        this.rotation_result = new LidarRotationResult();
      }
      if (initObj.hasOwnProperty('canmsg_result')) {
        this.canmsg_result = initObj.canmsg_result
      }
      else {
        this.canmsg_result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarCalibrationResult
    // Serialize message field [id]
    bufferOffset = LidarID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [calib_result]
    bufferOffset = LidarCalibResult.serialize(obj.calib_result, buffer, bufferOffset);
    // Serialize message field [horizont_result]
    bufferOffset = LidarHorizontResult.serialize(obj.horizont_result, buffer, bufferOffset);
    // Serialize message field [rotation_result]
    bufferOffset = LidarRotationResult.serialize(obj.rotation_result, buffer, bufferOffset);
    // Serialize message field [canmsg_result]
    bufferOffset = _serializer.uint8(obj.canmsg_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarCalibrationResult
    let len;
    let data = new LidarCalibrationResult(null);
    // Deserialize message field [id]
    data.id = LidarID.deserialize(buffer, bufferOffset);
    // Deserialize message field [calib_result]
    data.calib_result = LidarCalibResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [horizont_result]
    data.horizont_result = LidarHorizontResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation_result]
    data.rotation_result = LidarRotationResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [canmsg_result]
    data.canmsg_result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarCalibrationResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e6048ce2b872ab46e98e1163301603d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_lidar_msgs/LidarID id
    sensor_lidar_msgs/LidarCalibResult calib_result
    sensor_lidar_msgs/LidarHorizontResult horizont_result
    sensor_lidar_msgs/LidarRotationResult rotation_result
    uint8 canmsg_result
    
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
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarCalibResult
    uint8 value
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarHorizontResult
    uint8 value
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarRotationResult
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarCalibrationResult(null);
    if (msg.id !== undefined) {
      resolved.id = LidarID.Resolve(msg.id)
    }
    else {
      resolved.id = new LidarID()
    }

    if (msg.calib_result !== undefined) {
      resolved.calib_result = LidarCalibResult.Resolve(msg.calib_result)
    }
    else {
      resolved.calib_result = new LidarCalibResult()
    }

    if (msg.horizont_result !== undefined) {
      resolved.horizont_result = LidarHorizontResult.Resolve(msg.horizont_result)
    }
    else {
      resolved.horizont_result = new LidarHorizontResult()
    }

    if (msg.rotation_result !== undefined) {
      resolved.rotation_result = LidarRotationResult.Resolve(msg.rotation_result)
    }
    else {
      resolved.rotation_result = new LidarRotationResult()
    }

    if (msg.canmsg_result !== undefined) {
      resolved.canmsg_result = msg.canmsg_result;
    }
    else {
      resolved.canmsg_result = 0
    }

    return resolved;
    }
};

module.exports = LidarCalibrationResult;
