// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UssEnvelopeMeas = require('./UssEnvelopeMeas.js');
let UssEnvelopeDiag = require('./UssEnvelopeDiag.js');
let UssEnvelopeId = require('./UssEnvelopeId.js');

//-----------------------------------------------------------

class UssEnvelopeSgws {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.meas = null;
      this.diag = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('meas')) {
        this.meas = initObj.meas
      }
      else {
        this.meas = new UssEnvelopeMeas();
      }
      if (initObj.hasOwnProperty('diag')) {
        this.diag = initObj.diag
      }
      else {
        this.diag = new UssEnvelopeDiag();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new UssEnvelopeId();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssEnvelopeSgws
    // Serialize message field [meas]
    bufferOffset = UssEnvelopeMeas.serialize(obj.meas, buffer, bufferOffset);
    // Serialize message field [diag]
    bufferOffset = UssEnvelopeDiag.serialize(obj.diag, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = UssEnvelopeId.serialize(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssEnvelopeSgws
    let len;
    let data = new UssEnvelopeSgws(null);
    // Deserialize message field [meas]
    data.meas = UssEnvelopeMeas.deserialize(buffer, bufferOffset);
    // Deserialize message field [diag]
    data.diag = UssEnvelopeDiag.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = UssEnvelopeId.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UssEnvelopeMeas.getMessageSize(object.meas);
    return length + 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssEnvelopeSgws';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0d321ae249c7871a705001507af1bb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/UssEnvelopeMeas meas
    sensor_interface_msgs/UssEnvelopeDiag diag
    sensor_interface_msgs/UssEnvelopeId id
    
    ================================================================================
    MSG: sensor_interface_msgs/UssEnvelopeMeas
    float32 tx_frequency
    float32 rx_frequency
    sensor_interface_msgs/UssMeaMode measurement_mode
    float32 reverberation_time
    uint16 reverberation_period
    float32 distance_interval
    sensor_interface_msgs/NearRangeDetectionStatus near_range_detection_status
    float32 near_range_distance
    uint16 num_amplitude_samples
    float32[] amplitude_samples
    
    ================================================================================
    MSG: sensor_interface_msgs/UssMeaMode
    uint8 MEAS_MODE_NEAR_RANGE_AM = 0
    uint8 MEAS_MODE_DUAL_AM_LOW = 1
    uint8 MEAS_MODE_DUAL_AM_HIGH = 2
    uint8 MEAS_MODE_DUAL_CHIRP_LOW = 3
    uint8 MEAS_MODE_DUAL_CHIRP_HIGH = 4
    uint8 MEAS_MODE_SINGLE_CHIRP_UP = 5
    uint8 MEAS_MODE_SINGLE_CHIRP_DOWN = 6
    uint8 MEAS_MODE_RESERVED = 7
    uint8 value
    
    ================================================================================
    MSG: sensor_interface_msgs/NearRangeDetectionStatus
    uint8 USS_NEAR_RANGE_UNAVAILABLE = 0
    uint8 USS_NEAR_RANGE_NO_DETECTION = 1
    uint8 USS_NEAR_RANGE_VALID_DETECTION = 2
    uint8 value
    
    ================================================================================
    MSG: sensor_interface_msgs/UssEnvelopeDiag
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
    
    ================================================================================
    MSG: sensor_interface_msgs/UssEnvelopeId
    uint8 tx_sensor_id
    uint8 rx_sensor_id
    uint64 host_timestamp
    sensor_interface_msgs/UltrasonicResultMeta meta
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UssEnvelopeSgws(null);
    if (msg.meas !== undefined) {
      resolved.meas = UssEnvelopeMeas.Resolve(msg.meas)
    }
    else {
      resolved.meas = new UssEnvelopeMeas()
    }

    if (msg.diag !== undefined) {
      resolved.diag = UssEnvelopeDiag.Resolve(msg.diag)
    }
    else {
      resolved.diag = new UssEnvelopeDiag()
    }

    if (msg.id !== undefined) {
      resolved.id = UssEnvelopeId.Resolve(msg.id)
    }
    else {
      resolved.id = new UssEnvelopeId()
    }

    return resolved;
    }
};

module.exports = UssEnvelopeSgws;
