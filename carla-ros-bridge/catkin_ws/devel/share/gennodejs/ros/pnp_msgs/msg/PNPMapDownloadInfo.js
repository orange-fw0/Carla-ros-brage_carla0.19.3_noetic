// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapDownloadTypeEnum = require('./MapDownloadTypeEnum.js');
let MapDownloadResponseId = require('./MapDownloadResponseId.js');
let MapDownloadStatus = require('./MapDownloadStatus.js');
let DownloadStatusEnum = require('./DownloadStatusEnum.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PNPMapDownloadInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.response_id = null;
      this.map_list = null;
      this.total_status = null;
      this.total_progress = null;
      this.error_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new MapDownloadTypeEnum();
      }
      if (initObj.hasOwnProperty('response_id')) {
        this.response_id = initObj.response_id
      }
      else {
        this.response_id = new MapDownloadResponseId();
      }
      if (initObj.hasOwnProperty('map_list')) {
        this.map_list = initObj.map_list
      }
      else {
        this.map_list = [];
      }
      if (initObj.hasOwnProperty('total_status')) {
        this.total_status = initObj.total_status
      }
      else {
        this.total_status = new DownloadStatusEnum();
      }
      if (initObj.hasOwnProperty('total_progress')) {
        this.total_progress = initObj.total_progress
      }
      else {
        this.total_progress = 0;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPMapDownloadInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = MapDownloadTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [response_id]
    bufferOffset = MapDownloadResponseId.serialize(obj.response_id, buffer, bufferOffset);
    // Serialize message field [map_list]
    // Serialize the length for message field [map_list]
    bufferOffset = _serializer.uint32(obj.map_list.length, buffer, bufferOffset);
    obj.map_list.forEach((val) => {
      bufferOffset = MapDownloadStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [total_status]
    bufferOffset = DownloadStatusEnum.serialize(obj.total_status, buffer, bufferOffset);
    // Serialize message field [total_progress]
    bufferOffset = _serializer.uint8(obj.total_progress, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPMapDownloadInfo
    let len;
    let data = new PNPMapDownloadInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = MapDownloadTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [response_id]
    data.response_id = MapDownloadResponseId.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_list]
    // Deserialize array length for message field [map_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map_list[i] = MapDownloadStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [total_status]
    data.total_status = DownloadStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [total_progress]
    data.total_progress = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.map_list.forEach((val) => {
      length += MapDownloadStatus.getMessageSize(val);
    });
    length += _getByteLength(object.error_msg);
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/PNPMapDownloadInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'afbee8de108eeef3b359a44295c11441';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    pnp_msgs/MapDownloadTypeEnum type
    pnp_msgs/MapDownloadResponseId response_id
    pnp_msgs/MapDownloadStatus[] map_list
    pnp_msgs/DownloadStatusEnum total_status
    uint8 total_progress
    string error_msg
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: pnp_msgs/MapDownloadTypeEnum
    uint8 UNKNOWN = 0
    uint8 CRUISING_SEARCH = 1
    uint8 SD_DESTINATION_SEARCH = 2
    uint8 SPECIFIC_ID = 3
    uint8 RANGE_SEARCH = 4
    uint8 status
    
    ================================================================================
    MSG: pnp_msgs/MapDownloadResponseId
    uint64 response_id
    uint64 route_id
    
    ================================================================================
    MSG: pnp_msgs/MapDownloadStatus
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
    const resolved = new PNPMapDownloadInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = MapDownloadTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new MapDownloadTypeEnum()
    }

    if (msg.response_id !== undefined) {
      resolved.response_id = MapDownloadResponseId.Resolve(msg.response_id)
    }
    else {
      resolved.response_id = new MapDownloadResponseId()
    }

    if (msg.map_list !== undefined) {
      resolved.map_list = new Array(msg.map_list.length);
      for (let i = 0; i < resolved.map_list.length; ++i) {
        resolved.map_list[i] = MapDownloadStatus.Resolve(msg.map_list[i]);
      }
    }
    else {
      resolved.map_list = []
    }

    if (msg.total_status !== undefined) {
      resolved.total_status = DownloadStatusEnum.Resolve(msg.total_status)
    }
    else {
      resolved.total_status = new DownloadStatusEnum()
    }

    if (msg.total_progress !== undefined) {
      resolved.total_progress = msg.total_progress;
    }
    else {
      resolved.total_progress = 0
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    return resolved;
    }
};

module.exports = PNPMapDownloadInfo;
