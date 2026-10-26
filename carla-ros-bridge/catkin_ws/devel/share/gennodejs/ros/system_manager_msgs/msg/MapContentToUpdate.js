// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapContentToUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.address = null;
      this.label = null;
      this.parking_space_id = null;
      this.parking_type = null;
      this.reversed = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = '';
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('parking_space_id')) {
        this.parking_space_id = initObj.parking_space_id
      }
      else {
        this.parking_space_id = '';
      }
      if (initObj.hasOwnProperty('parking_type')) {
        this.parking_type = initObj.parking_type
      }
      else {
        this.parking_type = '';
      }
      if (initObj.hasOwnProperty('reversed')) {
        this.reversed = initObj.reversed
      }
      else {
        this.reversed = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapContentToUpdate
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [address]
    bufferOffset = _serializer.string(obj.address, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [parking_space_id]
    bufferOffset = _serializer.string(obj.parking_space_id, buffer, bufferOffset);
    // Serialize message field [parking_type]
    bufferOffset = _serializer.string(obj.parking_type, buffer, bufferOffset);
    // Serialize message field [reversed]
    bufferOffset = _serializer.string(obj.reversed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapContentToUpdate
    let len;
    let data = new MapContentToUpdate(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [address]
    data.address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parking_space_id]
    data.parking_space_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parking_type]
    data.parking_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reversed]
    data.reversed = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.address);
    length += _getByteLength(object.label);
    length += _getByteLength(object.parking_space_id);
    length += _getByteLength(object.parking_type);
    length += _getByteLength(object.reversed);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/MapContentToUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26c458f5254c5a7fd41d59d98ab7c53d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string address
    string label
    string parking_space_id
    string parking_type
    string reversed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapContentToUpdate(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = ''
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.parking_space_id !== undefined) {
      resolved.parking_space_id = msg.parking_space_id;
    }
    else {
      resolved.parking_space_id = ''
    }

    if (msg.parking_type !== undefined) {
      resolved.parking_type = msg.parking_type;
    }
    else {
      resolved.parking_type = ''
    }

    if (msg.reversed !== undefined) {
      resolved.reversed = msg.reversed;
    }
    else {
      resolved.reversed = ''
    }

    return resolved;
    }
};

module.exports = MapContentToUpdate;
