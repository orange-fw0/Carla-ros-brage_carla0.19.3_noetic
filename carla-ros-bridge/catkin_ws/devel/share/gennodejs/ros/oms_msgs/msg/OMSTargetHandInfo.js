// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OMSHandDetResult = require('./OMSHandDetResult.js');
let OMSStaticGestureResult = require('./OMSStaticGestureResult.js');
let OMSDynamicGestureEvent = require('./OMSDynamicGestureEvent.js');

//-----------------------------------------------------------

class OMSTargetHandInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hand_det_result = null;
      this.static_gesture_type = null;
      this.dynamic_gesture_event = null;
    }
    else {
      if (initObj.hasOwnProperty('hand_det_result')) {
        this.hand_det_result = initObj.hand_det_result
      }
      else {
        this.hand_det_result = new OMSHandDetResult();
      }
      if (initObj.hasOwnProperty('static_gesture_type')) {
        this.static_gesture_type = initObj.static_gesture_type
      }
      else {
        this.static_gesture_type = new OMSStaticGestureResult();
      }
      if (initObj.hasOwnProperty('dynamic_gesture_event')) {
        this.dynamic_gesture_event = initObj.dynamic_gesture_event
      }
      else {
        this.dynamic_gesture_event = new OMSDynamicGestureEvent();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSTargetHandInfo
    // Serialize message field [hand_det_result]
    bufferOffset = OMSHandDetResult.serialize(obj.hand_det_result, buffer, bufferOffset);
    // Serialize message field [static_gesture_type]
    bufferOffset = OMSStaticGestureResult.serialize(obj.static_gesture_type, buffer, bufferOffset);
    // Serialize message field [dynamic_gesture_event]
    bufferOffset = OMSDynamicGestureEvent.serialize(obj.dynamic_gesture_event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSTargetHandInfo
    let len;
    let data = new OMSTargetHandInfo(null);
    // Deserialize message field [hand_det_result]
    data.hand_det_result = OMSHandDetResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [static_gesture_type]
    data.static_gesture_type = OMSStaticGestureResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [dynamic_gesture_event]
    data.dynamic_gesture_event = OMSDynamicGestureEvent.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += OMSHandDetResult.getMessageSize(object.hand_det_result);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSTargetHandInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6de7a2c120d7244b9e7d251bfa2fa828';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new OMSTargetHandInfo(null);
    if (msg.hand_det_result !== undefined) {
      resolved.hand_det_result = OMSHandDetResult.Resolve(msg.hand_det_result)
    }
    else {
      resolved.hand_det_result = new OMSHandDetResult()
    }

    if (msg.static_gesture_type !== undefined) {
      resolved.static_gesture_type = OMSStaticGestureResult.Resolve(msg.static_gesture_type)
    }
    else {
      resolved.static_gesture_type = new OMSStaticGestureResult()
    }

    if (msg.dynamic_gesture_event !== undefined) {
      resolved.dynamic_gesture_event = OMSDynamicGestureEvent.Resolve(msg.dynamic_gesture_event)
    }
    else {
      resolved.dynamic_gesture_event = new OMSDynamicGestureEvent()
    }

    return resolved;
    }
};

module.exports = OMSTargetHandInfo;
