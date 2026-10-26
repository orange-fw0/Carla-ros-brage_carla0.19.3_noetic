// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TransferEgoPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.is_high_precision_mode = null;
      this.sensor_timestamp_us = null;
      this.longitude = null;
      this.latitude = null;
      this.altitude = null;
      this.global_roll = null;
      this.global_pitch = null;
      this.global_yaw = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('is_high_precision_mode')) {
        this.is_high_precision_mode = initObj.is_high_precision_mode
      }
      else {
        this.is_high_precision_mode = false;
      }
      if (initObj.hasOwnProperty('sensor_timestamp_us')) {
        this.sensor_timestamp_us = initObj.sensor_timestamp_us
      }
      else {
        this.sensor_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('global_roll')) {
        this.global_roll = initObj.global_roll
      }
      else {
        this.global_roll = 0.0;
      }
      if (initObj.hasOwnProperty('global_pitch')) {
        this.global_pitch = initObj.global_pitch
      }
      else {
        this.global_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('global_yaw')) {
        this.global_yaw = initObj.global_yaw
      }
      else {
        this.global_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransferEgoPose
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [is_high_precision_mode]
    bufferOffset = _serializer.bool(obj.is_high_precision_mode, buffer, bufferOffset);
    // Serialize message field [sensor_timestamp_us]
    bufferOffset = _serializer.uint64(obj.sensor_timestamp_us, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [global_roll]
    bufferOffset = _serializer.float64(obj.global_roll, buffer, bufferOffset);
    // Serialize message field [global_pitch]
    bufferOffset = _serializer.float64(obj.global_pitch, buffer, bufferOffset);
    // Serialize message field [global_yaw]
    bufferOffset = _serializer.float64(obj.global_yaw, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransferEgoPose
    let len;
    let data = new TransferEgoPose(null);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_high_precision_mode]
    data.is_high_precision_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sensor_timestamp_us]
    data.sensor_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_roll]
    data.global_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_pitch]
    data.global_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_yaw]
    data.global_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TransferEgoPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eae6e5af52ef316062cafab41ec0a7a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool available
    bool is_high_precision_mode
    uint64 sensor_timestamp_us
    float64 longitude
    float64 latitude
    float64 altitude
    float64 global_roll
    float64 global_pitch
    float64 global_yaw
    string reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransferEgoPose(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.is_high_precision_mode !== undefined) {
      resolved.is_high_precision_mode = msg.is_high_precision_mode;
    }
    else {
      resolved.is_high_precision_mode = false
    }

    if (msg.sensor_timestamp_us !== undefined) {
      resolved.sensor_timestamp_us = msg.sensor_timestamp_us;
    }
    else {
      resolved.sensor_timestamp_us = 0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.global_roll !== undefined) {
      resolved.global_roll = msg.global_roll;
    }
    else {
      resolved.global_roll = 0.0
    }

    if (msg.global_pitch !== undefined) {
      resolved.global_pitch = msg.global_pitch;
    }
    else {
      resolved.global_pitch = 0.0
    }

    if (msg.global_yaw !== undefined) {
      resolved.global_yaw = msg.global_yaw;
    }
    else {
      resolved.global_yaw = 0.0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = TransferEgoPose;
