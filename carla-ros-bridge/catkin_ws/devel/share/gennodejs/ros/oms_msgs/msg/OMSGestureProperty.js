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
let OMSTargetHandInfo = require('./OMSTargetHandInfo.js');
let OMSHandDetResult = require('./OMSHandDetResult.js');

//-----------------------------------------------------------

class OMSGestureProperty {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.det_roi = null;
      this.target_hand = null;
      this.all_hands_det_results = null;
    }
    else {
      if (initObj.hasOwnProperty('det_roi')) {
        this.det_roi = initObj.det_roi
      }
      else {
        this.det_roi = [];
      }
      if (initObj.hasOwnProperty('target_hand')) {
        this.target_hand = initObj.target_hand
      }
      else {
        this.target_hand = new OMSTargetHandInfo();
      }
      if (initObj.hasOwnProperty('all_hands_det_results')) {
        this.all_hands_det_results = initObj.all_hands_det_results
      }
      else {
        this.all_hands_det_results = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSGestureProperty
    // Serialize message field [det_roi]
    // Serialize the length for message field [det_roi]
    bufferOffset = _serializer.uint32(obj.det_roi.length, buffer, bufferOffset);
    obj.det_roi.forEach((val) => {
      bufferOffset = OMSRect2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [target_hand]
    bufferOffset = OMSTargetHandInfo.serialize(obj.target_hand, buffer, bufferOffset);
    // Serialize message field [all_hands_det_results]
    // Serialize the length for message field [all_hands_det_results]
    bufferOffset = _serializer.uint32(obj.all_hands_det_results.length, buffer, bufferOffset);
    obj.all_hands_det_results.forEach((val) => {
      bufferOffset = OMSHandDetResult.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSGestureProperty
    let len;
    let data = new OMSGestureProperty(null);
    // Deserialize message field [det_roi]
    // Deserialize array length for message field [det_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.det_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.det_roi[i] = OMSRect2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [target_hand]
    data.target_hand = OMSTargetHandInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [all_hands_det_results]
    // Deserialize array length for message field [all_hands_det_results]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.all_hands_det_results = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.all_hands_det_results[i] = OMSHandDetResult.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 20 * object.det_roi.length;
    length += OMSTargetHandInfo.getMessageSize(object.target_hand);
    object.all_hands_det_results.forEach((val) => {
      length += OMSHandDetResult.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSGestureProperty';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44bee6b775e36ff69aa69a355c6d7346';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    oms_msgs/OMSRect2f[] det_roi
    oms_msgs/OMSTargetHandInfo target_hand
    oms_msgs/OMSHandDetResult[] all_hands_det_results
    
    ================================================================================
    MSG: oms_msgs/OMSRect2f
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSTargetHandInfo
    oms_msgs/OMSHandDetResult hand_det_result
    oms_msgs/OMSStaticGestureResult static_gesture_type
    oms_msgs/OMSDynamicGestureEvent dynamic_gesture_event
    
    ================================================================================
    MSG: oms_msgs/OMSHandDetResult
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f hand_rect
    oms_msgs/OMSPoint2f[] hand_keypoints
    
    ================================================================================
    MSG: oms_msgs/OMSPoint2f
    float32 x
    float32 y
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSStaticGestureResult
    uint8 UNAVAILABLE = 0
    uint8 STATIC_GESTURE_FIST = 1
    uint8 STATIC_GESTURE_ONE = 2
    uint8 STATIC_GESTURE_TWO = 3
    uint8 STATIC_GESTURE_THREE = 4
    uint8 STATIC_GESTURE_FOUR = 5
    uint8 STATIC_GESTURE_FIVE = 6
    uint8 STATIC_GESTURE_SIX = 7
    uint8 STATIC_GESTURE_SEVEN = 8
    uint8 STATIC_GESTURE_EIGHT = 9
    uint8 STATIC_GESTURE_NINE = 10
    uint8 STATIC_GESTURE_OK = 11
    uint8 STATIC_GESTURE_THUMB_UP = 12
    uint8 STATIC_GESTURE_THUMB_LEFT = 13
    uint8 STATIC_GESTURE_THUMB_RIGHT = 14
    uint8 STATIC_GESTURE_THUMB_DOWN = 15
    uint8 STATIC_GESTURE_FINGER_LEFT = 16
    uint8 STATIC_GESTURE_FINGER_RIGHT = 17
    uint8 STATIC_GESTURE_FINGER_UP = 18
    uint8 STATIC_GESTURE_RESERVED1 = 19
    uint8 STATIC_GESTURE_RESERVED2 = 20
    uint8 STATIC_GESTURE_RESERVED3 = 21
    uint8 STATIC_GESTURE_RESERVED4 = 22
    uint8 STATIC_GESTURE_RESERVED5 = 23
    uint8 STATIC_GESTURE_OTHER = 24
    uint8 UNCERTAIN = 25
    uint8 value
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSDynamicGestureEvent
    uint8 UNAVAILABLE = 0
    uint8 DYNAMIC_GESTURE_FINGER_LASER = 1
    uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2
    uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3
    uint8 DYNAMIC_GESTURE_PINCH = 4
    uint8 DYNAMIC_GESTURE_FIST = 5
    uint8 DYNAMIC_GESTURE_GRAB = 6
    uint8 DYNAMIC_GESTURE_PALM = 7
    uint8 DYNAMIC_GESTURE_OK = 8
    uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9
    uint8 DYNAMIC_GESTURE_THUMBUP = 10
    uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11
    uint8 DYNAMIC_GESTURE_RESERVED1 = 12
    uint8 DYNAMIC_GESTURE_RESERVED2 = 13
    uint8 DYNAMIC_GESTURE_RESERVED3 = 14
    uint8 DYNAMIC_GESTURE_RESERVED4 = 15
    uint8 DYNAMIC_GESTURE_RESERVED5 = 16
    uint8 UNCERTAIN = 17
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
    const resolved = new OMSGestureProperty(null);
    if (msg.det_roi !== undefined) {
      resolved.det_roi = new Array(msg.det_roi.length);
      for (let i = 0; i < resolved.det_roi.length; ++i) {
        resolved.det_roi[i] = OMSRect2f.Resolve(msg.det_roi[i]);
      }
    }
    else {
      resolved.det_roi = []
    }

    if (msg.target_hand !== undefined) {
      resolved.target_hand = OMSTargetHandInfo.Resolve(msg.target_hand)
    }
    else {
      resolved.target_hand = new OMSTargetHandInfo()
    }

    if (msg.all_hands_det_results !== undefined) {
      resolved.all_hands_det_results = new Array(msg.all_hands_det_results.length);
      for (let i = 0; i < resolved.all_hands_det_results.length; ++i) {
        resolved.all_hands_det_results[i] = OMSHandDetResult.Resolve(msg.all_hands_det_results[i]);
      }
    }
    else {
      resolved.all_hands_det_results = []
    }

    return resolved;
    }
};

module.exports = OMSGestureProperty;
