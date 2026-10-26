// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DmapInputData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_name = null;
      this.shape = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('input_name')) {
        this.input_name = initObj.input_name
      }
      else {
        this.input_name = '';
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = [];
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DmapInputData
    // Serialize message field [input_name]
    bufferOffset = _serializer.string(obj.input_name, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = _arraySerializer.int32(obj.shape, buffer, bufferOffset, null);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DmapInputData
    let len;
    let data = new DmapInputData(null);
    // Deserialize message field [input_name]
    data.input_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.input_name);
    length += 4 * object.shape.length;
    length += 4 * object.data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/DmapInputData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec23371b1ad51297867d75972342a97e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string input_name
    int32[] shape
    float32[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DmapInputData(null);
    if (msg.input_name !== undefined) {
      resolved.input_name = msg.input_name;
    }
    else {
      resolved.input_name = ''
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = []
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = DmapInputData;
