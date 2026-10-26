// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraSourceEnum = require('./CameraSourceEnum.js');
let CameraModelEnum = require('./CameraModelEnum.js');

//-----------------------------------------------------------

class EgoposeFrameMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.sequence = null;
      this.sync_camera_source = null;
      this.sync_camera_model = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('sync_camera_source')) {
        this.sync_camera_source = initObj.sync_camera_source
      }
      else {
        this.sync_camera_source = new CameraSourceEnum();
      }
      if (initObj.hasOwnProperty('sync_camera_model')) {
        this.sync_camera_model = initObj.sync_camera_model
      }
      else {
        this.sync_camera_model = new CameraModelEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EgoposeFrameMeta
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = _serializer.uint64(obj.sequence, buffer, bufferOffset);
    // Serialize message field [sync_camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.sync_camera_source, buffer, bufferOffset);
    // Serialize message field [sync_camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.sync_camera_model, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EgoposeFrameMeta
    let len;
    let data = new EgoposeFrameMeta(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sync_camera_source]
    data.sync_camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [sync_camera_model]
    data.sync_camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/EgoposeFrameMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '998b78f70bfce54b64a6b4f0cabaef9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    uint64 sequence
    landmark_msgs/CameraSourceEnum sync_camera_source
    landmark_msgs/CameraModelEnum sync_camera_model
    
    ================================================================================
    MSG: landmark_msgs/CameraSourceEnum
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
    MSG: landmark_msgs/CameraModelEnum
    uint8 CAMERA_MODEL_UNKNOWN = 0
    uint8 CAMERA_MODEL_RAW = 1
    uint8 CAMERA_MODEL_CYLINDER = 2
    uint8 CAMERA_MODEL_DEDISTORT = 3
    uint8 CAMERA_MODEL_PSTITCH = 4
    uint8 CAMERA_MODEL_RESERVED_A = 5
    uint8 CAMERA_MODEL_RESERVED_B = 6
    uint8 CAMERA_MODEL_RESERVED_C = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EgoposeFrameMeta(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.sync_camera_source !== undefined) {
      resolved.sync_camera_source = CameraSourceEnum.Resolve(msg.sync_camera_source)
    }
    else {
      resolved.sync_camera_source = new CameraSourceEnum()
    }

    if (msg.sync_camera_model !== undefined) {
      resolved.sync_camera_model = CameraModelEnum.Resolve(msg.sync_camera_model)
    }
    else {
      resolved.sync_camera_model = new CameraModelEnum()
    }

    return resolved;
    }
};

module.exports = EgoposeFrameMeta;
