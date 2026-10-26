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
let TrafficSignNodeTypeEnum = require('./TrafficSignNodeTypeEnum.js');
let TrafficSignShapeTypeEnum = require('./TrafficSignShapeTypeEnum.js');
let TrafficSignNodeSpeedLimitEnum = require('./TrafficSignNodeSpeedLimitEnum.js');
let TrafficSignNodeHeightLimitEnum = require('./TrafficSignNodeHeightLimitEnum.js');
let TrafficSignNodeParkingSubTypeEnum = require('./TrafficSignNodeParkingSubTypeEnum.js');
let TrafficSignNodeParkingArrowEnum = require('./TrafficSignNodeParkingArrowEnum.js');
let TrafficSignNodeLanePositionArrowEnum = require('./TrafficSignNodeLanePositionArrowEnum.js');
let TrafficSignNodeRegionEnum = require('./TrafficSignNodeRegionEnum.js');
let TrafficSignNodeSpeedLimitConditionEnum = require('./TrafficSignNodeSpeedLimitConditionEnum.js');
let TrafficSignNodeDirectionEnum = require('./TrafficSignNodeDirectionEnum.js');
let TrafficSignNodeTollStationEnum = require('./TrafficSignNodeTollStationEnum.js');
let TrafficSignNodeStayOnEnum = require('./TrafficSignNodeStayOnEnum.js');
let TrafficSignNodePassOnEnum = require('./TrafficSignNodePassOnEnum.js');
let TrafficSignNodeDriveToEnum = require('./TrafficSignNodeDriveToEnum.js');
let TrafficSignNodeWaitingAreaAllowEnum = require('./TrafficSignNodeWaitingAreaAllowEnum.js');
let TrafficSignNodeWaitingAreaDirectionEnum = require('./TrafficSignNodeWaitingAreaDirectionEnum.js');
let TrafficSignNodeEtcDistributionDirectionEnum = require('./TrafficSignNodeEtcDistributionDirectionEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class TrafficSignNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.track_id = null;
      this.position = null;
      this.shape_points = null;
      this.type = null;
      this.shape_type = null;
      this.score = null;
      this.ignored = null;
      this.speed_limit = null;
      this.height_limit_unit = null;
      this.height_limit_tenths = null;
      this.parking_subtype = null;
      this.parking_arrow = null;
      this.lane_position_arrow = null;
      this.region = null;
      this.speed_limit_conditions = null;
      this.directions = null;
      this.is_electronic = null;
      this.toll_station = null;
      this.stay_on = null;
      this.pass_on = null;
      this.drive_to = null;
      this.is_lane_level_limit = null;
      this.is_direction_grouped = null;
      this.waiting_area_allow = null;
      this.waiting_area_directions = null;
      this.etc_distribution_directions = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('shape_points')) {
        this.shape_points = initObj.shape_points
      }
      else {
        this.shape_points = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new TrafficSignNodeTypeEnum();
      }
      if (initObj.hasOwnProperty('shape_type')) {
        this.shape_type = initObj.shape_type
      }
      else {
        this.shape_type = new TrafficSignShapeTypeEnum();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('ignored')) {
        this.ignored = initObj.ignored
      }
      else {
        this.ignored = false;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = new TrafficSignNodeSpeedLimitEnum();
      }
      if (initObj.hasOwnProperty('height_limit_unit')) {
        this.height_limit_unit = initObj.height_limit_unit
      }
      else {
        this.height_limit_unit = new TrafficSignNodeHeightLimitEnum();
      }
      if (initObj.hasOwnProperty('height_limit_tenths')) {
        this.height_limit_tenths = initObj.height_limit_tenths
      }
      else {
        this.height_limit_tenths = new TrafficSignNodeHeightLimitEnum();
      }
      if (initObj.hasOwnProperty('parking_subtype')) {
        this.parking_subtype = initObj.parking_subtype
      }
      else {
        this.parking_subtype = new TrafficSignNodeParkingSubTypeEnum();
      }
      if (initObj.hasOwnProperty('parking_arrow')) {
        this.parking_arrow = initObj.parking_arrow
      }
      else {
        this.parking_arrow = new TrafficSignNodeParkingArrowEnum();
      }
      if (initObj.hasOwnProperty('lane_position_arrow')) {
        this.lane_position_arrow = initObj.lane_position_arrow
      }
      else {
        this.lane_position_arrow = new TrafficSignNodeLanePositionArrowEnum();
      }
      if (initObj.hasOwnProperty('region')) {
        this.region = initObj.region
      }
      else {
        this.region = new TrafficSignNodeRegionEnum();
      }
      if (initObj.hasOwnProperty('speed_limit_conditions')) {
        this.speed_limit_conditions = initObj.speed_limit_conditions
      }
      else {
        this.speed_limit_conditions = [];
      }
      if (initObj.hasOwnProperty('directions')) {
        this.directions = initObj.directions
      }
      else {
        this.directions = [];
      }
      if (initObj.hasOwnProperty('is_electronic')) {
        this.is_electronic = initObj.is_electronic
      }
      else {
        this.is_electronic = false;
      }
      if (initObj.hasOwnProperty('toll_station')) {
        this.toll_station = initObj.toll_station
      }
      else {
        this.toll_station = new TrafficSignNodeTollStationEnum();
      }
      if (initObj.hasOwnProperty('stay_on')) {
        this.stay_on = initObj.stay_on
      }
      else {
        this.stay_on = new TrafficSignNodeStayOnEnum();
      }
      if (initObj.hasOwnProperty('pass_on')) {
        this.pass_on = initObj.pass_on
      }
      else {
        this.pass_on = new TrafficSignNodePassOnEnum();
      }
      if (initObj.hasOwnProperty('drive_to')) {
        this.drive_to = initObj.drive_to
      }
      else {
        this.drive_to = new TrafficSignNodeDriveToEnum();
      }
      if (initObj.hasOwnProperty('is_lane_level_limit')) {
        this.is_lane_level_limit = initObj.is_lane_level_limit
      }
      else {
        this.is_lane_level_limit = false;
      }
      if (initObj.hasOwnProperty('is_direction_grouped')) {
        this.is_direction_grouped = initObj.is_direction_grouped
      }
      else {
        this.is_direction_grouped = false;
      }
      if (initObj.hasOwnProperty('waiting_area_allow')) {
        this.waiting_area_allow = initObj.waiting_area_allow
      }
      else {
        this.waiting_area_allow = new TrafficSignNodeWaitingAreaAllowEnum();
      }
      if (initObj.hasOwnProperty('waiting_area_directions')) {
        this.waiting_area_directions = initObj.waiting_area_directions
      }
      else {
        this.waiting_area_directions = [];
      }
      if (initObj.hasOwnProperty('etc_distribution_directions')) {
        this.etc_distribution_directions = initObj.etc_distribution_directions
      }
      else {
        this.etc_distribution_directions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficSignNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [shape_points]
    // Serialize the length for message field [shape_points]
    bufferOffset = _serializer.uint32(obj.shape_points.length, buffer, bufferOffset);
    obj.shape_points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [type]
    bufferOffset = TrafficSignNodeTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [shape_type]
    bufferOffset = TrafficSignShapeTypeEnum.serialize(obj.shape_type, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [ignored]
    bufferOffset = _serializer.bool(obj.ignored, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = TrafficSignNodeSpeedLimitEnum.serialize(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [height_limit_unit]
    bufferOffset = TrafficSignNodeHeightLimitEnum.serialize(obj.height_limit_unit, buffer, bufferOffset);
    // Serialize message field [height_limit_tenths]
    bufferOffset = TrafficSignNodeHeightLimitEnum.serialize(obj.height_limit_tenths, buffer, bufferOffset);
    // Serialize message field [parking_subtype]
    bufferOffset = TrafficSignNodeParkingSubTypeEnum.serialize(obj.parking_subtype, buffer, bufferOffset);
    // Serialize message field [parking_arrow]
    bufferOffset = TrafficSignNodeParkingArrowEnum.serialize(obj.parking_arrow, buffer, bufferOffset);
    // Serialize message field [lane_position_arrow]
    bufferOffset = TrafficSignNodeLanePositionArrowEnum.serialize(obj.lane_position_arrow, buffer, bufferOffset);
    // Serialize message field [region]
    bufferOffset = TrafficSignNodeRegionEnum.serialize(obj.region, buffer, bufferOffset);
    // Serialize message field [speed_limit_conditions]
    // Serialize the length for message field [speed_limit_conditions]
    bufferOffset = _serializer.uint32(obj.speed_limit_conditions.length, buffer, bufferOffset);
    obj.speed_limit_conditions.forEach((val) => {
      bufferOffset = TrafficSignNodeSpeedLimitConditionEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [directions]
    // Serialize the length for message field [directions]
    bufferOffset = _serializer.uint32(obj.directions.length, buffer, bufferOffset);
    obj.directions.forEach((val) => {
      bufferOffset = TrafficSignNodeDirectionEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_electronic]
    bufferOffset = _serializer.bool(obj.is_electronic, buffer, bufferOffset);
    // Serialize message field [toll_station]
    bufferOffset = TrafficSignNodeTollStationEnum.serialize(obj.toll_station, buffer, bufferOffset);
    // Serialize message field [stay_on]
    bufferOffset = TrafficSignNodeStayOnEnum.serialize(obj.stay_on, buffer, bufferOffset);
    // Serialize message field [pass_on]
    bufferOffset = TrafficSignNodePassOnEnum.serialize(obj.pass_on, buffer, bufferOffset);
    // Serialize message field [drive_to]
    bufferOffset = TrafficSignNodeDriveToEnum.serialize(obj.drive_to, buffer, bufferOffset);
    // Serialize message field [is_lane_level_limit]
    bufferOffset = _serializer.bool(obj.is_lane_level_limit, buffer, bufferOffset);
    // Serialize message field [is_direction_grouped]
    bufferOffset = _serializer.bool(obj.is_direction_grouped, buffer, bufferOffset);
    // Serialize message field [waiting_area_allow]
    bufferOffset = TrafficSignNodeWaitingAreaAllowEnum.serialize(obj.waiting_area_allow, buffer, bufferOffset);
    // Serialize message field [waiting_area_directions]
    // Serialize the length for message field [waiting_area_directions]
    bufferOffset = _serializer.uint32(obj.waiting_area_directions.length, buffer, bufferOffset);
    obj.waiting_area_directions.forEach((val) => {
      bufferOffset = TrafficSignNodeWaitingAreaDirectionEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [etc_distribution_directions]
    // Serialize the length for message field [etc_distribution_directions]
    bufferOffset = _serializer.uint32(obj.etc_distribution_directions.length, buffer, bufferOffset);
    obj.etc_distribution_directions.forEach((val) => {
      bufferOffset = TrafficSignNodeEtcDistributionDirectionEnum.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignNode
    let len;
    let data = new TrafficSignNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape_points]
    // Deserialize array length for message field [shape_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.shape_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.shape_points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [type]
    data.type = TrafficSignNodeTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape_type]
    data.shape_type = TrafficSignShapeTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ignored]
    data.ignored = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = TrafficSignNodeSpeedLimitEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [height_limit_unit]
    data.height_limit_unit = TrafficSignNodeHeightLimitEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [height_limit_tenths]
    data.height_limit_tenths = TrafficSignNodeHeightLimitEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_subtype]
    data.parking_subtype = TrafficSignNodeParkingSubTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_arrow]
    data.parking_arrow = TrafficSignNodeParkingArrowEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_position_arrow]
    data.lane_position_arrow = TrafficSignNodeLanePositionArrowEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [region]
    data.region = TrafficSignNodeRegionEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_limit_conditions]
    // Deserialize array length for message field [speed_limit_conditions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.speed_limit_conditions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.speed_limit_conditions[i] = TrafficSignNodeSpeedLimitConditionEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [directions]
    // Deserialize array length for message field [directions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.directions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.directions[i] = TrafficSignNodeDirectionEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_electronic]
    data.is_electronic = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [toll_station]
    data.toll_station = TrafficSignNodeTollStationEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [stay_on]
    data.stay_on = TrafficSignNodeStayOnEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [pass_on]
    data.pass_on = TrafficSignNodePassOnEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [drive_to]
    data.drive_to = TrafficSignNodeDriveToEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_lane_level_limit]
    data.is_lane_level_limit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_direction_grouped]
    data.is_direction_grouped = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [waiting_area_allow]
    data.waiting_area_allow = TrafficSignNodeWaitingAreaAllowEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [waiting_area_directions]
    // Deserialize array length for message field [waiting_area_directions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waiting_area_directions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waiting_area_directions[i] = TrafficSignNodeWaitingAreaDirectionEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [etc_distribution_directions]
    // Deserialize array length for message field [etc_distribution_directions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.etc_distribution_directions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.etc_distribution_directions[i] = TrafficSignNodeEtcDistributionDirectionEnum.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.shape_points.length;
    length += object.speed_limit_conditions.length;
    length += object.directions.length;
    length += object.waiting_area_directions.length;
    length += object.etc_distribution_directions.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficSignNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59835f78b2c6116703c083b80b9899cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 POSITION_VALID = 1
    uint32 SHAPE_POINTS_VALID = 2
    uint32 TYPE_VALID = 4
    uint32 SHAPE_TYPE_VALID = 8
    uint32 SCORE_VALID = 16
    uint32 IGNORED_VALID = 32
    uint32 SPEED_LIMIT_VALID = 64
    uint32 HEIGHT_LIMIT_VALID = 128
    uint32 PARKING_SUBTYPE_VALID = 256
    uint32 PARKING_ARROW_VALID = 512
    uint32 LANE_POSITION_ARROW_VALID = 1024
    uint32 REGION_VALID = 2048
    uint32 SPEED_LIMIT_CONDITIONS_VALID = 4096
    uint32 DIRECTIONS_VALID = 8192
    uint32 IS_ELECTRONIC_VALID = 16384
    uint32 TOLL_STATION_VALID = 32768
    uint32 STAY_ON_VALID = 65536
    uint32 PASS_ON_VALID = 131072
    uint32 DRIVE_TO_VALID = 262144
    uint32 IS_LANE_LEVEL_LIMIT_VALID = 524288
    uint32 IS_DIRECTION_GROUPED_VALID = 1048576
    uint32 WAITING_AREA_ALLOW_VALID = 2097152
    uint32 WAITING_AREA_DIRECTIONS_VALID = 4194304
    uint32 ETC_DISTRIBUTION_DIRECTIONS_VALID = 8388608
    uint32 available
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f position
    perception_interface_msgs/Point3f[] shape_points
    landmark_msgs/TrafficSignNodeTypeEnum type
    landmark_msgs/TrafficSignShapeTypeEnum shape_type
    float32 score
    bool ignored
    landmark_msgs/TrafficSignNodeSpeedLimitEnum speed_limit
    landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_unit
    landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_tenths
    landmark_msgs/TrafficSignNodeParkingSubTypeEnum parking_subtype
    landmark_msgs/TrafficSignNodeParkingArrowEnum parking_arrow
    landmark_msgs/TrafficSignNodeLanePositionArrowEnum lane_position_arrow
    landmark_msgs/TrafficSignNodeRegionEnum region
    landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] speed_limit_conditions
    landmark_msgs/TrafficSignNodeDirectionEnum[] directions
    bool is_electronic
    landmark_msgs/TrafficSignNodeTollStationEnum toll_station
    landmark_msgs/TrafficSignNodeStayOnEnum stay_on
    landmark_msgs/TrafficSignNodePassOnEnum pass_on
    landmark_msgs/TrafficSignNodeDriveToEnum drive_to
    bool is_lane_level_limit
    bool is_direction_grouped
    landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum waiting_area_allow
    landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] waiting_area_directions
    landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] etc_distribution_directions
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeTypeEnum
    uint8 TRAFFIC_SIGN_NODE_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_TYPE_SPEED_LIMIT = 1
    uint8 TRAFFIC_SIGN_NODE_TYPE_MIN_SPEED = 2
    uint8 TRAFFIC_SIGN_NODE_TYPE_CANCEL_SPEED_LIMIT = 3
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD = 4
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD_END = 5
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_AUXILIARY = 6
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_NEXT_INTERSECTION = 7
    uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD = 8
    uint8 TRAFFIC_SIGN_NODE_TYPE_STOP = 9
    uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_OVER_ONCOMMING = 10
    uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD_TO_ONCOMMING = 11
    uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_SPEED_LIMIT = 13
    uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_LANE_CONTROL = 14
    uint8 TRAFFIC_SIGN_NODE_TYPE_ROAD_WORK = 15
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_ENTRY = 16
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE_ENTRY = 17
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_MINIBUS_ENTRY = 18
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_LARGEBUS_ENTRY = 19
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE = 20
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_HONKING = 21
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_TURING = 22
    uint8 TRAFFIC_SIGN_NODE_TYPE_OVERTAKING_PROHIBITED = 46
    uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_OVERTAKING = 47
    uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_SPEED_AND_OVERTAKING = 48
    uint8 TRAFFIC_SIGN_NODE_TYPE_UNGUARDED_RAILWAY_CROSSING = 50
    uint8 TRAFFIC_SIGN_NODE_TYPE_GUARDED_RAILWAY_CROSSING = 51
    uint8 TRAFFIC_SIGN_NODE_TYPE_CHILDREN_AND_SCHOOL_ZONE = 52
    uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_CHILDREN = 53
    uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_PEDESTRIAN = 54
    uint8 TRAFFIC_SIGN_NODE_TYPE_SLIPPERY_SURFACE = 55
    uint8 TRAFFIC_SIGN_NODE_TYPE_DANGER_AHEAD = 56
    uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 57
    uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 58
    uint8 TRAFFIC_SIGN_NODE_TYPE_UPHILL_AHEAD = 59
    uint8 TRAFFIC_SIGN_NODE_TYPE_DOWNHILL_AHEAD = 60
    uint8 TRAFFIC_SIGN_NODE_TYPE_OTHER = 99
    uint8 TRAFFIC_SIGN_NODE_TYPE_PEDESTRIAN_CROSSING = 100
    uint8 TRAFFIC_SIGN_NODE_TYPE_LANE_DIRECTION_INDICATOR = 101
    uint8 TRAFFIC_SIGN_NODE_TYPE_BUS_LANE = 102
    uint8 TRAFFIC_SIGN_NODE_TYPE_MOTOR_LANE = 103
    uint8 TRAFFIC_SIGN_NODE_TYPE_NON_MOTOR_LANE = 104
    uint8 TRAFFIC_SIGN_NODE_TYPE_TIDAL_LANE = 105
    uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_ENTRANCE = 106
    uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_EXIT = 107
    uint8 TRAFFIC_SIGN_NODE_TYPE_TOLL_STATION = 108
    uint8 TRAFFIC_SIGN_NODE_TYPE_STAY_ON = 109
    uint8 TRAFFIC_SIGN_NODE_TYPE_PASS_ON = 110
    uint8 TRAFFIC_SIGN_NODE_TYPE_DRIVE_TO = 111
    uint8 TRAFFIC_SIGN_NODE_TYPE_EMERGENCY_PARKING = 112
    uint8 TRAFFIC_SIGN_NODE_TYPE_ONE_WAY = 113
    uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_TEXT = 114
    uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_ARROW = 115
    uint8 TRAFFIC_SIGN_NODE_TYPE_ROUNDABOUT = 116
    uint8 TRAFFIC_SIGN_NODE_TYPE_WAITING_AREA = 117
    uint8 TRAFFIC_SIGN_NODE_TYPE_NO_PARKING = 150
    uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PARKING = 151
    uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PROLONGED_PARKING = 152
    uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING = 153
    uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING_CROSS = 154
    uint8 TRAFFIC_SIGN_NODE_TYPE_PARKING = 156
    uint8 TRAFFIC_SIGN_NODE_TYPE_RESERVED_PARKING = 157
    uint8 TRAFFIC_SIGN_NODE_TYPE_PAYMENT_PARKING = 158
    uint8 TRAFFIC_SIGN_NODE_TYPE_HEIGHT_LIMIT = 248
    uint8 TRAFFIC_SIGN_NODE_TYPE_WEIGHT_LIMIT = 249
    uint8 TRAFFIC_SIGN_NODE_TYPE_WIDTH_LIMIT = 250
    uint8 TRAFFIC_SIGN_NODE_TYPE_AXLE_WEIGHT_LIMIT = 251
    uint8 TRAFFIC_SIGN_NODE_TYPE_RECOMMENDED_SPEED = 252
    uint8 TRAFFIC_SIGN_NODE_TYPE_LEFT_CURVE = 253
    uint8 TRAFFIC_SIGN_NODE_TYPE_RIGHT_CURVE = 254
    uint8 TRAFFIC_SIGN_NODE_TYPE_SERIES_CURVES = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignShapeTypeEnum
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6
    uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeSpeedLimitEnum
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeHeightLimitEnum
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeParkingSubTypeEnum
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeParkingArrowEnum
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE = 2
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT = 4
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH = 5
    uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeLanePositionArrowEnum
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeRegionEnum
    uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2
    uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3
    uint8 TRAFFIC_SIGN_NODE_REGION_US = 4
    uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeDirectionEnum
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8
    uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeTollStationEnum
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeStayOnEnum
    uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0
    uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1
    uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2
    uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodePassOnEnum
    uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0
    uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1
    uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2
    uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeDriveToEnum
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT = 0
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_RIGHT = 1
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT = 2
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_INVALID = 100
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN = 101
    uint8 TRAFFIC_SIGN_NODE_DRIVETO_OTHER = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE = 1
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT = 2
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT = 4
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignNode(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    if (msg.position !== undefined) {
      resolved.position = perception_interface_msgs.msg.Point3f.Resolve(msg.position)
    }
    else {
      resolved.position = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.shape_points !== undefined) {
      resolved.shape_points = new Array(msg.shape_points.length);
      for (let i = 0; i < resolved.shape_points.length; ++i) {
        resolved.shape_points[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.shape_points[i]);
      }
    }
    else {
      resolved.shape_points = []
    }

    if (msg.type !== undefined) {
      resolved.type = TrafficSignNodeTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new TrafficSignNodeTypeEnum()
    }

    if (msg.shape_type !== undefined) {
      resolved.shape_type = TrafficSignShapeTypeEnum.Resolve(msg.shape_type)
    }
    else {
      resolved.shape_type = new TrafficSignShapeTypeEnum()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.ignored !== undefined) {
      resolved.ignored = msg.ignored;
    }
    else {
      resolved.ignored = false
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = TrafficSignNodeSpeedLimitEnum.Resolve(msg.speed_limit)
    }
    else {
      resolved.speed_limit = new TrafficSignNodeSpeedLimitEnum()
    }

    if (msg.height_limit_unit !== undefined) {
      resolved.height_limit_unit = TrafficSignNodeHeightLimitEnum.Resolve(msg.height_limit_unit)
    }
    else {
      resolved.height_limit_unit = new TrafficSignNodeHeightLimitEnum()
    }

    if (msg.height_limit_tenths !== undefined) {
      resolved.height_limit_tenths = TrafficSignNodeHeightLimitEnum.Resolve(msg.height_limit_tenths)
    }
    else {
      resolved.height_limit_tenths = new TrafficSignNodeHeightLimitEnum()
    }

    if (msg.parking_subtype !== undefined) {
      resolved.parking_subtype = TrafficSignNodeParkingSubTypeEnum.Resolve(msg.parking_subtype)
    }
    else {
      resolved.parking_subtype = new TrafficSignNodeParkingSubTypeEnum()
    }

    if (msg.parking_arrow !== undefined) {
      resolved.parking_arrow = TrafficSignNodeParkingArrowEnum.Resolve(msg.parking_arrow)
    }
    else {
      resolved.parking_arrow = new TrafficSignNodeParkingArrowEnum()
    }

    if (msg.lane_position_arrow !== undefined) {
      resolved.lane_position_arrow = TrafficSignNodeLanePositionArrowEnum.Resolve(msg.lane_position_arrow)
    }
    else {
      resolved.lane_position_arrow = new TrafficSignNodeLanePositionArrowEnum()
    }

    if (msg.region !== undefined) {
      resolved.region = TrafficSignNodeRegionEnum.Resolve(msg.region)
    }
    else {
      resolved.region = new TrafficSignNodeRegionEnum()
    }

    if (msg.speed_limit_conditions !== undefined) {
      resolved.speed_limit_conditions = new Array(msg.speed_limit_conditions.length);
      for (let i = 0; i < resolved.speed_limit_conditions.length; ++i) {
        resolved.speed_limit_conditions[i] = TrafficSignNodeSpeedLimitConditionEnum.Resolve(msg.speed_limit_conditions[i]);
      }
    }
    else {
      resolved.speed_limit_conditions = []
    }

    if (msg.directions !== undefined) {
      resolved.directions = new Array(msg.directions.length);
      for (let i = 0; i < resolved.directions.length; ++i) {
        resolved.directions[i] = TrafficSignNodeDirectionEnum.Resolve(msg.directions[i]);
      }
    }
    else {
      resolved.directions = []
    }

    if (msg.is_electronic !== undefined) {
      resolved.is_electronic = msg.is_electronic;
    }
    else {
      resolved.is_electronic = false
    }

    if (msg.toll_station !== undefined) {
      resolved.toll_station = TrafficSignNodeTollStationEnum.Resolve(msg.toll_station)
    }
    else {
      resolved.toll_station = new TrafficSignNodeTollStationEnum()
    }

    if (msg.stay_on !== undefined) {
      resolved.stay_on = TrafficSignNodeStayOnEnum.Resolve(msg.stay_on)
    }
    else {
      resolved.stay_on = new TrafficSignNodeStayOnEnum()
    }

    if (msg.pass_on !== undefined) {
      resolved.pass_on = TrafficSignNodePassOnEnum.Resolve(msg.pass_on)
    }
    else {
      resolved.pass_on = new TrafficSignNodePassOnEnum()
    }

    if (msg.drive_to !== undefined) {
      resolved.drive_to = TrafficSignNodeDriveToEnum.Resolve(msg.drive_to)
    }
    else {
      resolved.drive_to = new TrafficSignNodeDriveToEnum()
    }

    if (msg.is_lane_level_limit !== undefined) {
      resolved.is_lane_level_limit = msg.is_lane_level_limit;
    }
    else {
      resolved.is_lane_level_limit = false
    }

    if (msg.is_direction_grouped !== undefined) {
      resolved.is_direction_grouped = msg.is_direction_grouped;
    }
    else {
      resolved.is_direction_grouped = false
    }

    if (msg.waiting_area_allow !== undefined) {
      resolved.waiting_area_allow = TrafficSignNodeWaitingAreaAllowEnum.Resolve(msg.waiting_area_allow)
    }
    else {
      resolved.waiting_area_allow = new TrafficSignNodeWaitingAreaAllowEnum()
    }

    if (msg.waiting_area_directions !== undefined) {
      resolved.waiting_area_directions = new Array(msg.waiting_area_directions.length);
      for (let i = 0; i < resolved.waiting_area_directions.length; ++i) {
        resolved.waiting_area_directions[i] = TrafficSignNodeWaitingAreaDirectionEnum.Resolve(msg.waiting_area_directions[i]);
      }
    }
    else {
      resolved.waiting_area_directions = []
    }

    if (msg.etc_distribution_directions !== undefined) {
      resolved.etc_distribution_directions = new Array(msg.etc_distribution_directions.length);
      for (let i = 0; i < resolved.etc_distribution_directions.length; ++i) {
        resolved.etc_distribution_directions[i] = TrafficSignNodeEtcDistributionDirectionEnum.Resolve(msg.etc_distribution_directions[i]);
      }
    }
    else {
      resolved.etc_distribution_directions = []
    }

    return resolved;
    }
};

