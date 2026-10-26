// Auto-generated. Do not edit!

// (in-package can_bridge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CanMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_id = null;
      this.ts_offset = null;
      this.is_convert = null;
      this.channel = null;
      this.len = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('can_id')) {
        this.can_id = initObj.can_id
      }
      else {
        this.can_id = 0;
      }
      if (initObj.hasOwnProperty('ts_offset')) {
        this.ts_offset = initObj.ts_offset
      }
      else {
        this.ts_offset = 0;
      }
      if (initObj.hasOwnProperty('is_convert')) {
        this.is_convert = initObj.is_convert
      }
      else {
        this.is_convert = 0;
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('len')) {
        this.len = initObj.len
      }
      else {
        this.len = 0;
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
    // Serializes a message object of type CanMessage
    // Serialize message field [can_id]
    bufferOffset = _serializer.uint32(obj.can_id, buffer, bufferOffset);
    // Serialize message field [ts_offset]
    bufferOffset = _serializer.int32(obj.ts_offset, buffer, bufferOffset);
    // Serialize message field [is_convert]
    bufferOffset = _serializer.uint8(obj.is_convert, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    // Serialize message field [len]
    bufferOffset = _serializer.uint8(obj.len, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CanMessage
    let len;
    let data = new CanMessage(null);
    // Deserialize message field [can_id]
    data.can_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ts_offset]
    data.ts_offset = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_convert]
    data.is_convert = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [len]
    data.len = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_bridge_msgs/CanMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1d55429697437cd2ea6a1e7d63dad9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 can_id
    int32 ts_offset
    uint8 is_convert
    uint8 channel
    uint8 len
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CanMessage(null);
    if (msg.can_id !== undefined) {
      resolved.can_id = msg.can_id;
    }
    else {
      resolved.can_id = 0
    }

    if (msg.ts_offset !== undefined) {
      resolved.ts_offset = msg.ts_offset;
    }
    else {
      resolved.ts_offset = 0
    }

    if (msg.is_convert !== undefined) {
      resolved.is_convert = msg.is_convert;
    }
    else {
      resolved.is_convert = 0
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.len !== undefined) {
      resolved.len = msg.len;
    }
    else {
      resolved.len = 0
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

module.exports = CanMessage;
