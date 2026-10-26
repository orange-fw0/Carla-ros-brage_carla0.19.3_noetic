// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UssEnvelopeDiag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aRawient_temperature = null;
      this.cont_wav_noise_l = null;
      this.cont_wav_noise_h = null;
      this.sensor_status_valid = null;
      this.sensor_com_status_valid = null;
      this.thermal_warning = null;
      this.tx_fail = null;
      this.sensor_disturbed = null;
      this.white_band_noise = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('aRawient_temperature')) {
        this.aRawient_temperature = initObj.aRawient_temperature
      }
      else {
        this.aRawient_temperature = 0;
      }
      if (initObj.hasOwnProperty('cont_wav_noise_l')) {
        this.cont_wav_noise_l = initObj.cont_wav_noise_l
      }
      else {
        this.cont_wav_noise_l = 0;
      }
      if (initObj.hasOwnProperty('cont_wav_noise_h')) {
        this.cont_wav_noise_h = initObj.cont_wav_noise_h
      }
      else {
        this.cont_wav_noise_h = 0;
      }
      if (initObj.hasOwnProperty('sensor_status_valid')) {
        this.sensor_status_valid = initObj.sensor_status_valid
      }
      else {
        this.sensor_status_valid = false;
      }
      if (initObj.hasOwnProperty('sensor_com_status_valid')) {
        this.sensor_com_status_valid = initObj.sensor_com_status_valid
      }
      else {
        this.sensor_com_status_valid = false;
      }
      if (initObj.hasOwnProperty('thermal_warning')) {
        this.thermal_warning = initObj.thermal_warning
      }
      else {
        this.thermal_warning = false;
      }
      if (initObj.hasOwnProperty('tx_fail')) {
        this.tx_fail = initObj.tx_fail
      }
      else {
        this.tx_fail = false;
      }
      if (initObj.hasOwnProperty('sensor_disturbed')) {
        this.sensor_disturbed = initObj.sensor_disturbed
      }
      else {
        this.sensor_disturbed = false;
      }
      if (initObj.hasOwnProperty('white_band_noise')) {
        this.white_band_noise = initObj.white_band_noise
      }
      else {
        this.white_band_noise = false;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssEnvelopeDiag
    // Serialize message field [aRawient_temperature]
    bufferOffset = _serializer.int8(obj.aRawient_temperature, buffer, bufferOffset);
    // Serialize message field [cont_wav_noise_l]
    bufferOffset = _serializer.uint8(obj.cont_wav_noise_l, buffer, bufferOffset);
    // Serialize message field [cont_wav_noise_h]
    bufferOffset = _serializer.uint8(obj.cont_wav_noise_h, buffer, bufferOffset);
    // Serialize message field [sensor_status_valid]
    bufferOffset = _serializer.bool(obj.sensor_status_valid, buffer, bufferOffset);
    // Serialize message field [sensor_com_status_valid]
    bufferOffset = _serializer.bool(obj.sensor_com_status_valid, buffer, bufferOffset);
    // Serialize message field [thermal_warning]
    bufferOffset = _serializer.bool(obj.thermal_warning, buffer, bufferOffset);
    // Serialize message field [tx_fail]
    bufferOffset = _serializer.bool(obj.tx_fail, buffer, bufferOffset);
    // Serialize message field [sensor_disturbed]
    bufferOffset = _serializer.bool(obj.sensor_disturbed, buffer, bufferOffset);
    // Serialize message field [white_band_noise]
    bufferOffset = _serializer.bool(obj.white_band_noise, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint64(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssEnvelopeDiag
    let len;
    let data = new UssEnvelopeDiag(null);
    // Deserialize message field [aRawient_temperature]
    data.aRawient_temperature = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cont_wav_noise_l]
    data.cont_wav_noise_l = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cont_wav_noise_h]
    data.cont_wav_noise_h = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sensor_status_valid]
    data.sensor_status_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sensor_com_status_valid]
    data.sensor_com_status_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [thermal_warning]
    data.thermal_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tx_fail]
    data.tx_fail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sensor_disturbed]
    data.sensor_disturbed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [white_band_noise]
    data.white_band_noise = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssEnvelopeDiag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2af146137d90807c3d4b5c3b6eb99e23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 aRawient_temperature
    uint8 cont_wav_noise_l
    uint8 cont_wav_noise_h
    bool sensor_status_valid
    bool sensor_com_status_valid
    bool thermal_warning
    bool tx_fail
    bool sensor_disturbed
    bool white_band_noise
    uint64 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UssEnvelopeDiag(null);
    if (msg.aRawient_temperature !== undefined) {
      resolved.aRawient_temperature = msg.aRawient_temperature;
    }
    else {
      resolved.aRawient_temperature = 0
    }

    if (msg.cont_wav_noise_l !== undefined) {
      resolved.cont_wav_noise_l = msg.cont_wav_noise_l;
    }
    else {
      resolved.cont_wav_noise_l = 0
    }

    if (msg.cont_wav_noise_h !== undefined) {
      resolved.cont_wav_noise_h = msg.cont_wav_noise_h;
    }
    else {
      resolved.cont_wav_noise_h = 0
    }

    if (msg.sensor_status_valid !== undefined) {
      resolved.sensor_status_valid = msg.sensor_status_valid;
    }
    else {
      resolved.sensor_status_valid = false
    }

    if (msg.sensor_com_status_valid !== undefined) {
      resolved.sensor_com_status_valid = msg.sensor_com_status_valid;
    }
    else {
      resolved.sensor_com_status_valid = false
    }

    if (msg.thermal_warning !== undefined) {
      resolved.thermal_warning = msg.thermal_warning;
    }
    else {
      resolved.thermal_warning = false
    }

    if (msg.tx_fail !== undefined) {
      resolved.tx_fail = msg.tx_fail;
    }
    else {
      resolved.tx_fail = false
    }

    if (msg.sensor_disturbed !== undefined) {
      resolved.sensor_disturbed = msg.sensor_disturbed;
    }
    else {
      resolved.sensor_disturbed = false
    }

    if (msg.white_band_noise !== undefined) {
      resolved.white_band_noise = msg.white_band_noise;
    }
    else {
      resolved.white_band_noise = false
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = UssEnvelopeDiag;
