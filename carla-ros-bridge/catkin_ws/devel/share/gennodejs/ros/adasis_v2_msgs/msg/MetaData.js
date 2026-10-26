// Auto-generated. Do not edit!

// (in-package adasis_v2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MetaData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cyclic_counter = null;
      this.country_code = null;
      this.region_code = null;
      this.driving_side = null;
      this.speed_units = null;
      this.major_protocol_ver = null;
      this.minor_protocol_ver = null;
      this.minor_protocol_sub_ver = null;
      this.hardware_ver = null;
      this.map_provider = null;
      this.map_ver_year = null;
      this.map_ver_year_quarter = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('cyclic_counter')) {
        this.cyclic_counter = initObj.cyclic_counter
      }
      else {
        this.cyclic_counter = 0;
      }
      if (initObj.hasOwnProperty('country_code')) {
        this.country_code = initObj.country_code
      }
      else {
        this.country_code = 0;
      }
      if (initObj.hasOwnProperty('region_code')) {
        this.region_code = initObj.region_code
      }
      else {
        this.region_code = 0;
      }
      if (initObj.hasOwnProperty('driving_side')) {
        this.driving_side = initObj.driving_side
      }
      else {
        this.driving_side = 0;
      }
      if (initObj.hasOwnProperty('speed_units')) {
        this.speed_units = initObj.speed_units
      }
      else {
        this.speed_units = 0;
      }
      if (initObj.hasOwnProperty('major_protocol_ver')) {
        this.major_protocol_ver = initObj.major_protocol_ver
      }
      else {
        this.major_protocol_ver = 0;
      }
      if (initObj.hasOwnProperty('minor_protocol_ver')) {
        this.minor_protocol_ver = initObj.minor_protocol_ver
      }
      else {
        this.minor_protocol_ver = 0;
      }
      if (initObj.hasOwnProperty('minor_protocol_sub_ver')) {
        this.minor_protocol_sub_ver = initObj.minor_protocol_sub_ver
      }
      else {
        this.minor_protocol_sub_ver = 0;
      }
      if (initObj.hasOwnProperty('hardware_ver')) {
        this.hardware_ver = initObj.hardware_ver
      }
      else {
        this.hardware_ver = 0;
      }
      if (initObj.hasOwnProperty('map_provider')) {
        this.map_provider = initObj.map_provider
      }
      else {
        this.map_provider = 0;
      }
      if (initObj.hasOwnProperty('map_ver_year')) {
        this.map_ver_year = initObj.map_ver_year
      }
      else {
        this.map_ver_year = 0;
      }
      if (initObj.hasOwnProperty('map_ver_year_quarter')) {
        this.map_ver_year_quarter = initObj.map_ver_year_quarter
      }
      else {
        this.map_ver_year_quarter = 0;
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
    // Serializes a message object of type MetaData
    // Serialize message field [cyclic_counter]
    bufferOffset = _serializer.uint8(obj.cyclic_counter, buffer, bufferOffset);
    // Serialize message field [country_code]
    bufferOffset = _serializer.uint16(obj.country_code, buffer, bufferOffset);
    // Serialize message field [region_code]
    bufferOffset = _serializer.uint16(obj.region_code, buffer, bufferOffset);
    // Serialize message field [driving_side]
    bufferOffset = _serializer.uint8(obj.driving_side, buffer, bufferOffset);
    // Serialize message field [speed_units]
    bufferOffset = _serializer.uint8(obj.speed_units, buffer, bufferOffset);
    // Serialize message field [major_protocol_ver]
    bufferOffset = _serializer.uint8(obj.major_protocol_ver, buffer, bufferOffset);
    // Serialize message field [minor_protocol_ver]
    bufferOffset = _serializer.uint8(obj.minor_protocol_ver, buffer, bufferOffset);
    // Serialize message field [minor_protocol_sub_ver]
    bufferOffset = _serializer.uint8(obj.minor_protocol_sub_ver, buffer, bufferOffset);
    // Serialize message field [hardware_ver]
    bufferOffset = _serializer.uint16(obj.hardware_ver, buffer, bufferOffset);
    // Serialize message field [map_provider]
    bufferOffset = _serializer.uint8(obj.map_provider, buffer, bufferOffset);
    // Serialize message field [map_ver_year]
    bufferOffset = _serializer.uint8(obj.map_ver_year, buffer, bufferOffset);
    // Serialize message field [map_ver_year_quarter]
    bufferOffset = _serializer.uint8(obj.map_ver_year_quarter, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MetaData
    let len;
    let data = new MetaData(null);
    // Deserialize message field [cyclic_counter]
    data.cyclic_counter = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [country_code]
    data.country_code = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [region_code]
    data.region_code = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [driving_side]
    data.driving_side = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_units]
    data.speed_units = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [major_protocol_ver]
    data.major_protocol_ver = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minor_protocol_ver]
    data.minor_protocol_ver = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minor_protocol_sub_ver]
    data.minor_protocol_sub_ver = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hardware_ver]
    data.hardware_ver = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [map_provider]
    data.map_provider = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [map_ver_year]
    data.map_ver_year = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [map_ver_year_quarter]
    data.map_ver_year_quarter = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/MetaData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5556fd004a3f00d8656d992fea6c2650';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cyclic_counter
    uint16 country_code
    uint16 region_code
    uint8 driving_side
    uint8 speed_units
    uint8 major_protocol_ver
    uint8 minor_protocol_ver
    uint8 minor_protocol_sub_ver
    uint16 hardware_ver
    uint8 map_provider
    uint8 map_ver_year
    uint8 map_ver_year_quarter
    uint8 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MetaData(null);
    if (msg.cyclic_counter !== undefined) {
      resolved.cyclic_counter = msg.cyclic_counter;
    }
    else {
      resolved.cyclic_counter = 0
    }

    if (msg.country_code !== undefined) {
      resolved.country_code = msg.country_code;
    }
    else {
      resolved.country_code = 0
    }

    if (msg.region_code !== undefined) {
      resolved.region_code = msg.region_code;
    }
    else {
      resolved.region_code = 0
    }

    if (msg.driving_side !== undefined) {
      resolved.driving_side = msg.driving_side;
    }
    else {
      resolved.driving_side = 0
    }

    if (msg.speed_units !== undefined) {
      resolved.speed_units = msg.speed_units;
    }
    else {
      resolved.speed_units = 0
    }

    if (msg.major_protocol_ver !== undefined) {
      resolved.major_protocol_ver = msg.major_protocol_ver;
    }
    else {
      resolved.major_protocol_ver = 0
    }

    if (msg.minor_protocol_ver !== undefined) {
      resolved.minor_protocol_ver = msg.minor_protocol_ver;
    }
    else {
      resolved.minor_protocol_ver = 0
    }

    if (msg.minor_protocol_sub_ver !== undefined) {
      resolved.minor_protocol_sub_ver = msg.minor_protocol_sub_ver;
    }
    else {
      resolved.minor_protocol_sub_ver = 0
    }

    if (msg.hardware_ver !== undefined) {
      resolved.hardware_ver = msg.hardware_ver;
    }
    else {
      resolved.hardware_ver = 0
    }

    if (msg.map_provider !== undefined) {
      resolved.map_provider = msg.map_provider;
    }
    else {
      resolved.map_provider = 0
    }

    if (msg.map_ver_year !== undefined) {
      resolved.map_ver_year = msg.map_ver_year;
    }
    else {
      resolved.map_ver_year = 0
    }

    if (msg.map_ver_year_quarter !== undefined) {
      resolved.map_ver_year_quarter = msg.map_ver_year_quarter;
    }
    else {
      resolved.map_ver_year_quarter = 0
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

module.exports = MetaData;
