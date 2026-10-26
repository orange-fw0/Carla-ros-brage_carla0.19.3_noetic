// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarModeRequest = require('./LidarModeRequest.js');

//-----------------------------------------------------------

class LidarModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lidar_mode_resp = null;
    }
    else {
      if (initObj.hasOwnProperty('lidar_mode_resp')) {
        this.lidar_mode_resp = initObj.lidar_mode_resp
      }
      else {
        this.lidar_mode_resp = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarModeResponse
    // Serialize message field [lidar_mode_resp]
    // Serialize the length for message field [lidar_mode_resp]
    bufferOffset = _serializer.uint32(obj.lidar_mode_resp.length, buffer, bufferOffset);
    obj.lidar_mode_resp.forEach((val) => {
      bufferOffset = LidarModeRequest.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarModeResponse
    let len;
    let data = new LidarModeResponse(null);
    // Deserialize message field [lidar_mode_resp]
    // Deserialize array length for message field [lidar_mode_resp]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lidar_mode_resp = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lidar_mode_resp[i] = LidarModeRequest.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 5 * object.lidar_mode_resp.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12056cea15bb46bc31740a59f297ae72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_lidar_msgs/LidarModeRequest[] lidar_mode_resp
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarModeRequest
    sensor_lidar_msgs/LidarID id
    sensor_lidar_msgs/LidarMode mode
    
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
    MSG: sensor_lidar_msgs/LidarMode
    uint8 Normal_Mode = 0
    uint8 EOL_Calibration_Mode = 1
    uint8 AfterSale_Calibration_Mode = 2
    uint8 SuperEco = 3
    uint8 StandBy = 4
    uint8 PlayBack = 5
    uint8 Reserved = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarModeResponse(null);
    if (msg.lidar_mode_resp !== undefined) {
      resolved.lidar_mode_resp = new Array(msg.lidar_mode_resp.length);
      for (let i = 0; i < resolved.lidar_mode_resp.length; ++i) {
        resolved.lidar_mode_resp[i] = LidarModeRequest.Resolve(msg.lidar_mode_resp[i]);
      }
    }
    else {
      resolved.lidar_mode_resp = []
    }

    return resolved;
    }
};

module.exports = LidarModeResponse;
