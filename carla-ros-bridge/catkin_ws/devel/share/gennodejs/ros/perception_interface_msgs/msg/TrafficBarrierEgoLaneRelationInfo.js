// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficBarrierEgoLaneRelationEnum = require('./TrafficBarrierEgoLaneRelationEnum.js');
let TrafficBarrierUsefulEnum = require('./TrafficBarrierUsefulEnum.js');

//-----------------------------------------------------------

class TrafficBarrierEgoLaneRelationInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_to_left_line = null;
      this.distance_to_right_line = null;
      this.ego_lane_relation = null;
      this.useful = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_to_left_line')) {
        this.distance_to_left_line = initObj.distance_to_left_line
      }
      else {
        this.distance_to_left_line = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_right_line')) {
        this.distance_to_right_line = initObj.distance_to_right_line
      }
      else {
        this.distance_to_right_line = 0.0;
      }
      if (initObj.hasOwnProperty('ego_lane_relation')) {
        this.ego_lane_relation = initObj.ego_lane_relation
      }
      else {
        this.ego_lane_relation = new TrafficBarrierEgoLaneRelationEnum();
      }
      if (initObj.hasOwnProperty('useful')) {
        this.useful = initObj.useful
      }
      else {
        this.useful = new TrafficBarrierUsefulEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficBarrierEgoLaneRelationInfo
    // Serialize message field [distance_to_left_line]
    bufferOffset = _serializer.float32(obj.distance_to_left_line, buffer, bufferOffset);
    // Serialize message field [distance_to_right_line]
    bufferOffset = _serializer.float32(obj.distance_to_right_line, buffer, bufferOffset);
    // Serialize message field [ego_lane_relation]
    bufferOffset = TrafficBarrierEgoLaneRelationEnum.serialize(obj.ego_lane_relation, buffer, bufferOffset);
    // Serialize message field [useful]
    bufferOffset = TrafficBarrierUsefulEnum.serialize(obj.useful, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficBarrierEgoLaneRelationInfo
    let len;
    let data = new TrafficBarrierEgoLaneRelationInfo(null);
    // Deserialize message field [distance_to_left_line]
    data.distance_to_left_line = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_right_line]
    data.distance_to_right_line = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ego_lane_relation]
    data.ego_lane_relation = TrafficBarrierEgoLaneRelationEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [useful]
    data.useful = TrafficBarrierUsefulEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7bc86d60438d376cf6651538ae553991';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TrafficBarrierEgoLaneRelationInfo(null);
    if (msg.distance_to_left_line !== undefined) {
      resolved.distance_to_left_line = msg.distance_to_left_line;
    }
    else {
      resolved.distance_to_left_line = 0.0
    }

    if (msg.distance_to_right_line !== undefined) {
      resolved.distance_to_right_line = msg.distance_to_right_line;
    }
    else {
      resolved.distance_to_right_line = 0.0
    }

    if (msg.ego_lane_relation !== undefined) {
      resolved.ego_lane_relation = TrafficBarrierEgoLaneRelationEnum.Resolve(msg.ego_lane_relation)
    }
    else {
      resolved.ego_lane_relation = new TrafficBarrierEgoLaneRelationEnum()
    }

    if (msg.useful !== undefined) {
      resolved.useful = TrafficBarrierUsefulEnum.Resolve(msg.useful)
    }
    else {
      resolved.useful = new TrafficBarrierUsefulEnum()
    }

    return resolved;
    }
};

module.exports = TrafficBarrierEgoLaneRelationInfo;
