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

class MapLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dis2crossing = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('dis2crossing')) {
        this.dis2crossing = initObj.dis2crossing
      }
      else {
        this.dis2crossing = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapLight
    // Serialize message field [dis2crossing]
    bufferOffset = _serializer.float32(obj.dis2crossing, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapLight
    let len;
    let data = new MapLight(null);
    // Deserialize message field [dis2crossing]
    data.dis2crossing = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MapLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f8c71a1b4aa955564522ea27bff2646';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 dis2crossing
    int32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapLight(null);
    if (msg.dis2crossing !== undefined) {
      resolved.dis2crossing = msg.dis2crossing;
    }
    else {
      resolved.dis2crossing = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = MapLight;
