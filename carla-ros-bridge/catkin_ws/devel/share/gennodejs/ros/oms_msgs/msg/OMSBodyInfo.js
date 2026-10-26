// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OMSBodyDetResult = require('./OMSBodyDetResult.js');
let OMSSeatBeltStatus = require('./OMSSeatBeltStatus.js');
let OMSAgeGroup = require('./OMSAgeGroup.js');
let OMSBodyEventInfo = require('./OMSBodyEventInfo.js');

//-----------------------------------------------------------

class OMSBodyInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seat_id = null;
      this.body_det_result = null;
      this.seatbelt_status = null;
      this.age_cls_result = null;
      this.body_event_info = null;
    }
    else {
      if (initObj.hasOwnProperty('seat_id')) {
        this.seat_id = initObj.seat_id
      }
      else {
        this.seat_id = 0;
      }
      if (initObj.hasOwnProperty('body_det_result')) {
        this.body_det_result = initObj.body_det_result
      }
      else {
        this.body_det_result = new OMSBodyDetResult();
      }
      if (initObj.hasOwnProperty('seatbelt_status')) {
        this.seatbelt_status = initObj.seatbelt_status
      }
      else {
        this.seatbelt_status = new OMSSeatBeltStatus();
      }
      if (initObj.hasOwnProperty('age_cls_result')) {
        this.age_cls_result = initObj.age_cls_result
      }
      else {
        this.age_cls_result = new OMSAgeGroup();
      }
      if (initObj.hasOwnProperty('body_event_info')) {
        this.body_event_info = initObj.body_event_info
      }
      else {
        this.body_event_info = new OMSBodyEventInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSBodyInfo
    // Serialize message field [seat_id]
    bufferOffset = _serializer.uint8(obj.seat_id, buffer, bufferOffset);
    // Serialize message field [body_det_result]
    bufferOffset = OMSBodyDetResult.serialize(obj.body_det_result, buffer, bufferOffset);
    // Serialize message field [seatbelt_status]
    bufferOffset = OMSSeatBeltStatus.serialize(obj.seatbelt_status, buffer, bufferOffset);
    // Serialize message field [age_cls_result]
    bufferOffset = OMSAgeGroup.serialize(obj.age_cls_result, buffer, bufferOffset);
    // Serialize message field [body_event_info]
    bufferOffset = OMSBodyEventInfo.serialize(obj.body_event_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSBodyInfo
    let len;
    let data = new OMSBodyInfo(null);
    // Deserialize message field [seat_id]
    data.seat_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [body_det_result]
    data.body_det_result = OMSBodyDetResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [seatbelt_status]
    data.seatbelt_status = OMSSeatBeltStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [age_cls_result]
    data.age_cls_result = OMSAgeGroup.deserialize(buffer, bufferOffset);
    // Deserialize message field [body_event_info]
    data.body_event_info = OMSBodyEventInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += OMSBodyDetResult.getMessageSize(object.body_det_result);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSBodyInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1dfe137d0f785f9f6b93ddebcb9299ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 seat_id
    oms_msgs/OMSBodyDetResult body_det_result
    oms_msgs/OMSSeatBeltStatus seatbelt_status
    oms_msgs/OMSAgeGroup age_cls_result
    oms_msgs/OMSBodyEventInfo body_event_info
    
    ================================================================================
    MSG: oms_msgs/OMSBodyDetResult
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f body_rect
    oms_msgs/OMSPoint2f[] body_keypoints
    
    ================================================================================
    MSG: oms_msgs/OMSRect2f
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSPoint2f
    float32 x
    float32 y
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSSeatBeltStatus
    uint8 UNAVAILABLE = 0
    uint8 BUCKLE_UP = 1
    uint8 UNBUCKLE = 2
    uint8 UNCERTAIN = 3
    uint8 value
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSAgeGroup
    uint8 UNAVAILABLE = 0
    uint8 BABY = 1
    uint8 CHILD = 2
    uint8 YOUTH = 3
    uint8 OLD = 4
    uint8 UNCERTAIN = 5
    uint8 value
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSBodyEventInfo
    uint8 UNAVAILABLE = 0
    uint8 HAND_OUT_OF_WINDOW = 1
    uint8 BODY_LEAVING_THE_SEAT = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 RESERVED4 = 6
    uint8 RESERVED5 = 7
    uint8 UNCERTAIN = 8
    uint8 value
    float32 score
    uint64 start_time
    uint64 end_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSBodyInfo(null);
    if (msg.seat_id !== undefined) {
      resolved.seat_id = msg.seat_id;
    }
    else {
      resolved.seat_id = 0
    }

    if (msg.body_det_result !== undefined) {
      resolved.body_det_result = OMSBodyDetResult.Resolve(msg.body_det_result)
    }
    else {
      resolved.body_det_result = new OMSBodyDetResult()
    }

    if (msg.seatbelt_status !== undefined) {
      resolved.seatbelt_status = OMSSeatBeltStatus.Resolve(msg.seatbelt_status)
    }
    else {
      resolved.seatbelt_status = new OMSSeatBeltStatus()
    }

    if (msg.age_cls_result !== undefined) {
      resolved.age_cls_result = OMSAgeGroup.Resolve(msg.age_cls_result)
    }
    else {
      resolved.age_cls_result = new OMSAgeGroup()
    }

    if (msg.body_event_info !== undefined) {
      resolved.body_event_info = OMSBodyEventInfo.Resolve(msg.body_event_info)
    }
    else {
      resolved.body_event_info = new OMSBodyEventInfo()
    }

    return resolved;
    }
};

module.exports = OMSBodyInfo;
