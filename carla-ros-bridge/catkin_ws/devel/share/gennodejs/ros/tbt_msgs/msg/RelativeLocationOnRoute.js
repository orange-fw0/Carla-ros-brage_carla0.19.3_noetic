// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RelativeLocationOnRoute {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ori_cur_step_id = null;
      this.ori_cur_link_id_in_step = null;
      this.ori_link_offset = null;
      this.link_index = null;
      this.offset = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('ori_cur_step_id')) {
        this.ori_cur_step_id = initObj.ori_cur_step_id
      }
      else {
        this.ori_cur_step_id = 0;
      }
      if (initObj.hasOwnProperty('ori_cur_link_id_in_step')) {
        this.ori_cur_link_id_in_step = initObj.ori_cur_link_id_in_step
      }
      else {
        this.ori_cur_link_id_in_step = 0;
      }
      if (initObj.hasOwnProperty('ori_link_offset')) {
        this.ori_link_offset = initObj.ori_link_offset
      }
      else {
        this.ori_link_offset = 0;
      }
      if (initObj.hasOwnProperty('link_index')) {
        this.link_index = initObj.link_index
      }
      else {
        this.link_index = 0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelativeLocationOnRoute
    // Serialize message field [ori_cur_step_id]
    bufferOffset = _serializer.uint32(obj.ori_cur_step_id, buffer, bufferOffset);
    // Serialize message field [ori_cur_link_id_in_step]
    bufferOffset = _serializer.uint32(obj.ori_cur_link_id_in_step, buffer, bufferOffset);
    // Serialize message field [ori_link_offset]
    bufferOffset = _serializer.uint32(obj.ori_link_offset, buffer, bufferOffset);
    // Serialize message field [link_index]
    bufferOffset = _serializer.uint32(obj.link_index, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.uint32(obj.offset, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.uint8(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelativeLocationOnRoute
    let len;
    let data = new RelativeLocationOnRoute(null);
    // Deserialize message field [ori_cur_step_id]
    data.ori_cur_step_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ori_cur_link_id_in_step]
    data.ori_cur_link_id_in_step = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ori_link_offset]
    data.ori_link_offset = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [link_index]
    data.link_index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/RelativeLocationOnRoute';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '605e58d4b028301bebad62b632acdfa6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 ori_cur_step_id
    uint32 ori_cur_link_id_in_step
    uint32 ori_link_offset
    uint32 link_index
    uint32 offset
    uint8 valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelativeLocationOnRoute(null);
    if (msg.ori_cur_step_id !== undefined) {
      resolved.ori_cur_step_id = msg.ori_cur_step_id;
    }
    else {
      resolved.ori_cur_step_id = 0
    }

    if (msg.ori_cur_link_id_in_step !== undefined) {
      resolved.ori_cur_link_id_in_step = msg.ori_cur_link_id_in_step;
    }
    else {
      resolved.ori_cur_link_id_in_step = 0
    }

    if (msg.ori_link_offset !== undefined) {
      resolved.ori_link_offset = msg.ori_link_offset;
    }
    else {
      resolved.ori_link_offset = 0
    }

    if (msg.link_index !== undefined) {
      resolved.link_index = msg.link_index;
    }
    else {
      resolved.link_index = 0
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = 0
    }

    return resolved;
    }
};

module.exports = RelativeLocationOnRoute;
