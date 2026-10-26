// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class V2xCollisionWarningData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.warning = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('warning')) {
        this.warning = initObj.warning
      }
      else {
        this.warning = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2xCollisionWarningData
    // Serialize message field [id]
    bufferOffset = _arraySerializer.int32(obj.id, buffer, bufferOffset, null);
    // Serialize message field [warning]
    bufferOffset = _serializer.string(obj.warning, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xCollisionWarningData
    let len;
    let data = new V2xCollisionWarningData(null);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [warning]
    data.warning = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.id.length;
    length += _getByteLength(object.warning);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xCollisionWarningData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30e6106a92d1ed9b1327b13f2afa0f13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] id
    string warning
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xCollisionWarningData(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.warning !== undefined) {
      resolved.warning = msg.warning;
    }
    else {
      resolved.warning = ''
    }

    return resolved;
    }
};

module.exports = V2xCollisionWarningData;
