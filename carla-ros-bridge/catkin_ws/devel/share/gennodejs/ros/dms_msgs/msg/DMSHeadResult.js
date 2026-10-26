// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSRotateRect = require('./DMSRotateRect.js');
let DMSPoint2f = require('./DMSPoint2f.js');
let DMSVector3f = require('./DMSVector3f.js');
let DMSPoint3f = require('./DMSPoint3f.js');

//-----------------------------------------------------------

class DMSHeadResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.rect_score = null;
      this.rect = null;
      this.head_rect = null;
      this.vector_head = null;
      this.vector_head_wcs = null;
      this.position_head = null;
      this.position_head_wcs = null;
      this.head_rotation = null;
      this.head_area = null;
      this.is_head_far = null;
      this.head_num = null;
      this.head_num_debounce = null;
      this.l2_head_area = null;
      this.l2_is_head_far = null;
      this.l2_head_num = null;
      this.l2_head_num_debounce = null;
      this.l3_head_area = null;
      this.l3_is_head_far = null;
      this.l3_head_num = null;
      this.l3_head_num_debounce = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('rect_score')) {
        this.rect_score = initObj.rect_score
      }
      else {
        this.rect_score = 0.0;
      }
      if (initObj.hasOwnProperty('rect')) {
        this.rect = initObj.rect
      }
      else {
        this.rect = new DMSRotateRect();
      }
      if (initObj.hasOwnProperty('head_rect')) {
        this.head_rect = initObj.head_rect
      }
      else {
        this.head_rect = [];
      }
      if (initObj.hasOwnProperty('vector_head')) {
        this.vector_head = initObj.vector_head
      }
      else {
        this.vector_head = new DMSVector3f();
      }
      if (initObj.hasOwnProperty('vector_head_wcs')) {
        this.vector_head_wcs = initObj.vector_head_wcs
      }
      else {
        this.vector_head_wcs = new DMSVector3f();
      }
      if (initObj.hasOwnProperty('position_head')) {
        this.position_head = initObj.position_head
      }
      else {
        this.position_head = new DMSPoint3f();
      }
      if (initObj.hasOwnProperty('position_head_wcs')) {
        this.position_head_wcs = initObj.position_head_wcs
      }
      else {
        this.position_head_wcs = new DMSPoint3f();
      }
      if (initObj.hasOwnProperty('head_rotation')) {
        this.head_rotation = initObj.head_rotation
      }
      else {
        this.head_rotation = [];
      }
      if (initObj.hasOwnProperty('head_area')) {
        this.head_area = initObj.head_area
      }
      else {
        this.head_area = 0.0;
      }
      if (initObj.hasOwnProperty('is_head_far')) {
        this.is_head_far = initObj.is_head_far
      }
      else {
        this.is_head_far = false;
      }
      if (initObj.hasOwnProperty('head_num')) {
        this.head_num = initObj.head_num
      }
      else {
        this.head_num = 0;
      }
      if (initObj.hasOwnProperty('head_num_debounce')) {
        this.head_num_debounce = initObj.head_num_debounce
      }
      else {
        this.head_num_debounce = 0;
      }
      if (initObj.hasOwnProperty('l2_head_area')) {
        this.l2_head_area = initObj.l2_head_area
      }
      else {
        this.l2_head_area = 0.0;
      }
      if (initObj.hasOwnProperty('l2_is_head_far')) {
        this.l2_is_head_far = initObj.l2_is_head_far
      }
      else {
        this.l2_is_head_far = false;
      }
      if (initObj.hasOwnProperty('l2_head_num')) {
        this.l2_head_num = initObj.l2_head_num
      }
      else {
        this.l2_head_num = 0;
      }
      if (initObj.hasOwnProperty('l2_head_num_debounce')) {
        this.l2_head_num_debounce = initObj.l2_head_num_debounce
      }
      else {
        this.l2_head_num_debounce = 0;
      }
      if (initObj.hasOwnProperty('l3_head_area')) {
        this.l3_head_area = initObj.l3_head_area
      }
      else {
        this.l3_head_area = 0.0;
      }
      if (initObj.hasOwnProperty('l3_is_head_far')) {
        this.l3_is_head_far = initObj.l3_is_head_far
      }
      else {
        this.l3_is_head_far = false;
      }
      if (initObj.hasOwnProperty('l3_head_num')) {
        this.l3_head_num = initObj.l3_head_num
      }
      else {
        this.l3_head_num = 0;
      }
      if (initObj.hasOwnProperty('l3_head_num_debounce')) {
        this.l3_head_num_debounce = initObj.l3_head_num_debounce
      }
      else {
        this.l3_head_num_debounce = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSHeadResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    // Serialize message field [rect_score]
    bufferOffset = _serializer.float32(obj.rect_score, buffer, bufferOffset);
    // Serialize message field [rect]
    bufferOffset = DMSRotateRect.serialize(obj.rect, buffer, bufferOffset);
    // Serialize message field [head_rect]
    // Serialize the length for message field [head_rect]
    bufferOffset = _serializer.uint32(obj.head_rect.length, buffer, bufferOffset);
    obj.head_rect.forEach((val) => {
      bufferOffset = DMSPoint2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [vector_head]
    bufferOffset = DMSVector3f.serialize(obj.vector_head, buffer, bufferOffset);
    // Serialize message field [vector_head_wcs]
    bufferOffset = DMSVector3f.serialize(obj.vector_head_wcs, buffer, bufferOffset);
    // Serialize message field [position_head]
    bufferOffset = DMSPoint3f.serialize(obj.position_head, buffer, bufferOffset);
    // Serialize message field [position_head_wcs]
    bufferOffset = DMSPoint3f.serialize(obj.position_head_wcs, buffer, bufferOffset);
    // Serialize message field [head_rotation]
    bufferOffset = _arraySerializer.float32(obj.head_rotation, buffer, bufferOffset, null);
    // Serialize message field [head_area]
    bufferOffset = _serializer.float32(obj.head_area, buffer, bufferOffset);
    // Serialize message field [is_head_far]
    bufferOffset = _serializer.bool(obj.is_head_far, buffer, bufferOffset);
    // Serialize message field [head_num]
    bufferOffset = _serializer.uint16(obj.head_num, buffer, bufferOffset);
    // Serialize message field [head_num_debounce]
    bufferOffset = _serializer.uint16(obj.head_num_debounce, buffer, bufferOffset);
    // Serialize message field [l2_head_area]
    bufferOffset = _serializer.float32(obj.l2_head_area, buffer, bufferOffset);
    // Serialize message field [l2_is_head_far]
    bufferOffset = _serializer.bool(obj.l2_is_head_far, buffer, bufferOffset);
    // Serialize message field [l2_head_num]
    bufferOffset = _serializer.uint16(obj.l2_head_num, buffer, bufferOffset);
    // Serialize message field [l2_head_num_debounce]
    bufferOffset = _serializer.uint16(obj.l2_head_num_debounce, buffer, bufferOffset);
    // Serialize message field [l3_head_area]
    bufferOffset = _serializer.float32(obj.l3_head_area, buffer, bufferOffset);
    // Serialize message field [l3_is_head_far]
    bufferOffset = _serializer.bool(obj.l3_is_head_far, buffer, bufferOffset);
    // Serialize message field [l3_head_num]
    bufferOffset = _serializer.uint16(obj.l3_head_num, buffer, bufferOffset);
    // Serialize message field [l3_head_num_debounce]
    bufferOffset = _serializer.uint16(obj.l3_head_num_debounce, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSHeadResult
    let len;
    let data = new DMSHeadResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rect_score]
    data.rect_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rect]
    data.rect = DMSRotateRect.deserialize(buffer, bufferOffset);
    // Deserialize message field [head_rect]
    // Deserialize array length for message field [head_rect]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.head_rect = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.head_rect[i] = DMSPoint2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [vector_head]
    data.vector_head = DMSVector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [vector_head_wcs]
    data.vector_head_wcs = DMSVector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_head]
    data.position_head = DMSPoint3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_head_wcs]
    data.position_head_wcs = DMSPoint3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [head_rotation]
    data.head_rotation = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [head_area]
    data.head_area = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_head_far]
    data.is_head_far = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [head_num]
    data.head_num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [head_num_debounce]
    data.head_num_debounce = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [l2_head_area]
    data.l2_head_area = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l2_is_head_far]
    data.l2_is_head_far = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [l2_head_num]
    data.l2_head_num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [l2_head_num_debounce]
    data.l2_head_num_debounce = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [l3_head_area]
    data.l3_head_area = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l3_is_head_far]
    data.l3_is_head_far = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [l3_head_num]
    data.l3_head_num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [l3_head_num_debounce]
    data.l3_head_num_debounce = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.head_rect.length;
    length += 4 * object.head_rotation.length;
    return length + 111;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSHeadResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4505691067705f700a2c396e37162aae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 RECT_AVAILABLE = 1
    uint32 VECTOR_HEAD_AVAILABLE = 2
    uint32 VECTOR_HEAD_WCS_AVAILABLE = 4
    uint32 POSITION_HEAD_AVAILABLE = 8
    uint32 POSITION_HEAD_WCS_AVAILABLE = 16
    uint32 HEAD_AREA_AVAILABLE = 32
    uint32 HEAD_NUM_AVAILABLE = 64
    uint32 IS_HEAD_FAR_AVAILABLE = 128
    uint32 HEAD_NUM_DEBOUNCE_AVAILABLE = 256
    uint32 L2_HEAD_AREA_AVAILABLE = 512
    uint32 L2_HEAD_NUM_AVAILABLE = 1024
    uint32 L2_IS_HEAD_FAR_AVAILABLE = 2048
    uint32 L2_HEAD_NUM_DEBOUNCE_AVAILABLE = 4096
    uint32 L3_HEAD_AREA_AVAILABLE = 8192
    uint32 L3_HEAD_NUM_AVAILABLE = 16384
    uint32 L3_IS_HEAD_FAR_AVAILABLE = 32768
    uint32 L3_HEAD_NUM_DEBOUNCE_AVAILABLE = 65536
    uint32 available
    float32 rect_score
    dms_msgs/DMSRotateRect rect
    dms_msgs/DMSPoint2f[] head_rect
    dms_msgs/DMSVector3f vector_head
    dms_msgs/DMSVector3f vector_head_wcs
    dms_msgs/DMSPoint3f position_head
    dms_msgs/DMSPoint3f position_head_wcs
    float32[] head_rotation
    float32 head_area
    bool is_head_far
    uint16 head_num
    uint16 head_num_debounce
    float32 l2_head_area
    bool l2_is_head_far
    uint16 l2_head_num
    uint16 l2_head_num_debounce
    float32 l3_head_area
    bool l3_is_head_far
    uint16 l3_head_num
    uint16 l3_head_num_debounce
    
    ================================================================================
    MSG: dms_msgs/DMSRotateRect
    dms_msgs/DMSPoint2f center
    float32 width
    float32 height
    float32 angle
    
    ================================================================================
    MSG: dms_msgs/DMSPoint2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: dms_msgs/DMSVector3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: dms_msgs/DMSPoint3f
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
    const resolved = new DMSHeadResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.rect_score !== undefined) {
      resolved.rect_score = msg.rect_score;
    }
    else {
      resolved.rect_score = 0.0
    }

    if (msg.rect !== undefined) {
      resolved.rect = DMSRotateRect.Resolve(msg.rect)
    }
    else {
      resolved.rect = new DMSRotateRect()
    }

    if (msg.head_rect !== undefined) {
      resolved.head_rect = new Array(msg.head_rect.length);
      for (let i = 0; i < resolved.head_rect.length; ++i) {
        resolved.head_rect[i] = DMSPoint2f.Resolve(msg.head_rect[i]);
      }
    }
    else {
      resolved.head_rect = []
    }

    if (msg.vector_head !== undefined) {
      resolved.vector_head = DMSVector3f.Resolve(msg.vector_head)
    }
    else {
      resolved.vector_head = new DMSVector3f()
    }

    if (msg.vector_head_wcs !== undefined) {
      resolved.vector_head_wcs = DMSVector3f.Resolve(msg.vector_head_wcs)
    }
    else {
      resolved.vector_head_wcs = new DMSVector3f()
    }

    if (msg.position_head !== undefined) {
      resolved.position_head = DMSPoint3f.Resolve(msg.position_head)
    }
    else {
      resolved.position_head = new DMSPoint3f()
    }

    if (msg.position_head_wcs !== undefined) {
      resolved.position_head_wcs = DMSPoint3f.Resolve(msg.position_head_wcs)
    }
    else {
      resolved.position_head_wcs = new DMSPoint3f()
    }

    if (msg.head_rotation !== undefined) {
      resolved.head_rotation = msg.head_rotation;
    }
    else {
      resolved.head_rotation = []
    }

    if (msg.head_area !== undefined) {
      resolved.head_area = msg.head_area;
    }
    else {
      resolved.head_area = 0.0
    }

    if (msg.is_head_far !== undefined) {
      resolved.is_head_far = msg.is_head_far;
    }
    else {
      resolved.is_head_far = false
    }

    if (msg.head_num !== undefined) {
      resolved.head_num = msg.head_num;
    }
    else {
      resolved.head_num = 0
    }

    if (msg.head_num_debounce !== undefined) {
      resolved.head_num_debounce = msg.head_num_debounce;
    }
    else {
      resolved.head_num_debounce = 0
    }

    if (msg.l2_head_area !== undefined) {
      resolved.l2_head_area = msg.l2_head_area;
    }
    else {
      resolved.l2_head_area = 0.0
    }

    if (msg.l2_is_head_far !== undefined) {
      resolved.l2_is_head_far = msg.l2_is_head_far;
    }
    else {
      resolved.l2_is_head_far = false
    }

    if (msg.l2_head_num !== undefined) {
      resolved.l2_head_num = msg.l2_head_num;
    }
    else {
      resolved.l2_head_num = 0
    }

    if (msg.l2_head_num_debounce !== undefined) {
      resolved.l2_head_num_debounce = msg.l2_head_num_debounce;
    }
    else {
      resolved.l2_head_num_debounce = 0
    }

    if (msg.l3_head_area !== undefined) {
      resolved.l3_head_area = msg.l3_head_area;
    }
    else {
      resolved.l3_head_area = 0.0
    }

    if (msg.l3_is_head_far !== undefined) {
      resolved.l3_is_head_far = msg.l3_is_head_far;
    }
    else {
      resolved.l3_is_head_far = false
    }

    if (msg.l3_head_num !== undefined) {
      resolved.l3_head_num = msg.l3_head_num;
    }
    else {
      resolved.l3_head_num = 0
    }

    if (msg.l3_head_num_debounce !== undefined) {
      resolved.l3_head_num_debounce = msg.l3_head_num_debounce;
    }
    else {
      resolved.l3_head_num_debounce = 0
    }

    return resolved;
    }
};

// Constants for message
DMSHeadResult.Constants = {
  RECT_AVAILABLE: 1,
  VECTOR_HEAD_AVAILABLE: 2,
  VECTOR_HEAD_WCS_AVAILABLE: 4,
  POSITION_HEAD_AVAILABLE: 8,
  POSITION_HEAD_WCS_AVAILABLE: 16,
  HEAD_AREA_AVAILABLE: 32,
  HEAD_NUM_AVAILABLE: 64,
  IS_HEAD_FAR_AVAILABLE: 128,
  HEAD_NUM_DEBOUNCE_AVAILABLE: 256,
  L2_HEAD_AREA_AVAILABLE: 512,
  L2_HEAD_NUM_AVAILABLE: 1024,
  L2_IS_HEAD_FAR_AVAILABLE: 2048,
  L2_HEAD_NUM_DEBOUNCE_AVAILABLE: 4096,
  L3_HEAD_AREA_AVAILABLE: 8192,
  L3_HEAD_NUM_AVAILABLE: 16384,
  L3_IS_HEAD_FAR_AVAILABLE: 32768,
  L3_HEAD_NUM_DEBOUNCE_AVAILABLE: 65536,
}

module.exports = DMSHeadResult;
