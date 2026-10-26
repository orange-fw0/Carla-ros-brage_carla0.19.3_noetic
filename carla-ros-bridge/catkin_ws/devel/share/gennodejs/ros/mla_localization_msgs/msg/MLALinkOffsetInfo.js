// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class MLALinkOffsetInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.link_id = null;
      this.offset = null;
      this.status = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('link_id')) {
        this.link_id = initObj.link_id
      }
      else {
        this.link_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLALinkOffsetInfo
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [link_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.link_id, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.uint32(obj.offset, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint16(obj.status, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint16(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLALinkOffsetInfo
    let len;
    let data = new MLALinkOffsetInfo(null);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_id]
    data.link_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLALinkOffsetInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56b99b3a00a84ef423d8e1a501b3e275';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string source
    landmark_msgs/TrackId link_id
    uint32 offset
    uint16 status
    uint16 reserved
    
    ================================================================================
    MSG: landmark_msgs/TrackId
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
    const resolved = new MLALinkOffsetInfo(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.link_id !== undefined) {
      resolved.link_id = landmark_msgs.msg.TrackId.Resolve(msg.link_id)
    }
    else {
      resolved.link_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = MLALinkOffsetInfo;
