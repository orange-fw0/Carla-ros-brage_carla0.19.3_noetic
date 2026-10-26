// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicResultMeta = require('./UltrasonicResultMeta.js');
let UltrasonicPackage = require('./UltrasonicPackage.js');
let UltrasonicCommonEchoInfo = require('./UltrasonicCommonEchoInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UltrasonicPackageInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.proc_mode = null;
      this.meta = null;
      this.uss_package = null;
      this.available = null;
      this.uss_echo_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('proc_mode')) {
        this.proc_mode = initObj.proc_mode
      }
      else {
        this.proc_mode = 0;
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new UltrasonicResultMeta();
      }
      if (initObj.hasOwnProperty('uss_package')) {
        this.uss_package = initObj.uss_package
      }
      else {
        this.uss_package = [];
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('uss_echo_info')) {
        this.uss_echo_info = initObj.uss_echo_info
      }
      else {
        this.uss_echo_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicPackageInput
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [proc_mode]
    bufferOffset = _serializer.int32(obj.proc_mode, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = UltrasonicResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [uss_package]
    // Serialize the length for message field [uss_package]
    bufferOffset = _serializer.uint32(obj.uss_package.length, buffer, bufferOffset);
    obj.uss_package.forEach((val) => {
      bufferOffset = UltrasonicPackage.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [uss_echo_info]
    // Serialize the length for message field [uss_echo_info]
    bufferOffset = _serializer.uint32(obj.uss_echo_info.length, buffer, bufferOffset);
    obj.uss_echo_info.forEach((val) => {
      bufferOffset = UltrasonicCommonEchoInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicPackageInput
    let len;
    let data = new UltrasonicPackageInput(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [proc_mode]
    data.proc_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = UltrasonicResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_package]
    // Deserialize array length for message field [uss_package]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_package = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_package[i] = UltrasonicPackage.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [uss_echo_info]
    // Deserialize array length for message field [uss_echo_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_echo_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_echo_info[i] = UltrasonicCommonEchoInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.uss_package.forEach((val) => {
      length += UltrasonicPackage.getMessageSize(val);
    });
    object.uss_echo_info.forEach((val) => {
      length += UltrasonicCommonEchoInfo.getMessageSize(val);
    });
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicPackageInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '389e0842a6dc00e52a7c0dfe1eebb25a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ULTROSONIC_PACKAGEDATA = 0
    uint8 COMMON_USS_OBSTACLE_DATA = 1
    std_msgs/Header header
    int32 proc_mode
    sensor_interface_msgs/UltrasonicResultMeta meta
    sensor_interface_msgs/UltrasonicPackage[] uss_package
    uint8 available
    sensor_interface_msgs/UltrasonicCommonEchoInfo[] uss_echo_info
    
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
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicPackage
    uint8 FRONT_LEFT_SIDE = 0
    uint8 FRONT_LEFT_CORNER = 1
    uint8 FRONT_LEFT_CENTER = 2
    uint8 FRONT_RIGHT_CENTER = 3
    uint8 FRONT_RIGHT_CORNER = 4
    uint8 FRONT_RIGHT_SIDE = 5
    uint8 REAR_RIGHT_SIDE = 6
    uint8 REAR_RIGHT_CORNER = 7
    uint8 REAR_RIGHT_CENTER = 8
    uint8 REAR_LEFT_CENTER = 9
    uint8 REAR_LEFT_CORNER = 10
    uint8 REAR_LEFT_SIDE = 11
    sensor_interface_msgs/UltrasonicBaseInfo[] uss_base_info
    uint8 rolling_cnt
    uint8[] reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicBaseInfo
    sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info
    uint16 first_echo_amplitude
    int16 uss_temperature
    uint64 timestamp_us
    uint8 burst_mode
    uint8 uss_rt_width
    uint8 uss_config_status
    string reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicEhcoInfo
    float32 uss_echo_distance
    uint64 uss_echo_width
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicCommonEchoInfo
    sensor_interface_msgs/CommonUssEhcoData[] uss_echo_data
    sensor_interface_msgs/UltrasonicEchoStatus uss_echo_status
    uint64 reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/CommonUssEhcoData
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    float32 uss_echo_distance
    float32 uss_echo_prob
    uint64 uss_echo_width
    uint16 first_echo_amplitude
    uint16 uss_rt_width
    uint16 uss_echo_quality
    uint16 echo_send_id
    uint64 reserved
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicEchoStatus
    uint8 uss_status
    int16 uss_temperature
    uint64 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicPackageInput(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.proc_mode !== undefined) {
      resolved.proc_mode = msg.proc_mode;
    }
    else {
      resolved.proc_mode = 0
    }

    if (msg.meta !== undefined) {
      resolved.meta = UltrasonicResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new UltrasonicResultMeta()
    }

    if (msg.uss_package !== undefined) {
      resolved.uss_package = new Array(msg.uss_package.length);
      for (let i = 0; i < resolved.uss_package.length; ++i) {
        resolved.uss_package[i] = UltrasonicPackage.Resolve(msg.uss_package[i]);
      }
    }
    else {
      resolved.uss_package = []
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.uss_echo_info !== undefined) {
      resolved.uss_echo_info = new Array(msg.uss_echo_info.length);
      for (let i = 0; i < resolved.uss_echo_info.length; ++i) {
        resolved.uss_echo_info[i] = UltrasonicCommonEchoInfo.Resolve(msg.uss_echo_info[i]);
      }
    }
    else {
      resolved.uss_echo_info = []
    }

    return resolved;
    }
};

// Constants for message
UltrasonicPackageInput.Constants = {
  ULTROSONIC_PACKAGEDATA: 0,
  COMMON_USS_OBSTACLE_DATA: 1,
}

module.exports = UltrasonicPackageInput;
