// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LandmarkPerceptionNodeType = require('./LandmarkPerceptionNodeType.js');
let TrackId = require('./TrackId.js');

//-----------------------------------------------------------

class LandmarkPerceptionRelationNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_type = null;
      this.track_id = null;
    }
    else {
      if (initObj.hasOwnProperty('node_type')) {
        this.node_type = initObj.node_type
      }
      else {
        this.node_type = new LandmarkPerceptionNodeType();
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandmarkPerceptionRelationNode
    // Serialize message field [node_type]
    bufferOffset = LandmarkPerceptionNodeType.serialize(obj.node_type, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandmarkPerceptionRelationNode
    let len;
    let data = new LandmarkPerceptionRelationNode(null);
    // Deserialize message field [node_type]
    data.node_type = LandmarkPerceptionNodeType.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LandmarkPerceptionRelationNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efd8e8426214064b0e2f32c806a78300';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/LandmarkPerceptionNodeType node_type
    landmark_msgs/TrackId track_id
    
    ================================================================================
    MSG: landmark_msgs/LandmarkPerceptionNodeType
    uint8 NODE_TYPE_UNKNOWN = 0
    uint8 NODE_TYPE_LANE_CENTER = 1
    uint8 NODE_TYPE_LANE_BOUNDARY = 2
    uint8 NODE_TYPE_ROAD_BOUNDARY = 3
    uint8 NODE_TYPE_ROAD = 4
    uint8 NODE_TYPE_STOP_LINE = 5
    uint8 NODE_TYPE_CROSS_WALK = 6
    uint8 NODE_TYPE_VALID_ROI = 7
    uint8 NODE_TYPE_ROAD_MARK = 8
    uint8 NODE_TYPE_AOI = 9
    uint8 NODE_TYPE_TRAFFIC_SIGN = 10
    uint8 NODE_TYPE_TRAFFIC_POLE = 11
    uint8 NODE_TYPE_TRAFFIC_LIGHT = 12
    uint8 NODE_TYPE_SPEEDBUMP = 13
    uint8 NODE_TYPE_DASH_LINE_END = 14
    uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15
    uint8 NODE_TYPE_ROAD_OBSTACLE = 50
    uint8 NODE_TYPE_PARKING_SPACE = 51
    uint8 NODE_TYPE_PARKING_FACILITY = 52
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandmarkPerceptionRelationNode(null);
    if (msg.node_type !== undefined) {
      resolved.node_type = LandmarkPerceptionNodeType.Resolve(msg.node_type)
    }
    else {
      resolved.node_type = new LandmarkPerceptionNodeType()
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    return resolved;
    }
};

module.exports = LandmarkPerceptionRelationNode;
