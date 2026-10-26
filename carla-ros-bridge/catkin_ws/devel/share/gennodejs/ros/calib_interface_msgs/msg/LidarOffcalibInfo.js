// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarOffcalibDetailedErrorCodeEnum = require('./LidarOffcalibDetailedErrorCodeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class LidarOffcalibInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lidar_name = null;
      this.lidar_id = null;
      this.attach_camera_names = null;
      this.attach_camera_ids = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('lidar_name')) {
        this.lidar_name = initObj.lidar_name
      }
      else {
        this.lidar_name = '';
      }
      if (initObj.hasOwnProperty('lidar_id')) {
        this.lidar_id = initObj.lidar_id
      }
      else {
        this.lidar_id = 0;
      }
      if (initObj.hasOwnProperty('attach_camera_names')) {
        this.attach_camera_names = initObj.attach_camera_names
      }
      else {
        this.attach_camera_names = [];
      }
      if (initObj.hasOwnProperty('attach_camera_ids')) {
        this.attach_camera_ids = initObj.attach_camera_ids
      }
      else {
        this.attach_camera_ids = [];
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
    // Serializes a message object of type LidarOffcalibInfo
    // Serialize message field [lidar_name]
    bufferOffset = _serializer.string(obj.lidar_name, buffer, bufferOffset);
    // Serialize message field [lidar_id]
    bufferOffset = _serializer.uint32(obj.lidar_id, buffer, bufferOffset);
    // Serialize message field [attach_camera_names]
    // Serialize the length for message field [attach_camera_names]
    bufferOffset = _serializer.uint32(obj.attach_camera_names.length, buffer, bufferOffset);
    obj.attach_camera_names.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.CameraSourceEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [attach_camera_ids]
    bufferOffset = _arraySerializer.uint32(obj.attach_camera_ids, buffer, bufferOffset, null);
    // Serialize message field [error_code]
    bufferOffset = LidarOffcalibDetailedErrorCodeEnum.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarOffcalibInfo
    let len;
    let data = new LidarOffcalibInfo(null);
    // Deserialize message field [lidar_name]
    data.lidar_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lidar_id]
    data.lidar_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [attach_camera_names]
    // Deserialize array length for message field [attach_camera_names]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.attach_camera_names = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.attach_camera_names[i] = perception_interface_msgs.msg.CameraSourceEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [attach_camera_ids]
    data.attach_camera_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [error_code]
    data.error_code = LidarOffcalibDetailedErrorCodeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.lidar_name);
    length += object.attach_camera_names.length;
    length += 4 * object.attach_camera_ids.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/LidarOffcalibInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f954803b35dbf900a63e4757971e44a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LidarOffcalibInfo(null);
    if (msg.lidar_name !== undefined) {
      resolved.lidar_name = msg.lidar_name;
    }
    else {
      resolved.lidar_name = ''
    }

    if (msg.lidar_id !== undefined) {
      resolved.lidar_id = msg.lidar_id;
    }
    else {
      resolved.lidar_id = 0
    }

    if (msg.attach_camera_names !== undefined) {
      resolved.attach_camera_names = new Array(msg.attach_camera_names.length);
      for (let i = 0; i < resolved.attach_camera_names.length; ++i) {
        resolved.attach_camera_names[i] = perception_interface_msgs.msg.CameraSourceEnum.Resolve(msg.attach_camera_names[i]);
      }
    }
    else {
      resolved.attach_camera_names = []
    }

    if (msg.attach_camera_ids !== undefined) {
      resolved.attach_camera_ids = msg.attach_camera_ids;
    }
    else {
      resolved.attach_camera_ids = []
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

module.exports = LidarOffcalibInfo;
