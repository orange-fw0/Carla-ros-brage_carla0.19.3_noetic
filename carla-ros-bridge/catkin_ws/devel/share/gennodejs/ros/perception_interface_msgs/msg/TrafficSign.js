// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraSourceEnum = require('./CameraSourceEnum.js');
let CameraModelEnum = require('./CameraModelEnum.js');
let TrafficSignPoint = require('./TrafficSignPoint.js');
let TrafficSignShapeEnum = require('./TrafficSignShapeEnum.js');
let Rect4f = require('./Rect4f.js');
let SpeedSignTypeEnum = require('./SpeedSignTypeEnum.js');
let SpeedSignSpeedEnum = require('./SpeedSignSpeedEnum.js');
let RoadMarkTypeEnum = require('./RoadMarkTypeEnum.js');
let TrafficSignTypeEnum = require('./TrafficSignTypeEnum.js');
let SpeedSignCategoryEnum = require('./SpeedSignCategoryEnum.js');
let RestrictionSignTypeEnum = require('./RestrictionSignTypeEnum.js');
let ReservedParkingSignSubtypeEnum = require('./ReservedParkingSignSubtypeEnum.js');
let Point3d = require('./Point3d.js');
let TrafficSignArrowDirectionEnum = require('./TrafficSignArrowDirectionEnum.js');
let TrafficSignRegionEnum = require('./TrafficSignRegionEnum.js');

//-----------------------------------------------------------

