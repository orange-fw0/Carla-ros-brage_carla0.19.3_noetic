// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ModuleType = require('./ModuleType.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ModuleStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp_us = null;
      this.module_type = null;
      this.status = null;
      this.detail_status = null;
      this.latency_ms = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('module_type')) {
        this.module_type = initObj.module_type
      }
      else {
        this.module_type = new ModuleType();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('detail_status')) {
        this.detail_status = initObj.detail_status
      }
      else {
        this.detail_status = 0;
      }
      if (initObj.hasOwnProperty('latency_ms')) {
        this.latency_ms = initObj.latency_ms
      }
      else {
        this.latency_ms = 0.0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = ModuleType.serialize(obj.module_type, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [detail_status]
    bufferOffset = _serializer.uint8(obj.detail_status, buffer, bufferOffset);
    // Serialize message field [latency_ms]
    bufferOffset = _serializer.float64(obj.latency_ms, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleStatus
    let len;
    let data = new ModuleStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = ModuleType.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [detail_status]
    data.detail_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [latency_ms]
    data.latency_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.message);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/ModuleStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e6d24127e694ab410bf12cdf334cc32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STOP = 0
    uint8 STARTING = 1
    uint8 RUNNING = 2
    uint8 STOPPING = 3
    uint8 RUNNING_WARNING = 4
    uint8 RUNNING_ERROR = 5
    uint8 NONE = 0
    uint8 RUNNING_UNKNOWN_ERROR = 1
    uint8 RUNNING_OUT_OF_ROUTE = 2
    uint8 RUNNING_OUT_OF_MAP = 3
    uint8 RUNNING_INVALID_LANE_SCENE = 4
    uint8 RUNNING_TAKING_OVER = 5
    uint8 RUNNING_UNEXPECTED_ERROR = 6
    uint8 RUNNING_IMAGE_BLACK = 7
    uint8 RUNNING_IMAGE_HIGH_LATENCY = 8
    uint8 RUNNING_IMAGE_LOST = 9
    uint8 RUNNING_POINT_CLOUD_EMPTY = 10
    uint8 RUNNING_LOCATION_LOW_ACCURACY = 11
    uint8 RUNNING_MISSING_INPUTS = 12
    std_msgs/Header header
    uint64 timestamp_us
    framework_status_msgs/ModuleType module_type
    uint8 status
    uint8 detail_status
    float64 latency_ms
    string message
    
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
    MSG: framework_status_msgs/ModuleType
    uint8 PREDICTION = 0
    uint8 ROUTING = 1
    uint8 PLANNING = 2
    uint8 CONTROLLER = 3
    uint8 ENDPOINT = 4
    uint8 VEHICLE_REPORTER = 5
    uint8 WORLDMODEL = 6
    uint8 RADAR_PERCEPTION = 7
    uint8 VISION_PERCEPTION = 8
    uint8 LIDAR_PERCEPTION = 9
    uint8 FUSION_PERCEPTION = 10
    uint8 LOCATION = 11
    uint8 VISION_TFC_PERCEPTION = 12
    uint8 SENSOR_SERVICE = 13
    uint8 CAMERA_SERVICE = 14
    uint8 EGOPOSE_MANAGER = 15
    uint8 EGOMOTION = 16
    uint8 MAP_MANAGER = 17
    uint8 LDP_PLANNING = 18
    uint8 PLAC = 19
    uint8 ACE = 20
    uint8 VISTA = 21
    uint8 DYNAMIC_SAFETY_CHECK = 22
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.module_type !== undefined) {
      resolved.module_type = ModuleType.Resolve(msg.module_type)
    }
    else {
      resolved.module_type = new ModuleType()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.detail_status !== undefined) {
      resolved.detail_status = msg.detail_status;
    }
    else {
      resolved.detail_status = 0
    }

    if (msg.latency_ms !== undefined) {
      resolved.latency_ms = msg.latency_ms;
    }
    else {
      resolved.latency_ms = 0.0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
ModuleStatus.Constants = {
  STOP: 0,
  STARTING: 1,
  RUNNING: 2,
  STOPPING: 3,
  RUNNING_WARNING: 4,
  RUNNING_ERROR: 5,
  NONE: 0,
  RUNNING_UNKNOWN_ERROR: 1,
  RUNNING_OUT_OF_ROUTE: 2,
  RUNNING_OUT_OF_MAP: 3,
  RUNNING_INVALID_LANE_SCENE: 4,
  RUNNING_TAKING_OVER: 5,
  RUNNING_UNEXPECTED_ERROR: 6,
  RUNNING_IMAGE_BLACK: 7,
  RUNNING_IMAGE_HIGH_LATENCY: 8,
  RUNNING_IMAGE_LOST: 9,
  RUNNING_POINT_CLOUD_EMPTY: 10,
  RUNNING_LOCATION_LOW_ACCURACY: 11,
  RUNNING_MISSING_INPUTS: 12,
}

module.exports = ModuleStatus;
