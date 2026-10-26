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

class LaneBoundary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polycoeff = null;
      this.head = null;
      this.tail = null;
      this.relative_id = null;
      this.track_id = null;
    }
    else {
      if (initObj.hasOwnProperty('polycoeff')) {
        this.polycoeff = initObj.polycoeff
      }
      else {
        this.polycoeff = [];
      }
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = 0.0;
      }
      if (initObj.hasOwnProperty('tail')) {
        this.tail = initObj.tail
      }
      else {
        this.tail = 0.0;
      }
      if (initObj.hasOwnProperty('relative_id')) {
        this.relative_id = initObj.relative_id
      }
      else {
        this.relative_id = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneBoundary
    // Serialize message field [polycoeff]
    bufferOffset = _arraySerializer.float64(obj.polycoeff, buffer, bufferOffset, null);
    // Serialize message field [head]
    bufferOffset = _serializer.float64(obj.head, buffer, bufferOffset);
    // Serialize message field [tail]
    bufferOffset = _serializer.float64(obj.tail, buffer, bufferOffset);
    // Serialize message field [relative_id]
    bufferOffset = _serializer.int8(obj.relative_id, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundary
    let len;
    let data = new LaneBoundary(null);
    // Deserialize message field [polycoeff]
    data.polycoeff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [head]
    data.head = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tail]
    data.tail = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_id]
    data.relative_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.polycoeff.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/LaneBoundary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68bd62a5e53131b6a34e9fc77a23d08c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] polycoeff
    float64 head
    float64 tail
    int8 relative_id
    uint64 track_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundary(null);
    if (msg.polycoeff !== undefined) {
      resolved.polycoeff = msg.polycoeff;
    }
    else {
      resolved.polycoeff = []
    }

    if (msg.head !== undefined) {
      resolved.head = msg.head;
    }
    else {
      resolved.head = 0.0
    }

    if (msg.tail !== undefined) {
      resolved.tail = msg.tail;
    }
    else {
      resolved.tail = 0.0
    }

    if (msg.relative_id !== undefined) {
      resolved.relative_id = msg.relative_id;
    }
    else {
      resolved.relative_id = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    return resolved;
    }
};

module.exports = LaneBoundary;
