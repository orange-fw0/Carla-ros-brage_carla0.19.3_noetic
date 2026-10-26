// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SpeedLimit = require('./SpeedLimit.js');
let SDFacility = require('./SDFacility.js');
let SDCameraInfo = require('./SDCameraInfo.js');
let SDArrowMarking = require('./SDArrowMarking.js');
let SDPointCurvature = require('./SDPointCurvature.js');
let SDLongSolidLine = require('./SDLongSolidLine.js');
let SDBusLaneInfo = require('./SDBusLaneInfo.js');
let SDBackLaneInfo = require('./SDBackLaneInfo.js');
let SDFrontLaneInfo = require('./SDFrontLaneInfo.js');
let SDCheckPoint = require('./SDCheckPoint.js');
let SDOwnership = require('./SDOwnership.js');

//-----------------------------------------------------------

class SDRoadInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.f_angle = null;
      this.t_angle = null;
      this.has_toll = null;
      this.has_traffic_light = null;
      this.history_average_speed = null;
      this.max_speed_limit_list = null;
      this.derived_speed_limit_list = null;
      this.facility_list = null;
      this.camera_list = null;
      this.arrow_marking_list = null;
      this.point_curvature_list = null;
      this.long_solid_line_list = null;
      this.bus_lane_info_list = null;
      this.back_lane_list = null;
      this.front_lane_list = null;
      this.check_point_list = null;
      this.ownership = null;
      this.region_code = null;
    }
    else {
      if (initObj.hasOwnProperty('f_angle')) {
        this.f_angle = initObj.f_angle
      }
      else {
        this.f_angle = 0;
      }
      if (initObj.hasOwnProperty('t_angle')) {
        this.t_angle = initObj.t_angle
      }
      else {
        this.t_angle = 0;
      }
      if (initObj.hasOwnProperty('has_toll')) {
        this.has_toll = initObj.has_toll
      }
      else {
        this.has_toll = false;
      }
      if (initObj.hasOwnProperty('has_traffic_light')) {
        this.has_traffic_light = initObj.has_traffic_light
      }
      else {
        this.has_traffic_light = false;
      }
      if (initObj.hasOwnProperty('history_average_speed')) {
        this.history_average_speed = initObj.history_average_speed
      }
      else {
        this.history_average_speed = 0;
      }
      if (initObj.hasOwnProperty('max_speed_limit_list')) {
        this.max_speed_limit_list = initObj.max_speed_limit_list
      }
      else {
        this.max_speed_limit_list = [];
      }
      if (initObj.hasOwnProperty('derived_speed_limit_list')) {
        this.derived_speed_limit_list = initObj.derived_speed_limit_list
      }
      else {
        this.derived_speed_limit_list = [];
      }
      if (initObj.hasOwnProperty('facility_list')) {
        this.facility_list = initObj.facility_list
      }
      else {
        this.facility_list = [];
      }
      if (initObj.hasOwnProperty('camera_list')) {
        this.camera_list = initObj.camera_list
      }
      else {
        this.camera_list = [];
      }
      if (initObj.hasOwnProperty('arrow_marking_list')) {
        this.arrow_marking_list = initObj.arrow_marking_list
      }
      else {
        this.arrow_marking_list = [];
      }
      if (initObj.hasOwnProperty('point_curvature_list')) {
        this.point_curvature_list = initObj.point_curvature_list
      }
      else {
        this.point_curvature_list = [];
      }
      if (initObj.hasOwnProperty('long_solid_line_list')) {
        this.long_solid_line_list = initObj.long_solid_line_list
      }
      else {
        this.long_solid_line_list = [];
      }
      if (initObj.hasOwnProperty('bus_lane_info_list')) {
        this.bus_lane_info_list = initObj.bus_lane_info_list
      }
      else {
        this.bus_lane_info_list = [];
      }
      if (initObj.hasOwnProperty('back_lane_list')) {
        this.back_lane_list = initObj.back_lane_list
      }
      else {
        this.back_lane_list = [];
      }
      if (initObj.hasOwnProperty('front_lane_list')) {
        this.front_lane_list = initObj.front_lane_list
      }
      else {
        this.front_lane_list = [];
      }
      if (initObj.hasOwnProperty('check_point_list')) {
        this.check_point_list = initObj.check_point_list
      }
      else {
        this.check_point_list = [];
      }
      if (initObj.hasOwnProperty('ownership')) {
        this.ownership = initObj.ownership
      }
      else {
        this.ownership = new SDOwnership();
      }
      if (initObj.hasOwnProperty('region_code')) {
        this.region_code = initObj.region_code
      }
      else {
        this.region_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDRoadInfo
    // Serialize message field [f_angle]
    bufferOffset = _serializer.uint16(obj.f_angle, buffer, bufferOffset);
    // Serialize message field [t_angle]
    bufferOffset = _serializer.uint16(obj.t_angle, buffer, bufferOffset);
    // Serialize message field [has_toll]
    bufferOffset = _serializer.bool(obj.has_toll, buffer, bufferOffset);
    // Serialize message field [has_traffic_light]
    bufferOffset = _serializer.bool(obj.has_traffic_light, buffer, bufferOffset);
    // Serialize message field [history_average_speed]
    bufferOffset = _serializer.uint16(obj.history_average_speed, buffer, bufferOffset);
    // Serialize message field [max_speed_limit_list]
    // Serialize the length for message field [max_speed_limit_list]
    bufferOffset = _serializer.uint32(obj.max_speed_limit_list.length, buffer, bufferOffset);
    obj.max_speed_limit_list.forEach((val) => {
      bufferOffset = SpeedLimit.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [derived_speed_limit_list]
    // Serialize the length for message field [derived_speed_limit_list]
    bufferOffset = _serializer.uint32(obj.derived_speed_limit_list.length, buffer, bufferOffset);
    obj.derived_speed_limit_list.forEach((val) => {
      bufferOffset = SpeedLimit.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [facility_list]
    // Serialize the length for message field [facility_list]
    bufferOffset = _serializer.uint32(obj.facility_list.length, buffer, bufferOffset);
    obj.facility_list.forEach((val) => {
      bufferOffset = SDFacility.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [camera_list]
    // Serialize the length for message field [camera_list]
    bufferOffset = _serializer.uint32(obj.camera_list.length, buffer, bufferOffset);
    obj.camera_list.forEach((val) => {
      bufferOffset = SDCameraInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [arrow_marking_list]
    // Serialize the length for message field [arrow_marking_list]
    bufferOffset = _serializer.uint32(obj.arrow_marking_list.length, buffer, bufferOffset);
    obj.arrow_marking_list.forEach((val) => {
      bufferOffset = SDArrowMarking.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [point_curvature_list]
    // Serialize the length for message field [point_curvature_list]
    bufferOffset = _serializer.uint32(obj.point_curvature_list.length, buffer, bufferOffset);
    obj.point_curvature_list.forEach((val) => {
      bufferOffset = SDPointCurvature.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [long_solid_line_list]
    // Serialize the length for message field [long_solid_line_list]
    bufferOffset = _serializer.uint32(obj.long_solid_line_list.length, buffer, bufferOffset);
    obj.long_solid_line_list.forEach((val) => {
      bufferOffset = SDLongSolidLine.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bus_lane_info_list]
    // Serialize the length for message field [bus_lane_info_list]
    bufferOffset = _serializer.uint32(obj.bus_lane_info_list.length, buffer, bufferOffset);
    obj.bus_lane_info_list.forEach((val) => {
      bufferOffset = SDBusLaneInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [back_lane_list]
    // Serialize the length for message field [back_lane_list]
    bufferOffset = _serializer.uint32(obj.back_lane_list.length, buffer, bufferOffset);
    obj.back_lane_list.forEach((val) => {
      bufferOffset = SDBackLaneInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [front_lane_list]
    // Serialize the length for message field [front_lane_list]
    bufferOffset = _serializer.uint32(obj.front_lane_list.length, buffer, bufferOffset);
    obj.front_lane_list.forEach((val) => {
      bufferOffset = SDFrontLaneInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [check_point_list]
    // Serialize the length for message field [check_point_list]
    bufferOffset = _serializer.uint32(obj.check_point_list.length, buffer, bufferOffset);
    obj.check_point_list.forEach((val) => {
      bufferOffset = SDCheckPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ownership]
    bufferOffset = SDOwnership.serialize(obj.ownership, buffer, bufferOffset);
    // Serialize message field [region_code]
    bufferOffset = _serializer.uint16(obj.region_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDRoadInfo
    let len;
    let data = new SDRoadInfo(null);
    // Deserialize message field [f_angle]
    data.f_angle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [t_angle]
    data.t_angle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [has_toll]
    data.has_toll = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [has_traffic_light]
    data.has_traffic_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [history_average_speed]
    data.history_average_speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_speed_limit_list]
    // Deserialize array length for message field [max_speed_limit_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.max_speed_limit_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.max_speed_limit_list[i] = SpeedLimit.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [derived_speed_limit_list]
    // Deserialize array length for message field [derived_speed_limit_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.derived_speed_limit_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.derived_speed_limit_list[i] = SpeedLimit.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [facility_list]
    // Deserialize array length for message field [facility_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.facility_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.facility_list[i] = SDFacility.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [camera_list]
    // Deserialize array length for message field [camera_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_list[i] = SDCameraInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [arrow_marking_list]
    // Deserialize array length for message field [arrow_marking_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.arrow_marking_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.arrow_marking_list[i] = SDArrowMarking.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [point_curvature_list]
    // Deserialize array length for message field [point_curvature_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.point_curvature_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.point_curvature_list[i] = SDPointCurvature.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [long_solid_line_list]
    // Deserialize array length for message field [long_solid_line_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.long_solid_line_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.long_solid_line_list[i] = SDLongSolidLine.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bus_lane_info_list]
    // Deserialize array length for message field [bus_lane_info_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bus_lane_info_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bus_lane_info_list[i] = SDBusLaneInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [back_lane_list]
    // Deserialize array length for message field [back_lane_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.back_lane_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.back_lane_list[i] = SDBackLaneInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [front_lane_list]
    // Deserialize array length for message field [front_lane_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.front_lane_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.front_lane_list[i] = SDFrontLaneInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [check_point_list]
    // Deserialize array length for message field [check_point_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.check_point_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.check_point_list[i] = SDCheckPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ownership]
    data.ownership = SDOwnership.deserialize(buffer, bufferOffset);
    // Deserialize message field [region_code]
    data.region_code = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.max_speed_limit_list.forEach((val) => {
      length += SpeedLimit.getMessageSize(val);
    });
    object.derived_speed_limit_list.forEach((val) => {
      length += SpeedLimit.getMessageSize(val);
    });
    object.facility_list.forEach((val) => {
      length += SDFacility.getMessageSize(val);
    });
    length += 9 * object.camera_list.length;
    length += object.arrow_marking_list.length;
    length += 8 * object.point_curvature_list.length;
    object.long_solid_line_list.forEach((val) => {
      length += SDLongSolidLine.getMessageSize(val);
    });
    object.bus_lane_info_list.forEach((val) => {
      length += SDBusLaneInfo.getMessageSize(val);
    });
    object.back_lane_list.forEach((val) => {
      length += SDBackLaneInfo.getMessageSize(val);
    });
    object.front_lane_list.forEach((val) => {
      length += SDFrontLaneInfo.getMessageSize(val);
    });
    length += 4 * object.check_point_list.length;
    return length + 55;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDRoadInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd34c104b809605835e0b8447af0af4e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
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
    const resolved = new SDRoadInfo(null);
    if (msg.f_angle !== undefined) {
      resolved.f_angle = msg.f_angle;
    }
    else {
      resolved.f_angle = 0
    }

    if (msg.t_angle !== undefined) {
      resolved.t_angle = msg.t_angle;
    }
    else {
      resolved.t_angle = 0
    }

    if (msg.has_toll !== undefined) {
      resolved.has_toll = msg.has_toll;
    }
    else {
      resolved.has_toll = false
    }

    if (msg.has_traffic_light !== undefined) {
      resolved.has_traffic_light = msg.has_traffic_light;
    }
    else {
      resolved.has_traffic_light = false
    }

    if (msg.history_average_speed !== undefined) {
      resolved.history_average_speed = msg.history_average_speed;
    }
    else {
      resolved.history_average_speed = 0
    }

    if (msg.max_speed_limit_list !== undefined) {
      resolved.max_speed_limit_list = new Array(msg.max_speed_limit_list.length);
      for (let i = 0; i < resolved.max_speed_limit_list.length; ++i) {
        resolved.max_speed_limit_list[i] = SpeedLimit.Resolve(msg.max_speed_limit_list[i]);
      }
    }
    else {
      resolved.max_speed_limit_list = []
    }

    if (msg.derived_speed_limit_list !== undefined) {
      resolved.derived_speed_limit_list = new Array(msg.derived_speed_limit_list.length);
      for (let i = 0; i < resolved.derived_speed_limit_list.length; ++i) {
        resolved.derived_speed_limit_list[i] = SpeedLimit.Resolve(msg.derived_speed_limit_list[i]);
      }
    }
    else {
      resolved.derived_speed_limit_list = []
    }

    if (msg.facility_list !== undefined) {
      resolved.facility_list = new Array(msg.facility_list.length);
      for (let i = 0; i < resolved.facility_list.length; ++i) {
        resolved.facility_list[i] = SDFacility.Resolve(msg.facility_list[i]);
      }
    }
    else {
      resolved.facility_list = []
    }

    if (msg.camera_list !== undefined) {
      resolved.camera_list = new Array(msg.camera_list.length);
      for (let i = 0; i < resolved.camera_list.length; ++i) {
        resolved.camera_list[i] = SDCameraInfo.Resolve(msg.camera_list[i]);
      }
    }
    else {
      resolved.camera_list = []
    }

    if (msg.arrow_marking_list !== undefined) {
      resolved.arrow_marking_list = new Array(msg.arrow_marking_list.length);
      for (let i = 0; i < resolved.arrow_marking_list.length; ++i) {
        resolved.arrow_marking_list[i] = SDArrowMarking.Resolve(msg.arrow_marking_list[i]);
      }
    }
    else {
      resolved.arrow_marking_list = []
    }

    if (msg.point_curvature_list !== undefined) {
      resolved.point_curvature_list = new Array(msg.point_curvature_list.length);
      for (let i = 0; i < resolved.point_curvature_list.length; ++i) {
        resolved.point_curvature_list[i] = SDPointCurvature.Resolve(msg.point_curvature_list[i]);
      }
    }
    else {
      resolved.point_curvature_list = []
    }

    if (msg.long_solid_line_list !== undefined) {
      resolved.long_solid_line_list = new Array(msg.long_solid_line_list.length);
      for (let i = 0; i < resolved.long_solid_line_list.length; ++i) {
        resolved.long_solid_line_list[i] = SDLongSolidLine.Resolve(msg.long_solid_line_list[i]);
      }
    }
    else {
      resolved.long_solid_line_list = []
    }

    if (msg.bus_lane_info_list !== undefined) {
      resolved.bus_lane_info_list = new Array(msg.bus_lane_info_list.length);
      for (let i = 0; i < resolved.bus_lane_info_list.length; ++i) {
        resolved.bus_lane_info_list[i] = SDBusLaneInfo.Resolve(msg.bus_lane_info_list[i]);
      }
    }
    else {
      resolved.bus_lane_info_list = []
    }

    if (msg.back_lane_list !== undefined) {
      resolved.back_lane_list = new Array(msg.back_lane_list.length);
      for (let i = 0; i < resolved.back_lane_list.length; ++i) {
        resolved.back_lane_list[i] = SDBackLaneInfo.Resolve(msg.back_lane_list[i]);
      }
    }
    else {
      resolved.back_lane_list = []
    }

    if (msg.front_lane_list !== undefined) {
      resolved.front_lane_list = new Array(msg.front_lane_list.length);
      for (let i = 0; i < resolved.front_lane_list.length; ++i) {
        resolved.front_lane_list[i] = SDFrontLaneInfo.Resolve(msg.front_lane_list[i]);
      }
    }
    else {
      resolved.front_lane_list = []
    }

    if (msg.check_point_list !== undefined) {
      resolved.check_point_list = new Array(msg.check_point_list.length);
      for (let i = 0; i < resolved.check_point_list.length; ++i) {
        resolved.check_point_list[i] = SDCheckPoint.Resolve(msg.check_point_list[i]);
      }
    }
    else {
      resolved.check_point_list = []
    }

    if (msg.ownership !== undefined) {
      resolved.ownership = SDOwnership.Resolve(msg.ownership)
    }
    else {
      resolved.ownership = new SDOwnership()
    }

    if (msg.region_code !== undefined) {
      resolved.region_code = msg.region_code;
    }
    else {
      resolved.region_code = 0
    }

    return resolved;
    }
};

module.exports = SDRoadInfo;
