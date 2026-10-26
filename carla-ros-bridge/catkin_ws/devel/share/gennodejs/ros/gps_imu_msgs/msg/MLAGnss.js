// Auto-generated. Do not edit!

// (in-package gps_imu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAGnssMeta = require('./MLAGnssMeta.js');
let MLAGnssInfo = require('./MLAGnssInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MLAGnss {
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
        this.meta = new MLAGnssMeta();
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new MLAGnssInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAGnss
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = MLAGnssMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = MLAGnssInfo.serialize(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAGnss
    let len;
    let data = new MLAGnss(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = MLAGnssMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = MLAGnssInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MLAGnssInfo.getMessageSize(object.info);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_imu_msgs/MLAGnss';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5b1291bb25e18f6cd8b1f941c56771d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    gps_imu_msgs/MLAGnssMeta meta
    gps_imu_msgs/MLAGnssInfo info
    
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
    MSG: gps_imu_msgs/MLAGnssMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: gps_imu_msgs/MLAGnssInfo
    uint8 MLA_GNSS_BASIC = 1
    uint8 MLA_GNSS_EXTEND = 2
    uint8 available
    gps_imu_msgs/MLAGnssBasic gnss_data_basic
    gps_imu_msgs/MLAGnssExtend gnss_data_extend
    
    ================================================================================
    MSG: gps_imu_msgs/MLAGnssBasic
    float64 lat
    float64 lon
    float64 alt
    float64 vel_e
    float64 vel_n
    float64 vel_u
    float64 azi_track
    float64 speed
    int8 status
    int8 msg_type
    int16 sat_num
    float64 hdop
    float64 rtk_age
    float64 sec_in_gps_week
    uint16 gps_week
    float64 utc_time
    
    ================================================================================
    MSG: gps_imu_msgs/MLAGnssExtend
    int16 sv_num
    int16[] sv_id
    int16[] sv_elv
    int16[] sv_az
    int16[] sv_cno
    float64 std_pe
    float64 std_pn
    float64 std_pu
    float64 std_ve
    float64 std_vn
    float64 std_vu
    float64 dual_antenna_azimuth
    float64 pdop
    float64 vdop
    int8 fix_type
    float64 alt_msl
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAGnss(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = MLAGnssMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new MLAGnssMeta()
    }

    if (msg.info !== undefined) {
      resolved.info = MLAGnssInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new MLAGnssInfo()
    }

    return resolved;
    }
};

module.exports = MLAGnss;
