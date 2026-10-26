// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraSurfaceCondition = require('./CameraSurfaceCondition.js');
let HeatWireControlType = require('./HeatWireControlType.js');

//-----------------------------------------------------------

class HeatWireCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ff_camera_status = null;
      this.fw_camera_status = null;
      this.heat_wire_control = null;
    }
    else {
      if (initObj.hasOwnProperty('ff_camera_status')) {
        this.ff_camera_status = initObj.ff_camera_status
      }
      else {
        this.ff_camera_status = new CameraSurfaceCondition();
      }
      if (initObj.hasOwnProperty('fw_camera_status')) {
        this.fw_camera_status = initObj.fw_camera_status
      }
      else {
        this.fw_camera_status = new CameraSurfaceCondition();
      }
      if (initObj.hasOwnProperty('heat_wire_control')) {
        this.heat_wire_control = initObj.heat_wire_control
      }
      else {
        this.heat_wire_control = new HeatWireControlType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeatWireCommand
    // Serialize message field [ff_camera_status]
    bufferOffset = CameraSurfaceCondition.serialize(obj.ff_camera_status, buffer, bufferOffset);
    // Serialize message field [fw_camera_status]
    bufferOffset = CameraSurfaceCondition.serialize(obj.fw_camera_status, buffer, bufferOffset);
    // Serialize message field [heat_wire_control]
    bufferOffset = HeatWireControlType.serialize(obj.heat_wire_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeatWireCommand
    let len;
    let data = new HeatWireCommand(null);
    // Deserialize message field [ff_camera_status]
    data.ff_camera_status = CameraSurfaceCondition.deserialize(buffer, bufferOffset);
    // Deserialize message field [fw_camera_status]
    data.fw_camera_status = CameraSurfaceCondition.deserialize(buffer, bufferOffset);
    // Deserialize message field [heat_wire_control]
    data.heat_wire_control = HeatWireControlType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/HeatWireCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c97e71d5afb42f4e4ada74e4954bf0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    endpoint_msgs/CameraSurfaceCondition ff_camera_status
    endpoint_msgs/CameraSurfaceCondition fw_camera_status
    endpoint_msgs/HeatWireControlType heat_wire_control
    
    ================================================================================
    MSG: endpoint_msgs/CameraSurfaceCondition
    uint8 INVALID = 0
    uint8 NORMAL = 1
    uint8 WATER = 2
    uint8 MOISTURE = 3
    uint8 BLOCKAGE = 4
    uint8 DIZZY = 5
    uint8 DARKNESS = 6
    uint8 DIRTY = 7
    uint8 RESERVED1 = 8
    uint8 RESERVED2 = 9
    uint8 RESERVED3 = 10
    uint8 RESERVED4 = 11
    uint8 RESERVED5 = 12
    uint8 RESERVED6 = 13
    uint8 RESERVED7 = 14
    uint8 RESERVED8 = 15
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/HeatWireControlType
    uint8 NONE = 0
    uint8 STANDBY = 1
    uint8 HEAT = 2
    uint8 NOHEAT = 3
    uint8 FAILURE = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeatWireCommand(null);
    if (msg.ff_camera_status !== undefined) {
      resolved.ff_camera_status = CameraSurfaceCondition.Resolve(msg.ff_camera_status)
    }
    else {
      resolved.ff_camera_status = new CameraSurfaceCondition()
    }

    if (msg.fw_camera_status !== undefined) {
      resolved.fw_camera_status = CameraSurfaceCondition.Resolve(msg.fw_camera_status)
    }
    else {
      resolved.fw_camera_status = new CameraSurfaceCondition()
    }

    if (msg.heat_wire_control !== undefined) {
      resolved.heat_wire_control = HeatWireControlType.Resolve(msg.heat_wire_control)
    }
    else {
      resolved.heat_wire_control = new HeatWireControlType()
    }

    return resolved;
    }
};

module.exports = HeatWireCommand;
