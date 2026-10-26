// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoadAttribute = require('./RoadAttribute.js');
let Polyline = require('./Polyline.js');
let RoadBoundaryInfo = require('./RoadBoundaryInfo.js');
let MultiDigitizedRoad = require('./MultiDigitizedRoad.js');
let LaneGroupsOnRoad = require('./LaneGroupsOnRoad.js');
let SDRoadInfo = require('./SDRoadInfo.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class Road {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.road_id = null;
      this.length = null;
      this.attribute = null;
      this.polyline = null;
      this.rb_left = null;
      this.rb_right = null;
      this.road_class = null;
      this.formways = null;
      this.road_direction = null;
      this.left_multi_digitized_road_ids = null;
      this.right_multi_digitized_road_ids = null;
      this.lane_groups = null;
      this.linked_intersection_id = null;
      this.prev_roads = null;
      this.next_roads = null;
      this.lane_num_of_driving_dir = null;
      this.lane_num_of_opposite_dir = null;
      this.sd_road_info = null;
      this.is_on_route = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('road_id')) {
        this.road_id = initObj.road_id
      }
      else {
        this.road_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('attribute')) {
        this.attribute = initObj.attribute
      }
      else {
        this.attribute = new RoadAttribute();
      }
      if (initObj.hasOwnProperty('polyline')) {
        this.polyline = initObj.polyline
      }
      else {
        this.polyline = new Polyline();
      }
      if (initObj.hasOwnProperty('rb_left')) {
        this.rb_left = initObj.rb_left
      }
      else {
        this.rb_left = [];
      }
      if (initObj.hasOwnProperty('rb_right')) {
        this.rb_right = initObj.rb_right
      }
      else {
        this.rb_right = [];
      }
      if (initObj.hasOwnProperty('road_class')) {
        this.road_class = initObj.road_class
      }
      else {
        this.road_class = new landmark_msgs.msg.RoadNodeRoadClassEnum();
      }
      if (initObj.hasOwnProperty('formways')) {
        this.formways = initObj.formways
      }
      else {
        this.formways = [];
      }
      if (initObj.hasOwnProperty('road_direction')) {
        this.road_direction = initObj.road_direction
      }
      else {
        this.road_direction = new landmark_msgs.msg.RoadDirectionTypeEnum();
      }
      if (initObj.hasOwnProperty('left_multi_digitized_road_ids')) {
        this.left_multi_digitized_road_ids = initObj.left_multi_digitized_road_ids
      }
      else {
        this.left_multi_digitized_road_ids = [];
      }
      if (initObj.hasOwnProperty('right_multi_digitized_road_ids')) {
        this.right_multi_digitized_road_ids = initObj.right_multi_digitized_road_ids
      }
      else {
        this.right_multi_digitized_road_ids = [];
      }
      if (initObj.hasOwnProperty('lane_groups')) {
        this.lane_groups = initObj.lane_groups
      }
      else {
        this.lane_groups = [];
      }
      if (initObj.hasOwnProperty('linked_intersection_id')) {
        this.linked_intersection_id = initObj.linked_intersection_id
      }
      else {
        this.linked_intersection_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('prev_roads')) {
        this.prev_roads = initObj.prev_roads
      }
      else {
        this.prev_roads = [];
      }
      if (initObj.hasOwnProperty('next_roads')) {
        this.next_roads = initObj.next_roads
      }
      else {
        this.next_roads = [];
      }
      if (initObj.hasOwnProperty('lane_num_of_driving_dir')) {
        this.lane_num_of_driving_dir = initObj.lane_num_of_driving_dir
      }
      else {
        this.lane_num_of_driving_dir = 0;
      }
      if (initObj.hasOwnProperty('lane_num_of_opposite_dir')) {
        this.lane_num_of_opposite_dir = initObj.lane_num_of_opposite_dir
      }
      else {
        this.lane_num_of_opposite_dir = 0;
      }
      if (initObj.hasOwnProperty('sd_road_info')) {
        this.sd_road_info = initObj.sd_road_info
      }
      else {
        this.sd_road_info = new SDRoadInfo();
      }
      if (initObj.hasOwnProperty('is_on_route')) {
        this.is_on_route = initObj.is_on_route
      }
      else {
        this.is_on_route = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Road
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    // Serialize message field [road_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.road_id, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [attribute]
    bufferOffset = RoadAttribute.serialize(obj.attribute, buffer, bufferOffset);
    // Serialize message field [polyline]
    bufferOffset = Polyline.serialize(obj.polyline, buffer, bufferOffset);
    // Serialize message field [rb_left]
    // Serialize the length for message field [rb_left]
    bufferOffset = _serializer.uint32(obj.rb_left.length, buffer, bufferOffset);
    obj.rb_left.forEach((val) => {
      bufferOffset = RoadBoundaryInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [rb_right]
    // Serialize the length for message field [rb_right]
    bufferOffset = _serializer.uint32(obj.rb_right.length, buffer, bufferOffset);
    obj.rb_right.forEach((val) => {
      bufferOffset = RoadBoundaryInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_class]
    bufferOffset = landmark_msgs.msg.RoadNodeRoadClassEnum.serialize(obj.road_class, buffer, bufferOffset);
    // Serialize message field [formways]
    // Serialize the length for message field [formways]
    bufferOffset = _serializer.uint32(obj.formways.length, buffer, bufferOffset);
    obj.formways.forEach((val) => {
      bufferOffset = landmark_msgs.msg.RoadNodeFormwayEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_direction]
    bufferOffset = landmark_msgs.msg.RoadDirectionTypeEnum.serialize(obj.road_direction, buffer, bufferOffset);
    // Serialize message field [left_multi_digitized_road_ids]
    // Serialize the length for message field [left_multi_digitized_road_ids]
    bufferOffset = _serializer.uint32(obj.left_multi_digitized_road_ids.length, buffer, bufferOffset);
    obj.left_multi_digitized_road_ids.forEach((val) => {
      bufferOffset = MultiDigitizedRoad.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_multi_digitized_road_ids]
    // Serialize the length for message field [right_multi_digitized_road_ids]
    bufferOffset = _serializer.uint32(obj.right_multi_digitized_road_ids.length, buffer, bufferOffset);
    obj.right_multi_digitized_road_ids.forEach((val) => {
      bufferOffset = MultiDigitizedRoad.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lane_groups]
    // Serialize the length for message field [lane_groups]
    bufferOffset = _serializer.uint32(obj.lane_groups.length, buffer, bufferOffset);
    obj.lane_groups.forEach((val) => {
      bufferOffset = LaneGroupsOnRoad.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [linked_intersection_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.linked_intersection_id, buffer, bufferOffset);
    // Serialize message field [prev_roads]
    // Serialize the length for message field [prev_roads]
    bufferOffset = _serializer.uint32(obj.prev_roads.length, buffer, bufferOffset);
    obj.prev_roads.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [next_roads]
    // Serialize the length for message field [next_roads]
    bufferOffset = _serializer.uint32(obj.next_roads.length, buffer, bufferOffset);
    obj.next_roads.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lane_num_of_driving_dir]
    bufferOffset = _serializer.uint8(obj.lane_num_of_driving_dir, buffer, bufferOffset);
    // Serialize message field [lane_num_of_opposite_dir]
    bufferOffset = _serializer.uint8(obj.lane_num_of_opposite_dir, buffer, bufferOffset);
    // Serialize message field [sd_road_info]
    bufferOffset = SDRoadInfo.serialize(obj.sd_road_info, buffer, bufferOffset);
    // Serialize message field [is_on_route]
    bufferOffset = _serializer.bool(obj.is_on_route, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Road
    let len;
    let data = new Road(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [road_id]
    data.road_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [attribute]
    data.attribute = RoadAttribute.deserialize(buffer, bufferOffset);
    // Deserialize message field [polyline]
    data.polyline = Polyline.deserialize(buffer, bufferOffset);
    // Deserialize message field [rb_left]
    // Deserialize array length for message field [rb_left]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rb_left = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rb_left[i] = RoadBoundaryInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [rb_right]
    // Deserialize array length for message field [rb_right]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rb_right = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rb_right[i] = RoadBoundaryInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_class]
    data.road_class = landmark_msgs.msg.RoadNodeRoadClassEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [formways]
    // Deserialize array length for message field [formways]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.formways = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.formways[i] = landmark_msgs.msg.RoadNodeFormwayEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_direction]
    data.road_direction = landmark_msgs.msg.RoadDirectionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_multi_digitized_road_ids]
    // Deserialize array length for message field [left_multi_digitized_road_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_multi_digitized_road_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_multi_digitized_road_ids[i] = MultiDigitizedRoad.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_multi_digitized_road_ids]
    // Deserialize array length for message field [right_multi_digitized_road_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_multi_digitized_road_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_multi_digitized_road_ids[i] = MultiDigitizedRoad.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lane_groups]
    // Deserialize array length for message field [lane_groups]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_groups = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_groups[i] = LaneGroupsOnRoad.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [linked_intersection_id]
    data.linked_intersection_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [prev_roads]
    // Deserialize array length for message field [prev_roads]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.prev_roads = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.prev_roads[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [next_roads]
    // Deserialize array length for message field [next_roads]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.next_roads = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.next_roads[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lane_num_of_driving_dir]
    data.lane_num_of_driving_dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_num_of_opposite_dir]
    data.lane_num_of_opposite_dir = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sd_road_info]
    data.sd_road_info = SDRoadInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_on_route]
    data.is_on_route = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RoadAttribute.getMessageSize(object.attribute);
    length += Polyline.getMessageSize(object.polyline);
    object.rb_left.forEach((val) => {
      length += RoadBoundaryInfo.getMessageSize(val);
    });
    object.rb_right.forEach((val) => {
      length += RoadBoundaryInfo.getMessageSize(val);
    });
    length += object.formways.length;
    length += 26 * object.left_multi_digitized_road_ids.length;
    length += 26 * object.right_multi_digitized_road_ids.length;
    length += 26 * object.lane_groups.length;
    length += 18 * object.prev_roads.length;
    length += 18 * object.next_roads.length;
    length += SDRoadInfo.getMessageSize(object.sd_road_info);
    return length + 81;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/Road';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61ccbc70e285b1b12e534d69cc8daded';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 ATTRIBUTE_VALID = 1
    uint32 ROAD_CLASS_VALID = 2
    uint32 FORMWAY_VALID = 4
    uint32 ROAD_DIRECTION_VALID = 8
    uint32 MULTI_DIGITIZED_ROADS_VALID = 16
    uint32 LANE_GROUP_VALID = 32
    uint32 LINKED_INTERSECTION_VALID = 64
    uint32 TOPO_VALID = 128
    uint32 LANE_NUM_OF_DRIVING_DIR_VALID = 256
    uint32 LANE_NUM_OF_OPPOSITE_DIR_VALID = 512
    uint32 SD_ROAD_INFO_VALID = 1024
    uint32 available
    landmark_msgs/TrackId road_id
    float32 length
    lane_navi_info_msgs/RoadAttribute attribute
    lane_navi_info_msgs/Polyline polyline
    lane_navi_info_msgs/RoadBoundaryInfo[] rb_left
    lane_navi_info_msgs/RoadBoundaryInfo[] rb_right
    landmark_msgs/RoadNodeRoadClassEnum road_class
    landmark_msgs/RoadNodeFormwayEnum[] formways
    landmark_msgs/RoadDirectionTypeEnum road_direction
    lane_navi_info_msgs/MultiDigitizedRoad[] left_multi_digitized_road_ids
    lane_navi_info_msgs/MultiDigitizedRoad[] right_multi_digitized_road_ids
    lane_navi_info_msgs/LaneGroupsOnRoad[] lane_groups
    landmark_msgs/TrackId linked_intersection_id
    landmark_msgs/TrackId[] prev_roads
    landmark_msgs/TrackId[] next_roads
    uint8 lane_num_of_driving_dir
    uint8 lane_num_of_opposite_dir
    lane_navi_info_msgs/SDRoadInfo sd_road_info
    bool is_on_route
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/RoadAttribute
    lane_navi_info_msgs/SpeedLimit[] speed_limits
    lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits
    lane_navi_info_msgs/Curvature[] curvatures
    lane_navi_info_msgs/Slope[] slopes
    landmark_msgs/SpecialSituation[] special_situation
    
    ================================================================================
    MSG: lane_navi_info_msgs/SpeedLimit
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: lane_navi_info_msgs/InterpolationType
    uint8 UNKNOWN = 0
    uint8 STEP = 1
    uint8 LINEAR = 2
    uint8 GENERAL = 3
    uint8 OHTERS = 255
    uint8 type
    float32[] addition_values
    float32[] params
    
    ================================================================================
    MSG: lane_navi_info_msgs/ExperienceSpeedLimit
    float32 value
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: lane_navi_info_msgs/Curvature
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: lane_navi_info_msgs/Slope
    float32 value
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/InterpolationType interpolation_type
    
    ================================================================================
    MSG: landmark_msgs/SpecialSituation
    uint32 UNKNOWN = 0
    uint32 TUNNEL_BEGIN = 1
    uint32 TUNNEL_END = 2
    uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
    uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
    uint32 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/Polyline
    lane_navi_info_msgs/Point[] points
    
    ================================================================================
    MSG: lane_navi_info_msgs/Point
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: lane_navi_info_msgs/RoadBoundaryInfo
    landmark_msgs/RoadBoundaryTypeEnum type
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/Polyline polyline
    
    ================================================================================
    MSG: landmark_msgs/RoadBoundaryTypeEnum
    uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 ROAD_BOUNDARY_TYPE_NONE = 1
    uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
    uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
    uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
    uint8 ROAD_BOUNDARY_TYPE_CONE = 5
    uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
    uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
    uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
    uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
    uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
    uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
    uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
    uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
    uint8 ROAD_BOUNDARY_TYPE_CURB = 15
    uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
    uint8 ROAD_BOUNDARY_TYPE_WALL = 17
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
    uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadNodeRoadClassEnum
    uint8 ROAD_CLASS_UNKNOWN = 0
    uint8 HIGHWAY = 1
    uint8 URBAN = 2
    uint8 CITY_EXPRESSWAY = 3
    uint8 STATE_ROAD = 4
    uint8 PROVINCIAL_ROAD = 5
    uint8 MAIN_ROAD = 6
    uint8 SECONDARY_ROAD = 7
    uint8 NORMAL_ROAD = 8
    uint8 COUNTY_ROAD = 9
    uint8 COUNTRY_ROAD = 10
    uint8 INTERNAL_ROAD = 11
    uint8 OTHERS = 99
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadNodeFormwayEnum
    uint8 FORMWAY_UNKNOWN = 0
    uint8 SINGLE_CARRIAGE_WAY = 1
    uint8 IC = 2
    uint8 JCT = 3
    uint8 SERVICE = 4
    uint8 TUNNEL = 5
    uint8 TOLL = 6
    uint8 SLIP_ROAD = 7
    uint8 SIDEROAD = 8
    uint8 ROUNDABOUT = 9
    uint8 RAMP_ENTRY = 10
    uint8 RAMP_EXIT = 11
    uint8 SAPA = 12
    uint8 PARKING_RAMP = 13
    uint8 PARKING_ROAD = 14
    uint8 U_TURN = 15
    uint8 TURN_RIGHT = 16
    uint8 TURN_LEFT = 17
    uint8 TURN_LEFT_RIGHT = 18
    uint8 CROSS_LINK = 19
    uint8 SERVICE_AND_SLIP_ROAD = 20
    uint8 SERVICE_AND_JCT = 21
    uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22
    uint8 MULTIPLE_CARRIAGE_WAY = 23
    uint8 CHECK_POINT = 24
    uint8 WALK_ROAD = 25
    uint8 PARALLED_ROAD = 26
    uint8 OTHERS = 99
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/RoadDirectionTypeEnum
    uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0
    uint8 ROAD_DIRECTION_TYPE_NONE = 1
    uint8 ROAD_DIRECTION_TYPE_A_B = 2
    uint8 ROAD_DIRECTION_TYPE_B_A = 3
    uint8 ROAD_DIRECTION_TYPE_BOTH = 4
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/MultiDigitizedRoad
    landmark_msgs/TrackId muliti_digitized_road_id
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: lane_navi_info_msgs/LaneGroupsOnRoad
    landmark_msgs/TrackId lane_group_id
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDRoadInfo
    uint16 f_angle
    uint16 t_angle
    bool has_toll
    bool has_traffic_light
    uint16 history_average_speed
    lane_navi_info_msgs/SpeedLimit[] max_speed_limit_list
    lane_navi_info_msgs/SpeedLimit[] derived_speed_limit_list
    lane_navi_info_msgs/SDFacility[] facility_list
    lane_navi_info_msgs/SDCameraInfo[] camera_list
    lane_navi_info_msgs/SDArrowMarking[] arrow_marking_list
    lane_navi_info_msgs/SDPointCurvature[] point_curvature_list
    lane_navi_info_msgs/SDLongSolidLine[] long_solid_line_list
    lane_navi_info_msgs/SDBusLaneInfo[] bus_lane_info_list
    lane_navi_info_msgs/SDBackLaneInfo[] back_lane_list
    lane_navi_info_msgs/SDFrontLaneInfo[] front_lane_list
    lane_navi_info_msgs/SDCheckPoint[] check_point_list
    lane_navi_info_msgs/SDOwnership ownership
    uint16 region_code
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDFacility
    float32 offset
    lane_navi_info_msgs/SDFacilityType facility_type
    lane_navi_info_msgs/SDSpeedLimitType speed_limit_type
    uint16 speed_limit_value
    lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
    lane_navi_info_msgs/WeatherRule weather_limit
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDFacilityType
    uint8 FACILITY_LEFT_INTER_FLOW = 1
    uint8 FACILITY_RIGHT_INTER_FLOW = 2
    uint8 FACILITY_REVERSE_TURN = 4
    uint8 FACILITY_LINKING_TURN = 5
    uint8 FACILITY_ACCIDENT_AREA = 6
    uint8 FACILITY_RAILWAY_CROSS = 8
    uint8 FACILITY_SLIPPERY = 9
    uint8 FACILITY_MAX_SPEED_LIMIT = 10
    uint8 FACILITY_MIN_SPEED_LIMIT = 11
    uint8 FACILITY_VILLAGE = 12
    uint8 FACILITY_LEFT_NARROW = 13
    uint8 FACILITY_RIGHT_NARROW = 14
    uint8 FACILITY_DOUBLE_NARROW = 15
    uint8 FACILITY_CROSS_WIND_AREA = 16
    uint8 FACILITY_SCHOOL = 17
    uint8 FACILITY_NOPASSING = 18
    uint8 FACILITY_NARROW_BRIDGE = 19
    uint8 FACILITY_AROUND_THE_LINE = 20
    uint8 FACILITY_LEFT_BYPASS = 21
    uint8 FACILITY_RIGHT_BYPASS = 22
    uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23
    uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24
    uint8 FACILITY_ONSTEEPLOPE = 25
    uint8 FACILITY_UNDERSTEEPLOPE = 26
    uint8 FACILITY_OVER_WATER_ROAD = 27
    uint8 FACILITY_UNEVEN_ROAD = 28
    uint8 FACILITY_STROLL = 29
    uint8 FACILITY_ATTENTION_TO_DANGER = 30
    uint8 FACILITY_CROSSWALK = 31
    uint8 FACILITY_RIVER_BANK_LEFT = 33
    uint8 FACILITY_RIVER_BANK_RIGHT = 34
    uint8 FACILITY_CHILDREN = 35
    uint8 FACILITY_CYCLISTS = 36
    uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37
    uint8 FACILITY_GIVE_WAY = 38
    uint8 FACILITY_STOP = 39
    uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40
    uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41
    uint8 FACILITY_HUMPBACK_BRIDGE = 42
    uint8 FACILITY_END_OF_SPEED_LIMIT = 43
    uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44
    uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50
    uint8 FACILITY_RAILWAY_WITH_GATES = 51
    uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52
    uint8 FACILITY_VARIABLE_SPEED = 53
    uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54
    uint8 FACILITY_PEDESTRIANS = 56
    uint8 FACILITY_UNKNOWN = 255
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDSpeedLimitType
    uint8 SPEED_LIMIT_TYPE_DEFAULT = 0
    uint8 SPEED_LIMIT_TYPE_RAMP = 2
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeRegulationRange
    lane_navi_info_msgs/TimeRegulation start_time
    lane_navi_info_msgs/TimeRegulation end_time
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeRegulation
    lane_navi_info_msgs/TimeOfDay day
    uint8 week
    lane_navi_info_msgs/DayOfYear year
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeOfDay
    uint8 hours
    uint8 minutes
    
    ================================================================================
    MSG: lane_navi_info_msgs/DayOfYear
    uint16 year
    uint8 month
    uint8 day
    
    ================================================================================
    MSG: lane_navi_info_msgs/WeatherRule
    lane_navi_info_msgs/WeatherRuleType[] weather_rule_type
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/WeatherRuleType
    uint8 WEATHERTYPE_INVALID = 0
    uint8 WEATHERTYPE_SUNSHINE = 1
    uint8 WEATHERTYPE_RAINSNOW = 2
    uint8 WEATHERTYPE_ICE = 3
    uint8 WEATHERTYPE_FOG = 4
    uint8 WEATHERTYPE_WIND = 5
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDCameraInfo
    float32 offset
    lane_navi_info_msgs/ECameraType ecamera_type
    uint32 speed_limit_value
    
    ================================================================================
    MSG: lane_navi_info_msgs/ECameraType
    uint8 ECAMERA_SPEED = 0
    uint8 ECAMERA_MONITOR = 1
    uint8 ECAMERA_TRAFIC_LIGHT = 2
    uint8 ECAMERA_RULE = 3
    uint8 ECAMERA_BUS = 4
    uint8 ECAMERA_EMERGENCY = 5
    uint8 ECAMERA_NON_MOTORIZED = 6
    uint8 ECAMERA_RANGE = 7
    uint8 ECAMERA_INTER_SPEED_START = 8
    uint8 ECAMERA_INTER_SPEED_END = 9
    uint8 ECAMERA_UNKNOWN = 255
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDArrowMarking
    uint8 ARROWMARKING_STRAIGHT = 0
    uint8 ARROWMARKING_LEFT = 1
    uint8 ARROWMARKING_STRAIGHT_LEFT = 2
    uint8 ARROWMARKING_RIGHT = 3
    uint8 ARROWMARKING_STRAIGHT_RIGHT = 4
    uint8 ARROWMARKING_LEFT_UTURN = 5
    uint8 ARROWMARKING_LEFT_RIGHT = 6
    uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7
    uint8 ARROWMARKING_RIGHT_UTURN = 8
    uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9
    uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10
    uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11
    uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12
    uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16
    uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17
    uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18
    uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19
    uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20
    uint8 ARROWMARKING_UNKNOWN = 255
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDPointCurvature
    float32 offset
    float32 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDLongSolidLine
    landmark_msgs/TrackId[] effect_road_ids
    uint32[] valid_lanes
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDBusLaneInfo
    uint32 offset
    uint8[] on_lanes
    lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
    lane_navi_info_msgs/HolidayType holiday
    lane_navi_info_msgs/WorkHolidayType work_holiday
    
    ================================================================================
    MSG: lane_navi_info_msgs/HolidayType
    uint8 HOLIDAYTYPE_NONE = 0
    uint8 HOLIDAYTYPE_VALID = 1
    uint8 HOLIDAYTYPE_EXCEPT = 2
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/WorkHolidayType
    uint8 WORKHOLIDAYTYPE_NONE = 0
    uint8 WORKHOLIDAYTYPE_VALID = 1
    uint8 WORKHOLIDAYTYPE_INVALID = 2
    uint8 WORKHOLIDAYTYPE_WEEKEND = 3
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDBackLaneInfo
    int32 number
    lane_navi_info_msgs/SDLaneDirectType lane_type
    lane_navi_info_msgs/SDLaneArrow[] arrows
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDLaneDirectType
    uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0
    uint8 SD_LANE_DIRECT_TYPE_BUS = 1
    uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2
    uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3
    uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDLaneArrow
    lane_navi_info_msgs/SDArrowType[] arrow_types
    lane_navi_info_msgs/TimeRegulationRange[] time
    lane_navi_info_msgs/HolidayType holiday
    lane_navi_info_msgs/WorkHolidayType work_holiday
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDArrowType
    uint8 SD_ARROW_TYPE_LEFTUTURN = 0
    uint8 SD_ARROW_TYPE_TURNLEFT = 1
    uint8 SD_ARROW_TYPE_STRAIGHT = 2
    uint8 SD_ARROW_TYPE_TURNRIGHT = 3
    uint8 SD_ARROW_TYPE_RIGHTUTURN = 4
    uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5
    uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6
    uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7
    uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8
    uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9
    uint8 SD_ARROW_TYPE_EMPTY_LANE = 10
    uint8 SD_ARROW_TYPE_INVALID = 255
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDFrontLaneInfo
    landmark_msgs/TrackId to_road_id
    lane_navi_info_msgs/SDFrontLane[] lanes
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDFrontLane
    int32 number
    lane_navi_info_msgs/SDLaneDirectType lane_type
    lane_navi_info_msgs/SDLaneArrow[] arrows
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDCheckPoint
    float32 offset
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDOwnership
    uint8 OWNERSHIP_PUBLIC = 0
    uint8 OWNERSHIP_INNER = 1
    uint8 OWNERSHIP_PRIVATE = 2
    uint8 OWNERSHIP_UNKNOWN = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Road(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.road_id !== undefined) {
      resolved.road_id = landmark_msgs.msg.TrackId.Resolve(msg.road_id)
    }
    else {
      resolved.road_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.attribute !== undefined) {
      resolved.attribute = RoadAttribute.Resolve(msg.attribute)
    }
    else {
      resolved.attribute = new RoadAttribute()
    }

    if (msg.polyline !== undefined) {
      resolved.polyline = Polyline.Resolve(msg.polyline)
    }
    else {
      resolved.polyline = new Polyline()
    }

    if (msg.rb_left !== undefined) {
      resolved.rb_left = new Array(msg.rb_left.length);
      for (let i = 0; i < resolved.rb_left.length; ++i) {
        resolved.rb_left[i] = RoadBoundaryInfo.Resolve(msg.rb_left[i]);
      }
    }
    else {
      resolved.rb_left = []
    }

    if (msg.rb_right !== undefined) {
      resolved.rb_right = new Array(msg.rb_right.length);
      for (let i = 0; i < resolved.rb_right.length; ++i) {
        resolved.rb_right[i] = RoadBoundaryInfo.Resolve(msg.rb_right[i]);
      }
    }
    else {
      resolved.rb_right = []
    }

    if (msg.road_class !== undefined) {
      resolved.road_class = landmark_msgs.msg.RoadNodeRoadClassEnum.Resolve(msg.road_class)
    }
    else {
      resolved.road_class = new landmark_msgs.msg.RoadNodeRoadClassEnum()
    }

    if (msg.formways !== undefined) {
      resolved.formways = new Array(msg.formways.length);
      for (let i = 0; i < resolved.formways.length; ++i) {
        resolved.formways[i] = landmark_msgs.msg.RoadNodeFormwayEnum.Resolve(msg.formways[i]);
      }
    }
    else {
      resolved.formways = []
    }

    if (msg.road_direction !== undefined) {
      resolved.road_direction = landmark_msgs.msg.RoadDirectionTypeEnum.Resolve(msg.road_direction)
    }
    else {
      resolved.road_direction = new landmark_msgs.msg.RoadDirectionTypeEnum()
    }

    if (msg.left_multi_digitized_road_ids !== undefined) {
      resolved.left_multi_digitized_road_ids = new Array(msg.left_multi_digitized_road_ids.length);
      for (let i = 0; i < resolved.left_multi_digitized_road_ids.length; ++i) {
        resolved.left_multi_digitized_road_ids[i] = MultiDigitizedRoad.Resolve(msg.left_multi_digitized_road_ids[i]);
      }
    }
    else {
      resolved.left_multi_digitized_road_ids = []
    }

    if (msg.right_multi_digitized_road_ids !== undefined) {
      resolved.right_multi_digitized_road_ids = new Array(msg.right_multi_digitized_road_ids.length);
      for (let i = 0; i < resolved.right_multi_digitized_road_ids.length; ++i) {
        resolved.right_multi_digitized_road_ids[i] = MultiDigitizedRoad.Resolve(msg.right_multi_digitized_road_ids[i]);
      }
    }
    else {
      resolved.right_multi_digitized_road_ids = []
    }

    if (msg.lane_groups !== undefined) {
      resolved.lane_groups = new Array(msg.lane_groups.length);
      for (let i = 0; i < resolved.lane_groups.length; ++i) {
        resolved.lane_groups[i] = LaneGroupsOnRoad.Resolve(msg.lane_groups[i]);
      }
    }
    else {
      resolved.lane_groups = []
    }

    if (msg.linked_intersection_id !== undefined) {
      resolved.linked_intersection_id = landmark_msgs.msg.TrackId.Resolve(msg.linked_intersection_id)
    }
    else {
      resolved.linked_intersection_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.prev_roads !== undefined) {
      resolved.prev_roads = new Array(msg.prev_roads.length);
      for (let i = 0; i < resolved.prev_roads.length; ++i) {
        resolved.prev_roads[i] = landmark_msgs.msg.TrackId.Resolve(msg.prev_roads[i]);
      }
    }
    else {
      resolved.prev_roads = []
    }

    if (msg.next_roads !== undefined) {
      resolved.next_roads = new Array(msg.next_roads.length);
      for (let i = 0; i < resolved.next_roads.length; ++i) {
        resolved.next_roads[i] = landmark_msgs.msg.TrackId.Resolve(msg.next_roads[i]);
      }
    }
    else {
      resolved.next_roads = []
    }

    if (msg.lane_num_of_driving_dir !== undefined) {
      resolved.lane_num_of_driving_dir = msg.lane_num_of_driving_dir;
    }
    else {
      resolved.lane_num_of_driving_dir = 0
    }

    if (msg.lane_num_of_opposite_dir !== undefined) {
      resolved.lane_num_of_opposite_dir = msg.lane_num_of_opposite_dir;
    }
    else {
      resolved.lane_num_of_opposite_dir = 0
    }

    if (msg.sd_road_info !== undefined) {
      resolved.sd_road_info = SDRoadInfo.Resolve(msg.sd_road_info)
    }
    else {
      resolved.sd_road_info = new SDRoadInfo()
    }

    if (msg.is_on_route !== undefined) {
      resolved.is_on_route = msg.is_on_route;
    }
    else {
      resolved.is_on_route = false
    }

    return resolved;
    }
};

// Constants for message
Road.Constants = {
  ATTRIBUTE_VALID: 1,
  ROAD_CLASS_VALID: 2,
  FORMWAY_VALID: 4,
  ROAD_DIRECTION_VALID: 8,
  MULTI_DIGITIZED_ROADS_VALID: 16,
  LANE_GROUP_VALID: 32,
  LINKED_INTERSECTION_VALID: 64,
  TOPO_VALID: 128,
  LANE_NUM_OF_DRIVING_DIR_VALID: 256,
  LANE_NUM_OF_OPPOSITE_DIR_VALID: 512,
  SD_ROAD_INFO_VALID: 1024,
}

module.exports = Road;
