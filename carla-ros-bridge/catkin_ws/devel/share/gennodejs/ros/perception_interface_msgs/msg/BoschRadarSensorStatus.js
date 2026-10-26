// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BoschRadarSensorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_tag = null;
      this.hardware_failure = null;
      this.alignment_failure = null;
      this.sgu_failure = null;
      this.sensor_dirty = null;
      this.other_failure = null;
      this.status = null;
      this.details = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_tag')) {
        this.sensor_tag = initObj.sensor_tag
      }
      else {
        this.sensor_tag = '';
      }
      if (initObj.hasOwnProperty('hardware_failure')) {
        this.hardware_failure = initObj.hardware_failure
      }
      else {
        this.hardware_failure = 0;
      }
      if (initObj.hasOwnProperty('alignment_failure')) {
        this.alignment_failure = initObj.alignment_failure
      }
      else {
        this.alignment_failure = 0;
      }
      if (initObj.hasOwnProperty('sgu_failure')) {
        this.sgu_failure = initObj.sgu_failure
      }
      else {
        this.sgu_failure = 0;
      }
      if (initObj.hasOwnProperty('sensor_dirty')) {
        this.sensor_dirty = initObj.sensor_dirty
      }
      else {
        this.sensor_dirty = 0;
      }
      if (initObj.hasOwnProperty('other_failure')) {
        this.other_failure = initObj.other_failure
      }
      else {
        this.other_failure = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('details')) {
        this.details = initObj.details
      }
      else {
        this.details = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoschRadarSensorStatus
    // Serialize message field [sensor_tag]
    bufferOffset = _serializer.string(obj.sensor_tag, buffer, bufferOffset);
    // Serialize message field [hardware_failure]
    bufferOffset = _serializer.int16(obj.hardware_failure, buffer, bufferOffset);
    // Serialize message field [alignment_failure]
    bufferOffset = _serializer.int16(obj.alignment_failure, buffer, bufferOffset);
    // Serialize message field [sgu_failure]
    bufferOffset = _serializer.int16(obj.sgu_failure, buffer, bufferOffset);
    // Serialize message field [sensor_dirty]
    bufferOffset = _serializer.int16(obj.sensor_dirty, buffer, bufferOffset);
    // Serialize message field [other_failure]
    bufferOffset = _serializer.int16(obj.other_failure, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint64(obj.status, buffer, bufferOffset);
    // Serialize message field [details]
    bufferOffset = _serializer.string(obj.details, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoschRadarSensorStatus
    let len;
    let data = new BoschRadarSensorStatus(null);
    // Deserialize message field [sensor_tag]
    data.sensor_tag = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hardware_failure]
    data.hardware_failure = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [alignment_failure]
    data.alignment_failure = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sgu_failure]
    data.sgu_failure = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sensor_dirty]
    data.sensor_dirty = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [other_failure]
    data.other_failure = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [details]
    data.details = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sensor_tag);
    length += _getByteLength(object.details);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/BoschRadarSensorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a4e73d46d61946dedbe1686d258c98b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sensor_tag
    int16 hardware_failure
    int16 alignment_failure
    int16 sgu_failure
    int16 sensor_dirty
    int16 other_failure
    uint64 status
    string details
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoschRadarSensorStatus(null);
    if (msg.sensor_tag !== undefined) {
      resolved.sensor_tag = msg.sensor_tag;
    }
    else {
      resolved.sensor_tag = ''
    }

    if (msg.hardware_failure !== undefined) {
      resolved.hardware_failure = msg.hardware_failure;
    }
    else {
      resolved.hardware_failure = 0
    }

    if (msg.alignment_failure !== undefined) {
      resolved.alignment_failure = msg.alignment_failure;
    }
    else {
      resolved.alignment_failure = 0
    }

    if (msg.sgu_failure !== undefined) {
      resolved.sgu_failure = msg.sgu_failure;
    }
    else {
      resolved.sgu_failure = 0
    }

    if (msg.sensor_dirty !== undefined) {
      resolved.sensor_dirty = msg.sensor_dirty;
    }
    else {
      resolved.sensor_dirty = 0
    }

    if (msg.other_failure !== undefined) {
      resolved.other_failure = msg.other_failure;
    }
    else {
      resolved.other_failure = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.details !== undefined) {
      resolved.details = msg.details;
    }
    else {
      resolved.details = ''
    }

    return resolved;
    }
};

module.exports = BoschRadarSensorStatus;
