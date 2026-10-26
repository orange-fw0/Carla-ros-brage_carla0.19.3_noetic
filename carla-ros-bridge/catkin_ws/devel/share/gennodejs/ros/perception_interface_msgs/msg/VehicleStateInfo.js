// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleBrakeLightInfo = require('./VehicleBrakeLightInfo.js');
let VehicleTailLightInfo = require('./VehicleTailLightInfo.js');
let VehicleBlinkLightInfo = require('./VehicleBlinkLightInfo.js');
let VehicleBeamLightInfo = require('./VehicleBeamLightInfo.js');
let VehicleDoorStateInfo = require('./VehicleDoorStateInfo.js');
let VehicleEgoLaneRelationInfo = require('./VehicleEgoLaneRelationInfo.js');
let VehicleCutinStateInfo = require('./VehicleCutinStateInfo.js');

//-----------------------------------------------------------

class VehicleStateInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brake_light_info = null;
      this.tail_light_info = null;
      this.blink_light_info = null;
      this.beam_light_info = null;
      this.door_state_info = null;
      this.ego_lane_relation_info = null;
      this.cutin_info = null;
    }
    else {
      if (initObj.hasOwnProperty('brake_light_info')) {
        this.brake_light_info = initObj.brake_light_info
      }
      else {
        this.brake_light_info = new VehicleBrakeLightInfo();
      }
      if (initObj.hasOwnProperty('tail_light_info')) {
        this.tail_light_info = initObj.tail_light_info
      }
      else {
        this.tail_light_info = new VehicleTailLightInfo();
      }
      if (initObj.hasOwnProperty('blink_light_info')) {
        this.blink_light_info = initObj.blink_light_info
      }
      else {
        this.blink_light_info = new VehicleBlinkLightInfo();
      }
      if (initObj.hasOwnProperty('beam_light_info')) {
        this.beam_light_info = initObj.beam_light_info
      }
      else {
        this.beam_light_info = new VehicleBeamLightInfo();
      }
      if (initObj.hasOwnProperty('door_state_info')) {
        this.door_state_info = initObj.door_state_info
      }
      else {
        this.door_state_info = new VehicleDoorStateInfo();
      }
      if (initObj.hasOwnProperty('ego_lane_relation_info')) {
        this.ego_lane_relation_info = initObj.ego_lane_relation_info
      }
      else {
        this.ego_lane_relation_info = new VehicleEgoLaneRelationInfo();
      }
      if (initObj.hasOwnProperty('cutin_info')) {
        this.cutin_info = initObj.cutin_info
      }
      else {
        this.cutin_info = new VehicleCutinStateInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleStateInfo
    // Serialize message field [brake_light_info]
    bufferOffset = VehicleBrakeLightInfo.serialize(obj.brake_light_info, buffer, bufferOffset);
    // Serialize message field [tail_light_info]
    bufferOffset = VehicleTailLightInfo.serialize(obj.tail_light_info, buffer, bufferOffset);
    // Serialize message field [blink_light_info]
    bufferOffset = VehicleBlinkLightInfo.serialize(obj.blink_light_info, buffer, bufferOffset);
    // Serialize message field [beam_light_info]
    bufferOffset = VehicleBeamLightInfo.serialize(obj.beam_light_info, buffer, bufferOffset);
    // Serialize message field [door_state_info]
    bufferOffset = VehicleDoorStateInfo.serialize(obj.door_state_info, buffer, bufferOffset);
    // Serialize message field [ego_lane_relation_info]
    bufferOffset = VehicleEgoLaneRelationInfo.serialize(obj.ego_lane_relation_info, buffer, bufferOffset);
    // Serialize message field [cutin_info]
    bufferOffset = VehicleCutinStateInfo.serialize(obj.cutin_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleStateInfo
    let len;
    let data = new VehicleStateInfo(null);
    // Deserialize message field [brake_light_info]
    data.brake_light_info = VehicleBrakeLightInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [tail_light_info]
    data.tail_light_info = VehicleTailLightInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [blink_light_info]
    data.blink_light_info = VehicleBlinkLightInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [beam_light_info]
    data.beam_light_info = VehicleBeamLightInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [door_state_info]
    data.door_state_info = VehicleDoorStateInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [ego_lane_relation_info]
    data.ego_lane_relation_info = VehicleEgoLaneRelationInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [cutin_info]
    data.cutin_info = VehicleCutinStateInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 63;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleStateInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85ebd6c8f833ac9da1a9c871dec878c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/VehicleBrakeLightInfo brake_light_info
    perception_interface_msgs/VehicleTailLightInfo tail_light_info
    perception_interface_msgs/VehicleBlinkLightInfo blink_light_info
    perception_interface_msgs/VehicleBeamLightInfo beam_light_info
    perception_interface_msgs/VehicleDoorStateInfo door_state_info
    perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info
    perception_interface_msgs/VehicleCutinStateInfo cutin_info
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBrakeLightInfo
    float32 brake_light_on_score
    perception_interface_msgs/VehicleBrakeLightEnum brake_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBrakeLightEnum
    uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0
    uint8 VEHICLE_BRAKELIGHT_OFF = 1
    uint8 VEHICLE_BRAKELIGHT_ON = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleTailLightInfo
    float32 tail_light_score
    float32 tail_light_unkown_score
    float32 tail_light_off_score
    float32 tail_light_on_score
    float32 tail_light_high_on_score
    perception_interface_msgs/VehicleTailLightEnum tail_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleTailLightEnum
    uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0
    uint8 VEHICLE_TAILLIGHT_OFF = 1
    uint8 VEHICLE_TAILLIGHT_ON = 2
    uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBlinkLightInfo
    float32 blink_light_left_score
    float32 blink_light_right_score
    float32 blink_light_both_score
    perception_interface_msgs/VehicleBlinkLightEnum blink_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBlinkLightEnum
    uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0
    uint8 VEHICLE_BLINKLIGHT_OFF = 1
    uint8 VEHICLE_BLINKLIGHT_LEFT = 2
    uint8 VEHICLE_BLINKLIGHT_RIGHT = 3
    uint8 VEHICLE_BLINKLIGHT_BOTH = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBeamLightInfo
    float32 beam_light_on_score
    perception_interface_msgs/VehicleBeamLightEnum beam_light_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleBeamLightEnum
    uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0
    uint8 VEHICLE_BEAMLIGHT_OFF = 1
    uint8 VEHICLE_BEAMLIGHT_LOW = 2
    uint8 VEHICLE_BEAMLIGHT_HIGH = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleDoorStateInfo
    float32 door_state_on_score
    perception_interface_msgs/VehicleDoorStateEnum door_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleDoorStateEnum
    uint8 VEHICLE_DOORSTATE_UNKNOWN = 0
    uint8 VEHICLE_DOORSTATE_OFF = 1
    uint8 VEHICLE_DOORSTATE_ON = 2
    uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3
    uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4
    uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5
    uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6
    uint8 VEHICLE_DOOR_OPEN_BOTH = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo
    float32 ego_lane_overlap_score
    float32 ego_lane_no_overlap_score
    perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum
    uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0
    uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1
    uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2
    uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleCutinStateInfo
    float32 cutin_state_on_score
    perception_interface_msgs/VehicleCutinStateEnum cutin_state
    
    ================================================================================
    MSG: perception_interface_msgs/VehicleCutinStateEnum
    uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0
    uint8 VEHICLE_CUTINSTATE_OFF = 1
    uint8 VEHICLE_CUTINSTATE_ON = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleStateInfo(null);
    if (msg.brake_light_info !== undefined) {
      resolved.brake_light_info = VehicleBrakeLightInfo.Resolve(msg.brake_light_info)
    }
    else {
      resolved.brake_light_info = new VehicleBrakeLightInfo()
    }

    if (msg.tail_light_info !== undefined) {
      resolved.tail_light_info = VehicleTailLightInfo.Resolve(msg.tail_light_info)
    }
    else {
      resolved.tail_light_info = new VehicleTailLightInfo()
    }

    if (msg.blink_light_info !== undefined) {
      resolved.blink_light_info = VehicleBlinkLightInfo.Resolve(msg.blink_light_info)
    }
    else {
      resolved.blink_light_info = new VehicleBlinkLightInfo()
    }

    if (msg.beam_light_info !== undefined) {
      resolved.beam_light_info = VehicleBeamLightInfo.Resolve(msg.beam_light_info)
    }
    else {
      resolved.beam_light_info = new VehicleBeamLightInfo()
    }

    if (msg.door_state_info !== undefined) {
      resolved.door_state_info = VehicleDoorStateInfo.Resolve(msg.door_state_info)
    }
    else {
      resolved.door_state_info = new VehicleDoorStateInfo()
    }

    if (msg.ego_lane_relation_info !== undefined) {
      resolved.ego_lane_relation_info = VehicleEgoLaneRelationInfo.Resolve(msg.ego_lane_relation_info)
    }
    else {
      resolved.ego_lane_relation_info = new VehicleEgoLaneRelationInfo()
    }

    if (msg.cutin_info !== undefined) {
      resolved.cutin_info = VehicleCutinStateInfo.Resolve(msg.cutin_info)
    }
    else {
      resolved.cutin_info = new VehicleCutinStateInfo()
    }

    return resolved;
    }
};

module.exports = VehicleStateInfo;
