// Auto-generated. Do not edit!

// (in-package shadow_mode_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ShadowModeTriggerEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trigger_state = null;
      this.tags = null;
      this.road_curvature = null;
    }
    else {
      if (initObj.hasOwnProperty('trigger_state')) {
        this.trigger_state = initObj.trigger_state
      }
      else {
        this.trigger_state = false;
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
      if (initObj.hasOwnProperty('road_curvature')) {
        this.road_curvature = initObj.road_curvature
      }
      else {
        this.road_curvature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShadowModeTriggerEvent
    // Serialize message field [trigger_state]
    bufferOffset = _serializer.bool(obj.trigger_state, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    // Serialize message field [road_curvature]
    bufferOffset = _serializer.float64(obj.road_curvature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShadowModeTriggerEvent
    let len;
    let data = new ShadowModeTriggerEvent(null);
    // Deserialize message field [trigger_state]
    data.trigger_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [road_curvature]
    data.road_curvature = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shadow_mode_msgs/ShadowModeTriggerEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '622ef37a95532eaa0ce8597b42774062';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool trigger_state
    string[] tags
    float64 road_curvature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShadowModeTriggerEvent(null);
    if (msg.trigger_state !== undefined) {
      resolved.trigger_state = msg.trigger_state;
    }
    else {
      resolved.trigger_state = false
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    if (msg.road_curvature !== undefined) {
      resolved.road_curvature = msg.road_curvature;
    }
    else {
      resolved.road_curvature = 0.0
    }

    return resolved;
    }
};

module.exports = ShadowModeTriggerEvent;
