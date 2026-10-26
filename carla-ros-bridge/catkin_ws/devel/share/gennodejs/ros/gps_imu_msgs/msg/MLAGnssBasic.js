// Auto-generated. Do not edit!

// (in-package gps_imu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MLAGnssBasic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.vel_e = null;
      this.vel_n = null;
      this.vel_u = null;
      this.azi_track = null;
      this.speed = null;
      this.status = null;
      this.msg_type = null;
      this.sat_num = null;
      this.hdop = null;
      this.rtk_age = null;
      this.sec_in_gps_week = null;
      this.gps_week = null;
      this.utc_time = null;
    }
    else {
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('vel_e')) {
        this.vel_e = initObj.vel_e
      }
      else {
        this.vel_e = 0.0;
      }
      if (initObj.hasOwnProperty('vel_n')) {
        this.vel_n = initObj.vel_n
      }
      else {
        this.vel_n = 0.0;
      }
      if (initObj.hasOwnProperty('vel_u')) {
        this.vel_u = initObj.vel_u
      }
      else {
        this.vel_u = 0.0;
      }
      if (initObj.hasOwnProperty('azi_track')) {
        this.azi_track = initObj.azi_track
      }
      else {
        this.azi_track = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('msg_type')) {
        this.msg_type = initObj.msg_type
      }
      else {
        this.msg_type = 0;
      }
      if (initObj.hasOwnProperty('sat_num')) {
        this.sat_num = initObj.sat_num
      }
      else {
        this.sat_num = 0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
      if (initObj.hasOwnProperty('rtk_age')) {
        this.rtk_age = initObj.rtk_age
      }
      else {
        this.rtk_age = 0.0;
      }
      if (initObj.hasOwnProperty('sec_in_gps_week')) {
        this.sec_in_gps_week = initObj.sec_in_gps_week
      }
      else {
        this.sec_in_gps_week = 0.0;
      }
      if (initObj.hasOwnProperty('gps_week')) {
        this.gps_week = initObj.gps_week
      }
      else {
        this.gps_week = 0;
      }
      if (initObj.hasOwnProperty('utc_time')) {
        this.utc_time = initObj.utc_time
      }
      else {
        this.utc_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAGnssBasic
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [vel_e]
    bufferOffset = _serializer.float64(obj.vel_e, buffer, bufferOffset);
    // Serialize message field [vel_n]
    bufferOffset = _serializer.float64(obj.vel_n, buffer, bufferOffset);
    // Serialize message field [vel_u]
    bufferOffset = _serializer.float64(obj.vel_u, buffer, bufferOffset);
    // Serialize message field [azi_track]
    bufferOffset = _serializer.float64(obj.azi_track, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [msg_type]
    bufferOffset = _serializer.int8(obj.msg_type, buffer, bufferOffset);
    // Serialize message field [sat_num]
    bufferOffset = _serializer.int16(obj.sat_num, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float64(obj.hdop, buffer, bufferOffset);
    // Serialize message field [rtk_age]
    bufferOffset = _serializer.float64(obj.rtk_age, buffer, bufferOffset);
    // Serialize message field [sec_in_gps_week]
    bufferOffset = _serializer.float64(obj.sec_in_gps_week, buffer, bufferOffset);
    // Serialize message field [gps_week]
    bufferOffset = _serializer.uint16(obj.gps_week, buffer, bufferOffset);
    // Serialize message field [utc_time]
    bufferOffset = _serializer.float64(obj.utc_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAGnssBasic
    let len;
    let data = new MLAGnssBasic(null);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_e]
    data.vel_e = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_n]
    data.vel_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_u]
    data.vel_u = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [azi_track]
    data.azi_track = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [msg_type]
    data.msg_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sat_num]
    data.sat_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rtk_age]
    data.rtk_age = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sec_in_gps_week]
    data.sec_in_gps_week = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gps_week]
    data.gps_week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [utc_time]
    data.utc_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 102;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_imu_msgs/MLAGnssBasic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '867555bcf22fe3ccc66b8a6449df4ab6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAGnssBasic(null);
    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.vel_e !== undefined) {
      resolved.vel_e = msg.vel_e;
    }
    else {
      resolved.vel_e = 0.0
    }

    if (msg.vel_n !== undefined) {
      resolved.vel_n = msg.vel_n;
    }
    else {
      resolved.vel_n = 0.0
    }

    if (msg.vel_u !== undefined) {
      resolved.vel_u = msg.vel_u;
    }
    else {
      resolved.vel_u = 0.0
    }

    if (msg.azi_track !== undefined) {
      resolved.azi_track = msg.azi_track;
    }
    else {
      resolved.azi_track = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.msg_type !== undefined) {
      resolved.msg_type = msg.msg_type;
    }
    else {
      resolved.msg_type = 0
    }

    if (msg.sat_num !== undefined) {
      resolved.sat_num = msg.sat_num;
    }
    else {
      resolved.sat_num = 0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    if (msg.rtk_age !== undefined) {
      resolved.rtk_age = msg.rtk_age;
    }
    else {
      resolved.rtk_age = 0.0
    }

    if (msg.sec_in_gps_week !== undefined) {
      resolved.sec_in_gps_week = msg.sec_in_gps_week;
    }
    else {
      resolved.sec_in_gps_week = 0.0
    }

    if (msg.gps_week !== undefined) {
      resolved.gps_week = msg.gps_week;
    }
    else {
      resolved.gps_week = 0
    }

    if (msg.utc_time !== undefined) {
      resolved.utc_time = msg.utc_time;
    }
    else {
      resolved.utc_time = 0.0
    }

    return resolved;
    }
};

module.exports = MLAGnssBasic;
