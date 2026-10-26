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

class Mdf {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.idx = null;
      this.speed_limit = null;
      this.p1 = null;
      this.p2 = null;
      this.traffic_light = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('idx')) {
        this.idx = initObj.idx
      }
      else {
        this.idx = 0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = 0;
      }
      if (initObj.hasOwnProperty('p2')) {
        this.p2 = initObj.p2
      }
      else {
        this.p2 = 0;
      }
      if (initObj.hasOwnProperty('traffic_light')) {
        this.traffic_light = initObj.traffic_light
      }
      else {
        this.traffic_light = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mdf
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [idx]
    bufferOffset = _serializer.int32(obj.idx, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float32(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [p1]
    bufferOffset = _serializer.int32(obj.p1, buffer, bufferOffset);
    // Serialize message field [p2]
    bufferOffset = _serializer.int32(obj.p2, buffer, bufferOffset);
    // Serialize message field [traffic_light]
    bufferOffset = _serializer.bool(obj.traffic_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mdf
    let len;
    let data = new Mdf(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [idx]
    data.idx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [p1]
    data.p1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [p2]
    data.p2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [traffic_light]
    data.traffic_light = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Mdf';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7bd4ea8d7dba1815b53b9cfb328a69b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 idx
    float32 speed_limit
    int32 p1
    int32 p2
    bool traffic_light
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mdf(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.idx !== undefined) {
      resolved.idx = msg.idx;
    }
    else {
      resolved.idx = 0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.p1 !== undefined) {
      resolved.p1 = msg.p1;
    }
    else {
      resolved.p1 = 0
    }

    if (msg.p2 !== undefined) {
      resolved.p2 = msg.p2;
    }
    else {
      resolved.p2 = 0
    }

    if (msg.traffic_light !== undefined) {
      resolved.traffic_light = msg.traffic_light;
    }
    else {
      resolved.traffic_light = false
    }

    return resolved;
    }
};

module.exports = Mdf;
