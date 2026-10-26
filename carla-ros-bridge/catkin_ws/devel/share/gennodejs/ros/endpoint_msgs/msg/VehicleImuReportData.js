// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleImuReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.linear_acceleration_lat = null;
      this.linear_acceleration_lon = null;
      this.linear_acceleration_vert = null;
      this.angular_velocity_roll = null;
      this.angular_velocity_pitch = null;
      this.angular_velocity_yaw = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_lat')) {
        this.linear_acceleration_lat = initObj.linear_acceleration_lat
      }
      else {
        this.linear_acceleration_lat = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_lon')) {
        this.linear_acceleration_lon = initObj.linear_acceleration_lon
      }
      else {
        this.linear_acceleration_lon = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_vert')) {
        this.linear_acceleration_vert = initObj.linear_acceleration_vert
      }
      else {
        this.linear_acceleration_vert = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_roll')) {
        this.angular_velocity_roll = initObj.angular_velocity_roll
      }
      else {
        this.angular_velocity_roll = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_pitch')) {
        this.angular_velocity_pitch = initObj.angular_velocity_pitch
      }
      else {
        this.angular_velocity_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_yaw')) {
        this.angular_velocity_yaw = initObj.angular_velocity_yaw
      }
      else {
        this.angular_velocity_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleImuReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_lat]
    bufferOffset = _serializer.float32(obj.linear_acceleration_lat, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_lon]
    bufferOffset = _serializer.float32(obj.linear_acceleration_lon, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_vert]
    bufferOffset = _serializer.float32(obj.linear_acceleration_vert, buffer, bufferOffset);
    // Serialize message field [angular_velocity_roll]
    bufferOffset = _serializer.float32(obj.angular_velocity_roll, buffer, bufferOffset);
    // Serialize message field [angular_velocity_pitch]
    bufferOffset = _serializer.float32(obj.angular_velocity_pitch, buffer, bufferOffset);
    // Serialize message field [angular_velocity_yaw]
    bufferOffset = _serializer.float32(obj.angular_velocity_yaw, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleImuReportData
    let len;
    let data = new VehicleImuReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_lat]
    data.linear_acceleration_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_lon]
    data.linear_acceleration_lon = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_vert]
    data.linear_acceleration_vert = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_roll]
    data.angular_velocity_roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_pitch]
    data.angular_velocity_pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_yaw]
    data.angular_velocity_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicleImuReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a88bce10ffda34b3908a00ee4f04bd9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    float32 linear_acceleration_lat
    float32 linear_acceleration_lon
    float32 linear_acceleration_vert
    float32 angular_velocity_roll
    float32 angular_velocity_pitch
    float32 angular_velocity_yaw
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleImuReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.linear_acceleration_lat !== undefined) {
      resolved.linear_acceleration_lat = msg.linear_acceleration_lat;
    }
    else {
      resolved.linear_acceleration_lat = 0.0
    }

    if (msg.linear_acceleration_lon !== undefined) {
      resolved.linear_acceleration_lon = msg.linear_acceleration_lon;
    }
    else {
      resolved.linear_acceleration_lon = 0.0
    }

    if (msg.linear_acceleration_vert !== undefined) {
      resolved.linear_acceleration_vert = msg.linear_acceleration_vert;
    }
    else {
      resolved.linear_acceleration_vert = 0.0
    }

    if (msg.angular_velocity_roll !== undefined) {
      resolved.angular_velocity_roll = msg.angular_velocity_roll;
    }
    else {
      resolved.angular_velocity_roll = 0.0
    }

    if (msg.angular_velocity_pitch !== undefined) {
      resolved.angular_velocity_pitch = msg.angular_velocity_pitch;
    }
    else {
      resolved.angular_velocity_pitch = 0.0
    }

    if (msg.angular_velocity_yaw !== undefined) {
      resolved.angular_velocity_yaw = msg.angular_velocity_yaw;
    }
    else {
      resolved.angular_velocity_yaw = 0.0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = VehicleImuReportData;
