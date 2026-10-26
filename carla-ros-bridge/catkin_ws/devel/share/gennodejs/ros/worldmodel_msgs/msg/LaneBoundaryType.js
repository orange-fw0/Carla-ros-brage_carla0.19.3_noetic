// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneBoundaryForm = require('./LaneBoundaryForm.js');
let LaneBoundaryColor = require('./LaneBoundaryColor.js');
let LaneBoundaryWidth = require('./LaneBoundaryWidth.js');

//-----------------------------------------------------------

class LaneBoundaryType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.color = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = new LaneBoundaryForm();
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new LaneBoundaryColor();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = new LaneBoundaryWidth();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneBoundaryType
    // Serialize message field [value]
    bufferOffset = LaneBoundaryForm.serialize(obj.value, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = LaneBoundaryColor.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = LaneBoundaryWidth.serialize(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundaryType
    let len;
    let data = new LaneBoundaryType(null);
    // Deserialize message field [value]
    data.value = LaneBoundaryForm.deserialize(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = LaneBoundaryColor.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = LaneBoundaryWidth.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LaneBoundaryType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95147bd5b7fa0fdf3fcf8e37648214d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    worldmodel_msgs/LaneBoundaryForm value
    worldmodel_msgs/LaneBoundaryColor color
    worldmodel_msgs/LaneBoundaryWidth width
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryForm
    uint8 UNKNOWN = 0
    uint8 SOLID = 1
    uint8 DASH = 2
    uint8 VIRTUAL = 3
    uint8 PHYSICAL = 4
    uint8 DOUBLE_SOLID = 5
    uint8 DASH_SOLID = 6
    uint8 SOLID_DASH = 7
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryColor
    uint8 WHITE = 0
    uint8 YELLOW = 1
    uint8 OTHER = 2
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryWidth
    uint8 THIN = 0
    uint8 THICK = 1
    uint8 UNKNOWN = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundaryType(null);
    if (msg.value !== undefined) {
      resolved.value = LaneBoundaryForm.Resolve(msg.value)
    }
    else {
      resolved.value = new LaneBoundaryForm()
    }

    if (msg.color !== undefined) {
      resolved.color = LaneBoundaryColor.Resolve(msg.color)
    }
    else {
      resolved.color = new LaneBoundaryColor()
    }

    if (msg.width !== undefined) {
      resolved.width = LaneBoundaryWidth.Resolve(msg.width)
    }
    else {
      resolved.width = new LaneBoundaryWidth()
    }

    return resolved;
    }
};

module.exports = LaneBoundaryType;
