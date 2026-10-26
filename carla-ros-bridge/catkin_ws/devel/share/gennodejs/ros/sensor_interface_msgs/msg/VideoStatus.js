// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class VideoStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service = null;
      this.status = null;
      this.camera_name_list = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('camera_name_list')) {
        this.camera_name_list = initObj.camera_name_list
      }
      else {
        this.camera_name_list = [];
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VideoStatus
    // Serialize message field [service]
    bufferOffset = _serializer.uint8(obj.service, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint16(obj.status, buffer, bufferOffset);
    // Serialize message field [camera_name_list]
    // Serialize the length for message field [camera_name_list]
    bufferOffset = _serializer.uint32(obj.camera_name_list.length, buffer, bufferOffset);
    obj.camera_name_list.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.CameraSourceEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VideoStatus
    let len;
    let data = new VideoStatus(null);
    // Deserialize message field [service]
    data.service = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [camera_name_list]
    // Deserialize array length for message field [camera_name_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_name_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_name_list[i] = perception_interface_msgs.msg.CameraSourceEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.camera_name_list.length;
    length += _getByteLength(object.reserved_info);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/VideoStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73913f143a4b0d896e90c4c65785af82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VideoStatus(null);
    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.camera_name_list !== undefined) {
      resolved.camera_name_list = new Array(msg.camera_name_list.length);
      for (let i = 0; i < resolved.camera_name_list.length; ++i) {
        resolved.camera_name_list[i] = perception_interface_msgs.msg.CameraSourceEnum.Resolve(msg.camera_name_list[i]);
      }
    }
    else {
      resolved.camera_name_list = []
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

// Constants for message
VideoStatus.Constants = {
  AVM_SURROUND: 0,
  AVM_ARROUND: 1,
  DVR: 2,
  RESERVED1: 3,
  RESERVED2: 4,
}

module.exports = VideoStatus;
