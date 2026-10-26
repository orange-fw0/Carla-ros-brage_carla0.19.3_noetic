// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSDistractionTypeEnum = require('./DMSDistractionTypeEnum.js');
let DMSDistractionLevelTypeEnum = require('./DMSDistractionLevelTypeEnum.js');
let DMSDistractionConfidenceTypeEnum = require('./DMSDistractionConfidenceTypeEnum.js');
let DMSDistractionReasonTypeEnum = require('./DMSDistractionReasonTypeEnum.js');
let L2DMSDistractionLevelTypeEnum = require('./L2DMSDistractionLevelTypeEnum.js');
let L2DMSDistractionConfidenceTypeEnum = require('./L2DMSDistractionConfidenceTypeEnum.js');
let L3DMSDistractionLevelTypeEnum = require('./L3DMSDistractionLevelTypeEnum.js');
let L3DMSDistractionConfidenceTypeEnum = require('./L3DMSDistractionConfidenceTypeEnum.js');

//-----------------------------------------------------------

class DMSDistractionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.distraction_lite = null;
      this.distraction_pro = null;
      this.distraction_type = null;
      this.distraction_level_type = null;
      this.distraction_confidence_level = null;
      this.distraction_reason_type = null;
      this.l2_distraction_level_type = null;
      this.l2_distraction_confidence_level = null;
      this.l3_distraction_level_type = null;
      this.l3_distraction_confidence_level = null;
      this.distraction_pro_core = null;
      this.reserved = null;
      this.distraction_sensitivity = null;
      this.dis_params = null;
      this.l2_distraction_sensitivity = null;
      this.l2_dis_params = null;
      this.l3_distraction_sensitivity = null;
      this.l3_dis_params = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('distraction_lite')) {
        this.distraction_lite = initObj.distraction_lite
      }
      else {
        this.distraction_lite = 0;
      }
      if (initObj.hasOwnProperty('distraction_pro')) {
        this.distraction_pro = initObj.distraction_pro
      }
      else {
        this.distraction_pro = 0;
      }
      if (initObj.hasOwnProperty('distraction_type')) {
        this.distraction_type = initObj.distraction_type
      }
      else {
        this.distraction_type = new DMSDistractionTypeEnum();
      }
      if (initObj.hasOwnProperty('distraction_level_type')) {
        this.distraction_level_type = initObj.distraction_level_type
      }
      else {
        this.distraction_level_type = new DMSDistractionLevelTypeEnum();
      }
      if (initObj.hasOwnProperty('distraction_confidence_level')) {
        this.distraction_confidence_level = initObj.distraction_confidence_level
      }
      else {
        this.distraction_confidence_level = new DMSDistractionConfidenceTypeEnum();
      }
      if (initObj.hasOwnProperty('distraction_reason_type')) {
        this.distraction_reason_type = initObj.distraction_reason_type
      }
      else {
        this.distraction_reason_type = new DMSDistractionReasonTypeEnum();
      }
      if (initObj.hasOwnProperty('l2_distraction_level_type')) {
        this.l2_distraction_level_type = initObj.l2_distraction_level_type
      }
      else {
        this.l2_distraction_level_type = new L2DMSDistractionLevelTypeEnum();
      }
      if (initObj.hasOwnProperty('l2_distraction_confidence_level')) {
        this.l2_distraction_confidence_level = initObj.l2_distraction_confidence_level
      }
      else {
        this.l2_distraction_confidence_level = new L2DMSDistractionConfidenceTypeEnum();
      }
      if (initObj.hasOwnProperty('l3_distraction_level_type')) {
        this.l3_distraction_level_type = initObj.l3_distraction_level_type
      }
      else {
        this.l3_distraction_level_type = new L3DMSDistractionLevelTypeEnum();
      }
      if (initObj.hasOwnProperty('l3_distraction_confidence_level')) {
        this.l3_distraction_confidence_level = initObj.l3_distraction_confidence_level
      }
      else {
        this.l3_distraction_confidence_level = new L3DMSDistractionConfidenceTypeEnum();
      }
      if (initObj.hasOwnProperty('distraction_pro_core')) {
        this.distraction_pro_core = initObj.distraction_pro_core
      }
      else {
        this.distraction_pro_core = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('distraction_sensitivity')) {
        this.distraction_sensitivity = initObj.distraction_sensitivity
      }
      else {
        this.distraction_sensitivity = 0;
      }
      if (initObj.hasOwnProperty('dis_params')) {
        this.dis_params = initObj.dis_params
      }
      else {
        this.dis_params = '';
      }
      if (initObj.hasOwnProperty('l2_distraction_sensitivity')) {
        this.l2_distraction_sensitivity = initObj.l2_distraction_sensitivity
      }
      else {
        this.l2_distraction_sensitivity = 0;
      }
      if (initObj.hasOwnProperty('l2_dis_params')) {
        this.l2_dis_params = initObj.l2_dis_params
      }
      else {
        this.l2_dis_params = '';
      }
      if (initObj.hasOwnProperty('l3_distraction_sensitivity')) {
        this.l3_distraction_sensitivity = initObj.l3_distraction_sensitivity
      }
      else {
        this.l3_distraction_sensitivity = 0;
      }
      if (initObj.hasOwnProperty('l3_dis_params')) {
        this.l3_dis_params = initObj.l3_dis_params
      }
      else {
        this.l3_dis_params = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSDistractionResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [distraction_lite]
    bufferOffset = _serializer.int32(obj.distraction_lite, buffer, bufferOffset);
    // Serialize message field [distraction_pro]
    bufferOffset = _serializer.int32(obj.distraction_pro, buffer, bufferOffset);
    // Serialize message field [distraction_type]
    bufferOffset = DMSDistractionTypeEnum.serialize(obj.distraction_type, buffer, bufferOffset);
    // Serialize message field [distraction_level_type]
    bufferOffset = DMSDistractionLevelTypeEnum.serialize(obj.distraction_level_type, buffer, bufferOffset);
    // Serialize message field [distraction_confidence_level]
    bufferOffset = DMSDistractionConfidenceTypeEnum.serialize(obj.distraction_confidence_level, buffer, bufferOffset);
    // Serialize message field [distraction_reason_type]
    bufferOffset = DMSDistractionReasonTypeEnum.serialize(obj.distraction_reason_type, buffer, bufferOffset);
    // Serialize message field [l2_distraction_level_type]
    bufferOffset = L2DMSDistractionLevelTypeEnum.serialize(obj.l2_distraction_level_type, buffer, bufferOffset);
    // Serialize message field [l2_distraction_confidence_level]
    bufferOffset = L2DMSDistractionConfidenceTypeEnum.serialize(obj.l2_distraction_confidence_level, buffer, bufferOffset);
    // Serialize message field [l3_distraction_level_type]
    bufferOffset = L3DMSDistractionLevelTypeEnum.serialize(obj.l3_distraction_level_type, buffer, bufferOffset);
    // Serialize message field [l3_distraction_confidence_level]
    bufferOffset = L3DMSDistractionConfidenceTypeEnum.serialize(obj.l3_distraction_confidence_level, buffer, bufferOffset);
    // Serialize message field [distraction_pro_core]
    bufferOffset = _serializer.int32(obj.distraction_pro_core, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.int32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [distraction_sensitivity]
    bufferOffset = _serializer.int32(obj.distraction_sensitivity, buffer, bufferOffset);
    // Serialize message field [dis_params]
    bufferOffset = _serializer.string(obj.dis_params, buffer, bufferOffset);
    // Serialize message field [l2_distraction_sensitivity]
    bufferOffset = _serializer.int32(obj.l2_distraction_sensitivity, buffer, bufferOffset);
    // Serialize message field [l2_dis_params]
    bufferOffset = _serializer.string(obj.l2_dis_params, buffer, bufferOffset);
    // Serialize message field [l3_distraction_sensitivity]
    bufferOffset = _serializer.int32(obj.l3_distraction_sensitivity, buffer, bufferOffset);
    // Serialize message field [l3_dis_params]
    bufferOffset = _serializer.string(obj.l3_dis_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSDistractionResult
    let len;
    let data = new DMSDistractionResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [distraction_lite]
    data.distraction_lite = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distraction_pro]
    data.distraction_pro = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distraction_type]
    data.distraction_type = DMSDistractionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [distraction_level_type]
    data.distraction_level_type = DMSDistractionLevelTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [distraction_confidence_level]
    data.distraction_confidence_level = DMSDistractionConfidenceTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [distraction_reason_type]
    data.distraction_reason_type = DMSDistractionReasonTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l2_distraction_level_type]
    data.l2_distraction_level_type = L2DMSDistractionLevelTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l2_distraction_confidence_level]
    data.l2_distraction_confidence_level = L2DMSDistractionConfidenceTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l3_distraction_level_type]
    data.l3_distraction_level_type = L3DMSDistractionLevelTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l3_distraction_confidence_level]
    data.l3_distraction_confidence_level = L3DMSDistractionConfidenceTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [distraction_pro_core]
    data.distraction_pro_core = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distraction_sensitivity]
    data.distraction_sensitivity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dis_params]
    data.dis_params = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [l2_distraction_sensitivity]
    data.l2_distraction_sensitivity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [l2_dis_params]
    data.l2_dis_params = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [l3_distraction_sensitivity]
    data.l3_distraction_sensitivity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [l3_dis_params]
    data.l3_dis_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.dis_params);
    length += _getByteLength(object.l2_dis_params);
    length += _getByteLength(object.l3_dis_params);
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSDistractionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98c231a7b2a6000eca25ba4de0266afb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 DISTRACTION_LITE_AVAILABLE = 1
    uint16 DISTRACTION_PRO_AVAILABLE = 2
    uint16 DISTRACTION_TYPE_AVAILABLE = 4
    uint16 DISTRACTION_LEVEL_AVAILABLE = 8
    uint16 DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 16
    uint16 DISTRACTION_REASON_TYPE_AVAILABLE = 32
    uint16 DISTRACTION_PRO_CORE_AVAILABLE = 64
    uint16 RESERVED = 128
    uint16 L3_DISTRACTION_LEVEL_AVAILABLE = 256
    uint16 L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 512
    uint16 L2_DISTRACTION_LEVEL_AVAILABLE = 1024
    uint16 L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 2048
    uint16 available
    int32 distraction_lite
    int32 distraction_pro
    dms_msgs/DMSDistractionTypeEnum distraction_type
    dms_msgs/DMSDistractionLevelTypeEnum distraction_level_type
    dms_msgs/DMSDistractionConfidenceTypeEnum distraction_confidence_level
    dms_msgs/DMSDistractionReasonTypeEnum distraction_reason_type
    dms_msgs/L2DMSDistractionLevelTypeEnum l2_distraction_level_type
    dms_msgs/L2DMSDistractionConfidenceTypeEnum l2_distraction_confidence_level
    dms_msgs/L3DMSDistractionLevelTypeEnum l3_distraction_level_type
    dms_msgs/L3DMSDistractionConfidenceTypeEnum l3_distraction_confidence_level
    int32 distraction_pro_core
    int32 reserved
    int32 distraction_sensitivity
    string dis_params
    int32 l2_distraction_sensitivity
    string l2_dis_params
    int32 l3_distraction_sensitivity
    string l3_dis_params
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionTypeEnum
    uint8 LONG_TERM_DISTRACTION = 0
    uint8 SHORT_TERM_DISTRACTION = 1
    uint8 HEADPOSE_ABNORMAL_DISTRACTION = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionLevelTypeEnum
    uint16 DISTRACTION_LEVEL_0 = 0
    uint16 DISTRACTION_LEVEL_1 = 1
    uint16 DISTRACTION_LEVEL_2 = 2
    uint16 DISTRACTION_LEVEL_3 = 3
    uint16 DISTRACTION_LEVEL_4 = 4
    uint16 DISTRACTION_LEVEL_5 = 5
    uint16 DISTRACTION_LEVEL_6 = 6
    uint16 DISTRACTION_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionConfidenceTypeEnum
    uint16 NOT_AVAILABLE_CONFIDENCE = 0
    uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
    uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
    uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
    uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
    uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
    uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
    uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionReasonTypeEnum
    uint16 HEADPOSE_TRIGER_DISTRACTION = 1
    uint16 GAZE_ROI_TRIGER_DISTRACTION = 2
    uint16 HEAD_ROI_TRIGER_DISTRACTION = 4
    uint16 RESERVED = 8
    uint16 RESERVED1 = 16
    uint16 RESERVED2 = 32
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSDistractionLevelTypeEnum
    uint16 DISTRACTION_LEVEL_0 = 0
    uint16 DISTRACTION_LEVEL_1 = 1
    uint16 DISTRACTION_LEVEL_2 = 2
    uint16 DISTRACTION_LEVEL_3 = 3
    uint16 DISTRACTION_LEVEL_4 = 4
    uint16 DISTRACTION_LEVEL_5 = 5
    uint16 DISTRACTION_LEVEL_6 = 6
    uint16 DISTRACTION_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSDistractionConfidenceTypeEnum
    uint16 NOT_AVAILABLE_CONFIDENCE = 0
    uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
    uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
    uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
    uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
    uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
    uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
    uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSDistractionLevelTypeEnum
    uint16 DISTRACTION_LEVEL_0 = 0
    uint16 DISTRACTION_LEVEL_1 = 1
    uint16 DISTRACTION_LEVEL_2 = 2
    uint16 DISTRACTION_LEVEL_3 = 3
    uint16 DISTRACTION_LEVEL_4 = 4
    uint16 DISTRACTION_LEVEL_5 = 5
    uint16 DISTRACTION_LEVEL_6 = 6
    uint16 DISTRACTION_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSDistractionConfidenceTypeEnum
    uint16 NOT_AVAILABLE_CONFIDENCE = 0
    uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
    uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
    uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
    uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
    uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
    uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
    uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSDistractionResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.distraction_lite !== undefined) {
      resolved.distraction_lite = msg.distraction_lite;
    }
    else {
      resolved.distraction_lite = 0
    }

    if (msg.distraction_pro !== undefined) {
      resolved.distraction_pro = msg.distraction_pro;
    }
    else {
      resolved.distraction_pro = 0
    }

    if (msg.distraction_type !== undefined) {
      resolved.distraction_type = DMSDistractionTypeEnum.Resolve(msg.distraction_type)
    }
    else {
      resolved.distraction_type = new DMSDistractionTypeEnum()
    }

    if (msg.distraction_level_type !== undefined) {
      resolved.distraction_level_type = DMSDistractionLevelTypeEnum.Resolve(msg.distraction_level_type)
    }
    else {
      resolved.distraction_level_type = new DMSDistractionLevelTypeEnum()
    }

    if (msg.distraction_confidence_level !== undefined) {
      resolved.distraction_confidence_level = DMSDistractionConfidenceTypeEnum.Resolve(msg.distraction_confidence_level)
    }
    else {
      resolved.distraction_confidence_level = new DMSDistractionConfidenceTypeEnum()
    }

    if (msg.distraction_reason_type !== undefined) {
      resolved.distraction_reason_type = DMSDistractionReasonTypeEnum.Resolve(msg.distraction_reason_type)
    }
    else {
      resolved.distraction_reason_type = new DMSDistractionReasonTypeEnum()
    }

    if (msg.l2_distraction_level_type !== undefined) {
      resolved.l2_distraction_level_type = L2DMSDistractionLevelTypeEnum.Resolve(msg.l2_distraction_level_type)
    }
    else {
      resolved.l2_distraction_level_type = new L2DMSDistractionLevelTypeEnum()
    }

    if (msg.l2_distraction_confidence_level !== undefined) {
      resolved.l2_distraction_confidence_level = L2DMSDistractionConfidenceTypeEnum.Resolve(msg.l2_distraction_confidence_level)
    }
    else {
      resolved.l2_distraction_confidence_level = new L2DMSDistractionConfidenceTypeEnum()
    }

    if (msg.l3_distraction_level_type !== undefined) {
      resolved.l3_distraction_level_type = L3DMSDistractionLevelTypeEnum.Resolve(msg.l3_distraction_level_type)
    }
    else {
      resolved.l3_distraction_level_type = new L3DMSDistractionLevelTypeEnum()
    }

    if (msg.l3_distraction_confidence_level !== undefined) {
      resolved.l3_distraction_confidence_level = L3DMSDistractionConfidenceTypeEnum.Resolve(msg.l3_distraction_confidence_level)
    }
    else {
      resolved.l3_distraction_confidence_level = new L3DMSDistractionConfidenceTypeEnum()
    }

    if (msg.distraction_pro_core !== undefined) {
      resolved.distraction_pro_core = msg.distraction_pro_core;
    }
    else {
      resolved.distraction_pro_core = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.distraction_sensitivity !== undefined) {
      resolved.distraction_sensitivity = msg.distraction_sensitivity;
    }
    else {
      resolved.distraction_sensitivity = 0
    }

    if (msg.dis_params !== undefined) {
      resolved.dis_params = msg.dis_params;
    }
    else {
      resolved.dis_params = ''
    }

    if (msg.l2_distraction_sensitivity !== undefined) {
      resolved.l2_distraction_sensitivity = msg.l2_distraction_sensitivity;
    }
    else {
      resolved.l2_distraction_sensitivity = 0
    }

    if (msg.l2_dis_params !== undefined) {
      resolved.l2_dis_params = msg.l2_dis_params;
    }
    else {
      resolved.l2_dis_params = ''
    }

    if (msg.l3_distraction_sensitivity !== undefined) {
      resolved.l3_distraction_sensitivity = msg.l3_distraction_sensitivity;
    }
    else {
      resolved.l3_distraction_sensitivity = 0
    }

    if (msg.l3_dis_params !== undefined) {
      resolved.l3_dis_params = msg.l3_dis_params;
    }
    else {
      resolved.l3_dis_params = ''
    }

    return resolved;
    }
};

// Constants for message
DMSDistractionResult.Constants = {
  DISTRACTION_LITE_AVAILABLE: 1,
  DISTRACTION_PRO_AVAILABLE: 2,
  DISTRACTION_TYPE_AVAILABLE: 4,
  DISTRACTION_LEVEL_AVAILABLE: 8,
  DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE: 16,
  DISTRACTION_REASON_TYPE_AVAILABLE: 32,
  DISTRACTION_PRO_CORE_AVAILABLE: 64,
  RESERVED: 128,
  L3_DISTRACTION_LEVEL_AVAILABLE: 256,
  L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE: 512,
  L2_DISTRACTION_LEVEL_AVAILABLE: 1024,
  L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE: 2048,
}

module.exports = DMSDistractionResult;
