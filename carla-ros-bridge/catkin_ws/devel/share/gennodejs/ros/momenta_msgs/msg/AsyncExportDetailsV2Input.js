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

class AsyncExportDetailsV2Input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_num = null;
      this.collect_type = null;
      this.name = null;
      this.export_type = null;
      this.since = null;
      this.latest = null;
    }
    else {
      if (initObj.hasOwnProperty('key_num')) {
        this.key_num = initObj.key_num
      }
      else {
        this.key_num = 0;
      }
      if (initObj.hasOwnProperty('collect_type')) {
        this.collect_type = initObj.collect_type
      }
      else {
        this.collect_type = [];
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('export_type')) {
        this.export_type = initObj.export_type
      }
      else {
        this.export_type = [];
      }
      if (initObj.hasOwnProperty('since')) {
        this.since = initObj.since
      }
      else {
        this.since = 0;
      }
      if (initObj.hasOwnProperty('latest')) {
        this.latest = initObj.latest
      }
      else {
        this.latest = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AsyncExportDetailsV2Input
    // Serialize message field [key_num]
    bufferOffset = _serializer.int64(obj.key_num, buffer, bufferOffset);
    // Serialize message field [collect_type]
    bufferOffset = _arraySerializer.string(obj.collect_type, buffer, bufferOffset, null);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [export_type]
    bufferOffset = _arraySerializer.string(obj.export_type, buffer, bufferOffset, null);
    // Serialize message field [since]
    bufferOffset = _serializer.uint64(obj.since, buffer, bufferOffset);
    // Serialize message field [latest]
    bufferOffset = _serializer.uint32(obj.latest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AsyncExportDetailsV2Input
    let len;
    let data = new AsyncExportDetailsV2Input(null);
    // Deserialize message field [key_num]
    data.key_num = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [collect_type]
    data.collect_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [export_type]
    data.export_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [since]
    data.since = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [latest]
    data.latest = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.collect_type.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.export_type.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/AsyncExportDetailsV2Input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bba06780e7cc684d22b8a13ab94d053';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 key_num
    string[] collect_type
    string[] name
    string[] export_type
    uint64 since
    uint32 latest
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AsyncExportDetailsV2Input(null);
    if (msg.key_num !== undefined) {
      resolved.key_num = msg.key_num;
    }
    else {
      resolved.key_num = 0
    }

    if (msg.collect_type !== undefined) {
      resolved.collect_type = msg.collect_type;
    }
    else {
      resolved.collect_type = []
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.export_type !== undefined) {
      resolved.export_type = msg.export_type;
    }
    else {
      resolved.export_type = []
    }

    if (msg.since !== undefined) {
      resolved.since = msg.since;
    }
    else {
      resolved.since = 0
    }

    if (msg.latest !== undefined) {
      resolved.latest = msg.latest;
    }
    else {
      resolved.latest = 0
    }

    return resolved;
    }
};

module.exports = AsyncExportDetailsV2Input;
