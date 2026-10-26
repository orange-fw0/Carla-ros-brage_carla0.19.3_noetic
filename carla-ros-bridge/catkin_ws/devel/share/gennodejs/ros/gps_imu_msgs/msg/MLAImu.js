// Auto-generated. Do not edit!

// (in-package gps_imu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAImuMeta = require('./MLAImuMeta.js');
let MLAImuInfo = require('./MLAImuInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MLAImu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.info = null;
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
        this.meta = new MLAImuMeta();
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new MLAImuInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAImu
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = MLAImuMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = MLAImuInfo.serialize(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAImu
    let len;
    let data = new MLAImu(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = MLAImuMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = MLAImuInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_imu_msgs/MLAImu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3acff02242d022ed9da7184ede468123';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    gps_imu_msgs/MLAImuMeta meta
    gps_imu_msgs/MLAImuInfo info
    
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
    MSG: gps_imu_msgs/MLAImuMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: gps_imu_msgs/MLAImuInfo
    uint8 MLA_IMU_BASIC = 1
    uint8 available
    gps_imu_msgs/MLAImuBasic imu_data_basic
    
    ================================================================================
    MSG: gps_imu_msgs/MLAImuBasic
    float64 accx
    float64 accy
    float64 accz
    float64 gyrox
    float64 gyroy
    float64 gyroz
    float64 temperature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAImu(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = MLAImuMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new MLAImuMeta()
    }

    if (msg.info !== undefined) {
      resolved.info = MLAImuInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new MLAImuInfo()
    }

    return resolved;
    }
};

module.exports = MLAImu;
