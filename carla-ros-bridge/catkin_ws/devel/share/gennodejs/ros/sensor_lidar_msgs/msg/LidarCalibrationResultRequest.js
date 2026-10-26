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
let LidarCalibrationType = require('./LidarCalibrationType.js');

//-----------------------------------------------------------

class LidarCalibrationResultRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new LidarID();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new LidarCalibrationType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarCalibrationResultRequest
    // Serialize message field [id]
    bufferOffset = LidarID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = LidarCalibrationType.serialize(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarCalibrationResultRequest
    let len;
    let data = new LidarCalibrationResultRequest(null);
    // Deserialize message field [id]
    data.id = LidarID.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = LidarCalibrationType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarCalibrationResultRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e7206c0906d50fe4cd21763dfcd82e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_lidar_msgs/LidarID id
    sensor_lidar_msgs/LidarCalibrationType type
    
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
    MSG: sensor_lidar_msgs/LidarCalibrationType
    uint8 None = 0
    uint8 EOL_Calibration = 1
    uint8 AfterSale_Calibration = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarCalibrationResultRequest(null);
    if (msg.id !== undefined) {
      resolved.id = LidarID.Resolve(msg.id)
    }
    else {
      resolved.id = new LidarID()
    }

    if (msg.type !== undefined) {
      resolved.type = LidarCalibrationType.Resolve(msg.type)
    }
    else {
      resolved.type = new LidarCalibrationType()
    }

    return resolved;
    }
};

module.exports = LidarCalibrationResultRequest;
