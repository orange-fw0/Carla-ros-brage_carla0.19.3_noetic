// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackId = require('./TrackId.js');
let RefPathGoalTypeEnum = require('./RefPathGoalTypeEnum.js');
let WayPoint = require('./WayPoint.js');
let Direction = require('./Direction.js');
let NaviInfoSource = require('./NaviInfoSource.js');

//-----------------------------------------------------------

class RefPathGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.id = null;
      this.type = null;
      this.landmark_id = null;
      this.goal_point = null;
      this.turn_direction = null;
      this.onroute_distance = null;
      this.navi_info_source = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new TrackId();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new RefPathGoalTypeEnum();
      }
      if (initObj.hasOwnProperty('landmark_id')) {
        this.landmark_id = initObj.landmark_id
      }
      else {
        this.landmark_id = new TrackId();
      }
      if (initObj.hasOwnProperty('goal_point')) {
        this.goal_point = initObj.goal_point
      }
      else {
        this.goal_point = new WayPoint();
      }
      if (initObj.hasOwnProperty('turn_direction')) {
        this.turn_direction = initObj.turn_direction
      }
      else {
        this.turn_direction = new Direction();
      }
      if (initObj.hasOwnProperty('onroute_distance')) {
        this.onroute_distance = initObj.onroute_distance
      }
      else {
        this.onroute_distance = 0.0;
      }
      if (initObj.hasOwnProperty('navi_info_source')) {
        this.navi_info_source = initObj.navi_info_source
      }
      else {
        this.navi_info_source = new NaviInfoSource();
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefPathGoal
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = TrackId.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = RefPathGoalTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [landmark_id]
    bufferOffset = TrackId.serialize(obj.landmark_id, buffer, bufferOffset);
    // Serialize message field [goal_point]
    bufferOffset = WayPoint.serialize(obj.goal_point, buffer, bufferOffset);
    // Serialize message field [turn_direction]
    bufferOffset = Direction.serialize(obj.turn_direction, buffer, bufferOffset);
    // Serialize message field [onroute_distance]
    bufferOffset = _serializer.float32(obj.onroute_distance, buffer, bufferOffset);
    // Serialize message field [navi_info_source]
    bufferOffset = NaviInfoSource.serialize(obj.navi_info_source, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefPathGoal
    let len;
    let data = new RefPathGoal(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = RefPathGoalTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [landmark_id]
    data.landmark_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_point]
    data.goal_point = WayPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_direction]
    data.turn_direction = Direction.deserialize(buffer, bufferOffset);
    // Deserialize message field [onroute_distance]
    data.onroute_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [navi_info_source]
    data.navi_info_source = NaviInfoSource.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WayPoint.getMessageSize(object.goal_point);
    length += _getByteLength(object.reserved_info);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RefPathGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bd89040e58393330e0af90dbf389bb3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 TYPE_VALID = 2
    uint16 LANDMARK_ID_VALID = 4
    uint16 GOAL_POINT_VALID = 8
    uint16 TURN_DIRECTION_VALID = 16
    uint16 ONROUTE_DISTANCE_VALID = 32
    uint16 available
    float32 score
    landmark_msgs/TrackId id
    landmark_msgs/RefPathGoalTypeEnum type
    landmark_msgs/TrackId landmark_id
    landmark_msgs/WayPoint goal_point
    landmark_msgs/Direction turn_direction
    float32 onroute_distance
    landmark_msgs/NaviInfoSource navi_info_source
    string reserved_info
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/RefPathGoalTypeEnum
    uint8 GOAL_TYPE_UNKNOWN = 0
    uint8 GOAL_TYPE_WAY_POINT = 1
    uint8 GOAL_TYPE_LANE_CENTER = 2
    uint8 GOAL_TYPE_ROAD_MARK = 3
    uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/WayPoint
    uint16 SCORE_VALID = 1
    uint16 POSITION_VALID = 2
    uint16 HEADING_ANGLE_VALID = 4
    uint16 OFFSET_VALID = 8
    uint16 SPEED_MEAN_VALID = 16
    uint16 SPEED_STD_VALID = 32
    uint16 TURN_DIRECTION_VALID = 64
    uint16 ON_ROUTE_VALID = 128
    uint16 available
    float32 score
    perception_interface_msgs/Point3f position
    float32 heading_angle
    float32 offset
    float32 speed_mean
    float32 speed_std
    landmark_msgs/Direction turn_direction
    bool on_route
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/Direction
    uint8 UNKNOWN = 0
    uint8 GO_STRAIGHT = 1
    uint8 TURN_RIGHT = 2
    uint8 TURN_LEFT = 3
    uint8 U_TURN_LEFT = 4
    uint8 U_TURN_RIGHT = 5
    uint8 LEFT_CONFLUENCE = 6
    uint8 RIGHT_CONFLUENCE = 7
    uint8 LEFT_LEFT = 10
    uint8 LEFT_LEFT_UT = 11
    uint8 LEFT_RIGHT = 12
    uint8 LEFT_RIGHT_UT = 13
    uint8 LEFT_GO_STRAIGHT = 14
    uint8 LEFT_UNKNOWN = 15
    uint8 RIGHT_RIGHT = 20
    uint8 RIGHT_RIGHT_UT = 21
    uint8 RIGHT_LEFT = 22
    uint8 RIGHT_LEFT_UT = 23
    uint8 RIGHT_GO_STRAIGHT = 24
    uint8 RIGHT_UNKNOWN = 25
    uint8 LEFT_UT_LEFT_UT = 30
    uint8 LEFT_UT_LEFT = 31
    uint8 LEFT_UT_RIGHT = 32
    uint8 LEFT_UT_RIGHT_UT = 33
    uint8 LEFT_UT_GO_STRAIGHT = 34
    uint8 LEFT_UT_UNKNOWN = 35
    uint8 RIGHT_UT_RIGHT_UT = 40
    uint8 RIGHT_UT_RIGHT = 41
    uint8 RIGHT_UT_LEFT = 42
    uint8 RIGHT_UT_LEFT_UT = 43
    uint8 RIGHT_UT_GO_STRAIGHT = 44
    uint8 RIGHT_UT_UNKNOWN = 45
    uint8 GO_STRAIGHT_GO_STRAIGHT = 50
    uint8 GO_STRAIGHT_LEFT = 51
    uint8 GO_STRAIGHT_LEFT_UT = 52
    uint8 GO_STRAIGHT_RIGHT = 53
    uint8 GO_STRAIGHT_RIGHT_UT = 54
    uint8 GO_STRAIGHT_UNKNOWN = 55
    uint8 OTHER_LEFT = 61
    uint8 OTHER_LEFT_UT = 62
    uint8 OTHER_RIGHT = 63
    uint8 OTHER_RIGHT_UT = 64
    uint8 OTHER_GO_STRAIGHT = 65
    uint8 OTHER_UNKNOWN = 66
    uint8 UNKNOWN_LEFT = 91
    uint8 UNKNOWN_LEFT_UT = 92
    uint8 UNKNOWN_RIGHT = 93
    uint8 UNKNOWN_RIGHT_UT = 94
    uint8 UNKNOWN_GO_STRAIGHT = 95
    uint8 UNKNOWN_UNKNOWN = 96
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/NaviInfoSource
    uint8 UNKNOWN = 0
    uint8 DEFAULT = 1
    uint8 HDMAP = 2
    uint8 LANDTOPO = 3
    uint8 TBT = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RefPathGoal(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = TrackId.Resolve(msg.id)
    }
    else {
      resolved.id = new TrackId()
    }

    if (msg.type !== undefined) {
      resolved.type = RefPathGoalTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new RefPathGoalTypeEnum()
    }

    if (msg.landmark_id !== undefined) {
      resolved.landmark_id = TrackId.Resolve(msg.landmark_id)
    }
    else {
      resolved.landmark_id = new TrackId()
    }

    if (msg.goal_point !== undefined) {
      resolved.goal_point = WayPoint.Resolve(msg.goal_point)
    }
    else {
      resolved.goal_point = new WayPoint()
    }

    if (msg.turn_direction !== undefined) {
      resolved.turn_direction = Direction.Resolve(msg.turn_direction)
    }
    else {
      resolved.turn_direction = new Direction()
    }

    if (msg.onroute_distance !== undefined) {
      resolved.onroute_distance = msg.onroute_distance;
    }
    else {
      resolved.onroute_distance = 0.0
    }

    if (msg.navi_info_source !== undefined) {
      resolved.navi_info_source = NaviInfoSource.Resolve(msg.navi_info_source)
    }
    else {
      resolved.navi_info_source = new NaviInfoSource()
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

// Constants for message
RefPathGoal.Constants = {
  SCORE_VALID: 1,
  TYPE_VALID: 2,
  LANDMARK_ID_VALID: 4,
  GOAL_POINT_VALID: 8,
  TURN_DIRECTION_VALID: 16,
  ONROUTE_DISTANCE_VALID: 32,
}

module.exports = RefPathGoal;
