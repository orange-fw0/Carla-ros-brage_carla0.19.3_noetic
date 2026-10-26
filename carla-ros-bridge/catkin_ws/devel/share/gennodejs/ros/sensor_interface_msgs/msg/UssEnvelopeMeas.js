// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UssMeaMode = require('./UssMeaMode.js');
let NearRangeDetectionStatus = require('./NearRangeDetectionStatus.js');

//-----------------------------------------------------------

class UssEnvelopeMeas {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tx_frequency = null;
      this.rx_frequency = null;
      this.measurement_mode = null;
      this.reverberation_time = null;
      this.reverberation_period = null;
      this.distance_interval = null;
      this.near_range_detection_status = null;
      this.near_range_distance = null;
      this.num_amplitude_samples = null;
      this.amplitude_samples = null;
    }
    else {
      if (initObj.hasOwnProperty('tx_frequency')) {
        this.tx_frequency = initObj.tx_frequency
      }
      else {
        this.tx_frequency = 0.0;
      }
      if (initObj.hasOwnProperty('rx_frequency')) {
        this.rx_frequency = initObj.rx_frequency
      }
      else {
        this.rx_frequency = 0.0;
      }
      if (initObj.hasOwnProperty('measurement_mode')) {
        this.measurement_mode = initObj.measurement_mode
      }
      else {
        this.measurement_mode = new UssMeaMode();
      }
      if (initObj.hasOwnProperty('reverberation_time')) {
        this.reverberation_time = initObj.reverberation_time
      }
      else {
        this.reverberation_time = 0.0;
      }
      if (initObj.hasOwnProperty('reverberation_period')) {
        this.reverberation_period = initObj.reverberation_period
      }
      else {
        this.reverberation_period = 0;
      }
      if (initObj.hasOwnProperty('distance_interval')) {
        this.distance_interval = initObj.distance_interval
      }
      else {
        this.distance_interval = 0.0;
      }
      if (initObj.hasOwnProperty('near_range_detection_status')) {
        this.near_range_detection_status = initObj.near_range_detection_status
      }
      else {
        this.near_range_detection_status = new NearRangeDetectionStatus();
      }
      if (initObj.hasOwnProperty('near_range_distance')) {
        this.near_range_distance = initObj.near_range_distance
      }
      else {
        this.near_range_distance = 0.0;
      }
      if (initObj.hasOwnProperty('num_amplitude_samples')) {
        this.num_amplitude_samples = initObj.num_amplitude_samples
      }
      else {
        this.num_amplitude_samples = 0;
      }
      if (initObj.hasOwnProperty('amplitude_samples')) {
        this.amplitude_samples = initObj.amplitude_samples
      }
      else {
        this.amplitude_samples = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssEnvelopeMeas
    // Serialize message field [tx_frequency]
    bufferOffset = _serializer.float32(obj.tx_frequency, buffer, bufferOffset);
    // Serialize message field [rx_frequency]
    bufferOffset = _serializer.float32(obj.rx_frequency, buffer, bufferOffset);
    // Serialize message field [measurement_mode]
    bufferOffset = UssMeaMode.serialize(obj.measurement_mode, buffer, bufferOffset);
    // Serialize message field [reverberation_time]
    bufferOffset = _serializer.float32(obj.reverberation_time, buffer, bufferOffset);
    // Serialize message field [reverberation_period]
    bufferOffset = _serializer.uint16(obj.reverberation_period, buffer, bufferOffset);
    // Serialize message field [distance_interval]
    bufferOffset = _serializer.float32(obj.distance_interval, buffer, bufferOffset);
    // Serialize message field [near_range_detection_status]
    bufferOffset = NearRangeDetectionStatus.serialize(obj.near_range_detection_status, buffer, bufferOffset);
    // Serialize message field [near_range_distance]
    bufferOffset = _serializer.float32(obj.near_range_distance, buffer, bufferOffset);
    // Serialize message field [num_amplitude_samples]
    bufferOffset = _serializer.uint16(obj.num_amplitude_samples, buffer, bufferOffset);
    // Serialize message field [amplitude_samples]
    bufferOffset = _arraySerializer.float32(obj.amplitude_samples, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssEnvelopeMeas
    let len;
    let data = new UssEnvelopeMeas(null);
    // Deserialize message field [tx_frequency]
    data.tx_frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rx_frequency]
    data.rx_frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [measurement_mode]
    data.measurement_mode = UssMeaMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [reverberation_time]
    data.reverberation_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reverberation_period]
    data.reverberation_period = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [distance_interval]
    data.distance_interval = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [near_range_detection_status]
    data.near_range_detection_status = NearRangeDetectionStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [near_range_distance]
    data.near_range_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_amplitude_samples]
    data.num_amplitude_samples = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [amplitude_samples]
    data.amplitude_samples = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.amplitude_samples.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssEnvelopeMeas';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07ec4ac88972b010d545394dbd4817ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UssEnvelopeMeas(null);
    if (msg.tx_frequency !== undefined) {
      resolved.tx_frequency = msg.tx_frequency;
    }
    else {
      resolved.tx_frequency = 0.0
    }

    if (msg.rx_frequency !== undefined) {
      resolved.rx_frequency = msg.rx_frequency;
    }
    else {
      resolved.rx_frequency = 0.0
    }

    if (msg.measurement_mode !== undefined) {
      resolved.measurement_mode = UssMeaMode.Resolve(msg.measurement_mode)
    }
    else {
      resolved.measurement_mode = new UssMeaMode()
    }

    if (msg.reverberation_time !== undefined) {
      resolved.reverberation_time = msg.reverberation_time;
    }
    else {
      resolved.reverberation_time = 0.0
    }

    if (msg.reverberation_period !== undefined) {
      resolved.reverberation_period = msg.reverberation_period;
    }
    else {
      resolved.reverberation_period = 0
    }

    if (msg.distance_interval !== undefined) {
      resolved.distance_interval = msg.distance_interval;
    }
    else {
      resolved.distance_interval = 0.0
    }

    if (msg.near_range_detection_status !== undefined) {
      resolved.near_range_detection_status = NearRangeDetectionStatus.Resolve(msg.near_range_detection_status)
    }
    else {
      resolved.near_range_detection_status = new NearRangeDetectionStatus()
    }

    if (msg.near_range_distance !== undefined) {
      resolved.near_range_distance = msg.near_range_distance;
    }
    else {
      resolved.near_range_distance = 0.0
    }

    if (msg.num_amplitude_samples !== undefined) {
      resolved.num_amplitude_samples = msg.num_amplitude_samples;
    }
    else {
      resolved.num_amplitude_samples = 0
    }

    if (msg.amplitude_samples !== undefined) {
      resolved.amplitude_samples = msg.amplitude_samples;
    }
    else {
      resolved.amplitude_samples = []
    }

    return resolved;
    }
};

module.exports = UssEnvelopeMeas;
