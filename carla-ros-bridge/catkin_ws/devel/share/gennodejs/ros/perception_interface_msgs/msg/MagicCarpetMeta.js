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

class MagicCarpetMeta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_timestamp_us = null;
      this.camera_tag = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_timestamp_us')) {
        this.sensor_timestamp_us = initObj.sensor_timestamp_us
      }
      else {
        this.sensor_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('camera_tag')) {
        this.camera_tag = initObj.camera_tag
      }
      else {
        this.camera_tag = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagicCarpetMeta
    // Serialize message field [sensor_timestamp_us]
    bufferOffset = _serializer.uint32(obj.sensor_timestamp_us, buffer, bufferOffset);
    // Serialize message field [camera_tag]
    bufferOffset = _serializer.string(obj.camera_tag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagicCarpetMeta
    let len;
    let data = new MagicCarpetMeta(null);
    // Deserialize message field [sensor_timestamp_us]
    data.sensor_timestamp_us = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [camera_tag]
    data.camera_tag = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.camera_tag);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/MagicCarpetMeta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '109e7fe38bbb402d00aa8621ad7265e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 sensor_timestamp_us
    string camera_tag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagicCarpetMeta(null);
    if (msg.sensor_timestamp_us !== undefined) {
      resolved.sensor_timestamp_us = msg.sensor_timestamp_us;
    }
    else {
      resolved.sensor_timestamp_us = 0
    }

    if (msg.camera_tag !== undefined) {
      resolved.camera_tag = msg.camera_tag;
    }
    else {
      resolved.camera_tag = ''
    }

    return resolved;
    }
};

module.exports = MagicCarpetMeta;
