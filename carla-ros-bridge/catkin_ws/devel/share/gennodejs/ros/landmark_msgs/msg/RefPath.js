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
let RefPathTypeEnum = require('./RefPathTypeEnum.js');
let WayPoint = require('./WayPoint.js');
let NaviInfoSource = require('./NaviInfoSource.js');
let NaviOnrouteDisInfo = require('./NaviOnrouteDisInfo.js');

//-----------------------------------------------------------

class RefPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.score = null;
      this.index = null;
      this.id = null;
      this.type = null;
      this.points = null;
      this.goal_ids = null;
      this.navi_info_source = null;
      this.navi_onroutedis_info = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
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
        this.type = new RefPathTypeEnum();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('goal_ids')) {
        this.goal_ids = initObj.goal_ids
      }
      else {
        this.goal_ids = [];
      }
      if (initObj.hasOwnProperty('navi_info_source')) {
        this.navi_info_source = initObj.navi_info_source
      }
      else {
        this.navi_info_source = new NaviInfoSource();
      }
      if (initObj.hasOwnProperty('navi_onroutedis_info')) {
        this.navi_onroutedis_info = initObj.navi_onroutedis_info
      }
      else {
        this.navi_onroutedis_info = new NaviOnrouteDisInfo();
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
    // Serializes a message object of type RefPath
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = TrackId.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = RefPathTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = WayPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [goal_ids]
    // Serialize the length for message field [goal_ids]
    bufferOffset = _serializer.uint32(obj.goal_ids.length, buffer, bufferOffset);
    obj.goal_ids.forEach((val) => {
      bufferOffset = TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [navi_info_source]
    bufferOffset = NaviInfoSource.serialize(obj.navi_info_source, buffer, bufferOffset);
    // Serialize message field [navi_onroutedis_info]
    bufferOffset = NaviOnrouteDisInfo.serialize(obj.navi_onroutedis_info, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefPath
    let len;
    let data = new RefPath(null);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = RefPathTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = WayPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [goal_ids]
    // Deserialize array length for message field [goal_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goal_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goal_ids[i] = TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [navi_info_source]
    data.navi_info_source = NaviInfoSource.deserialize(buffer, bufferOffset);
    // Deserialize message field [navi_onroutedis_info]
    data.navi_onroutedis_info = NaviOnrouteDisInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.points.forEach((val) => {
      length += WayPoint.getMessageSize(val);
    });
    length += 18 * object.goal_ids.length;
    length += NaviOnrouteDisInfo.getMessageSize(object.navi_onroutedis_info);
    length += _getByteLength(object.reserved_info);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RefPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5feed00069cb7ebcc8b2034b771f6c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 score
    int32 index
    landmark_msgs/TrackId id
    landmark_msgs/RefPathTypeEnum type
    landmark_msgs/WayPoint[] points
    landmark_msgs/TrackId[] goal_ids
    landmark_msgs/NaviInfoSource navi_info_source
    landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info
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
    MSG: landmark_msgs/RefPathTypeEnum
    uint8 REFPATH_TYPE_UNKNOWN = 0
    uint8 REFPATH_TYPE_LATENT_QUERY = 1
    uint8 REFPATH_TYPE_ANGULAR_QUERY = 2
    uint8 REFPATH_TYPE_GOAL_CONDITIONED = 3
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
    
    ================================================================================
    MSG: landmark_msgs/NaviOnrouteDisInfo
    bool available
    float32 dist_to_onroute
    int16[] on_route_dis_clses
    int16 cls_num
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RefPath(null);
    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.id !== undefined) {
      resolved.id = TrackId.Resolve(msg.id)
    }
    else {
      resolved.id = new TrackId()
    }

    if (msg.type !== undefined) {
      resolved.type = RefPathTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new RefPathTypeEnum()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = WayPoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.goal_ids !== undefined) {
      resolved.goal_ids = new Array(msg.goal_ids.length);
      for (let i = 0; i < resolved.goal_ids.length; ++i) {
        resolved.goal_ids[i] = TrackId.Resolve(msg.goal_ids[i]);
      }
    }
    else {
      resolved.goal_ids = []
    }

    if (msg.navi_info_source !== undefined) {
      resolved.navi_info_source = NaviInfoSource.Resolve(msg.navi_info_source)
    }
    else {
      resolved.navi_info_source = new NaviInfoSource()
    }

    if (msg.navi_onroutedis_info !== undefined) {
      resolved.navi_onroutedis_info = NaviOnrouteDisInfo.Resolve(msg.navi_onroutedis_info)
    }
    else {
      resolved.navi_onroutedis_info = new NaviOnrouteDisInfo()
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

module.exports = RefPath;
