// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapDownloadResponseId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response_id = null;
      this.route_id = null;
    }
    else {
      if (initObj.hasOwnProperty('response_id')) {
        this.response_id = initObj.response_id
      }
      else {
        this.response_id = 0;
      }
      if (initObj.hasOwnProperty('route_id')) {
        this.route_id = initObj.route_id
      }
      else {
        this.route_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapDownloadResponseId
    // Serialize message field [response_id]
    bufferOffset = _serializer.uint64(obj.response_id, buffer, bufferOffset);
    // Serialize message field [route_id]
    bufferOffset = _serializer.uint64(obj.route_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapDownloadResponseId
    let len;
    let data = new MapDownloadResponseId(null);
    // Deserialize message field [response_id]
    data.response_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [route_id]
    data.route_id = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/MapDownloadResponseId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2131083ec29f40d2fc722363ef9ba064';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 response_id
    uint64 route_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapDownloadResponseId(null);
    if (msg.response_id !== undefined) {
      resolved.response_id = msg.response_id;
    }
    else {
      resolved.response_id = 0
    }

    if (msg.route_id !== undefined) {
      resolved.route_id = msg.route_id;
    }
    else {
      resolved.route_id = 0
    }

    return resolved;
    }
};

module.exports = MapDownloadResponseId;
