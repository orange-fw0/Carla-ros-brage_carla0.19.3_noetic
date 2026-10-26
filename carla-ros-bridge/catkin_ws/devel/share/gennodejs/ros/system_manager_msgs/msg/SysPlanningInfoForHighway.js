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
let NaviSettings = require('./NaviSettings.js');
let DrivingStyleEnum = require('./DrivingStyleEnum.js');
let LaneChangeCmd = require('./LaneChangeCmd.js');
let StartStopCmdEnum = require('./StartStopCmdEnum.js');
let LaneChangeStyleEnum = require('./LaneChangeStyleEnum.js');

//-----------------------------------------------------------

class SysPlanningInfoForHighway {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.function_mode = null;
      this.navi_settings = null;
      this.driving_style = null;
      this.lane_change_cmd = null;
      this.start_stop_cmd = null;
      this.lane_change_style = null;
    }
    else {
      if (initObj.hasOwnProperty('function_mode')) {
        this.function_mode = initObj.function_mode
      }
      else {
        this.function_mode = new FunctionModeEnum();
      }
      if (initObj.hasOwnProperty('navi_settings')) {
        this.navi_settings = initObj.navi_settings
      }
      else {
        this.navi_settings = new NaviSettings();
      }
      if (initObj.hasOwnProperty('driving_style')) {
        this.driving_style = initObj.driving_style
      }
      else {
        this.driving_style = new DrivingStyleEnum();
      }
      if (initObj.hasOwnProperty('lane_change_cmd')) {
        this.lane_change_cmd = initObj.lane_change_cmd
      }
      else {
        this.lane_change_cmd = new LaneChangeCmd();
      }
      if (initObj.hasOwnProperty('start_stop_cmd')) {
        this.start_stop_cmd = initObj.start_stop_cmd
      }
      else {
        this.start_stop_cmd = new StartStopCmdEnum();
      }
      if (initObj.hasOwnProperty('lane_change_style')) {
        this.lane_change_style = initObj.lane_change_style
      }
      else {
        this.lane_change_style = new LaneChangeStyleEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysPlanningInfoForHighway
    // Serialize message field [function_mode]
    bufferOffset = FunctionModeEnum.serialize(obj.function_mode, buffer, bufferOffset);
    // Serialize message field [navi_settings]
    bufferOffset = NaviSettings.serialize(obj.navi_settings, buffer, bufferOffset);
    // Serialize message field [driving_style]
    bufferOffset = DrivingStyleEnum.serialize(obj.driving_style, buffer, bufferOffset);
    // Serialize message field [lane_change_cmd]
    bufferOffset = LaneChangeCmd.serialize(obj.lane_change_cmd, buffer, bufferOffset);
    // Serialize message field [start_stop_cmd]
    bufferOffset = StartStopCmdEnum.serialize(obj.start_stop_cmd, buffer, bufferOffset);
    // Serialize message field [lane_change_style]
    bufferOffset = LaneChangeStyleEnum.serialize(obj.lane_change_style, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysPlanningInfoForHighway
    let len;
    let data = new SysPlanningInfoForHighway(null);
    // Deserialize message field [function_mode]
    data.function_mode = FunctionModeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [navi_settings]
    data.navi_settings = NaviSettings.deserialize(buffer, bufferOffset);
    // Deserialize message field [driving_style]
    data.driving_style = DrivingStyleEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_change_cmd]
    data.lane_change_cmd = LaneChangeCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_stop_cmd]
    data.start_stop_cmd = StartStopCmdEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_change_style]
    data.lane_change_style = LaneChangeStyleEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysPlanningInfoForHighway';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6bf22ee6514788d823386fc7c22d717';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_manager_msgs/FunctionModeEnum function_mode
    system_manager_msgs/NaviSettings navi_settings
    system_manager_msgs/DrivingStyleEnum driving_style
    system_manager_msgs/LaneChangeCmd lane_change_cmd
    system_manager_msgs/StartStopCmdEnum start_stop_cmd
    system_manager_msgs/LaneChangeStyleEnum lane_change_style
    
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
    MSG: system_manager_msgs/NaviSettings
    float32 navi_max_speed
    system_manager_msgs/NaviTimeDistance navi_time_distance
    
    ================================================================================
    MSG: system_manager_msgs/NaviTimeDistance
    uint8 AGGRESIVE = 0
    uint8 MODERATE_AGGRESIVE = 1
    uint8 NORMAL = 2
    uint8 MODERATE_CONSERVATIVE = 3
    uint8 CONSERVATIVE = 4
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/DrivingStyleEnum
    uint8 AGGRESIVE = 0
    uint8 NORMAL = 1
    uint8 CONSERVATIVE = 2
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeCmd
    system_manager_msgs/LaneChangeTypeEnum type
    system_manager_msgs/LaneChangeDirectionEnum direction
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeTypeEnum
    uint8 FORBIDDEN = 0
    uint8 INTERACTIVE = 1
    uint8 REMOVE_FORBIDDEN = 2
    uint8 REMOVE_INTERACTIVE = 3
    uint8 CONFIRM_MODE = 4
    uint8 REMOVE_CONFIRM_MODE = 5
    uint8 CONFIRM_APPROVED = 6
    uint8 CONFIRM_REFUSED = 7
    uint8 ENABLE_EVASIVE = 10
    uint8 DISABLE_EVASIVE = 11
    uint8 FORBIDDEN_INTERACTIVE = 12
    uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13
    uint8 FORBIDDEN_AUTO = 14
    uint8 REMOVE_FORBIDDEN_AUTO = 15
    uint8 FORBIDDEN_NAVI = 16
    uint8 REMOVE_FORBIDDEN_NAVI = 17
    uint8 CONFIRM_TIMEOUT = 18
    uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20
    uint8 ENABLE_RECOMMAND_AUTOMOUS = 21
    uint8 DISABLE_AUTOMOUS = 22
    uint8 ENABLE_PREFERED_LANE = 23
    uint8 DISABLE_PREFERED_LANE = 24
    uint8 LEFT_FIRST_LANE = 25
    uint8 LEFT_SECOND_LANE = 26
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeDirectionEnum
    uint8 LEFT = 0
    uint8 RIGHT = 1
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/StartStopCmdEnum
    uint8 START = 0
    uint8 STOP = 1
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LaneChangeStyleEnum
    uint8 AGGRESIVE = 0
    uint8 NORMAL = 1
    uint8 CONSERVATIVE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysPlanningInfoForHighway(null);
    if (msg.function_mode !== undefined) {
      resolved.function_mode = FunctionModeEnum.Resolve(msg.function_mode)
    }
    else {
      resolved.function_mode = new FunctionModeEnum()
    }

    if (msg.navi_settings !== undefined) {
      resolved.navi_settings = NaviSettings.Resolve(msg.navi_settings)
    }
    else {
      resolved.navi_settings = new NaviSettings()
    }

    if (msg.driving_style !== undefined) {
      resolved.driving_style = DrivingStyleEnum.Resolve(msg.driving_style)
    }
    else {
      resolved.driving_style = new DrivingStyleEnum()
    }

    if (msg.lane_change_cmd !== undefined) {
      resolved.lane_change_cmd = LaneChangeCmd.Resolve(msg.lane_change_cmd)
    }
    else {
      resolved.lane_change_cmd = new LaneChangeCmd()
    }

    if (msg.start_stop_cmd !== undefined) {
      resolved.start_stop_cmd = StartStopCmdEnum.Resolve(msg.start_stop_cmd)
    }
    else {
      resolved.start_stop_cmd = new StartStopCmdEnum()
    }

    if (msg.lane_change_style !== undefined) {
      resolved.lane_change_style = LaneChangeStyleEnum.Resolve(msg.lane_change_style)
    }
    else {
      resolved.lane_change_style = new LaneChangeStyleEnum()
    }

    return resolved;
    }
};

module.exports = SysPlanningInfoForHighway;
