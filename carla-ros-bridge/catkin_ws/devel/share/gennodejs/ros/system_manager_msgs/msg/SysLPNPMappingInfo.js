// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FunctionModeEnum = require('./FunctionModeEnum.js');
let SysLPNPMappingTaskType = require('./SysLPNPMappingTaskType.js');
let SysLPNPMappingCommand = require('./SysLPNPMappingCommand.js');

//-----------------------------------------------------------

class SysLPNPMappingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.function_mode = null;
      this.map_dir = null;
      this.map_name = null;
      this.task_type = null;
      this.command = null;
      this.parking_name = null;
      this.target_parking_space_id = null;
    }
    else {
      if (initObj.hasOwnProperty('function_mode')) {
        this.function_mode = initObj.function_mode
      }
      else {
        this.function_mode = new FunctionModeEnum();
      }
      if (initObj.hasOwnProperty('map_dir')) {
        this.map_dir = initObj.map_dir
      }
      else {
        this.map_dir = '';
      }
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = 0;
      }
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = new SysLPNPMappingTaskType();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new SysLPNPMappingCommand();
      }
      if (initObj.hasOwnProperty('parking_name')) {
        this.parking_name = initObj.parking_name
      }
      else {
        this.parking_name = '';
      }
      if (initObj.hasOwnProperty('target_parking_space_id')) {
        this.target_parking_space_id = initObj.target_parking_space_id
      }
      else {
        this.target_parking_space_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysLPNPMappingInfo
    // Serialize message field [function_mode]
    bufferOffset = FunctionModeEnum.serialize(obj.function_mode, buffer, bufferOffset);
    // Serialize message field [map_dir]
    bufferOffset = _serializer.string(obj.map_dir, buffer, bufferOffset);
    // Serialize message field [map_name]
    bufferOffset = _serializer.uint32(obj.map_name, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = SysLPNPMappingTaskType.serialize(obj.task_type, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = SysLPNPMappingCommand.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [parking_name]
    bufferOffset = _serializer.string(obj.parking_name, buffer, bufferOffset);
    // Serialize message field [target_parking_space_id]
    bufferOffset = _serializer.int32(obj.target_parking_space_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysLPNPMappingInfo
    let len;
    let data = new SysLPNPMappingInfo(null);
    // Deserialize message field [function_mode]
    data.function_mode = FunctionModeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_dir]
    data.map_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = SysLPNPMappingTaskType.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = SysLPNPMappingCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_name]
    data.parking_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_parking_space_id]
    data.target_parking_space_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_dir);
    length += _getByteLength(object.parking_name);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysLPNPMappingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fedf36e358f781ec9a5351677b019dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_manager_msgs/FunctionModeEnum function_mode
    string map_dir
    uint32 map_name
    system_manager_msgs/SysLPNPMappingTaskType task_type
    system_manager_msgs/SysLPNPMappingCommand command
    string parking_name
    int32 target_parking_space_id
    
    ================================================================================
    MSG: system_manager_msgs/FunctionModeEnum
    uint8 ACC = 0
    uint8 CP = 1
    uint8 HNP = 2
    uint8 APA = 3
    uint8 SVP = 4
    uint8 PLAC = 5
    uint8 ACE = 6
    uint8 PNP = 7
    uint8 LPNP = 8
    uint8 LPNP_MAPPING = 9
    uint8 MEB = 10
    uint8 RADS = 11
    uint8 MANUAL = 12
    uint8 NRP = 13
    uint8 UNP = 14
    uint8 RPA = 15
    uint8 MANUAL_WITH_CPP = 16
    uint8 EESF = 17
    uint8 LKC = 18
    uint8 SENTRY_MODE = 20
    uint8 ECO_ASSIST = 21
    uint8 MNP = 22
    uint8 MNP_MAPPING = 23
    uint8 L3_FADEIN = 24
    uint8 MANUAL_WITH_NPP = 66
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/SysLPNPMappingTaskType
    uint8 DROP_OFF = 0
    uint8 PICK_UP = 1
    uint8 PARK_IN = 2
    uint8 PARK_OUT = 3
    uint8 VIRTUAL_PARK_IN = 4
    uint8 NUM = 5
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/SysLPNPMappingCommand
    uint8 START_SILENT_MODE = 0
    uint8 START_USER_MODE = 1
    uint8 FINISH = 2
    uint8 ABORT = 3
    uint8 BACK_TO_SILENT_MODE = 4
    uint8 SAVE = 5
    uint8 RESET_BUFFER = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysLPNPMappingInfo(null);
    if (msg.function_mode !== undefined) {
      resolved.function_mode = FunctionModeEnum.Resolve(msg.function_mode)
    }
    else {
      resolved.function_mode = new FunctionModeEnum()
    }

    if (msg.map_dir !== undefined) {
      resolved.map_dir = msg.map_dir;
    }
    else {
      resolved.map_dir = ''
    }

    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = 0
    }

    if (msg.task_type !== undefined) {
      resolved.task_type = SysLPNPMappingTaskType.Resolve(msg.task_type)
    }
    else {
      resolved.task_type = new SysLPNPMappingTaskType()
    }

    if (msg.command !== undefined) {
      resolved.command = SysLPNPMappingCommand.Resolve(msg.command)
    }
    else {
      resolved.command = new SysLPNPMappingCommand()
    }

    if (msg.parking_name !== undefined) {
      resolved.parking_name = msg.parking_name;
    }
    else {
      resolved.parking_name = ''
    }

    if (msg.target_parking_space_id !== undefined) {
      resolved.target_parking_space_id = msg.target_parking_space_id;
    }
    else {
      resolved.target_parking_space_id = 0
    }

    return resolved;
    }
};

module.exports = SysLPNPMappingInfo;