// Constants for message
TrafficSignNode.Constants = {
  POSITION_VALID: 1,
  SHAPE_POINTS_VALID: 2,
  TYPE_VALID: 4,
  SHAPE_TYPE_VALID: 8,
  SCORE_VALID: 16,
  IGNORED_VALID: 32,
  SPEED_LIMIT_VALID: 64,
  HEIGHT_LIMIT_VALID: 128,
  PARKING_SUBTYPE_VALID: 256,
  PARKING_ARROW_VALID: 512,
  LANE_POSITION_ARROW_VALID: 1024,
  REGION_VALID: 2048,
  SPEED_LIMIT_CONDITIONS_VALID: 4096,
  DIRECTIONS_VALID: 8192,
  IS_ELECTRONIC_VALID: 16384,
  TOLL_STATION_VALID: 32768,
  STAY_ON_VALID: 65536,
  PASS_ON_VALID: 131072,
  DRIVE_TO_VALID: 262144,
  IS_LANE_LEVEL_LIMIT_VALID: 524288,
  IS_DIRECTION_GROUPED_VALID: 1048576,
  WAITING_AREA_ALLOW_VALID: 2097152,
  WAITING_AREA_DIRECTIONS_VALID: 4194304,
  ETC_DISTRIBUTION_DIRECTIONS_VALID: 8388608,
}

module.exports = TrafficSignNode;
