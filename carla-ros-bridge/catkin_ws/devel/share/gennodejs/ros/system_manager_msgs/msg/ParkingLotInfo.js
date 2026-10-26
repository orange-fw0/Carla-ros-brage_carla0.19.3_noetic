// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkingLotTypeEnum = require('./ParkingLotTypeEnum.js');
let mla_localization_msgs = _finder('mla_localization_msgs');

//-----------------------------------------------------------

class ParkingLotInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dist = null;
      this.id = null;
      this.name = null;
      this.position = null;
      this.parking_space_id = null;
      this.parking_space_positions = null;
      this.trace_start_position = null;
      this.trace_end_position = null;
      this.type = null;
      this.render_data = null;
      this.address = null;
      this.trajectory_length = null;
      this.label = null;
      this.reversed = null;
    }
    else {
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new mla_localization_msgs.msg.MLAPosGlobal();
      }
      if (initObj.hasOwnProperty('parking_space_id')) {
        this.parking_space_id = initObj.parking_space_id
      }
      else {
        this.parking_space_id = 0;
      }
      if (initObj.hasOwnProperty('parking_space_positions')) {
        this.parking_space_positions = initObj.parking_space_positions
      }
      else {
        this.parking_space_positions = [];
      }
      if (initObj.hasOwnProperty('trace_start_position')) {
        this.trace_start_position = initObj.trace_start_position
      }
      else {
        this.trace_start_position = new mla_localization_msgs.msg.MLAPosGlobal();
      }
      if (initObj.hasOwnProperty('trace_end_position')) {
        this.trace_end_position = initObj.trace_end_position
      }
      else {
        this.trace_end_position = new mla_localization_msgs.msg.MLAPosGlobal();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ParkingLotTypeEnum();
      }
      if (initObj.hasOwnProperty('render_data')) {
        this.render_data = initObj.render_data
      }
      else {
        this.render_data = '';
      }
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = '';
      }
      if (initObj.hasOwnProperty('trajectory_length')) {
        this.trajectory_length = initObj.trajectory_length
      }
      else {
        this.trajectory_length = 0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('reversed')) {
        this.reversed = initObj.reversed
      }
      else {
        this.reversed = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingLotInfo
    // Serialize message field [dist]
    bufferOffset = _serializer.float32(obj.dist, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = mla_localization_msgs.msg.MLAPosGlobal.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [parking_space_id]
    bufferOffset = _serializer.uint32(obj.parking_space_id, buffer, bufferOffset);
    // Serialize message field [parking_space_positions]
    // Serialize the length for message field [parking_space_positions]
    bufferOffset = _serializer.uint32(obj.parking_space_positions.length, buffer, bufferOffset);
    obj.parking_space_positions.forEach((val) => {
      bufferOffset = mla_localization_msgs.msg.MLAPosGlobal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [trace_start_position]
    bufferOffset = mla_localization_msgs.msg.MLAPosGlobal.serialize(obj.trace_start_position, buffer, bufferOffset);
    // Serialize message field [trace_end_position]
    bufferOffset = mla_localization_msgs.msg.MLAPosGlobal.serialize(obj.trace_end_position, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = ParkingLotTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [render_data]
    bufferOffset = _serializer.string(obj.render_data, buffer, bufferOffset);
    // Serialize message field [address]
    bufferOffset = _serializer.string(obj.address, buffer, bufferOffset);
    // Serialize message field [trajectory_length]
    bufferOffset = _serializer.uint32(obj.trajectory_length, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [reversed]
    bufferOffset = _serializer.string(obj.reversed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingLotInfo
    let len;
    let data = new ParkingLotInfo(null);
    // Deserialize message field [dist]
    data.dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = mla_localization_msgs.msg.MLAPosGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_space_id]
    data.parking_space_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [parking_space_positions]
    // Deserialize array length for message field [parking_space_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_space_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_space_positions[i] = mla_localization_msgs.msg.MLAPosGlobal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [trace_start_position]
    data.trace_start_position = mla_localization_msgs.msg.MLAPosGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [trace_end_position]
    data.trace_end_position = mla_localization_msgs.msg.MLAPosGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = ParkingLotTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [render_data]
    data.render_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [address]
    data.address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trajectory_length]
    data.trajectory_length = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reversed]
    data.reversed = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += 24 * object.parking_space_positions.length;
    length += _getByteLength(object.render_data);
    length += _getByteLength(object.address);
    length += _getByteLength(object.label);
    length += _getByteLength(object.reversed);
    return length + 113;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/ParkingLotInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3186515e4fbc521479112dbf39c899bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 dist
    uint32 id
    string name
    mla_localization_msgs/MLAPosGlobal position
    uint32 parking_space_id
    mla_localization_msgs/MLAPosGlobal[] parking_space_positions
    mla_localization_msgs/MLAPosGlobal trace_start_position
    mla_localization_msgs/MLAPosGlobal trace_end_position
    system_manager_msgs/ParkingLotTypeEnum type
    string render_data
    string address
    uint32 trajectory_length
    string label
    string reversed
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosGlobal
    float64 latitude
    float64 longitude
    float64 altitude
    
    ================================================================================
    MSG: system_manager_msgs/ParkingLotTypeEnum
    uint8 PNP = 0
    uint8 LPNP = 1
    uint8 BOTH = 2
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingLotInfo(null);
    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.position !== undefined) {
      resolved.position = mla_localization_msgs.msg.MLAPosGlobal.Resolve(msg.position)
    }
    else {
      resolved.position = new mla_localization_msgs.msg.MLAPosGlobal()
    }

    if (msg.parking_space_id !== undefined) {
      resolved.parking_space_id = msg.parking_space_id;
    }
    else {
      resolved.parking_space_id = 0
    }

    if (msg.parking_space_positions !== undefined) {
      resolved.parking_space_positions = new Array(msg.parking_space_positions.length);
      for (let i = 0; i < resolved.parking_space_positions.length; ++i) {
        resolved.parking_space_positions[i] = mla_localization_msgs.msg.MLAPosGlobal.Resolve(msg.parking_space_positions[i]);
      }
    }
    else {
      resolved.parking_space_positions = []
    }

    if (msg.trace_start_position !== undefined) {
      resolved.trace_start_position = mla_localization_msgs.msg.MLAPosGlobal.Resolve(msg.trace_start_position)
    }
    else {
      resolved.trace_start_position = new mla_localization_msgs.msg.MLAPosGlobal()
    }

    if (msg.trace_end_position !== undefined) {
      resolved.trace_end_position = mla_localization_msgs.msg.MLAPosGlobal.Resolve(msg.trace_end_position)
    }
    else {
      resolved.trace_end_position = new mla_localization_msgs.msg.MLAPosGlobal()
    }

    if (msg.type !== undefined) {
      resolved.type = ParkingLotTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new ParkingLotTypeEnum()
    }

    if (msg.render_data !== undefined) {
      resolved.render_data = msg.render_data;
    }
    else {
      resolved.render_data = ''
    }

    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = ''
    }

    if (msg.trajectory_length !== undefined) {
      resolved.trajectory_length = msg.trajectory_length;
    }
    else {
      resolved.trajectory_length = 0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.reversed !== undefined) {
      resolved.reversed = msg.reversed;
    }
    else {
      resolved.reversed = ''
    }

    return resolved;
    }
};

module.exports = ParkingLotInfo;
