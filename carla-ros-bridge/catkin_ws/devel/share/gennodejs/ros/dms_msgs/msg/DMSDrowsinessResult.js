// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSDrowsinessLevelTypeEnum = require('./DMSDrowsinessLevelTypeEnum.js');
let DMSDrowsinessConfidenceTypeEnum = require('./DMSDrowsinessConfidenceTypeEnum.js');
let L2DMSDrowsinessLevelTypeEnum = require('./L2DMSDrowsinessLevelTypeEnum.js');
let L2DMSDrowsinessConfidenceTypeEnum = require('./L2DMSDrowsinessConfidenceTypeEnum.js');
let L3DMSDrowsinessLevelTypeEnum = require('./L3DMSDrowsinessLevelTypeEnum.js');
let L3DMSDrowsinessConfidenceTypeEnum = require('./L3DMSDrowsinessConfidenceTypeEnum.js');

//-----------------------------------------------------------

class DMSDrowsinessResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.drowsiness_model_score = null;
      this.drowsiness_pro = null;
      this.model_based_drowsiness_pro = null;
      this.rule_based_drowsiness_pro = null;
      this.drowsiness_level_type = null;
      this.drowsiness_confidence_level = null;
      this.l2_drowsiness_level_type = null;
      this.l2_drowsiness_confidence_level = null;
      this.l3_drowsiness_level_type = null;
      this.l3_drowsiness_confidence_level = null;
      this.drowsiness_pro_core = null;
      this.reserved = null;
      this.drowsiness_sensitivity = null;
      this.drows_params = null;
      this.l2_drowsiness_sensitivity = null;
      this.l2_drows_params = null;
      this.l3_drowsiness_sensitivity = null;
      this.l3_drows_params = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('drowsiness_model_score')) {
        this.drowsiness_model_score = initObj.drowsiness_model_score
      }
      else {
        this.drowsiness_model_score = [];
      }
      if (initObj.hasOwnProperty('drowsiness_pro')) {
        this.drowsiness_pro = initObj.drowsiness_pro
      }
      else {
        this.drowsiness_pro = 0;
      }
      if (initObj.hasOwnProperty('model_based_drowsiness_pro')) {
        this.model_based_drowsiness_pro = initObj.model_based_drowsiness_pro
      }
      else {
        this.model_based_drowsiness_pro = 0;
      }
      if (initObj.hasOwnProperty('rule_based_drowsiness_pro')) {
        this.rule_based_drowsiness_pro = initObj.rule_based_drowsiness_pro
      }
      else {
        this.rule_based_drowsiness_pro = 0;
      }
      if (initObj.hasOwnProperty('drowsiness_level_type')) {
        this.drowsiness_level_type = initObj.drowsiness_level_type
      }
      else {
        this.drowsiness_level_type = new DMSDrowsinessLevelTypeEnum();
      }
      if (initObj.hasOwnProperty('drowsiness_confidence_level')) {
        this.drowsiness_confidence_level = initObj.drowsiness_confidence_level
      }
      else {
        this.drowsiness_confidence_level = new DMSDrowsinessConfidenceTypeEnum();
      }
      if (initObj.hasOwnProperty('l2_drowsiness_level_type')) {
        this.l2_drowsiness_level_type = initObj.l2_drowsiness_level_type
      }
      else {
        this.l2_drowsiness_level_type = new L2DMSDrowsinessLevelTypeEnum();
      }
      if (initObj.hasOwnProperty('l2_drowsiness_confidence_level')) {
        this.l2_drowsiness_confidence_level = initObj.l2_drowsiness_confidence_level
      }
      else {
        this.l2_drowsiness_confidence_level = new L2DMSDrowsinessConfidenceTypeEnum();
      }
      if (initObj.hasOwnProperty('l3_drowsiness_level_type')) {
        this.l3_drowsiness_level_type = initObj.l3_drowsiness_level_type
      }
      else {
        this.l3_drowsiness_level_type = new L3DMSDrowsinessLevelTypeEnum();
      }
      if (initObj.hasOwnProperty('l3_drowsiness_confidence_level')) {
        this.l3_drowsiness_confidence_level = initObj.l3_drowsiness_confidence_level
      }
      else {
        this.l3_drowsiness_confidence_level = new L3DMSDrowsinessConfidenceTypeEnum();
      }
      if (initObj.hasOwnProperty('drowsiness_pro_core')) {
        this.drowsiness_pro_core = initObj.drowsiness_pro_core
      }
      else {
        this.drowsiness_pro_core = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0.0;
      }
      if (initObj.hasOwnProperty('drowsiness_sensitivity')) {
        this.drowsiness_sensitivity = initObj.drowsiness_sensitivity
      }
      else {
        this.drowsiness_sensitivity = 0;
      }
      if (initObj.hasOwnProperty('drows_params')) {
        this.drows_params = initObj.drows_params
      }
      else {
        this.drows_params = '';
      }
      if (initObj.hasOwnProperty('l2_drowsiness_sensitivity')) {
        this.l2_drowsiness_sensitivity = initObj.l2_drowsiness_sensitivity
      }
      else {
        this.l2_drowsiness_sensitivity = 0;
      }
      if (initObj.hasOwnProperty('l2_drows_params')) {
        this.l2_drows_params = initObj.l2_drows_params
      }
      else {
        this.l2_drows_params = '';
      }
      if (initObj.hasOwnProperty('l3_drowsiness_sensitivity')) {
        this.l3_drowsiness_sensitivity = initObj.l3_drowsiness_sensitivity
      }
      else {
        this.l3_drowsiness_sensitivity = 0;
      }
      if (initObj.hasOwnProperty('l3_drows_params')) {
        this.l3_drows_params = initObj.l3_drows_params
      }
      else {
        this.l3_drows_params = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSDrowsinessResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [drowsiness_model_score]
    bufferOffset = _arraySerializer.float32(obj.drowsiness_model_score, buffer, bufferOffset, null);
    // Serialize message field [drowsiness_pro]
    bufferOffset = _serializer.int32(obj.drowsiness_pro, buffer, bufferOffset);
    // Serialize message field [model_based_drowsiness_pro]
    bufferOffset = _serializer.int32(obj.model_based_drowsiness_pro, buffer, bufferOffset);
    // Serialize message field [rule_based_drowsiness_pro]
    bufferOffset = _serializer.int32(obj.rule_based_drowsiness_pro, buffer, bufferOffset);
    // Serialize message field [drowsiness_level_type]
    bufferOffset = DMSDrowsinessLevelTypeEnum.serialize(obj.drowsiness_level_type, buffer, bufferOffset);
    // Serialize message field [drowsiness_confidence_level]
    bufferOffset = DMSDrowsinessConfidenceTypeEnum.serialize(obj.drowsiness_confidence_level, buffer, bufferOffset);
    // Serialize message field [l2_drowsiness_level_type]
    bufferOffset = L2DMSDrowsinessLevelTypeEnum.serialize(obj.l2_drowsiness_level_type, buffer, bufferOffset);
    // Serialize message field [l2_drowsiness_confidence_level]
    bufferOffset = L2DMSDrowsinessConfidenceTypeEnum.serialize(obj.l2_drowsiness_confidence_level, buffer, bufferOffset);
    // Serialize message field [l3_drowsiness_level_type]
    bufferOffset = L3DMSDrowsinessLevelTypeEnum.serialize(obj.l3_drowsiness_level_type, buffer, bufferOffset);
    // Serialize message field [l3_drowsiness_confidence_level]
    bufferOffset = L3DMSDrowsinessConfidenceTypeEnum.serialize(obj.l3_drowsiness_confidence_level, buffer, bufferOffset);
    // Serialize message field [drowsiness_pro_core]
    bufferOffset = _serializer.int32(obj.drowsiness_pro_core, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [drowsiness_sensitivity]
    bufferOffset = _serializer.int32(obj.drowsiness_sensitivity, buffer, bufferOffset);
    // Serialize message field [drows_params]
    bufferOffset = _serializer.string(obj.drows_params, buffer, bufferOffset);
    // Serialize message field [l2_drowsiness_sensitivity]
    bufferOffset = _serializer.int32(obj.l2_drowsiness_sensitivity, buffer, bufferOffset);
    // Serialize message field [l2_drows_params]
    bufferOffset = _serializer.string(obj.l2_drows_params, buffer, bufferOffset);
    // Serialize message field [l3_drowsiness_sensitivity]
    bufferOffset = _serializer.int32(obj.l3_drowsiness_sensitivity, buffer, bufferOffset);
    // Serialize message field [l3_drows_params]
    bufferOffset = _serializer.string(obj.l3_drows_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSDrowsinessResult
    let len;
    let data = new DMSDrowsinessResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [drowsiness_model_score]
    data.drowsiness_model_score = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [drowsiness_pro]
    data.drowsiness_pro = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [model_based_drowsiness_pro]
    data.model_based_drowsiness_pro = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rule_based_drowsiness_pro]
    data.rule_based_drowsiness_pro = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drowsiness_level_type]
    data.drowsiness_level_type = DMSDrowsinessLevelTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [drowsiness_confidence_level]
    data.drowsiness_confidence_level = DMSDrowsinessConfidenceTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l2_drowsiness_level_type]
    data.l2_drowsiness_level_type = L2DMSDrowsinessLevelTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l2_drowsiness_confidence_level]
    data.l2_drowsiness_confidence_level = L2DMSDrowsinessConfidenceTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l3_drowsiness_level_type]
    data.l3_drowsiness_level_type = L3DMSDrowsinessLevelTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l3_drowsiness_confidence_level]
    data.l3_drowsiness_confidence_level = L3DMSDrowsinessConfidenceTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [drowsiness_pro_core]
    data.drowsiness_pro_core = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [drowsiness_sensitivity]
    data.drowsiness_sensitivity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drows_params]
    data.drows_params = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [l2_drowsiness_sensitivity]
    data.l2_drowsiness_sensitivity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [l2_drows_params]
    data.l2_drows_params = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [l3_drowsiness_sensitivity]
    data.l3_drowsiness_sensitivity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [l3_drows_params]
    data.l3_drows_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.drowsiness_model_score.length;
    length += _getByteLength(object.drows_params);
    length += _getByteLength(object.l2_drows_params);
    length += _getByteLength(object.l3_drows_params);
    return length + 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSDrowsinessResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c864d1db8b226718cb69069a074b8053';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 DROWSINESS_MODEL_SCORE_AVAILABLE = 1
    uint16 DROWSINESS_PRO_AVAILABLE = 2
    uint16 MODEL_BASED_DROWSINESS_PRO_AVAILABLE = 4
    uint16 RULE_BASED_DROWSINESS_PRO_AVAILABLE = 8
    uint16 DROWSINESS_LEVEL_TYPE_AVAILABLE = 16
    uint16 DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 32
    uint16 DROWSINESS_PRO_CORE_AVAILABLE = 64
    uint16 RESERVED = 128
    uint16 L3_DROWSINESS_LEVEL_TYPE_AVAILABLE = 256
    uint16 L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 512
    uint16 L2_DROWSINESS_LEVEL_TYPE_AVAILABLE = 1024
    uint16 L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 2048
    uint16 available
    float32[] drowsiness_model_score
    int32 drowsiness_pro
    int32 model_based_drowsiness_pro
    int32 rule_based_drowsiness_pro
    dms_msgs/DMSDrowsinessLevelTypeEnum drowsiness_level_type
    dms_msgs/DMSDrowsinessConfidenceTypeEnum drowsiness_confidence_level
    dms_msgs/L2DMSDrowsinessLevelTypeEnum l2_drowsiness_level_type
    dms_msgs/L2DMSDrowsinessConfidenceTypeEnum l2_drowsiness_confidence_level
    dms_msgs/L3DMSDrowsinessLevelTypeEnum l3_drowsiness_level_type
    dms_msgs/L3DMSDrowsinessConfidenceTypeEnum l3_drowsiness_confidence_level
    int32 drowsiness_pro_core
    float32 reserved
    int32 drowsiness_sensitivity
    string drows_params
    int32 l2_drowsiness_sensitivity
    string l2_drows_params
    int32 l3_drowsiness_sensitivity
    string l3_drows_params
    
    ================================================================================
    MSG: dms_msgs/DMSDrowsinessLevelTypeEnum
    uint16 DROWSINESS_LEVEL_0 = 0
    uint16 DROWSINESS_LEVEL_1 = 1
    uint16 DROWSINESS_LEVEL_2 = 2
    uint16 DROWSINESS_LEVEL_3 = 3
    uint16 DROWSINESS_LEVEL_4 = 4
    uint16 DROWSINESS_LEVEL_5 = 5
    uint16 DROWSINESS_LEVEL_6 = 6
    uint16 DROWSINESS_LEVEL_7 = 7
    uint16 DROWSINESS_LEVEL_8 = 8
    uint16 DROWSINESS_LEVEL_9 = 9
    uint16 DROWSINESS_LEVEL_10 = 10
    uint16 DROWSINESS_LEVEL_11 = 11
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSDrowsinessConfidenceTypeEnum
    uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
    uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
    uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
    uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
    uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
    uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
    uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
    uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
    uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
    uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSDrowsinessLevelTypeEnum
    uint16 DROWSINESS_LEVEL_0 = 0
    uint16 DROWSINESS_LEVEL_1 = 1
    uint16 DROWSINESS_LEVEL_2 = 2
    uint16 DROWSINESS_LEVEL_3 = 3
    uint16 DROWSINESS_LEVEL_4 = 4
    uint16 DROWSINESS_LEVEL_5 = 5
    uint16 DROWSINESS_LEVEL_6 = 6
    uint16 DROWSINESS_LEVEL_7 = 7
    uint16 DROWSINESS_LEVEL_8 = 8
    uint16 DROWSINESS_LEVEL_9 = 9
    uint16 DROWSINESS_LEVEL_10 = 10
    uint16 DROWSINESS_LEVEL_11 = 11
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSDrowsinessConfidenceTypeEnum
    uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
    uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
    uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
    uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
    uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
    uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
    uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
    uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
    uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
    uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSDrowsinessLevelTypeEnum
    uint16 DROWSINESS_LEVEL_0 = 0
    uint16 DROWSINESS_LEVEL_1 = 1
    uint16 DROWSINESS_LEVEL_2 = 2
    uint16 DROWSINESS_LEVEL_3 = 3
    uint16 DROWSINESS_LEVEL_4 = 4
    uint16 DROWSINESS_LEVEL_5 = 5
    uint16 DROWSINESS_LEVEL_6 = 6
    uint16 DROWSINESS_LEVEL_7 = 7
    uint16 DROWSINESS_LEVEL_8 = 8
    uint16 DROWSINESS_LEVEL_9 = 9
    uint16 DROWSINESS_LEVEL_10 = 10
    uint16 DROWSINESS_LEVEL_11 = 11
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSDrowsinessConfidenceTypeEnum
    uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
    uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
    uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
    uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
    uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
    uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
    uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
    uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
    uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
    uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSDrowsinessResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.drowsiness_model_score !== undefined) {
      resolved.drowsiness_model_score = msg.drowsiness_model_score;
    }
    else {
      resolved.drowsiness_model_score = []
    }

    if (msg.drowsiness_pro !== undefined) {
      resolved.drowsiness_pro = msg.drowsiness_pro;
    }
    else {
      resolved.drowsiness_pro = 0
    }

    if (msg.model_based_drowsiness_pro !== undefined) {
      resolved.model_based_drowsiness_pro = msg.model_based_drowsiness_pro;
    }
    else {
      resolved.model_based_drowsiness_pro = 0
    }

    if (msg.rule_based_drowsiness_pro !== undefined) {
      resolved.rule_based_drowsiness_pro = msg.rule_based_drowsiness_pro;
    }
    else {
      resolved.rule_based_drowsiness_pro = 0
    }

    if (msg.drowsiness_level_type !== undefined) {
      resolved.drowsiness_level_type = DMSDrowsinessLevelTypeEnum.Resolve(msg.drowsiness_level_type)
    }
    else {
      resolved.drowsiness_level_type = new DMSDrowsinessLevelTypeEnum()
    }

    if (msg.drowsiness_confidence_level !== undefined) {
      resolved.drowsiness_confidence_level = DMSDrowsinessConfidenceTypeEnum.Resolve(msg.drowsiness_confidence_level)
    }
    else {
      resolved.drowsiness_confidence_level = new DMSDrowsinessConfidenceTypeEnum()
    }

    if (msg.l2_drowsiness_level_type !== undefined) {
      resolved.l2_drowsiness_level_type = L2DMSDrowsinessLevelTypeEnum.Resolve(msg.l2_drowsiness_level_type)
    }
    else {
      resolved.l2_drowsiness_level_type = new L2DMSDrowsinessLevelTypeEnum()
    }

    if (msg.l2_drowsiness_confidence_level !== undefined) {
      resolved.l2_drowsiness_confidence_level = L2DMSDrowsinessConfidenceTypeEnum.Resolve(msg.l2_drowsiness_confidence_level)
    }
    else {
      resolved.l2_drowsiness_confidence_level = new L2DMSDrowsinessConfidenceTypeEnum()
    }

    if (msg.l3_drowsiness_level_type !== undefined) {
      resolved.l3_drowsiness_level_type = L3DMSDrowsinessLevelTypeEnum.Resolve(msg.l3_drowsiness_level_type)
    }
    else {
      resolved.l3_drowsiness_level_type = new L3DMSDrowsinessLevelTypeEnum()
    }

    if (msg.l3_drowsiness_confidence_level !== undefined) {
      resolved.l3_drowsiness_confidence_level = L3DMSDrowsinessConfidenceTypeEnum.Resolve(msg.l3_drowsiness_confidence_level)
    }
    else {
      resolved.l3_drowsiness_confidence_level = new L3DMSDrowsinessConfidenceTypeEnum()
    }

    if (msg.drowsiness_pro_core !== undefined) {
      resolved.drowsiness_pro_core = msg.drowsiness_pro_core;
    }
    else {
      resolved.drowsiness_pro_core = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0.0
    }

    if (msg.drowsiness_sensitivity !== undefined) {
      resolved.drowsiness_sensitivity = msg.drowsiness_sensitivity;
    }
    else {
      resolved.drowsiness_sensitivity = 0
    }

    if (msg.drows_params !== undefined) {
      resolved.drows_params = msg.drows_params;
    }
    else {
      resolved.drows_params = ''
    }

    if (msg.l2_drowsiness_sensitivity !== undefined) {
      resolved.l2_drowsiness_sensitivity = msg.l2_drowsiness_sensitivity;
    }
    else {
      resolved.l2_drowsiness_sensitivity = 0
    }

    if (msg.l2_drows_params !== undefined) {
      resolved.l2_drows_params = msg.l2_drows_params;
    }
    else {
      resolved.l2_drows_params = ''
    }

    if (msg.l3_drowsiness_sensitivity !== undefined) {
      resolved.l3_drowsiness_sensitivity = msg.l3_drowsiness_sensitivity;
    }
    else {
      resolved.l3_drowsiness_sensitivity = 0
    }

    if (msg.l3_drows_params !== undefined) {
      resolved.l3_drows_params = msg.l3_drows_params;
    }
    else {
      resolved.l3_drows_params = ''
    }

    return resolved;
    }
};

// Constants for message
DMSDrowsinessResult.Constants = {
  DROWSINESS_MODEL_SCORE_AVAILABLE: 1,
  DROWSINESS_PRO_AVAILABLE: 2,
  MODEL_BASED_DROWSINESS_PRO_AVAILABLE: 4,
  RULE_BASED_DROWSINESS_PRO_AVAILABLE: 8,
  DROWSINESS_LEVEL_TYPE_AVAILABLE: 16,
  DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE: 32,
  DROWSINESS_PRO_CORE_AVAILABLE: 64,
  RESERVED: 128,
  L3_DROWSINESS_LEVEL_TYPE_AVAILABLE: 256,
  L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE: 512,
  L2_DROWSINESS_LEVEL_TYPE_AVAILABLE: 1024,
  L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE: 2048,
}

module.exports = DMSDrowsinessResult;
