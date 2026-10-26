// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSAbnormalActionTypeEnum = require('./DMSAbnormalActionTypeEnum.js');
let L2DMSAbnormalActionTypeEnum = require('./L2DMSAbnormalActionTypeEnum.js');
let L3DMSAbnormalActionTypeEnum = require('./L3DMSAbnormalActionTypeEnum.js');
let DMSActionResult = require('./DMSActionResult.js');

//-----------------------------------------------------------

class DMSAbnormalActionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.abnormal_action_type = null;
      this.l2_abnormal_action_type = null;
      this.l3_abnormal_action_type = null;
      this.actions = null;
      this.l2_actions = null;
      this.l3_actions = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('abnormal_action_type')) {
        this.abnormal_action_type = initObj.abnormal_action_type
      }
      else {
        this.abnormal_action_type = new DMSAbnormalActionTypeEnum();
      }
      if (initObj.hasOwnProperty('l2_abnormal_action_type')) {
        this.l2_abnormal_action_type = initObj.l2_abnormal_action_type
      }
      else {
        this.l2_abnormal_action_type = new L2DMSAbnormalActionTypeEnum();
      }
      if (initObj.hasOwnProperty('l3_abnormal_action_type')) {
        this.l3_abnormal_action_type = initObj.l3_abnormal_action_type
      }
      else {
        this.l3_abnormal_action_type = new L3DMSAbnormalActionTypeEnum();
      }
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
      if (initObj.hasOwnProperty('l2_actions')) {
        this.l2_actions = initObj.l2_actions
      }
      else {
        this.l2_actions = [];
      }
      if (initObj.hasOwnProperty('l3_actions')) {
        this.l3_actions = initObj.l3_actions
      }
      else {
        this.l3_actions = [];
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSAbnormalActionResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [abnormal_action_type]
    bufferOffset = DMSAbnormalActionTypeEnum.serialize(obj.abnormal_action_type, buffer, bufferOffset);
    // Serialize message field [l2_abnormal_action_type]
    bufferOffset = L2DMSAbnormalActionTypeEnum.serialize(obj.l2_abnormal_action_type, buffer, bufferOffset);
    // Serialize message field [l3_abnormal_action_type]
    bufferOffset = L3DMSAbnormalActionTypeEnum.serialize(obj.l3_abnormal_action_type, buffer, bufferOffset);
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = DMSActionResult.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [l2_actions]
    // Serialize the length for message field [l2_actions]
    bufferOffset = _serializer.uint32(obj.l2_actions.length, buffer, bufferOffset);
    obj.l2_actions.forEach((val) => {
      bufferOffset = DMSActionResult.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [l3_actions]
    // Serialize the length for message field [l3_actions]
    bufferOffset = _serializer.uint32(obj.l3_actions.length, buffer, bufferOffset);
    obj.l3_actions.forEach((val) => {
      bufferOffset = DMSActionResult.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSAbnormalActionResult
    let len;
    let data = new DMSAbnormalActionResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [abnormal_action_type]
    data.abnormal_action_type = DMSAbnormalActionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l2_abnormal_action_type]
    data.l2_abnormal_action_type = L2DMSAbnormalActionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [l3_abnormal_action_type]
    data.l3_abnormal_action_type = L3DMSAbnormalActionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = DMSActionResult.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [l2_actions]
    // Deserialize array length for message field [l2_actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.l2_actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.l2_actions[i] = DMSActionResult.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [l3_actions]
    // Deserialize array length for message field [l3_actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.l3_actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.l3_actions[i] = DMSActionResult.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.actions.forEach((val) => {
      length += DMSActionResult.getMessageSize(val);
    });
    object.l2_actions.forEach((val) => {
      length += DMSActionResult.getMessageSize(val);
    });
    object.l3_actions.forEach((val) => {
      length += DMSActionResult.getMessageSize(val);
    });
    length += _getByteLength(object.reserved);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSAbnormalActionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb4ac1b4a09793a7d8fc5ab48fd60359';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 ABNORMAL_ACTION_TYPE_AVAILABLE = 1
    uint16 L2_ABNORMAL_ACTION_TYPE_AVAILABLE = 2
    uint16 L3_ABNORMAL_ACTION_TYPE_AVAILABLE = 4
    uint16 ACTIONS_AVAILABLE = 8
    uint16 L2_ACTIONS_AVAILABLE = 16
    uint16 L3_ACTIONS_AVAILABLE = 32
    uint16 RESERVED = 64
    uint16 available
    dms_msgs/DMSAbnormalActionTypeEnum abnormal_action_type
    dms_msgs/L2DMSAbnormalActionTypeEnum l2_abnormal_action_type
    dms_msgs/L3DMSAbnormalActionTypeEnum l3_abnormal_action_type
    dms_msgs/DMSActionResult[] actions
    dms_msgs/DMSActionResult[] l2_actions
    dms_msgs/DMSActionResult[] l3_actions
    string reserved
    
    ================================================================================
    MSG: dms_msgs/DMSAbnormalActionTypeEnum
    uint16 NORMAL = 1
    uint16 EYE_CLOSE = 2
    uint16 YAWN = 4
    uint16 DRINK = 8
    uint16 PHONE_CALL = 16
    uint16 SMOKE = 32
    uint16 EAT = 64
    uint16 PHONE_HAND = 128
    uint16 PHONE_EAR = 256
    uint16 RESERVED1 = 512
    uint16 RESERVED2 = 1024
    uint16 RESERVED3 = 2048
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSAbnormalActionTypeEnum
    uint16 NORMAL = 1
    uint16 EYE_CLOSE = 2
    uint16 YAWN = 4
    uint16 DRINK = 8
    uint16 PHONE_CALL = 16
    uint16 SMOKE = 32
    uint16 EAT = 64
    uint16 PHONE_HAND = 128
    uint16 PHONE_EAR = 256
    uint16 RESERVED1 = 512
    uint16 RESERVED2 = 1024
    uint16 RESERVED3 = 2048
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSAbnormalActionTypeEnum
    uint16 NORMAL = 1
    uint16 EYE_CLOSE = 2
    uint16 YAWN = 4
    uint16 DRINK = 8
    uint16 PHONE_CALL = 16
    uint16 SMOKE = 32
    uint16 EAT = 64
    uint16 PHONE_HAND = 128
    uint16 PHONE_EAR = 256
    uint16 RESERVED1 = 512
    uint16 RESERVED2 = 1024
    uint16 RESERVED3 = 2048
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSActionResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    dms_msgs/DMSFaceAction[] actions
    
    ================================================================================
    MSG: dms_msgs/DMSFaceAction
    string name
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSAbnormalActionResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.abnormal_action_type !== undefined) {
      resolved.abnormal_action_type = DMSAbnormalActionTypeEnum.Resolve(msg.abnormal_action_type)
    }
    else {
      resolved.abnormal_action_type = new DMSAbnormalActionTypeEnum()
    }

    if (msg.l2_abnormal_action_type !== undefined) {
      resolved.l2_abnormal_action_type = L2DMSAbnormalActionTypeEnum.Resolve(msg.l2_abnormal_action_type)
    }
    else {
      resolved.l2_abnormal_action_type = new L2DMSAbnormalActionTypeEnum()
    }

    if (msg.l3_abnormal_action_type !== undefined) {
      resolved.l3_abnormal_action_type = L3DMSAbnormalActionTypeEnum.Resolve(msg.l3_abnormal_action_type)
    }
    else {
      resolved.l3_abnormal_action_type = new L3DMSAbnormalActionTypeEnum()
    }

    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = DMSActionResult.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    if (msg.l2_actions !== undefined) {
      resolved.l2_actions = new Array(msg.l2_actions.length);
      for (let i = 0; i < resolved.l2_actions.length; ++i) {
        resolved.l2_actions[i] = DMSActionResult.Resolve(msg.l2_actions[i]);
      }
    }
    else {
      resolved.l2_actions = []
    }

    if (msg.l3_actions !== undefined) {
      resolved.l3_actions = new Array(msg.l3_actions.length);
      for (let i = 0; i < resolved.l3_actions.length; ++i) {
        resolved.l3_actions[i] = DMSActionResult.Resolve(msg.l3_actions[i]);
      }
    }
    else {
      resolved.l3_actions = []
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

// Constants for message
DMSAbnormalActionResult.Constants = {
  ABNORMAL_ACTION_TYPE_AVAILABLE: 1,
  L2_ABNORMAL_ACTION_TYPE_AVAILABLE: 2,
  L3_ABNORMAL_ACTION_TYPE_AVAILABLE: 4,
  ACTIONS_AVAILABLE: 8,
  L2_ACTIONS_AVAILABLE: 16,
  L3_ACTIONS_AVAILABLE: 32,
  RESERVED: 64,
}

module.exports = DMSAbnormalActionResult;
