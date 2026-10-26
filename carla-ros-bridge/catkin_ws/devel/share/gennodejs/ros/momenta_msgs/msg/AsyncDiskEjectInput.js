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

class AsyncDiskEjectInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_num = null;
      this.sn = null;
    }
    else {
      if (initObj.hasOwnProperty('key_num')) {
        this.key_num = initObj.key_num
      }
      else {
        this.key_num = 0;
      }
      if (initObj.hasOwnProperty('sn')) {
        this.sn = initObj.sn
      }
      else {
        this.sn = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AsyncDiskEjectInput
    // Serialize message field [key_num]
    bufferOffset = _serializer.int64(obj.key_num, buffer, bufferOffset);
    // Serialize message field [sn]
    bufferOffset = _serializer.string(obj.sn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AsyncDiskEjectInput
    let len;
    let data = new AsyncDiskEjectInput(null);
    // Deserialize message field [key_num]
    data.key_num = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [sn]
    data.sn = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sn);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/AsyncDiskEjectInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4027ec79aa98a56b7fb480679fd2759';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 key_num
    string sn
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AsyncDiskEjectInput(null);
    if (msg.key_num !== undefined) {
      resolved.key_num = msg.key_num;
    }
    else {
      resolved.key_num = 0
    }

    if (msg.sn !== undefined) {
      resolved.sn = msg.sn;
    }
    else {
      resolved.sn = ''
    }

    return resolved;
    }
};

module.exports = AsyncDiskEjectInput;
