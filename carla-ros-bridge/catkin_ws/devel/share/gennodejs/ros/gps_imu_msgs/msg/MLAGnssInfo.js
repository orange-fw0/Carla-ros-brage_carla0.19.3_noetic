// Auto-generated. Do not edit!

// (in-package gps_imu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAGnssBasic = require('./MLAGnssBasic.js');
let MLAGnssExtend = require('./MLAGnssExtend.js');

//-----------------------------------------------------------

class MLAGnssInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.gnss_data_basic = null;
      this.gnss_data_extend = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('gnss_data_basic')) {
        this.gnss_data_basic = initObj.gnss_data_basic
      }
      else {
        this.gnss_data_basic = new MLAGnssBasic();
      }
      if (initObj.hasOwnProperty('gnss_data_extend')) {
        this.gnss_data_extend = initObj.gnss_data_extend
      }
      else {
        this.gnss_data_extend = new MLAGnssExtend();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAGnssInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [gnss_data_basic]
    bufferOffset = MLAGnssBasic.serialize(obj.gnss_data_basic, buffer, bufferOffset);
    // Serialize message field [gnss_data_extend]
    bufferOffset = MLAGnssExtend.serialize(obj.gnss_data_extend, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAGnssInfo
    let len;
    let data = new MLAGnssInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gnss_data_basic]
    data.gnss_data_basic = MLAGnssBasic.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss_data_extend]
    data.gnss_data_extend = MLAGnssExtend.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MLAGnssExtend.getMessageSize(object.gnss_data_extend);
    return length + 103;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_imu_msgs/MLAGnssInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd0fdd3d7d13e7ec21c780e65c672f57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MLAGnssInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.gnss_data_basic !== undefined) {
      resolved.gnss_data_basic = MLAGnssBasic.Resolve(msg.gnss_data_basic)
    }
    else {
      resolved.gnss_data_basic = new MLAGnssBasic()
    }

    if (msg.gnss_data_extend !== undefined) {
      resolved.gnss_data_extend = MLAGnssExtend.Resolve(msg.gnss_data_extend)
    }
    else {
      resolved.gnss_data_extend = new MLAGnssExtend()
    }

    return resolved;
    }
};

// Constants for message
MLAGnssInfo.Constants = {
  MLA_GNSS_BASIC: 1,
  MLA_GNSS_EXTEND: 2,
}

module.exports = MLAGnssInfo;
