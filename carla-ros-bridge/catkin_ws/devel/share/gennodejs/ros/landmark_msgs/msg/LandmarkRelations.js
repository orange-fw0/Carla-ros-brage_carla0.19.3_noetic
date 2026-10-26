// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LandmarkPerceptionRelation = require('./LandmarkPerceptionRelation.js');

//-----------------------------------------------------------

class LandmarkRelations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.relations = null;
    }
    else {
      if (initObj.hasOwnProperty('relations')) {
        this.relations = initObj.relations
      }
      else {
        this.relations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandmarkRelations
    // Serialize message field [relations]
    // Serialize the length for message field [relations]
    bufferOffset = _serializer.uint32(obj.relations.length, buffer, bufferOffset);
    obj.relations.forEach((val) => {
      bufferOffset = LandmarkPerceptionRelation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandmarkRelations
    let len;
    let data = new LandmarkRelations(null);
    // Deserialize message field [relations]
    // Deserialize array length for message field [relations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.relations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.relations[i] = LandmarkPerceptionRelation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 41 * object.relations.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LandmarkRelations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '430a87b572e41a5dfe4bafa34511cecc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/LandmarkPerceptionRelation[] relations
    
    ================================================================================
    MSG: landmark_msgs/LandmarkPerceptionRelation
    uint8 TYPE_VALID = 1
    uint8 LANE_CENTER_CONNECTION_TYPE_VALID = 2
    uint8 available
    landmark_msgs/LandmarkPerceptionRelationType type
    landmark_msgs/LandmarkPerceptionRelationNode start_node
    landmark_msgs/LandmarkPerceptionRelationNode end_node
    landmark_msgs/LaneCenterLineConnectionTypeEnum lane_center_connection_type
    
    ================================================================================
    MSG: landmark_msgs/LandmarkPerceptionRelationType
    uint8 RELATION_TYPE_UNKNOWN = 0
    uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1
    uint8 RELATION_TYPE_ROAD_CONNECTION = 2
    uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3
    uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4
    uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5
    uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6
    uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7
    uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8
    uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9
    uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10
    uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11
    uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12
    uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13
    uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14
    uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15
    uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16
    uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17
    uint8 RELATION_TYPE_AOI_AOI_BINDING = 18
    uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19
    uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20
    uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21
    uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22
    uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23
    uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24
    uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25
    uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26
    uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27
    uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28
    uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29
    uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30
    uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31
    uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50
    uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51
    uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52
    uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53
    uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54
    uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LandmarkPerceptionRelationNode
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
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterLineConnectionTypeEnum
    uint8 POINT_TYPE_UNKNOWN = 0
    uint8 POINT_TYPE_NORMAL = 1
    uint8 POINT_TYPE_TURN_LEFT = 2
    uint8 POINT_TYPE_TURN_RIGHT = 3
    uint8 POINT_TYPE_SPLIT = 4
    uint8 POINT_TYPE_MERGE = 5
    uint8 POINT_TYPE_LEFT_TURN_BACK = 6
    uint8 POINT_TYPE_RIGHT_TURN_BACK = 7
    uint8 POINT_TYPE_SPLIT_CONTINUE = 8
    uint8 POINT_TYPE_MERGE_CONTINUE = 9
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandmarkRelations(null);
    if (msg.relations !== undefined) {
      resolved.relations = new Array(msg.relations.length);
      for (let i = 0; i < resolved.relations.length; ++i) {
        resolved.relations[i] = LandmarkPerceptionRelation.Resolve(msg.relations[i]);
      }
    }
    else {
      resolved.relations = []
    }

    return resolved;
    }
};

module.exports = LandmarkRelations;
