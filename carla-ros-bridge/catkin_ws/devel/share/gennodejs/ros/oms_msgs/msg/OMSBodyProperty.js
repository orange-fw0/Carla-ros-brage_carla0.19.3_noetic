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
let OMSBodyInfo = require('./OMSBodyInfo.js');
let OMSSodStatus = require('./OMSSodStatus.js');

//-----------------------------------------------------------

class OMSBodyProperty {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.det_roi = null;
      this.body_infos = null;
      this.sod_status = null;
    }
    else {
      if (initObj.hasOwnProperty('det_roi')) {
        this.det_roi = initObj.det_roi
      }
      else {
        this.det_roi = [];
      }
      if (initObj.hasOwnProperty('body_infos')) {
        this.body_infos = initObj.body_infos
      }
      else {
        this.body_infos = [];
      }
      if (initObj.hasOwnProperty('sod_status')) {
        this.sod_status = initObj.sod_status
      }
      else {
        this.sod_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSBodyProperty
    // Serialize message field [det_roi]
    // Serialize the length for message field [det_roi]
    bufferOffset = _serializer.uint32(obj.det_roi.length, buffer, bufferOffset);
    obj.det_roi.forEach((val) => {
      bufferOffset = OMSRect2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [body_infos]
    // Serialize the length for message field [body_infos]
    bufferOffset = _serializer.uint32(obj.body_infos.length, buffer, bufferOffset);
    obj.body_infos.forEach((val) => {
      bufferOffset = OMSBodyInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sod_status]
    // Serialize the length for message field [sod_status]
    bufferOffset = _serializer.uint32(obj.sod_status.length, buffer, bufferOffset);
    obj.sod_status.forEach((val) => {
      bufferOffset = OMSSodStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSBodyProperty
    let len;
    let data = new OMSBodyProperty(null);
    // Deserialize message field [det_roi]
    // Deserialize array length for message field [det_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.det_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.det_roi[i] = OMSRect2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [body_infos]
    // Deserialize array length for message field [body_infos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.body_infos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.body_infos[i] = OMSBodyInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sod_status]
    // Deserialize array length for message field [sod_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sod_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sod_status[i] = OMSSodStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 20 * object.det_roi.length;
    object.body_infos.forEach((val) => {
      length += OMSBodyInfo.getMessageSize(val);
    });
    length += 2 * object.sod_status.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSBodyProperty';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62ccae5420939cb724c8ed49db69018d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    oms_msgs/OMSRect2f[] det_roi
    oms_msgs/OMSBodyInfo[] body_infos
    oms_msgs/OMSSodStatus[] sod_status
    
    ================================================================================
    MSG: oms_msgs/OMSRect2f
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSBodyInfo
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
    
    ================================================================================
    MSG: oms_msgs/OMSSodStatus
    uint8 UNAVAILABLE = 0
    uint8 OCCUPIED = 1
    uint8 UNOCCUPIED = 2
    uint8 UNCERTAIN = 3
    uint8 value
    uint8 seat_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSBodyProperty(null);
    if (msg.det_roi !== undefined) {
      resolved.det_roi = new Array(msg.det_roi.length);
      for (let i = 0; i < resolved.det_roi.length; ++i) {
        resolved.det_roi[i] = OMSRect2f.Resolve(msg.det_roi[i]);
      }
    }
    else {
      resolved.det_roi = []
    }

    if (msg.body_infos !== undefined) {
      resolved.body_infos = new Array(msg.body_infos.length);
      for (let i = 0; i < resolved.body_infos.length; ++i) {
        resolved.body_infos[i] = OMSBodyInfo.Resolve(msg.body_infos[i]);
      }
    }
    else {
      resolved.body_infos = []
    }

    if (msg.sod_status !== undefined) {
      resolved.sod_status = new Array(msg.sod_status.length);
      for (let i = 0; i < resolved.sod_status.length; ++i) {
        resolved.sod_status[i] = OMSSodStatus.Resolve(msg.sod_status[i]);
      }
    }
    else {
      resolved.sod_status = []
    }

    return resolved;
    }
};

module.exports = OMSBodyProperty;
