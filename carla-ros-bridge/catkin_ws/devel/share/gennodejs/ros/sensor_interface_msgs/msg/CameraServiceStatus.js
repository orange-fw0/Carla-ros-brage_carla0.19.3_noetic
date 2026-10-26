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
let CameraServiceStatusData = require('./CameraServiceStatusData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraServiceStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.camera_service_status_data = null;
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
      if (initObj.hasOwnProperty('camera_service_status_data')) {
        this.camera_service_status_data = initObj.camera_service_status_data
      }
      else {
        this.camera_service_status_data = new CameraServiceStatusData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraServiceStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = CameraServiceStatusMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [camera_service_status_data]
    bufferOffset = CameraServiceStatusData.serialize(obj.camera_service_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraServiceStatus
    let len;
    let data = new CameraServiceStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = CameraServiceStatusMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_service_status_data]
    data.camera_service_status_data = CameraServiceStatusData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += CameraServiceStatusData.getMessageSize(object.camera_service_status_data);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/CameraServiceStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '345ea10490afcd00ce445713b79c7983';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    sensor_interface_msgs/CameraServiceStatusMeta meta
    sensor_interface_msgs/CameraServiceStatusData camera_service_status_data
    
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
    MSG: sensor_interface_msgs/CameraServiceStatusData
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
    const resolved = new CameraServiceStatus(null);
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

    if (msg.camera_service_status_data !== undefined) {
      resolved.camera_service_status_data = CameraServiceStatusData.Resolve(msg.camera_service_status_data)
    }
    else {
      resolved.camera_service_status_data = new CameraServiceStatusData()
    }

    return resolved;
    }
};

module.exports = CameraServiceStatus;
