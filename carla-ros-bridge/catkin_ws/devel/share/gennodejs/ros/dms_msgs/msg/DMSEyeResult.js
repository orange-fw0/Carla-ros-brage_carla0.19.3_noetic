// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSEyelidStatusTypeEnum = require('./DMSEyelidStatusTypeEnum.js');
let DMSEyeRelativeResult = require('./DMSEyeRelativeResult.js');
let DMSVector3f = require('./DMSVector3f.js');

//-----------------------------------------------------------

class DMSEyeResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.distance_left_eye = null;
      this.distance_right_eye = null;
      this.eyelid_left_score = null;
      this.eyelid_right_score = null;
      this.state_right_eye = null;
      this.state_left_eye = null;
      this.eye_relative_result = null;
      this.vector_left_eye_wcs = null;
      this.vector_right_eye_wcs = null;
      this.vector_eye_center_wcs = null;
      this.vector_left_eye_ccs = null;
      this.vector_right_eye_ccs = null;
      this.vector_eye_center_ccs = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('distance_left_eye')) {
        this.distance_left_eye = initObj.distance_left_eye
      }
      else {
        this.distance_left_eye = 0.0;
      }
      if (initObj.hasOwnProperty('distance_right_eye')) {
        this.distance_right_eye = initObj.distance_right_eye
      }
      else {
        this.distance_right_eye = 0.0;
      }
      if (initObj.hasOwnProperty('eyelid_left_score')) {
        this.eyelid_left_score = initObj.eyelid_left_score
      }
      else {
        this.eyelid_left_score = 0.0;
      }
      if (initObj.hasOwnProperty('eyelid_right_score')) {
        this.eyelid_right_score = initObj.eyelid_right_score
      }
      else {
        this.eyelid_right_score = 0.0;
      }
      if (initObj.hasOwnProperty('state_right_eye')) {
        this.state_right_eye = initObj.state_right_eye
      }
      else {
        this.state_right_eye = new DMSEyelidStatusTypeEnum();
      }
      if (initObj.hasOwnProperty('state_left_eye')) {
        this.state_left_eye = initObj.state_left_eye
      }
      else {
        this.state_left_eye = new DMSEyelidStatusTypeEnum();
      }
      if (initObj.hasOwnProperty('eye_relative_result')) {
        this.eye_relative_result = initObj.eye_relative_result
      }
      else {
        this.eye_relative_result = new DMSEyeRelativeResult();
      }
      if (initObj.hasOwnProperty('vector_left_eye_wcs')) {
        this.vector_left_eye_wcs = initObj.vector_left_eye_wcs
      }
      else {
        this.vector_left_eye_wcs = new DMSVector3f();
      }
      if (initObj.hasOwnProperty('vector_right_eye_wcs')) {
        this.vector_right_eye_wcs = initObj.vector_right_eye_wcs
      }
      else {
        this.vector_right_eye_wcs = new DMSVector3f();
      }
      if (initObj.hasOwnProperty('vector_eye_center_wcs')) {
        this.vector_eye_center_wcs = initObj.vector_eye_center_wcs
      }
      else {
        this.vector_eye_center_wcs = new DMSVector3f();
      }
      if (initObj.hasOwnProperty('vector_left_eye_ccs')) {
        this.vector_left_eye_ccs = initObj.vector_left_eye_ccs
      }
      else {
        this.vector_left_eye_ccs = new DMSVector3f();
      }
      if (initObj.hasOwnProperty('vector_right_eye_ccs')) {
        this.vector_right_eye_ccs = initObj.vector_right_eye_ccs
      }
      else {
        this.vector_right_eye_ccs = new DMSVector3f();
      }
      if (initObj.hasOwnProperty('vector_eye_center_ccs')) {
        this.vector_eye_center_ccs = initObj.vector_eye_center_ccs
      }
      else {
        this.vector_eye_center_ccs = new DMSVector3f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSEyeResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [distance_left_eye]
    bufferOffset = _serializer.float32(obj.distance_left_eye, buffer, bufferOffset);
    // Serialize message field [distance_right_eye]
    bufferOffset = _serializer.float32(obj.distance_right_eye, buffer, bufferOffset);
    // Serialize message field [eyelid_left_score]
    bufferOffset = _serializer.float32(obj.eyelid_left_score, buffer, bufferOffset);
    // Serialize message field [eyelid_right_score]
    bufferOffset = _serializer.float32(obj.eyelid_right_score, buffer, bufferOffset);
    // Serialize message field [state_right_eye]
    bufferOffset = DMSEyelidStatusTypeEnum.serialize(obj.state_right_eye, buffer, bufferOffset);
    // Serialize message field [state_left_eye]
    bufferOffset = DMSEyelidStatusTypeEnum.serialize(obj.state_left_eye, buffer, bufferOffset);
    // Serialize message field [eye_relative_result]
    bufferOffset = DMSEyeRelativeResult.serialize(obj.eye_relative_result, buffer, bufferOffset);
    // Serialize message field [vector_left_eye_wcs]
    bufferOffset = DMSVector3f.serialize(obj.vector_left_eye_wcs, buffer, bufferOffset);
    // Serialize message field [vector_right_eye_wcs]
    bufferOffset = DMSVector3f.serialize(obj.vector_right_eye_wcs, buffer, bufferOffset);
    // Serialize message field [vector_eye_center_wcs]
    bufferOffset = DMSVector3f.serialize(obj.vector_eye_center_wcs, buffer, bufferOffset);
    // Serialize message field [vector_left_eye_ccs]
    bufferOffset = DMSVector3f.serialize(obj.vector_left_eye_ccs, buffer, bufferOffset);
    // Serialize message field [vector_right_eye_ccs]
    bufferOffset = DMSVector3f.serialize(obj.vector_right_eye_ccs, buffer, bufferOffset);
    // Serialize message field [vector_eye_center_ccs]
    bufferOffset = DMSVector3f.serialize(obj.vector_eye_center_ccs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSEyeResult
    let len;
    let data = new DMSEyeResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [distance_left_eye]
    data.distance_left_eye = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_right_eye]
    data.distance_right_eye = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eyelid_left_score]
    data.eyelid_left_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eyelid_right_score]
    data.eyelid_right_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state_right_eye]
    data.state_right_eye = DMSEyelidStatusTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_left_eye]
    data.state_left_eye = DMSEyelidStatusTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [eye_relative_result]
    data.eye_relative_result = DMSEyeRelativeResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [vector_left_eye_wcs]
    data.vector_left_eye_wcs = DMSVector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [vector_right_eye_wcs]
    data.vector_right_eye_wcs = DMSVector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [vector_eye_center_wcs]
    data.vector_eye_center_wcs = DMSVector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [vector_left_eye_ccs]
    data.vector_left_eye_ccs = DMSVector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [vector_right_eye_ccs]
    data.vector_right_eye_ccs = DMSVector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [vector_eye_center_ccs]
    data.vector_eye_center_ccs = DMSVector3f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 115;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSEyeResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4d5f3924f5e8fbe8eebccef0629d833';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 EYE_DISTANCE_AVAILABLE = 1
    uint8 EYE_EYELID_AVAILABLE = 2
    uint8 EYE_VECTOR_WCS_AVAILABLE = 4
    uint8 EYE_VECTOR_CCS_AVAILABLE = 8
    uint8 available
    float32 distance_left_eye
    float32 distance_right_eye
    float32 eyelid_left_score
    float32 eyelid_right_score
    dms_msgs/DMSEyelidStatusTypeEnum state_right_eye
    dms_msgs/DMSEyelidStatusTypeEnum state_left_eye
    dms_msgs/DMSEyeRelativeResult eye_relative_result
    dms_msgs/DMSVector3f vector_left_eye_wcs
    dms_msgs/DMSVector3f vector_right_eye_wcs
    dms_msgs/DMSVector3f vector_eye_center_wcs
    dms_msgs/DMSVector3f vector_left_eye_ccs
    dms_msgs/DMSVector3f vector_right_eye_ccs
    dms_msgs/DMSVector3f vector_eye_center_ccs
    
    ================================================================================
    MSG: dms_msgs/DMSEyelidStatusTypeEnum
    uint8 DMS_EYELID_STATE_OPEN = 0
    uint8 DMS_EYELID_STATE_CLOSED = 1
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSEyeRelativeResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 IS_EYE_BLINK_AVAILABLE = 2
    uint8 available
    float32 left_eye_relative_distance
    float32 right_eye_relative_distance
    bool is_left_eye_close
    bool is_right_eye_close
    float32 left_eye_close_time
    float32 right_eye_close_time
    float32 reserved
    bool is_eye_blink
    
    ================================================================================
    MSG: dms_msgs/DMSVector3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSEyeResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.distance_left_eye !== undefined) {
      resolved.distance_left_eye = msg.distance_left_eye;
    }
    else {
      resolved.distance_left_eye = 0.0
    }

    if (msg.distance_right_eye !== undefined) {
      resolved.distance_right_eye = msg.distance_right_eye;
    }
    else {
      resolved.distance_right_eye = 0.0
    }

    if (msg.eyelid_left_score !== undefined) {
      resolved.eyelid_left_score = msg.eyelid_left_score;
    }
    else {
      resolved.eyelid_left_score = 0.0
    }

    if (msg.eyelid_right_score !== undefined) {
      resolved.eyelid_right_score = msg.eyelid_right_score;
    }
    else {
      resolved.eyelid_right_score = 0.0
    }

    if (msg.state_right_eye !== undefined) {
      resolved.state_right_eye = DMSEyelidStatusTypeEnum.Resolve(msg.state_right_eye)
    }
    else {
      resolved.state_right_eye = new DMSEyelidStatusTypeEnum()
    }

    if (msg.state_left_eye !== undefined) {
      resolved.state_left_eye = DMSEyelidStatusTypeEnum.Resolve(msg.state_left_eye)
    }
    else {
      resolved.state_left_eye = new DMSEyelidStatusTypeEnum()
    }

    if (msg.eye_relative_result !== undefined) {
      resolved.eye_relative_result = DMSEyeRelativeResult.Resolve(msg.eye_relative_result)
    }
    else {
      resolved.eye_relative_result = new DMSEyeRelativeResult()
    }

    if (msg.vector_left_eye_wcs !== undefined) {
      resolved.vector_left_eye_wcs = DMSVector3f.Resolve(msg.vector_left_eye_wcs)
    }
    else {
      resolved.vector_left_eye_wcs = new DMSVector3f()
    }

    if (msg.vector_right_eye_wcs !== undefined) {
      resolved.vector_right_eye_wcs = DMSVector3f.Resolve(msg.vector_right_eye_wcs)
    }
    else {
      resolved.vector_right_eye_wcs = new DMSVector3f()
    }

    if (msg.vector_eye_center_wcs !== undefined) {
      resolved.vector_eye_center_wcs = DMSVector3f.Resolve(msg.vector_eye_center_wcs)
    }
    else {
      resolved.vector_eye_center_wcs = new DMSVector3f()
    }

    if (msg.vector_left_eye_ccs !== undefined) {
      resolved.vector_left_eye_ccs = DMSVector3f.Resolve(msg.vector_left_eye_ccs)
    }
    else {
      resolved.vector_left_eye_ccs = new DMSVector3f()
    }

    if (msg.vector_right_eye_ccs !== undefined) {
      resolved.vector_right_eye_ccs = DMSVector3f.Resolve(msg.vector_right_eye_ccs)
    }
    else {
      resolved.vector_right_eye_ccs = new DMSVector3f()
    }

    if (msg.vector_eye_center_ccs !== undefined) {
      resolved.vector_eye_center_ccs = DMSVector3f.Resolve(msg.vector_eye_center_ccs)
    }
    else {
      resolved.vector_eye_center_ccs = new DMSVector3f()
    }

    return resolved;
    }
};

// Constants for message
DMSEyeResult.Constants = {
  EYE_DISTANCE_AVAILABLE: 1,
  EYE_EYELID_AVAILABLE: 2,
  EYE_VECTOR_WCS_AVAILABLE: 4,
  EYE_VECTOR_CCS_AVAILABLE: 8,
}

module.exports = DMSEyeResult;
