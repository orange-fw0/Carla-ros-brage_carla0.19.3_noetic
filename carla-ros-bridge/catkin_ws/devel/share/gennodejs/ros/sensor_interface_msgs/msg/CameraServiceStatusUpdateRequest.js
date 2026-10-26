// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraServiceStatusMeta = require('./CameraServiceStatusMeta.js');
let VideoStatus = require('./VideoStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraServiceStatusUpdateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.video_status = null;
      this.additional_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new CameraServiceStatusMeta();
      }
      if (initObj.hasOwnProperty('video_status')) {
        this.video_status = initObj.video_status
      }
      else {
        this.video_status = [];
      }
      if (initObj.hasOwnProperty('additional_info')) {
        this.additional_info = initObj.additional_info
      }
      else {
        this.additional_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraServiceStatusUpdateRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = CameraServiceStatusMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [video_status]
    // Serialize the length for message field [video_status]
    bufferOffset = _serializer.uint32(obj.video_status.length, buffer, bufferOffset);
    obj.video_status.forEach((val) => {
      bufferOffset = VideoStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [additional_info]
    bufferOffset = _serializer.string(obj.additional_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraServiceStatusUpdateRequest
    let len;
    let data = new CameraServiceStatusUpdateRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = CameraServiceStatusMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [video_status]
    // Deserialize array length for message field [video_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.video_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.video_status[i] = VideoStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [additional_info]
    data.additional_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.video_status.forEach((val) => {
      length += VideoStatus.getMessageSize(val);
    });
    length += _getByteLength(object.additional_info);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/CameraServiceStatusUpdateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ca3f9254e207d2bb283878a5ac8e074';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    sensor_interface_msgs/CameraServiceStatusMeta meta
    sensor_interface_msgs/VideoStatus[] video_status
    string additional_info
    
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
    MSG: sensor_interface_msgs/CameraServiceStatusMeta
    uint64 timestamp_us
    uint64 seq
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraServiceStatusUpdateRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = CameraServiceStatusMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new CameraServiceStatusMeta()
    }

    if (msg.video_status !== undefined) {
      resolved.video_status = new Array(msg.video_status.length);
      for (let i = 0; i < resolved.video_status.length; ++i) {
        resolved.video_status[i] = VideoStatus.Resolve(msg.video_status[i]);
      }
    }
    else {
      resolved.video_status = []
    }

    if (msg.additional_info !== undefined) {
      resolved.additional_info = msg.additional_info;
    }
    else {
      resolved.additional_info = ''
    }

    return resolved;
    }
};

module.exports = CameraServiceStatusUpdateRequest;
