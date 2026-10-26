// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MirrorState = require('./MirrorState.js');
let RWhSteerModType = require('./RWhSteerModType.js');

//-----------------------------------------------------------

class RearviewMirrorCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rearview_mirror_enable = null;
      this.rearview_mirror_command = null;
      this.rwheel_steer_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('rearview_mirror_enable')) {
        this.rearview_mirror_enable = initObj.rearview_mirror_enable
      }
      else {
        this.rearview_mirror_enable = false;
      }
      if (initObj.hasOwnProperty('rearview_mirror_command')) {
        this.rearview_mirror_command = initObj.rearview_mirror_command
      }
      else {
        this.rearview_mirror_command = new MirrorState();
      }
      if (initObj.hasOwnProperty('rwheel_steer_mode')) {
        this.rwheel_steer_mode = initObj.rwheel_steer_mode
      }
      else {
        this.rwheel_steer_mode = new RWhSteerModType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RearviewMirrorCommand
    // Serialize message field [rearview_mirror_enable]
    bufferOffset = _serializer.bool(obj.rearview_mirror_enable, buffer, bufferOffset);
    // Serialize message field [rearview_mirror_command]
    bufferOffset = MirrorState.serialize(obj.rearview_mirror_command, buffer, bufferOffset);
    // Serialize message field [rwheel_steer_mode]
    bufferOffset = RWhSteerModType.serialize(obj.rwheel_steer_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RearviewMirrorCommand
    let len;
    let data = new RearviewMirrorCommand(null);
    // Deserialize message field [rearview_mirror_enable]
    data.rearview_mirror_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rearview_mirror_command]
    data.rearview_mirror_command = MirrorState.deserialize(buffer, bufferOffset);
    // Deserialize message field [rwheel_steer_mode]
    data.rwheel_steer_mode = RWhSteerModType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/RearviewMirrorCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1bbd83611b308c9b14762538b2d2fe6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool rearview_mirror_enable
    endpoint_msgs/MirrorState rearview_mirror_command
    endpoint_msgs/RWhSteerModType rwheel_steer_mode
    
    ================================================================================
    MSG: endpoint_msgs/MirrorState
    uint8 NO_REQUEST = 0
    uint8 REQUEST_UNFOLD = 1
    uint8 REQUEST_FOLD = 2
    uint8 RESERVED1 = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/RWhSteerModType
    uint8 NO_REQUEST = 0
    uint8 CONTROL_REQUEST = 1
    uint8 LOCK_REQUEST = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RearviewMirrorCommand(null);
    if (msg.rearview_mirror_enable !== undefined) {
      resolved.rearview_mirror_enable = msg.rearview_mirror_enable;
    }
    else {
      resolved.rearview_mirror_enable = false
    }

    if (msg.rearview_mirror_command !== undefined) {
      resolved.rearview_mirror_command = MirrorState.Resolve(msg.rearview_mirror_command)
    }
    else {
      resolved.rearview_mirror_command = new MirrorState()
    }

    if (msg.rwheel_steer_mode !== undefined) {
      resolved.rwheel_steer_mode = RWhSteerModType.Resolve(msg.rwheel_steer_mode)
    }
    else {
      resolved.rwheel_steer_mode = new RWhSteerModType()
    }

    return resolved;
    }
};

module.exports = RearviewMirrorCommand;
