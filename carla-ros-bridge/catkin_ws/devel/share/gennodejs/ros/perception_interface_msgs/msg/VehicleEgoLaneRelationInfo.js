// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleEgoLaneRelationEnum = require('./VehicleEgoLaneRelationEnum.js');

//-----------------------------------------------------------

class VehicleEgoLaneRelationInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ego_lane_overlap_score = null;
      this.ego_lane_no_overlap_score = null;
      this.ego_lane_relation = null;
    }
    else {
      if (initObj.hasOwnProperty('ego_lane_overlap_score')) {
        this.ego_lane_overlap_score = initObj.ego_lane_overlap_score
      }
      else {
        this.ego_lane_overlap_score = 0.0;
      }
      if (initObj.hasOwnProperty('ego_lane_no_overlap_score')) {
        this.ego_lane_no_overlap_score = initObj.ego_lane_no_overlap_score
      }
      else {
        this.ego_lane_no_overlap_score = 0.0;
      }
      if (initObj.hasOwnProperty('ego_lane_relation')) {
        this.ego_lane_relation = initObj.ego_lane_relation
      }
      else {
        this.ego_lane_relation = new VehicleEgoLaneRelationEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleEgoLaneRelationInfo
    // Serialize message field [ego_lane_overlap_score]
    bufferOffset = _serializer.float32(obj.ego_lane_overlap_score, buffer, bufferOffset);
    // Serialize message field [ego_lane_no_overlap_score]
    bufferOffset = _serializer.float32(obj.ego_lane_no_overlap_score, buffer, bufferOffset);
    // Serialize message field [ego_lane_relation]
    bufferOffset = VehicleEgoLaneRelationEnum.serialize(obj.ego_lane_relation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleEgoLaneRelationInfo
    let len;
    let data = new VehicleEgoLaneRelationInfo(null);
    // Deserialize message field [ego_lane_overlap_score]
    data.ego_lane_overlap_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ego_lane_no_overlap_score]
    data.ego_lane_no_overlap_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ego_lane_relation]
    data.ego_lane_relation = VehicleEgoLaneRelationEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VehicleEgoLaneRelationInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f395e671d62e5b2052d6c52364fed8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleEgoLaneRelationInfo(null);
    if (msg.ego_lane_overlap_score !== undefined) {
      resolved.ego_lane_overlap_score = msg.ego_lane_overlap_score;
    }
    else {
      resolved.ego_lane_overlap_score = 0.0
    }

    if (msg.ego_lane_no_overlap_score !== undefined) {
      resolved.ego_lane_no_overlap_score = msg.ego_lane_no_overlap_score;
    }
    else {
      resolved.ego_lane_no_overlap_score = 0.0
    }

    if (msg.ego_lane_relation !== undefined) {
      resolved.ego_lane_relation = VehicleEgoLaneRelationEnum.Resolve(msg.ego_lane_relation)
    }
    else {
      resolved.ego_lane_relation = new VehicleEgoLaneRelationEnum()
    }

    return resolved;
    }
};

module.exports = VehicleEgoLaneRelationInfo;
