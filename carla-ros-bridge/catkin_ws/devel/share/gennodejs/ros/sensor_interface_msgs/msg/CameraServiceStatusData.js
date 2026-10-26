// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VideoStatus = require('./VideoStatus.js');
let CameraStatus = require('./CameraStatus.js');

//-----------------------------------------------------------

class CameraServiceStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.video_status = null;
      this.camera_status = null;
      this.reserved_infos = null;
    }
    else {
      if (initObj.hasOwnProperty('video_status')) {
        this.video_status = initObj.video_status
      }
      else {
        this.video_status = [];
      }
      if (initObj.hasOwnProperty('camera_status')) {
        this.camera_status = initObj.camera_status
      }
      else {
        this.camera_status = [];
      }
      if (initObj.hasOwnProperty('reserved_infos')) {
        this.reserved_infos = initObj.reserved_infos
      }
      else {
        this.reserved_infos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraServiceStatusData
    // Serialize message field [video_status]
    // Serialize the length for message field [video_status]
    bufferOffset = _serializer.uint32(obj.video_status.length, buffer, bufferOffset);
    obj.video_status.forEach((val) => {
      bufferOffset = VideoStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [camera_status]
    // Serialize the length for message field [camera_status]
    bufferOffset = _serializer.uint32(obj.camera_status.length, buffer, bufferOffset);
    obj.camera_status.forEach((val) => {
      bufferOffset = CameraStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_infos]
    bufferOffset = _arraySerializer.string(obj.reserved_infos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraServiceStatusData
    let len;
    let data = new CameraServiceStatusData(null);
    // Deserialize message field [video_status]
    // Deserialize array length for message field [video_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.video_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.video_status[i] = VideoStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [camera_status]
    // Deserialize array length for message field [camera_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_status[i] = CameraStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_infos]
    data.reserved_infos = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.video_status.forEach((val) => {
      length += VideoStatus.getMessageSize(val);
    });
    object.camera_status.forEach((val) => {
      length += CameraStatus.getMessageSize(val);
    });
    object.reserved_infos.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/CameraServiceStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec7dafc38c3a6a2d38ab63e72412943a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/VideoStatus[] video_status
    sensor_interface_msgs/CameraStatus[] camera_status
    string[] reserved_infos
    
    ================================================================================
    MSG: sensor_interface_msgs/VideoStatus
    uint8 AVM_SURROUND = 0
    uint8 AVM_ARROUND = 1
    uint8 DVR = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 service
    uint16 status
    perception_interface_msgs/CameraSourceEnum[] camera_name_list
    string reserved_info
    
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
    MSG: sensor_interface_msgs/CameraStatus
    perception_interface_msgs/CameraSourceEnum camera_name
    uint16 status
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraServiceStatusData(null);
    if (msg.video_status !== undefined) {
      resolved.video_status = new Array(msg.video_status.length);
      for (let i = 0; i < resolved.video_status.length; ++i) {
        resolved.video_status[i] = VideoStatus.Resolve(msg.video_status[i]);
      }
    }
    else {
      resolved.video_status = []
    }

    if (msg.camera_status !== undefined) {
      resolved.camera_status = new Array(msg.camera_status.length);
      for (let i = 0; i < resolved.camera_status.length; ++i) {
        resolved.camera_status[i] = CameraStatus.Resolve(msg.camera_status[i]);
      }
    }
    else {
      resolved.camera_status = []
    }

    if (msg.reserved_infos !== undefined) {
      resolved.reserved_infos = msg.reserved_infos;
    }
    else {
      resolved.reserved_infos = []
    }

    return resolved;
    }
};

module.exports = CameraServiceStatusData;
