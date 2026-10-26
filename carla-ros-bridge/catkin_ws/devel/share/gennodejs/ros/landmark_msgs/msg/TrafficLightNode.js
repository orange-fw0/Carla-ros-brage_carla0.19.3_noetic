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
let TrafficLightTypeEnum = require('./TrafficLightTypeEnum.js');
let TrafficLightPatternEnum = require('./TrafficLightPatternEnum.js');
let TrafficLightStatusEnum = require('./TrafficLightStatusEnum.js');
let TrafficLightDirectionEnum = require('./TrafficLightDirectionEnum.js');
let TrafficLightDecision = require('./TrafficLightDecision.js');
let TrafficLightGroupShapeEnum = require('./TrafficLightGroupShapeEnum.js');
let TrafficLightGroupPropertyEnum = require('./TrafficLightGroupPropertyEnum.js');
let TrafficLightObservedByEgoEnum = require('./TrafficLightObservedByEgoEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class TrafficLightNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.track_id = null;
      this.type = null;
      this.pattern = null;
      this.status = null;
      this.pattern_score = null;
      this.status_score = null;
      this.duration = null;
      this.remaining = null;
      this.count_number = null;
      this.shape_3d = null;
      this.shape = null;
      this.directions = null;
      this.location = null;
      this.traffic_light_decision = null;
      this.in_intersection = null;
      this.score = null;
      this.heading_theta_bv = null;
      this.digits = null;
      this.digit_scores = null;
      this.group_shape_type = null;
      this.group_shape_score = null;
      this.group_property = null;
      this.track_id_2d = null;
      this.observed_by_ego = null;
      this.observed_by_current_road = null;
      this.observed_by_current_lane = null;
      this.reserved_info = null;
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
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new TrafficLightTypeEnum();
      }
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
      if (initObj.hasOwnProperty('pattern_score')) {
        this.pattern_score = initObj.pattern_score
      }
      else {
        this.pattern_score = [];
      }
      if (initObj.hasOwnProperty('status_score')) {
        this.status_score = initObj.status_score
      }
      else {
        this.status_score = [];
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('remaining')) {
        this.remaining = initObj.remaining
      }
      else {
        this.remaining = 0.0;
      }
      if (initObj.hasOwnProperty('count_number')) {
        this.count_number = initObj.count_number
      }
      else {
        this.count_number = 0;
      }
      if (initObj.hasOwnProperty('shape_3d')) {
        this.shape_3d = initObj.shape_3d
      }
      else {
        this.shape_3d = new perception_interface_msgs.msg.Shape3f();
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = [];
      }
      if (initObj.hasOwnProperty('directions')) {
        this.directions = initObj.directions
      }
      else {
        this.directions = [];
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('traffic_light_decision')) {
        this.traffic_light_decision = initObj.traffic_light_decision
      }
      else {
        this.traffic_light_decision = [];
      }
      if (initObj.hasOwnProperty('in_intersection')) {
        this.in_intersection = initObj.in_intersection
      }
      else {
        this.in_intersection = false;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('heading_theta_bv')) {
        this.heading_theta_bv = initObj.heading_theta_bv
      }
      else {
        this.heading_theta_bv = 0.0;
      }
      if (initObj.hasOwnProperty('digits')) {
        this.digits = initObj.digits
      }
      else {
        this.digits = [];
      }
      if (initObj.hasOwnProperty('digit_scores')) {
        this.digit_scores = initObj.digit_scores
      }
      else {
        this.digit_scores = [];
      }
      if (initObj.hasOwnProperty('group_shape_type')) {
        this.group_shape_type = initObj.group_shape_type
      }
      else {
        this.group_shape_type = new TrafficLightGroupShapeEnum();
      }
      if (initObj.hasOwnProperty('group_shape_score')) {
        this.group_shape_score = initObj.group_shape_score
      }
      else {
        this.group_shape_score = 0.0;
      }
      if (initObj.hasOwnProperty('group_property')) {
        this.group_property = initObj.group_property
      }
      else {
        this.group_property = new TrafficLightGroupPropertyEnum();
      }
      if (initObj.hasOwnProperty('track_id_2d')) {
        this.track_id_2d = initObj.track_id_2d
      }
      else {
        this.track_id_2d = [];
      }
      if (initObj.hasOwnProperty('observed_by_ego')) {
        this.observed_by_ego = initObj.observed_by_ego
      }
      else {
        this.observed_by_ego = new TrafficLightObservedByEgoEnum();
      }
      if (initObj.hasOwnProperty('observed_by_current_road')) {
        this.observed_by_current_road = initObj.observed_by_current_road
      }
      else {
        this.observed_by_current_road = new TrafficLightObservedByEgoEnum();
      }
      if (initObj.hasOwnProperty('observed_by_current_lane')) {
        this.observed_by_current_lane = initObj.observed_by_current_lane
      }
      else {
        this.observed_by_current_lane = new TrafficLightObservedByEgoEnum();
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
    // Serializes a message object of type TrafficLightNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = TrafficLightTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [pattern]
    // Serialize the length for message field [pattern]
    bufferOffset = _serializer.uint32(obj.pattern.length, buffer, bufferOffset);
    obj.pattern.forEach((val) => {
      bufferOffset = TrafficLightPatternEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [status]
    // Serialize the length for message field [status]
    bufferOffset = _serializer.uint32(obj.status.length, buffer, bufferOffset);
    obj.status.forEach((val) => {
      bufferOffset = TrafficLightStatusEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pattern_score]
    bufferOffset = _arraySerializer.float32(obj.pattern_score, buffer, bufferOffset, null);
    // Serialize message field [status_score]
    bufferOffset = _arraySerializer.float32(obj.status_score, buffer, bufferOffset, null);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    // Serialize message field [remaining]
    bufferOffset = _serializer.float32(obj.remaining, buffer, bufferOffset);
    // Serialize message field [count_number]
    bufferOffset = _serializer.uint8(obj.count_number, buffer, bufferOffset);
    // Serialize message field [shape_3d]
    bufferOffset = perception_interface_msgs.msg.Shape3f.serialize(obj.shape_3d, buffer, bufferOffset);
    // Serialize message field [shape]
    // Serialize the length for message field [shape]
    bufferOffset = _serializer.uint32(obj.shape.length, buffer, bufferOffset);
    obj.shape.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [directions]
    // Serialize the length for message field [directions]
    bufferOffset = _serializer.uint32(obj.directions.length, buffer, bufferOffset);
    obj.directions.forEach((val) => {
      bufferOffset = TrafficLightDirectionEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [location]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.location, buffer, bufferOffset);
    // Serialize message field [traffic_light_decision]
    // Serialize the length for message field [traffic_light_decision]
    bufferOffset = _serializer.uint32(obj.traffic_light_decision.length, buffer, bufferOffset);
    obj.traffic_light_decision.forEach((val) => {
      bufferOffset = TrafficLightDecision.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [in_intersection]
    bufferOffset = _serializer.bool(obj.in_intersection, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [heading_theta_bv]
    bufferOffset = _serializer.float32(obj.heading_theta_bv, buffer, bufferOffset);
    // Serialize message field [digits]
    bufferOffset = _arraySerializer.uint8(obj.digits, buffer, bufferOffset, null);
    // Serialize message field [digit_scores]
    bufferOffset = _arraySerializer.float32(obj.digit_scores, buffer, bufferOffset, null);
    // Serialize message field [group_shape_type]
    bufferOffset = TrafficLightGroupShapeEnum.serialize(obj.group_shape_type, buffer, bufferOffset);
    // Serialize message field [group_shape_score]
    bufferOffset = _serializer.float32(obj.group_shape_score, buffer, bufferOffset);
    // Serialize message field [group_property]
    bufferOffset = TrafficLightGroupPropertyEnum.serialize(obj.group_property, buffer, bufferOffset);
    // Serialize message field [track_id_2d]
    bufferOffset = _arraySerializer.int32(obj.track_id_2d, buffer, bufferOffset, null);
    // Serialize message field [observed_by_ego]
    bufferOffset = TrafficLightObservedByEgoEnum.serialize(obj.observed_by_ego, buffer, bufferOffset);
    // Serialize message field [observed_by_current_road]
    bufferOffset = TrafficLightObservedByEgoEnum.serialize(obj.observed_by_current_road, buffer, bufferOffset);
    // Serialize message field [observed_by_current_lane]
    bufferOffset = TrafficLightObservedByEgoEnum.serialize(obj.observed_by_current_lane, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightNode
    let len;
    let data = new TrafficLightNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = TrafficLightTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [pattern]
    // Deserialize array length for message field [pattern]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pattern = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pattern[i] = TrafficLightPatternEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [status]
    // Deserialize array length for message field [status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.status[i] = TrafficLightStatusEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pattern_score]
    data.pattern_score = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [status_score]
    data.status_score = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [remaining]
    data.remaining = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [count_number]
    data.count_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [shape_3d]
    data.shape_3d = perception_interface_msgs.msg.Shape3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape]
    // Deserialize array length for message field [shape]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.shape = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.shape[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [directions]
    // Deserialize array length for message field [directions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.directions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.directions[i] = TrafficLightDirectionEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [location]
    data.location = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_light_decision]
    // Deserialize array length for message field [traffic_light_decision]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_decision = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_decision[i] = TrafficLightDecision.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [in_intersection]
    data.in_intersection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading_theta_bv]
    data.heading_theta_bv = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [digits]
    data.digits = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [digit_scores]
    data.digit_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [group_shape_type]
    data.group_shape_type = TrafficLightGroupShapeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [group_shape_score]
    data.group_shape_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [group_property]
    data.group_property = TrafficLightGroupPropertyEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_id_2d]
    data.track_id_2d = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [observed_by_ego]
    data.observed_by_ego = TrafficLightObservedByEgoEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [observed_by_current_road]
    data.observed_by_current_road = TrafficLightObservedByEgoEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [observed_by_current_lane]
    data.observed_by_current_lane = TrafficLightObservedByEgoEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pattern.length;
    length += object.status.length;
    length += 4 * object.pattern_score.length;
    length += 4 * object.status_score.length;
    length += 12 * object.shape.length;
    length += object.directions.length;
    object.traffic_light_decision.forEach((val) => {
      length += TrafficLightDecision.getMessageSize(val);
    });
    length += object.digits.length;
    length += 4 * object.digit_scores.length;
    length += 4 * object.track_id_2d.length;
    length += _getByteLength(object.reserved_info);
    return length + 118;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficLightNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb829ca2295905f4fe0fc8ec134858a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 TYPE_VALID = 1
    uint32 PATTERN_VALID = 2
    uint32 STATUS_VALID = 4
    uint32 PATTERN_SCORE_VALID = 8
    uint32 STATUS_SCORE_VALID = 16
    uint32 DURATION_VALID = 32
    uint32 REMAINING_VALID = 64
    uint32 COUNT_NUMBER_VALID = 128
    uint32 SHAPE_3D_VALID = 256
    uint32 SHAPE_VALID = 512
    uint32 DIRECTIONS_VALID = 1024
    uint32 LOCATION_VALID = 2048
    uint32 TRAFFIC_LIGHT_DECISION_VALID = 4096
    uint32 IN_INTERSECTION_VALID = 8192
    uint32 SCORE_VALID = 16384
    uint32 HEADING_THETA_BV_VALID = 32768
    uint32 DIGITS_VALID = 65536
    uint32 DIGIT_SCORES_VALID = 131072
    uint32 GROUP_SHAPE_TYPE_VALID = 262144
    uint32 GROUP_SHAPE_SCORE_VALID = 524288
    uint32 GROUP_PROPERTY_VALID = 1048576
    uint32 TRACK_ID_2D_VALID = 2097152
    uint32 OBSERVED_BY_EGO_VALID = 4194304
    uint32 OBSERVED_BY_CURRENT_ROAD_VALID = 8388608
    uint32 OBSERVED_BY_CURRENT_LANE_VALID = 16777216
    uint32 available
    landmark_msgs/TrackId track_id
    landmark_msgs/TrafficLightTypeEnum type
    landmark_msgs/TrafficLightPatternEnum[] pattern
    landmark_msgs/TrafficLightStatusEnum[] status
    float32[] pattern_score
    float32[] status_score
    float32 duration
    float32 remaining
    uint8 count_number
    perception_interface_msgs/Shape3f shape_3d
    perception_interface_msgs/Point3f[] shape
    landmark_msgs/TrafficLightDirectionEnum[] directions
    perception_interface_msgs/Point3f location
    landmark_msgs/TrafficLightDecision[] traffic_light_decision
    bool in_intersection
    float32 score
    float32 heading_theta_bv
    uint8[] digits
    float32[] digit_scores
    landmark_msgs/TrafficLightGroupShapeEnum group_shape_type
    float32 group_shape_score
    landmark_msgs/TrafficLightGroupPropertyEnum group_property
    int32[] track_id_2d
    landmark_msgs/TrafficLightObservedByEgoEnum observed_by_ego
    landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_road
    landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_lane
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
    MSG: landmark_msgs/TrafficLightTypeEnum
    uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightPatternEnum
    uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
    uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
    uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
    uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
    uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
    uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
    uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
    uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
    uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
    uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23
    uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24
    uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25
    uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26
    uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50
    uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51
    uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52
    uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightStatusEnum
    uint8 TRAFFIC_LIGHT_STATUS_RED = 0
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
    uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
    uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
    uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
    uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
    uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
    uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
    uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
    uint8 TRAFFIC_LIGHT_STATUS_ON = 13
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Shape3f
    float32 length
    float32 height
    float32 width
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightDirectionEnum
    uint8 UNKNOWN = 0
    uint8 GO_STRAIGHT = 1
    uint8 TURN_RIGHT = 2
    uint8 TURN_LEFT = 3
    uint8 U_TURN_LEFT = 4
    uint8 U_TURN_RIGHT = 5
    uint8 LEFT_CONFLUENCE = 6
    uint8 RIGHT_CONFLUENCE = 7
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightDecision
    uint32 PATTERN_VALID = 1
    uint32 STATUS_VALID = 2
    uint32 DURATION_VALID = 4
    uint32 REMAINING_VALID = 8
    uint32 COUNT_NUMBER_VALID = 16
    uint32 SCORE_VALID = 32
    uint32 RESERVED_INFO_VALID = 64
    uint32 POS_FEATURE_VALID = 128
    uint32 PHYSICAL_NODE_LIST_VALID = 256
    landmark_msgs/TrafficLightPatternEnum pattern
    landmark_msgs/TrafficLightStatusEnum status
    float32 duration
    float32 remaining
    uint8 count_number
    float32 score
    string reserved_info
    landmark_msgs/TrafficLightPositionFeature pos_feature
    landmark_msgs/TrackId[] physical_node_list
    uint32 available
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightPositionFeature
    perception_interface_msgs/Point3f position
    float32 yaw
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightGroupShapeEnum
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightGroupPropertyEnum
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightObservedByEgoEnum
    uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN = 0
    uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE = 1
    uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightNode(null);
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

    if (msg.type !== undefined) {
      resolved.type = TrafficLightTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new TrafficLightTypeEnum()
    }

    if (msg.pattern !== undefined) {
      resolved.pattern = new Array(msg.pattern.length);
      for (let i = 0; i < resolved.pattern.length; ++i) {
        resolved.pattern[i] = TrafficLightPatternEnum.Resolve(msg.pattern[i]);
      }
    }
    else {
      resolved.pattern = []
    }

    if (msg.status !== undefined) {
      resolved.status = new Array(msg.status.length);
      for (let i = 0; i < resolved.status.length; ++i) {
        resolved.status[i] = TrafficLightStatusEnum.Resolve(msg.status[i]);
      }
    }
    else {
      resolved.status = []
    }

    if (msg.pattern_score !== undefined) {
      resolved.pattern_score = msg.pattern_score;
    }
    else {
      resolved.pattern_score = []
    }

    if (msg.status_score !== undefined) {
      resolved.status_score = msg.status_score;
    }
    else {
      resolved.status_score = []
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.remaining !== undefined) {
      resolved.remaining = msg.remaining;
    }
    else {
      resolved.remaining = 0.0
    }

    if (msg.count_number !== undefined) {
      resolved.count_number = msg.count_number;
    }
    else {
      resolved.count_number = 0
    }

    if (msg.shape_3d !== undefined) {
      resolved.shape_3d = perception_interface_msgs.msg.Shape3f.Resolve(msg.shape_3d)
    }
    else {
      resolved.shape_3d = new perception_interface_msgs.msg.Shape3f()
    }

    if (msg.shape !== undefined) {
      resolved.shape = new Array(msg.shape.length);
      for (let i = 0; i < resolved.shape.length; ++i) {
        resolved.shape[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.shape[i]);
      }
    }
    else {
      resolved.shape = []
    }

    if (msg.directions !== undefined) {
      resolved.directions = new Array(msg.directions.length);
      for (let i = 0; i < resolved.directions.length; ++i) {
        resolved.directions[i] = TrafficLightDirectionEnum.Resolve(msg.directions[i]);
      }
    }
    else {
      resolved.directions = []
    }

    if (msg.location !== undefined) {
      resolved.location = perception_interface_msgs.msg.Point3f.Resolve(msg.location)
    }
    else {
      resolved.location = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.traffic_light_decision !== undefined) {
      resolved.traffic_light_decision = new Array(msg.traffic_light_decision.length);
      for (let i = 0; i < resolved.traffic_light_decision.length; ++i) {
        resolved.traffic_light_decision[i] = TrafficLightDecision.Resolve(msg.traffic_light_decision[i]);
      }
    }
    else {
      resolved.traffic_light_decision = []
    }

    if (msg.in_intersection !== undefined) {
      resolved.in_intersection = msg.in_intersection;
    }
    else {
      resolved.in_intersection = false
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.heading_theta_bv !== undefined) {
      resolved.heading_theta_bv = msg.heading_theta_bv;
    }
    else {
      resolved.heading_theta_bv = 0.0
    }

    if (msg.digits !== undefined) {
      resolved.digits = msg.digits;
    }
    else {
      resolved.digits = []
    }

    if (msg.digit_scores !== undefined) {
      resolved.digit_scores = msg.digit_scores;
    }
    else {
      resolved.digit_scores = []
    }

    if (msg.group_shape_type !== undefined) {
      resolved.group_shape_type = TrafficLightGroupShapeEnum.Resolve(msg.group_shape_type)
    }
    else {
      resolved.group_shape_type = new TrafficLightGroupShapeEnum()
    }

    if (msg.group_shape_score !== undefined) {
      resolved.group_shape_score = msg.group_shape_score;
    }
    else {
      resolved.group_shape_score = 0.0
    }

    if (msg.group_property !== undefined) {
      resolved.group_property = TrafficLightGroupPropertyEnum.Resolve(msg.group_property)
    }
    else {
      resolved.group_property = new TrafficLightGroupPropertyEnum()
    }

    if (msg.track_id_2d !== undefined) {
      resolved.track_id_2d = msg.track_id_2d;
    }
    else {
      resolved.track_id_2d = []
    }

    if (msg.observed_by_ego !== undefined) {
      resolved.observed_by_ego = TrafficLightObservedByEgoEnum.Resolve(msg.observed_by_ego)
    }
    else {
      resolved.observed_by_ego = new TrafficLightObservedByEgoEnum()
    }

    if (msg.observed_by_current_road !== undefined) {
      resolved.observed_by_current_road = TrafficLightObservedByEgoEnum.Resolve(msg.observed_by_current_road)
    }
    else {
      resolved.observed_by_current_road = new TrafficLightObservedByEgoEnum()
    }

    if (msg.observed_by_current_lane !== undefined) {
      resolved.observed_by_current_lane = TrafficLightObservedByEgoEnum.Resolve(msg.observed_by_current_lane)
    }
    else {
      resolved.observed_by_current_lane = new TrafficLightObservedByEgoEnum()
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
TrafficLightNode.Constants = {
  TYPE_VALID: 1,
  PATTERN_VALID: 2,
  STATUS_VALID: 4,
  PATTERN_SCORE_VALID: 8,
  STATUS_SCORE_VALID: 16,
  DURATION_VALID: 32,
  REMAINING_VALID: 64,
  COUNT_NUMBER_VALID: 128,
  SHAPE_3D_VALID: 256,
  SHAPE_VALID: 512,
  DIRECTIONS_VALID: 1024,
  LOCATION_VALID: 2048,
  TRAFFIC_LIGHT_DECISION_VALID: 4096,
  IN_INTERSECTION_VALID: 8192,
  SCORE_VALID: 16384,
  HEADING_THETA_BV_VALID: 32768,
  DIGITS_VALID: 65536,
  DIGIT_SCORES_VALID: 131072,
  GROUP_SHAPE_TYPE_VALID: 262144,
  GROUP_SHAPE_SCORE_VALID: 524288,
  GROUP_PROPERTY_VALID: 1048576,
  TRACK_ID_2D_VALID: 2097152,
  OBSERVED_BY_EGO_VALID: 4194304,
  OBSERVED_BY_CURRENT_ROAD_VALID: 8388608,
  OBSERVED_BY_CURRENT_LANE_VALID: 16777216,
}

module.exports = TrafficLightNode;
