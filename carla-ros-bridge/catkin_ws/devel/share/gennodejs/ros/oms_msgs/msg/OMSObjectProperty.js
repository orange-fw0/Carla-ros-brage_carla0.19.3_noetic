// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OMSRect2f = require('./OMSRect2f.js');
let OMSObjectInfo = require('./OMSObjectInfo.js');

//-----------------------------------------------------------

class OMSObjectProperty {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.det_roi = null;
      this.object_infos = null;
    }
    else {
      if (initObj.hasOwnProperty('det_roi')) {
        this.det_roi = initObj.det_roi
      }
      else {
        this.det_roi = [];
      }
      if (initObj.hasOwnProperty('object_infos')) {
        this.object_infos = initObj.object_infos
      }
      else {
        this.object_infos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSObjectProperty
    // Serialize message field [det_roi]
    // Serialize the length for message field [det_roi]
    bufferOffset = _serializer.uint32(obj.det_roi.length, buffer, bufferOffset);
    obj.det_roi.forEach((val) => {
      bufferOffset = OMSRect2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [object_infos]
    // Serialize the length for message field [object_infos]
    bufferOffset = _serializer.uint32(obj.object_infos.length, buffer, bufferOffset);
    obj.object_infos.forEach((val) => {
      bufferOffset = OMSObjectInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSObjectProperty
    let len;
    let data = new OMSObjectProperty(null);
    // Deserialize message field [det_roi]
    // Deserialize array length for message field [det_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.det_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.det_roi[i] = OMSRect2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [object_infos]
    // Deserialize array length for message field [object_infos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object_infos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object_infos[i] = OMSObjectInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 20 * object.det_roi.length;
    length += 27 * object.object_infos.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSObjectProperty';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82143832cfed9889280e3a3c93609985';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    oms_msgs/OMSRect2f[] det_roi
    oms_msgs/OMSObjectInfo[] object_infos
    
    ================================================================================
    MSG: oms_msgs/OMSRect2f
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSObjectInfo
    uint8 seat_id
    oms_msgs/OMSObjectType object_type
    oms_msgs/OMSObjectDetResult object_rect
    
    ================================================================================
    MSG: oms_msgs/OMSObjectType
    uint8 UNAVAILABLE = 0
    uint8 COMPUTER = 1
    uint8 PAD = 2
    uint8 WALLET = 3
    uint8 BACKPACK = 4
    uint8 HANDBAG = 5
    uint8 PHONE = 6
    uint8 CHILD_SEAT_HARD = 7
    uint8 CHILD_SEAT_SOFT = 8
    uint8 CHILD_SEAT_BASKET = 9
    uint8 CHILD_SEAT_UNUSUAL = 10
    uint8 CAT = 11
    uint8 DOG = 12
    uint8 RESERVED1 = 13
    uint8 RESERVED2 = 14
    uint8 RESERVED3 = 15
    uint8 RESERVED4 = 16
    uint8 RESERVED5 = 17
    uint8 UNCERTAIN = 18
    uint8 value
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSObjectDetResult
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f object_rect
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSObjectProperty(null);
    if (msg.det_roi !== undefined) {
      resolved.det_roi = new Array(msg.det_roi.length);
      for (let i = 0; i < resolved.det_roi.length; ++i) {
        resolved.det_roi[i] = OMSRect2f.Resolve(msg.det_roi[i]);
      }
    }
    else {
      resolved.det_roi = []
    }

    if (msg.object_infos !== undefined) {
      resolved.object_infos = new Array(msg.object_infos.length);
      for (let i = 0; i < resolved.object_infos.length; ++i) {
        resolved.object_infos[i] = OMSObjectInfo.Resolve(msg.object_infos[i]);
      }
    }
    else {
      resolved.object_infos = []
    }

    return resolved;
    }
};

module.exports = OMSObjectProperty;
