// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarOffcalibInfo = require('./LidarOffcalibInfo.js');
let LidarOffcalibDetailedErrorCodeEnum = require('./LidarOffcalibDetailedErrorCodeEnum.js');

//-----------------------------------------------------------

class LidarOffcalibReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.lidar_offcalib_data = null;
      this.travel_distance = null;
      this.post_processing_progress = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lidar_offcalib_data')) {
        this.lidar_offcalib_data = initObj.lidar_offcalib_data
      }
      else {
        this.lidar_offcalib_data = [];
      }
      if (initObj.hasOwnProperty('travel_distance')) {
        this.travel_distance = initObj.travel_distance
      }
      else {
        this.travel_distance = 0.0;
      }
      if (initObj.hasOwnProperty('post_processing_progress')) {
        this.post_processing_progress = initObj.post_processing_progress
      }
      else {
        this.post_processing_progress = 0.0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new LidarOffcalibDetailedErrorCodeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarOffcalibReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lidar_offcalib_data]
    // Serialize the length for message field [lidar_offcalib_data]
    bufferOffset = _serializer.uint32(obj.lidar_offcalib_data.length, buffer, bufferOffset);
    obj.lidar_offcalib_data.forEach((val) => {
      bufferOffset = LidarOffcalibInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [travel_distance]
    bufferOffset = _serializer.float32(obj.travel_distance, buffer, bufferOffset);
    // Serialize message field [post_processing_progress]
    bufferOffset = _serializer.float32(obj.post_processing_progress, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = LidarOffcalibDetailedErrorCodeEnum.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarOffcalibReport
    let len;
    let data = new LidarOffcalibReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lidar_offcalib_data]
    // Deserialize array length for message field [lidar_offcalib_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lidar_offcalib_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lidar_offcalib_data[i] = LidarOffcalibInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [travel_distance]
    data.travel_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [post_processing_progress]
    data.post_processing_progress = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = LidarOffcalibDetailedErrorCodeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lidar_offcalib_data.forEach((val) => {
      length += LidarOffcalibInfo.getMessageSize(val);
    });
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/LidarOffcalibReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58dcb83367f2f78ba7b360a036cca333';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    calib_interface_msgs/LidarOffcalibInfo[] lidar_offcalib_data
    float32 travel_distance
    float32 post_processing_progress
    calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code
    
    ================================================================================
    MSG: calib_interface_msgs/LidarOffcalibInfo
    string lidar_name
    uint32 lidar_id
    perception_interface_msgs/CameraSourceEnum[] attach_camera_names
    uint32[] attach_camera_ids
    calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code
    
    ================================================================================
    MSG: perception_interface_msgs/CameraSourceEnum
    uint8 CAMERA_SOURCE_FRONT_FAR = 0
    uint8 CAMERA_SOURCE_FRONT_MID = 1
    uint8 CAMERA_SOURCE_FRONT_WIDE = 2
    uint8 CAMERA_SOURCE_LEFT_FRONT = 3
    uint8 CAMERA_SOURCE_LEFT_REAR = 4
    uint8 CAMERA_SOURCE_REAR_MID = 5
    uint8 CAMERA_SOURCE_REAR_MID_UP = 6
    uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
    uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
    uint8 CAMERA_SOURCE_RIGHT_REAR = 9
    uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
    uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
    uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
    uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
    uint8 CAMERA_SOURCE_FISHEYE = 14
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
    uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
    uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
    uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
    uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
    uint8 CAMERA_SOURCE_BEV = 25
    uint8 value
    
    ================================================================================
    MSG: calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum
    uint16 NORMAL = 0
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarOffcalibReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lidar_offcalib_data !== undefined) {
      resolved.lidar_offcalib_data = new Array(msg.lidar_offcalib_data.length);
      for (let i = 0; i < resolved.lidar_offcalib_data.length; ++i) {
        resolved.lidar_offcalib_data[i] = LidarOffcalibInfo.Resolve(msg.lidar_offcalib_data[i]);
      }
    }
    else {
      resolved.lidar_offcalib_data = []
    }

    if (msg.travel_distance !== undefined) {
      resolved.travel_distance = msg.travel_distance;
    }
    else {
      resolved.travel_distance = 0.0
    }

    if (msg.post_processing_progress !== undefined) {
      resolved.post_processing_progress = msg.post_processing_progress;
    }
    else {
      resolved.post_processing_progress = 0.0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = LidarOffcalibDetailedErrorCodeEnum.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new LidarOffcalibDetailedErrorCodeEnum()
    }

    return resolved;
    }
};

module.exports = LidarOffcalibReport;
