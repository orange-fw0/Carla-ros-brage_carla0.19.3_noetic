// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapTaskRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.begin_pos = null;
      this.end_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('begin_pos')) {
        this.begin_pos = initObj.begin_pos
      }
      else {
        this.begin_pos = 0.0;
      }
      if (initObj.hasOwnProperty('end_pos')) {
        this.end_pos = initObj.end_pos
      }
      else {
        this.end_pos = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapTaskRange
    // Serialize message field [begin_pos]
    bufferOffset = _serializer.float64(obj.begin_pos, buffer, bufferOffset);
    // Serialize message field [end_pos]
    bufferOffset = _serializer.float64(obj.end_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapTaskRange
    let len;
    let data = new MapTaskRange(null);
    // Deserialize message field [begin_pos]
    data.begin_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_pos]
    data.end_pos = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MapTaskRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2cddef1d0d0658f1b721cb43fd379d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 begin_pos
    float64 end_pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapTaskRange(null);
    if (msg.begin_pos !== undefined) {
      resolved.begin_pos = msg.begin_pos;
    }
    else {
      resolved.begin_pos = 0.0
    }

    if (msg.end_pos !== undefined) {
      resolved.end_pos = msg.end_pos;
    }
    else {
      resolved.end_pos = 0.0
    }

    return resolved;
    }
};

module.exports = MapTaskRange;
