// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficBarrierEgoLaneRelationInfo = require('./TrafficBarrierEgoLaneRelationInfo.js');

//-----------------------------------------------------------

class BarrierStateInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.traffic_barrier_ego_lane_relation_info = null;
    }
    else {
      if (initObj.hasOwnProperty('traffic_barrier_ego_lane_relation_info')) {
        this.traffic_barrier_ego_lane_relation_info = initObj.traffic_barrier_ego_lane_relation_info
      }
      else {
        this.traffic_barrier_ego_lane_relation_info = new TrafficBarrierEgoLaneRelationInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BarrierStateInfo
    // Serialize message field [traffic_barrier_ego_lane_relation_info]
    bufferOffset = TrafficBarrierEgoLaneRelationInfo.serialize(obj.traffic_barrier_ego_lane_relation_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BarrierStateInfo
    let len;
    let data = new BarrierStateInfo(null);
    // Deserialize message field [traffic_barrier_ego_lane_relation_info]
    data.traffic_barrier_ego_lane_relation_info = TrafficBarrierEgoLaneRelationInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/BarrierStateInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc7ea95f1c37971401aaf8cef9929ef9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo
    float32 distance_to_left_line
    float32 distance_to_right_line
    perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation
    perception_interface_msgs/TrafficBarrierUsefulEnum useful
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum
    uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0
    uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1
    uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2
    uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficBarrierUsefulEnum
    uint8 TRAFFIC_BARRIER_UNUSEFUL = 0
    uint8 TRAFFIC_BARRIER_USEFUL = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BarrierStateInfo(null);
    if (msg.traffic_barrier_ego_lane_relation_info !== undefined) {
      resolved.traffic_barrier_ego_lane_relation_info = TrafficBarrierEgoLaneRelationInfo.Resolve(msg.traffic_barrier_ego_lane_relation_info)
    }
    else {
      resolved.traffic_barrier_ego_lane_relation_info = new TrafficBarrierEgoLaneRelationInfo()
    }

    return resolved;
    }
};

module.exports = BarrierStateInfo;
