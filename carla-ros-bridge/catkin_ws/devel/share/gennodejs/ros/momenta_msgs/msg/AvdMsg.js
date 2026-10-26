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

class AvdMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Id = null;
      this.Property = null;
      this.Ignore = null;
      this.AvdDirection = null;
    }
    else {
      if (initObj.hasOwnProperty('Id')) {
        this.Id = initObj.Id
      }
      else {
        this.Id = 0;
      }
      if (initObj.hasOwnProperty('Property')) {
        this.Property = initObj.Property
      }
      else {
        this.Property = '';
      }
      if (initObj.hasOwnProperty('Ignore')) {
        this.Ignore = initObj.Ignore
      }
      else {
        this.Ignore = false;
      }
      if (initObj.hasOwnProperty('AvdDirection')) {
        this.AvdDirection = initObj.AvdDirection
      }
      else {
        this.AvdDirection = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AvdMsg
    // Serialize message field [Id]
    bufferOffset = _serializer.int32(obj.Id, buffer, bufferOffset);
    // Serialize message field [Property]
    bufferOffset = _serializer.string(obj.Property, buffer, bufferOffset);
    // Serialize message field [Ignore]
    bufferOffset = _serializer.bool(obj.Ignore, buffer, bufferOffset);
    // Serialize message field [AvdDirection]
    bufferOffset = _serializer.string(obj.AvdDirection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AvdMsg
    let len;
    let data = new AvdMsg(null);
    // Deserialize message field [Id]
    data.Id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Property]
    data.Property = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Ignore]
    data.Ignore = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [AvdDirection]
    data.AvdDirection = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Property);
    length += _getByteLength(object.AvdDirection);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/AvdMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c5c10c820df4b4d90403966228982b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Id
    string Property
    bool Ignore
    string AvdDirection
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AvdMsg(null);
    if (msg.Id !== undefined) {
      resolved.Id = msg.Id;
    }
    else {
      resolved.Id = 0
    }

    if (msg.Property !== undefined) {
      resolved.Property = msg.Property;
    }
    else {
      resolved.Property = ''
    }

    if (msg.Ignore !== undefined) {
      resolved.Ignore = msg.Ignore;
    }
    else {
      resolved.Ignore = false
    }

    if (msg.AvdDirection !== undefined) {
      resolved.AvdDirection = msg.AvdDirection;
    }
    else {
      resolved.AvdDirection = ''
    }

    return resolved;
    }
};

module.exports = AvdMsg;
