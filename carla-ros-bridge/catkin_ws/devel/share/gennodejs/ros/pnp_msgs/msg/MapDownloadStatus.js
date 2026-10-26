// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DownloadStatusEnum = require('./DownloadStatusEnum.js');

//-----------------------------------------------------------

class MapDownloadStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.status = null;
      this.progress = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new DownloadStatusEnum();
      }
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapDownloadStatus
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = DownloadStatusEnum.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = _serializer.uint8(obj.progress, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapDownloadStatus
    let len;
    let data = new MapDownloadStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = DownloadStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/MapDownloadStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff8c586ca872f50ab53f3cb8def515eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    pnp_msgs/DownloadStatusEnum status
    uint8 progress
    string reserved
    
    ================================================================================
    MSG: pnp_msgs/DownloadStatusEnum
    uint8 UNKNOWN = 0
    uint8 SUCCESS = 1
    uint8 DOWNLOADING = 2
    uint8 WAITING = 3
    uint8 FAILED = 4
    uint8 ERROR_TIMEOUT = 100
    uint8 ERROR_NETWORK = 101
    uint8 ERROR_DISK_FULL = 102
    uint8 ERROR_PERMISSION = 103
    uint8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapDownloadStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.status !== undefined) {
      resolved.status = DownloadStatusEnum.Resolve(msg.status)
    }
    else {
      resolved.status = new DownloadStatusEnum()
    }

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = MapDownloadStatus;
