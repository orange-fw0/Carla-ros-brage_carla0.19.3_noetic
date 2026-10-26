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

class RadarCalib {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.radar_id = null;
      this.r_s2b = null;
      this.t_s2b = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('radar_id')) {
        this.radar_id = initObj.radar_id
      }
      else {
        this.radar_id = 0;
      }
      if (initObj.hasOwnProperty('r_s2b')) {
        this.r_s2b = initObj.r_s2b
      }
      else {
        this.r_s2b = [];
      }
      if (initObj.hasOwnProperty('t_s2b')) {
        this.t_s2b = initObj.t_s2b
      }
      else {
        this.t_s2b = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarCalib
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    // Serialize message field [radar_id]
    bufferOffset = _serializer.uint8(obj.radar_id, buffer, bufferOffset);
    // Serialize message field [r_s2b]
    bufferOffset = _arraySerializer.float64(obj.r_s2b, buffer, bufferOffset, null);
    // Serialize message field [t_s2b]
    bufferOffset = _arraySerializer.float64(obj.t_s2b, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarCalib
    let len;
    let data = new RadarCalib(null);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [radar_id]
    data.radar_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [r_s2b]
    data.r_s2b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [t_s2b]
    data.t_s2b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.r_s2b.length;
    length += 8 * object.t_s2b.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/RadarCalib';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d00cb5e5b04fb8e831eddff0ebefbba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 state
    uint8 radar_id
    float64[] r_s2b
    float64[] t_s2b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarCalib(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.radar_id !== undefined) {
      resolved.radar_id = msg.radar_id;
    }
    else {
      resolved.radar_id = 0
    }

    if (msg.r_s2b !== undefined) {
      resolved.r_s2b = msg.r_s2b;
    }
    else {
      resolved.r_s2b = []
    }

    if (msg.t_s2b !== undefined) {
      resolved.t_s2b = msg.t_s2b;
    }
    else {
      resolved.t_s2b = []
    }

    return resolved;
    }
};

module.exports = RadarCalib;
