// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrackId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_visible = null;
      this.count = null;
      this.id = null;
      this.linked_id = null;
      this.map_id = null;
      this.area_id = null;
    }
    else {
      if (initObj.hasOwnProperty('is_visible')) {
        this.is_visible = initObj.is_visible
      }
      else {
        this.is_visible = false;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('linked_id')) {
        this.linked_id = initObj.linked_id
      }
      else {
        this.linked_id = 0;
      }
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = 0;
      }
      if (initObj.hasOwnProperty('area_id')) {
        this.area_id = initObj.area_id
      }
      else {
        this.area_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackId
    // Serialize message field [is_visible]
    bufferOffset = _serializer.bool(obj.is_visible, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [linked_id]
    bufferOffset = _serializer.uint32(obj.linked_id, buffer, bufferOffset);
    // Serialize message field [map_id]
    bufferOffset = _serializer.uint32(obj.map_id, buffer, bufferOffset);
    // Serialize message field [area_id]
    bufferOffset = _serializer.uint32(obj.area_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackId
    let len;
    let data = new TrackId(null);
    // Deserialize message field [is_visible]
    data.is_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [linked_id]
    data.linked_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [area_id]
    data.area_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrackId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7dbec9f3c427083a5195518c14fad578';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackId(null);
    if (msg.is_visible !== undefined) {
      resolved.is_visible = msg.is_visible;
    }
    else {
      resolved.is_visible = false
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.linked_id !== undefined) {
      resolved.linked_id = msg.linked_id;
    }
    else {
      resolved.linked_id = 0
    }

    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = 0
    }

    if (msg.area_id !== undefined) {
      resolved.area_id = msg.area_id;
    }
    else {
      resolved.area_id = 0
    }

    return resolved;
    }
};

module.exports = TrackId;
