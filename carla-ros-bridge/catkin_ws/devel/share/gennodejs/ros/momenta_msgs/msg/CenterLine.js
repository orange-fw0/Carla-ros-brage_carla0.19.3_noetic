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

class CenterLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polycoeff = null;
      this.head = null;
      this.tail = null;
      this.is_recommended = null;
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
      if (initObj.hasOwnProperty('is_recommended')) {
        this.is_recommended = initObj.is_recommended
      }
      else {
        this.is_recommended = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CenterLine
    // Serialize message field [polycoeff]
    bufferOffset = _arraySerializer.float64(obj.polycoeff, buffer, bufferOffset, null);
    // Serialize message field [head]
    bufferOffset = _serializer.float64(obj.head, buffer, bufferOffset);
    // Serialize message field [tail]
    bufferOffset = _serializer.float64(obj.tail, buffer, bufferOffset);
    // Serialize message field [is_recommended]
    bufferOffset = _serializer.bool(obj.is_recommended, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CenterLine
    let len;
    let data = new CenterLine(null);
    // Deserialize message field [polycoeff]
    data.polycoeff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [head]
    data.head = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tail]
    data.tail = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_recommended]
    data.is_recommended = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.polycoeff.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/CenterLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd2107c395db9ffe9f267903e950b9dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] polycoeff
    float64 head
    float64 tail
    bool is_recommended
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CenterLine(null);
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

    if (msg.is_recommended !== undefined) {
      resolved.is_recommended = msg.is_recommended;
    }
    else {
      resolved.is_recommended = false
    }

    return resolved;
    }
};

module.exports = CenterLine;