class TrafficSign {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.score = null;
      this.points_2d = null;
      this.track_id = null;
      this.shape_info = null;
      this.bounding_box_2d = null;
      this.is_speed_sign = null;
      this.speed_type = null;
      this.speed_num = null;
      this.is_road_mark = null;
      this.road_mark_type = null;
      this.type_info = null;
      this.speedsign_category = null;
      this.is_restriction_sign = null;
      this.restriction_type = null;
      this.restriction_value = null;
      this.reseved_parking_subtype = null;
      this.is_multi_cam = null;
      this.position = null;
      this.arrow_direction = null;
      this.region = null;
      this.is_condition_weather = null;
      this.is_condition_arrow = null;
      this.is_condition_period = null;
      this.is_condition_ramp = null;
      this.is_condition_exit = null;
      this.is_condition_vehicle_type = null;
      this.is_condition_school = null;
      this.is_condition_arrow_left = null;
      this.is_condition_arrow_right = null;
      this.is_condition_arrow_front = null;
      this.is_condition_regional = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_source')) {
        this.camera_source = initObj.camera_source
      }
      else {
        this.camera_source = new CameraSourceEnum();
      }
      if (initObj.hasOwnProperty('camera_model')) {
        this.camera_model = initObj.camera_model
      }
      else {
        this.camera_model = new CameraModelEnum();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('points_2d')) {
        this.points_2d = initObj.points_2d
      }
      else {
        this.points_2d = [];
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('shape_info')) {
        this.shape_info = initObj.shape_info
      }
      else {
        this.shape_info = new TrafficSignShapeEnum();
      }
      if (initObj.hasOwnProperty('bounding_box_2d')) {
        this.bounding_box_2d = initObj.bounding_box_2d
      }
      else {
        this.bounding_box_2d = new Rect4f();
      }
      if (initObj.hasOwnProperty('is_speed_sign')) {
        this.is_speed_sign = initObj.is_speed_sign
      }
      else {
        this.is_speed_sign = false;
      }
      if (initObj.hasOwnProperty('speed_type')) {
        this.speed_type = initObj.speed_type
      }
      else {
        this.speed_type = new SpeedSignTypeEnum();
      }
      if (initObj.hasOwnProperty('speed_num')) {
        this.speed_num = initObj.speed_num
      }
      else {
        this.speed_num = new SpeedSignSpeedEnum();
      }
      if (initObj.hasOwnProperty('is_road_mark')) {
        this.is_road_mark = initObj.is_road_mark
      }
      else {
        this.is_road_mark = false;
      }
      if (initObj.hasOwnProperty('road_mark_type')) {
        this.road_mark_type = initObj.road_mark_type
      }
      else {
        this.road_mark_type = new RoadMarkTypeEnum();
      }
      if (initObj.hasOwnProperty('type_info')) {
        this.type_info = initObj.type_info
      }
      else {
        this.type_info = new TrafficSignTypeEnum();
      }
      if (initObj.hasOwnProperty('speedsign_category')) {
        this.speedsign_category = initObj.speedsign_category
      }
      else {
        this.speedsign_category = new SpeedSignCategoryEnum();
      }
      if (initObj.hasOwnProperty('is_restriction_sign')) {
        this.is_restriction_sign = initObj.is_restriction_sign
      }
      else {
        this.is_restriction_sign = false;
      }
      if (initObj.hasOwnProperty('restriction_type')) {
        this.restriction_type = initObj.restriction_type
      }
      else {
        this.restriction_type = new RestrictionSignTypeEnum();
      }
      if (initObj.hasOwnProperty('restriction_value')) {
        this.restriction_value = initObj.restriction_value
      }
      else {
        this.restriction_value = 0.0;
      }
      if (initObj.hasOwnProperty('reseved_parking_subtype')) {
        this.reseved_parking_subtype = initObj.reseved_parking_subtype
      }
      else {
        this.reseved_parking_subtype = new ReservedParkingSignSubtypeEnum();
      }
      if (initObj.hasOwnProperty('is_multi_cam')) {
        this.is_multi_cam = initObj.is_multi_cam
      }
      else {
        this.is_multi_cam = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point3d();
      }
      if (initObj.hasOwnProperty('arrow_direction')) {
        this.arrow_direction = initObj.arrow_direction
      }
      else {
        this.arrow_direction = new TrafficSignArrowDirectionEnum();
      }
      if (initObj.hasOwnProperty('region')) {
        this.region = initObj.region
      }
      else {
        this.region = new TrafficSignRegionEnum();
      }
      if (initObj.hasOwnProperty('is_condition_weather')) {
        this.is_condition_weather = initObj.is_condition_weather
      }
      else {
        this.is_condition_weather = false;
      }
      if (initObj.hasOwnProperty('is_condition_arrow')) {
        this.is_condition_arrow = initObj.is_condition_arrow
      }
      else {
        this.is_condition_arrow = false;
      }
      if (initObj.hasOwnProperty('is_condition_period')) {
        this.is_condition_period = initObj.is_condition_period
      }
      else {
        this.is_condition_period = false;
      }
      if (initObj.hasOwnProperty('is_condition_ramp')) {
        this.is_condition_ramp = initObj.is_condition_ramp
      }
      else {
        this.is_condition_ramp = false;
      }
      if (initObj.hasOwnProperty('is_condition_exit')) {
        this.is_condition_exit = initObj.is_condition_exit
      }
      else {
        this.is_condition_exit = false;
      }
      if (initObj.hasOwnProperty('is_condition_vehicle_type')) {
        this.is_condition_vehicle_type = initObj.is_condition_vehicle_type
      }
      else {
        this.is_condition_vehicle_type = false;
      }
      if (initObj.hasOwnProperty('is_condition_school')) {
        this.is_condition_school = initObj.is_condition_school
      }
      else {
        this.is_condition_school = false;
      }
      if (initObj.hasOwnProperty('is_condition_arrow_left')) {
        this.is_condition_arrow_left = initObj.is_condition_arrow_left
      }
      else {
        this.is_condition_arrow_left = false;
      }
      if (initObj.hasOwnProperty('is_condition_arrow_right')) {
        this.is_condition_arrow_right = initObj.is_condition_arrow_right
      }
      else {
        this.is_condition_arrow_right = false;
      }
      if (initObj.hasOwnProperty('is_condition_arrow_front')) {
        this.is_condition_arrow_front = initObj.is_condition_arrow_front
      }
      else {
        this.is_condition_arrow_front = false;
      }
      if (initObj.hasOwnProperty('is_condition_regional')) {
        this.is_condition_regional = initObj.is_condition_regional
      }
      else {
        this.is_condition_regional = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficSign
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [points_2d]
    // Serialize the length for message field [points_2d]
    bufferOffset = _serializer.uint32(obj.points_2d.length, buffer, bufferOffset);
    obj.points_2d.forEach((val) => {
      bufferOffset = TrafficSignPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint32(obj.track_id, buffer, bufferOffset);
    // Serialize message field [shape_info]
    bufferOffset = TrafficSignShapeEnum.serialize(obj.shape_info, buffer, bufferOffset);
    // Serialize message field [bounding_box_2d]
    bufferOffset = Rect4f.serialize(obj.bounding_box_2d, buffer, bufferOffset);
    // Serialize message field [is_speed_sign]
    bufferOffset = _serializer.bool(obj.is_speed_sign, buffer, bufferOffset);
    // Serialize message field [speed_type]
    bufferOffset = SpeedSignTypeEnum.serialize(obj.speed_type, buffer, bufferOffset);
    // Serialize message field [speed_num]
    bufferOffset = SpeedSignSpeedEnum.serialize(obj.speed_num, buffer, bufferOffset);
    // Serialize message field [is_road_mark]
    bufferOffset = _serializer.bool(obj.is_road_mark, buffer, bufferOffset);
    // Serialize message field [road_mark_type]
    bufferOffset = RoadMarkTypeEnum.serialize(obj.road_mark_type, buffer, bufferOffset);
    // Serialize message field [type_info]
    bufferOffset = TrafficSignTypeEnum.serialize(obj.type_info, buffer, bufferOffset);
    // Serialize message field [speedsign_category]
    bufferOffset = SpeedSignCategoryEnum.serialize(obj.speedsign_category, buffer, bufferOffset);
    // Serialize message field [is_restriction_sign]
    bufferOffset = _serializer.bool(obj.is_restriction_sign, buffer, bufferOffset);
    // Serialize message field [restriction_type]
    bufferOffset = RestrictionSignTypeEnum.serialize(obj.restriction_type, buffer, bufferOffset);
    // Serialize message field [restriction_value]
    bufferOffset = _serializer.float32(obj.restriction_value, buffer, bufferOffset);
    // Serialize message field [reseved_parking_subtype]
    bufferOffset = ReservedParkingSignSubtypeEnum.serialize(obj.reseved_parking_subtype, buffer, bufferOffset);
    // Serialize message field [is_multi_cam]
    bufferOffset = _serializer.bool(obj.is_multi_cam, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point3d.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [arrow_direction]
    bufferOffset = TrafficSignArrowDirectionEnum.serialize(obj.arrow_direction, buffer, bufferOffset);
    // Serialize message field [region]
    bufferOffset = TrafficSignRegionEnum.serialize(obj.region, buffer, bufferOffset);
    // Serialize message field [is_condition_weather]
    bufferOffset = _serializer.bool(obj.is_condition_weather, buffer, bufferOffset);
    // Serialize message field [is_condition_arrow]
    bufferOffset = _serializer.bool(obj.is_condition_arrow, buffer, bufferOffset);
    // Serialize message field [is_condition_period]
    bufferOffset = _serializer.bool(obj.is_condition_period, buffer, bufferOffset);
    // Serialize message field [is_condition_ramp]
    bufferOffset = _serializer.bool(obj.is_condition_ramp, buffer, bufferOffset);
    // Serialize message field [is_condition_exit]
    bufferOffset = _serializer.bool(obj.is_condition_exit, buffer, bufferOffset);
    // Serialize message field [is_condition_vehicle_type]
    bufferOffset = _serializer.bool(obj.is_condition_vehicle_type, buffer, bufferOffset);
    // Serialize message field [is_condition_school]
    bufferOffset = _serializer.bool(obj.is_condition_school, buffer, bufferOffset);
    // Serialize message field [is_condition_arrow_left]
    bufferOffset = _serializer.bool(obj.is_condition_arrow_left, buffer, bufferOffset);
    // Serialize message field [is_condition_arrow_right]
    bufferOffset = _serializer.bool(obj.is_condition_arrow_right, buffer, bufferOffset);
    // Serialize message field [is_condition_arrow_front]
    bufferOffset = _serializer.bool(obj.is_condition_arrow_front, buffer, bufferOffset);
    // Serialize message field [is_condition_regional]
    bufferOffset = _serializer.bool(obj.is_condition_regional, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSign
    let len;
    let data = new TrafficSign(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [points_2d]
    // Deserialize array length for message field [points_2d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_2d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_2d[i] = TrafficSignPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [shape_info]
    data.shape_info = TrafficSignShapeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box_2d]
    data.bounding_box_2d = Rect4f.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_speed_sign]
    data.is_speed_sign = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_type]
    data.speed_type = SpeedSignTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_num]
    data.speed_num = SpeedSignSpeedEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_road_mark]
    data.is_road_mark = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [road_mark_type]
    data.road_mark_type = RoadMarkTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [type_info]
    data.type_info = TrafficSignTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [speedsign_category]
    data.speedsign_category = SpeedSignCategoryEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_restriction_sign]
    data.is_restriction_sign = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [restriction_type]
    data.restriction_type = RestrictionSignTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [restriction_value]
    data.restriction_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reseved_parking_subtype]
    data.reseved_parking_subtype = ReservedParkingSignSubtypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_multi_cam]
    data.is_multi_cam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [arrow_direction]
    data.arrow_direction = TrafficSignArrowDirectionEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [region]
    data.region = TrafficSignRegionEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_condition_weather]
    data.is_condition_weather = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_arrow]
    data.is_condition_arrow = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_period]
    data.is_condition_period = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_ramp]
    data.is_condition_ramp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_exit]
    data.is_condition_exit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_vehicle_type]
    data.is_condition_vehicle_type = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_school]
    data.is_condition_school = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_arrow_left]
    data.is_condition_arrow_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_arrow_right]
    data.is_condition_arrow_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_arrow_front]
    data.is_condition_arrow_front = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_condition_regional]
    data.is_condition_regional = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.points_2d.length;
    return length + 83;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficSign';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b221ebe00b8ecd77beefa0c3305aa309';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/TrafficSignPoint[] points_2d
    uint32 track_id
    perception_interface_msgs/TrafficSignShapeEnum shape_info
    perception_interface_msgs/Rect4f bounding_box_2d
    bool is_speed_sign
    perception_interface_msgs/SpeedSignTypeEnum speed_type
    perception_interface_msgs/SpeedSignSpeedEnum speed_num
    bool is_road_mark
    perception_interface_msgs/RoadMarkTypeEnum road_mark_type
    perception_interface_msgs/TrafficSignTypeEnum type_info
    perception_interface_msgs/SpeedSignCategoryEnum speedsign_category
    bool is_restriction_sign
    perception_interface_msgs/RestrictionSignTypeEnum restriction_type
    float32 restriction_value
    perception_interface_msgs/ReservedParkingSignSubtypeEnum reseved_parking_subtype
    bool is_multi_cam
    perception_interface_msgs/Point3d position
    perception_interface_msgs/TrafficSignArrowDirectionEnum arrow_direction
    perception_interface_msgs/TrafficSignRegionEnum region
    bool is_condition_weather
    bool is_condition_arrow
    bool is_condition_period
    bool is_condition_ramp
    bool is_condition_exit
    bool is_condition_vehicle_type
    bool is_condition_school
    bool is_condition_arrow_left
    bool is_condition_arrow_right
    bool is_condition_arrow_front
    bool is_condition_regional
    
    ================================================================================
    MSG: perception_interface_msgs/CameraSourceEnum
    uint8 CAMERA_SOURCE_FRONT_FAR = 0
    uint8 CAMERA_SOURCE_FRONT_MID = 1
    uint8 CAMERA_SOURCE_FRONT_WIDE = 2
    uint8 CAMERA_SOURCE_LEFT_FRONT = 3
    uint8 CAMERA_SOURCE_LEFT_REAR = 4
    uint8 CAMERA_SOURCE_REAR_MID = 5
    uint8 CAMERA_SOURCE_REAR_MID_UP = 6
    uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
    uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
    uint8 CAMERA_SOURCE_RIGHT_REAR = 9
    uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
    uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
    uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
    uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
    uint8 CAMERA_SOURCE_FISHEYE = 14
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
    uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
    uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
    uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
    uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
    uint8 CAMERA_SOURCE_BEV = 25
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/CameraModelEnum
    uint8 CAMERA_MODEL_UNKNOWN = 0
    uint8 CAMERA_MODEL_RAW = 1
    uint8 CAMERA_MODEL_CYLINDER = 2
    uint8 CAMERA_MODEL_DEDISTORT = 3
    uint8 CAMERA_MODEL_PSTITCH = 4
    uint8 CAMERA_MODEL_RESERVED_A = 5
    uint8 CAMERA_MODEL_RESERVED_B = 6
    uint8 CAMERA_MODEL_RESERVED_C = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignPoint
    perception_interface_msgs/Point2f position
    float32 visibility
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignShapeEnum
    uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1
    uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2
    uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3
    uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4
    uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5
    uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6
    uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7
    uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Rect4f
    float32 left
    float32 top
    float32 right
    float32 bottom
    
    ================================================================================
    MSG: perception_interface_msgs/SpeedSignTypeEnum
    uint8 SPEED_SIGN_TYPE_UNKNOWN = 0
    uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1
    uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2
    uint8 SPEED_SIGN_TYPE_DESPEED = 3
    uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/SpeedSignSpeedEnum
    uint8 SPEED_SIGN_SPEED_UNKNOWN = 0
    uint8 SPEED_SIGN_SPEED_5 = 1
    uint8 SPEED_SIGN_SPEED_10 = 2
    uint8 SPEED_SIGN_SPEED_15 = 3
    uint8 SPEED_SIGN_SPEED_20 = 4
    uint8 SPEED_SIGN_SPEED_25 = 5
    uint8 SPEED_SIGN_SPEED_30 = 6
    uint8 SPEED_SIGN_SPEED_35 = 7
    uint8 SPEED_SIGN_SPEED_40 = 8
    uint8 SPEED_SIGN_SPEED_50 = 9
    uint8 SPEED_SIGN_SPEED_60 = 10
    uint8 SPEED_SIGN_SPEED_70 = 11
    uint8 SPEED_SIGN_SPEED_80 = 12
    uint8 SPEED_SIGN_SPEED_90 = 13
    uint8 SPEED_SIGN_SPEED_100 = 14
    uint8 SPEED_SIGN_SPEED_110 = 15
    uint8 SPEED_SIGN_SPEED_120 = 16
    uint8 SPEED_SIGN_SPEED_130 = 17
    uint8 SPEED_SIGN_SPEED_140 = 18
    uint8 SPEED_SIGN_SPEED_45 = 19
    uint8 SPEED_SIGN_SPEED_55 = 20
    uint8 SPEED_SIGN_SPEED_65 = 21
    uint8 SPEED_SIGN_SPEED_75 = 22
    uint8 SPEED_SIGN_SPEED_85 = 23
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/RoadMarkTypeEnum
    uint8 ROAD_MARK_TYPE_UNKNOWN = 0
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4
    uint8 ROAD_MARK_TYPE_TURN_LEFT = 5
    uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6
    uint8 ROAD_MARK_TYPE_TURN_BACK = 7
    uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8
    uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9
    uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10
    uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignTypeEnum
    uint8 TRAFFIC_SIGN_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_TYPE_OTHER = 1
    uint8 TRAFFIC_SIGN_TYPE_STOP = 2
    uint8 TRAFFIC_SIGN_TYPE_GIVE_WAY = 3
    uint8 TRAFFIC_SIGN_TYPE_NO_OVERTAKING = 4
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING = 5
    uint8 TRAFFIC_SIGN_TYPE_NO_ENTRANCE = 6
    uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE = 7
    uint8 TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS = 8
    uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE = 9
    uint8 TRAFFIC_SIGN_TYPE_RAMP = 10
    uint8 TRAFFIC_SIGN_TYPE_EXIT = 11
    uint8 TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING = 12
    uint8 TRAFFIC_SIGN_TYPE_TIME = 13
    uint8 TRAFFIC_SIGN_TYPE_NO_MINIBUSES = 14
    uint8 TRAFFIC_SIGN_TYPE_NO_LEFT_TURN = 15
    uint8 TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN = 16
    uint8 TRAFFIC_SIGN_TYPE_NO_U_TURN = 17
    uint8 TRAFFIC_SIGN_TYPE_NO_HONKING = 18
    uint8 TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD = 19
    uint8 TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING = 20
    uint8 TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING = 21
    uint8 TRAFFIC_SIGN_TYPE_ROAD_WORK = 22
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN = 23
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS = 24
    uint8 TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE = 25
    uint8 TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION = 26
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 27
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 28
    uint8 TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD = 29
    uint8 TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD = 30
    uint8 TRAFFIC_SIGN_TYPE_UPHILL_AHEAD = 31
    uint8 TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD = 32
    uint8 TRAFFIC_SIGN_TYPE_NO_PARKING = 33
    uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING = 34
    uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING = 35
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING = 36
    uint8 TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE = 37
    uint8 TRAFFIC_SIGN_TYPE_EXPWAY_EXIT = 38
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS = 39
    uint8 TRAFFIC_SIGN_TYPE_PARKING = 40
    uint8 TRAFFIC_SIGN_TYPE_RESERVED_PARKING = 41
    uint8 TRAFFIC_SIGN_TYPE_PAYMENT_PARKING = 42
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/SpeedSignCategoryEnum
    uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0
    uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1
    uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/RestrictionSignTypeEnum
    uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0
    uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1
    uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2
    uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ReservedParkingSignSubtypeEnum
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignArrowDirectionEnum
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignRegionEnum
    uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_REGION_CN = 1
    uint8 TRAFFIC_SIGN_REGION_EU = 2
    uint8 TRAFFIC_SIGN_REGION_US = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSign(null);
    if (msg.camera_source !== undefined) {
      resolved.camera_source = CameraSourceEnum.Resolve(msg.camera_source)
    }
    else {
      resolved.camera_source = new CameraSourceEnum()
    }

    if (msg.camera_model !== undefined) {
      resolved.camera_model = CameraModelEnum.Resolve(msg.camera_model)
    }
    else {
      resolved.camera_model = new CameraModelEnum()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.points_2d !== undefined) {
      resolved.points_2d = new Array(msg.points_2d.length);
      for (let i = 0; i < resolved.points_2d.length; ++i) {
        resolved.points_2d[i] = TrafficSignPoint.Resolve(msg.points_2d[i]);
      }
    }
    else {
      resolved.points_2d = []
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.shape_info !== undefined) {
      resolved.shape_info = TrafficSignShapeEnum.Resolve(msg.shape_info)
    }
    else {
      resolved.shape_info = new TrafficSignShapeEnum()
    }

    if (msg.bounding_box_2d !== undefined) {
      resolved.bounding_box_2d = Rect4f.Resolve(msg.bounding_box_2d)
    }
    else {
      resolved.bounding_box_2d = new Rect4f()
    }

    if (msg.is_speed_sign !== undefined) {
      resolved.is_speed_sign = msg.is_speed_sign;
    }
    else {
      resolved.is_speed_sign = false
    }

    if (msg.speed_type !== undefined) {
      resolved.speed_type = SpeedSignTypeEnum.Resolve(msg.speed_type)
    }
    else {
      resolved.speed_type = new SpeedSignTypeEnum()
    }

    if (msg.speed_num !== undefined) {
      resolved.speed_num = SpeedSignSpeedEnum.Resolve(msg.speed_num)
    }
    else {
      resolved.speed_num = new SpeedSignSpeedEnum()
    }

    if (msg.is_road_mark !== undefined) {
      resolved.is_road_mark = msg.is_road_mark;
    }
    else {
      resolved.is_road_mark = false
    }

    if (msg.road_mark_type !== undefined) {
      resolved.road_mark_type = RoadMarkTypeEnum.Resolve(msg.road_mark_type)
    }
    else {
      resolved.road_mark_type = new RoadMarkTypeEnum()
    }

    if (msg.type_info !== undefined) {
      resolved.type_info = TrafficSignTypeEnum.Resolve(msg.type_info)
    }
    else {
      resolved.type_info = new TrafficSignTypeEnum()
    }

    if (msg.speedsign_category !== undefined) {
      resolved.speedsign_category = SpeedSignCategoryEnum.Resolve(msg.speedsign_category)
    }
    else {
      resolved.speedsign_category = new SpeedSignCategoryEnum()
    }

    if (msg.is_restriction_sign !== undefined) {
      resolved.is_restriction_sign = msg.is_restriction_sign;
    }
    else {
      resolved.is_restriction_sign = false
    }

    if (msg.restriction_type !== undefined) {
      resolved.restriction_type = RestrictionSignTypeEnum.Resolve(msg.restriction_type)
    }
    else {
      resolved.restriction_type = new RestrictionSignTypeEnum()
    }

    if (msg.restriction_value !== undefined) {
      resolved.restriction_value = msg.restriction_value;
    }
    else {
      resolved.restriction_value = 0.0
    }

    if (msg.reseved_parking_subtype !== undefined) {
      resolved.reseved_parking_subtype = ReservedParkingSignSubtypeEnum.Resolve(msg.reseved_parking_subtype)
    }
    else {
      resolved.reseved_parking_subtype = new ReservedParkingSignSubtypeEnum()
    }

    if (msg.is_multi_cam !== undefined) {
      resolved.is_multi_cam = msg.is_multi_cam;
    }
    else {
      resolved.is_multi_cam = false
    }

    if (msg.position !== undefined) {
      resolved.position = Point3d.Resolve(msg.position)
    }
    else {
      resolved.position = new Point3d()
    }

    if (msg.arrow_direction !== undefined) {
      resolved.arrow_direction = TrafficSignArrowDirectionEnum.Resolve(msg.arrow_direction)
    }
    else {
      resolved.arrow_direction = new TrafficSignArrowDirectionEnum()
    }

    if (msg.region !== undefined) {
      resolved.region = TrafficSignRegionEnum.Resolve(msg.region)
    }
    else {
      resolved.region = new TrafficSignRegionEnum()
    }

    if (msg.is_condition_weather !== undefined) {
      resolved.is_condition_weather = msg.is_condition_weather;
    }
    else {
      resolved.is_condition_weather = false
    }

    if (msg.is_condition_arrow !== undefined) {
      resolved.is_condition_arrow = msg.is_condition_arrow;
    }
    else {
      resolved.is_condition_arrow = false
    }

    if (msg.is_condition_period !== undefined) {
      resolved.is_condition_period = msg.is_condition_period;
    }
    else {
      resolved.is_condition_period = false
    }

    if (msg.is_condition_ramp !== undefined) {
      resolved.is_condition_ramp = msg.is_condition_ramp;
    }
    else {
      resolved.is_condition_ramp = false
    }

    if (msg.is_condition_exit !== undefined) {
      resolved.is_condition_exit = msg.is_condition_exit;
    }
    else {
      resolved.is_condition_exit = false
    }

    if (msg.is_condition_vehicle_type !== undefined) {
      resolved.is_condition_vehicle_type = msg.is_condition_vehicle_type;
    }
    else {
      resolved.is_condition_vehicle_type = false
    }

    if (msg.is_condition_school !== undefined) {
      resolved.is_condition_school = msg.is_condition_school;
    }
    else {
      resolved.is_condition_school = false
    }

    if (msg.is_condition_arrow_left !== undefined) {
      resolved.is_condition_arrow_left = msg.is_condition_arrow_left;
    }
    else {
      resolved.is_condition_arrow_left = false
    }

    if (msg.is_condition_arrow_right !== undefined) {
      resolved.is_condition_arrow_right = msg.is_condition_arrow_right;
    }
    else {
      resolved.is_condition_arrow_right = false
    }

    if (msg.is_condition_arrow_front !== undefined) {
      resolved.is_condition_arrow_front = msg.is_condition_arrow_front;
    }
    else {
      resolved.is_condition_arrow_front = false
    }

    if (msg.is_condition_regional !== undefined) {
      resolved.is_condition_regional = msg.is_condition_regional;
    }
    else {
      resolved.is_condition_regional = false
    }

    return resolved;
    }
};

module.exports = TrafficSign;
