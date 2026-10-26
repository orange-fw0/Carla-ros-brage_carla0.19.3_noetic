// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UssEnvelopeSgws = require('./UssEnvelopeSgws.js');

//-----------------------------------------------------------

class RawUSSOutputFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sgws = null;
      this.num_sgws = null;
      this.live_cnt = null;
    }
    else {
      if (initObj.hasOwnProperty('sgws')) {
        this.sgws = initObj.sgws
      }
      else {
        this.sgws = [];
      }
      if (initObj.hasOwnProperty('num_sgws')) {
        this.num_sgws = initObj.num_sgws
      }
      else {
        this.num_sgws = 0;
      }
      if (initObj.hasOwnProperty('live_cnt')) {
        this.live_cnt = initObj.live_cnt
      }
      else {
        this.live_cnt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawUSSOutputFrame
    // Serialize message field [sgws]
    // Serialize the length for message field [sgws]
    bufferOffset = _serializer.uint32(obj.sgws.length, buffer, bufferOffset);
    obj.sgws.forEach((val) => {
      bufferOffset = UssEnvelopeSgws.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [num_sgws]
    bufferOffset = _serializer.uint8(obj.num_sgws, buffer, bufferOffset);
    // Serialize message field [live_cnt]
    bufferOffset = _serializer.uint16(obj.live_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawUSSOutputFrame
    let len;
    let data = new RawUSSOutputFrame(null);
    // Deserialize message field [sgws]
    // Deserialize array length for message field [sgws]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sgws = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sgws[i] = UssEnvelopeSgws.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [num_sgws]
    data.num_sgws = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [live_cnt]
    data.live_cnt = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sgws.forEach((val) => {
      length += UssEnvelopeSgws.getMessageSize(val);
    });
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/RawUSSOutputFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c59634166b49d284331463c78b75b08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/UssEnvelopeSgws[] sgws
    uint8 num_sgws
    uint16 live_cnt
    
    ================================================================================
    MSG: sensor_interface_msgs/UssEnvelopeSgws
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
    const resolved = new RawUSSOutputFrame(null);
    if (msg.sgws !== undefined) {
      resolved.sgws = new Array(msg.sgws.length);
      for (let i = 0; i < resolved.sgws.length; ++i) {
        resolved.sgws[i] = UssEnvelopeSgws.Resolve(msg.sgws[i]);
      }
    }
    else {
      resolved.sgws = []
    }

    if (msg.num_sgws !== undefined) {
      resolved.num_sgws = msg.num_sgws;
    }
    else {
      resolved.num_sgws = 0
    }

    if (msg.live_cnt !== undefined) {
      resolved.live_cnt = msg.live_cnt;
    }
    else {
      resolved.live_cnt = 0
    }

    return resolved;
    }
};

module.exports = RawUSSOutputFrame;
