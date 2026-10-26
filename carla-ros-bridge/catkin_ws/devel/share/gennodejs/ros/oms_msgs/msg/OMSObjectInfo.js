// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OMSObjectType = require('./OMSObjectType.js');
let OMSObjectDetResult = require('./OMSObjectDetResult.js');

//-----------------------------------------------------------

class OMSObjectInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seat_id = null;
      this.object_type = null;
      this.object_rect = null;
    }
    else {
      if (initObj.hasOwnProperty('seat_id')) {
        this.seat_id = initObj.seat_id
      }
      else {
        this.seat_id = 0;
      }
      if (initObj.hasOwnProperty('object_type')) {
        this.object_type = initObj.object_type
      }
      else {
        this.object_type = new OMSObjectType();
      }
      if (initObj.hasOwnProperty('object_rect')) {
        this.object_rect = initObj.object_rect
      }
      else {
        this.object_rect = new OMSObjectDetResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSObjectInfo
    // Serialize message field [seat_id]
    bufferOffset = _serializer.uint8(obj.seat_id, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = OMSObjectType.serialize(obj.object_type, buffer, bufferOffset);
    // Serialize message field [object_rect]
    bufferOffset = OMSObjectDetResult.serialize(obj.object_rect, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSObjectInfo
    let len;
    let data = new OMSObjectInfo(null);
    // Deserialize message field [seat_id]
    data.seat_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = OMSObjectType.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_rect]
    data.object_rect = OMSObjectDetResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSObjectInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '627b785048f9f96a95c27a49dd32e600';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    ================================================================================
    MSG: oms_msgs/OMSRect2f
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSObjectInfo(null);
    if (msg.seat_id !== undefined) {
      resolved.seat_id = msg.seat_id;
    }
    else {
      resolved.seat_id = 0
    }

    if (msg.object_type !== undefined) {
      resolved.object_type = OMSObjectType.Resolve(msg.object_type)
    }
    else {
      resolved.object_type = new OMSObjectType()
    }

    if (msg.object_rect !== undefined) {
      resolved.object_rect = OMSObjectDetResult.Resolve(msg.object_rect)
    }
    else {
      resolved.object_rect = new OMSObjectDetResult()
    }

    return resolved;
    }
};

module.exports = OMSObjectInfo;
