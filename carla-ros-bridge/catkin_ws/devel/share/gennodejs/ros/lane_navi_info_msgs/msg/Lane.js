// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneAttribute = require('./LaneAttribute.js');
let LinkedLaneWithSplitMergeInfo = require('./LinkedLaneWithSplitMergeInfo.js');
let LaneBoundaryInfo = require('./LaneBoundaryInfo.js');
let Polyline = require('./Polyline.js');
let LaneLimitInfo = require('./LaneLimitInfo.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.lane_id = null;
      this.lane_types = null;
      this.lane_attrs = null;
      this.prev_lane_ids = null;
      this.next_lane_ids = null;
      this.on_route_offset = null;
      this.width = null;
      this.lb_left = null;
      this.lb_right = null;
      this.related_road_id = null;
      this.left_no_lane_change_zones = null;
      this.right_no_lane_change_zones = null;
      this.polyline = null;
      this.lane_limit_info_list = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('lane_types')) {
        this.lane_types = initObj.lane_types
      }
      else {
        this.lane_types = [];
      }
      if (initObj.hasOwnProperty('lane_attrs')) {
        this.lane_attrs = initObj.lane_attrs
      }
      else {
        this.lane_attrs = [];
      }
      if (initObj.hasOwnProperty('prev_lane_ids')) {
        this.prev_lane_ids = initObj.prev_lane_ids
      }
      else {
        this.prev_lane_ids = [];
      }
      if (initObj.hasOwnProperty('next_lane_ids')) {
        this.next_lane_ids = initObj.next_lane_ids
      }
      else {
        this.next_lane_ids = [];
      }
      if (initObj.hasOwnProperty('on_route_offset')) {
        this.on_route_offset = initObj.on_route_offset
      }
      else {
        this.on_route_offset = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('lb_left')) {
        this.lb_left = initObj.lb_left
      }
      else {
        this.lb_left = [];
      }
      if (initObj.hasOwnProperty('lb_right')) {
        this.lb_right = initObj.lb_right
      }
      else {
        this.lb_right = [];
      }
      if (initObj.hasOwnProperty('related_road_id')) {
        this.related_road_id = initObj.related_road_id
      }
      else {
        this.related_road_id = [];
      }
      if (initObj.hasOwnProperty('left_no_lane_change_zones')) {
        this.left_no_lane_change_zones = initObj.left_no_lane_change_zones
      }
      else {
        this.left_no_lane_change_zones = [];
      }
      if (initObj.hasOwnProperty('right_no_lane_change_zones')) {
        this.right_no_lane_change_zones = initObj.right_no_lane_change_zones
      }
      else {
        this.right_no_lane_change_zones = [];
      }
      if (initObj.hasOwnProperty('polyline')) {
        this.polyline = initObj.polyline
      }
      else {
        this.polyline = new Polyline();
      }
      if (initObj.hasOwnProperty('lane_limit_info_list')) {
        this.lane_limit_info_list = initObj.lane_limit_info_list
      }
      else {
        this.lane_limit_info_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [lane_types]
    // Serialize the length for message field [lane_types]
    bufferOffset = _serializer.uint32(obj.lane_types.length, buffer, bufferOffset);
    obj.lane_types.forEach((val) => {
      bufferOffset = landmark_msgs.msg.LaneCenterNodeLaneTypeEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lane_attrs]
    // Serialize the length for message field [lane_attrs]
    bufferOffset = _serializer.uint32(obj.lane_attrs.length, buffer, bufferOffset);
    obj.lane_attrs.forEach((val) => {
      bufferOffset = LaneAttribute.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [prev_lane_ids]
    // Serialize the length for message field [prev_lane_ids]
    bufferOffset = _serializer.uint32(obj.prev_lane_ids.length, buffer, bufferOffset);
    obj.prev_lane_ids.forEach((val) => {
      bufferOffset = LinkedLaneWithSplitMergeInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [next_lane_ids]
    // Serialize the length for message field [next_lane_ids]
    bufferOffset = _serializer.uint32(obj.next_lane_ids.length, buffer, bufferOffset);
    obj.next_lane_ids.forEach((val) => {
      bufferOffset = LinkedLaneWithSplitMergeInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [on_route_offset]
    bufferOffset = _serializer.float32(obj.on_route_offset, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [lb_left]
    // Serialize the length for message field [lb_left]
    bufferOffset = _serializer.uint32(obj.lb_left.length, buffer, bufferOffset);
    obj.lb_left.forEach((val) => {
      bufferOffset = LaneBoundaryInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lb_right]
    // Serialize the length for message field [lb_right]
    bufferOffset = _serializer.uint32(obj.lb_right.length, buffer, bufferOffset);
    obj.lb_right.forEach((val) => {
      bufferOffset = LaneBoundaryInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [related_road_id]
    // Serialize the length for message field [related_road_id]
    bufferOffset = _serializer.uint32(obj.related_road_id.length, buffer, bufferOffset);
    obj.related_road_id.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_no_lane_change_zones]
    // Serialize the length for message field [left_no_lane_change_zones]
    bufferOffset = _serializer.uint32(obj.left_no_lane_change_zones.length, buffer, bufferOffset);
    obj.left_no_lane_change_zones.forEach((val) => {
      bufferOffset = landmark_msgs.msg.NoLaneChangeZone.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_no_lane_change_zones]
    // Serialize the length for message field [right_no_lane_change_zones]
    bufferOffset = _serializer.uint32(obj.right_no_lane_change_zones.length, buffer, bufferOffset);
    obj.right_no_lane_change_zones.forEach((val) => {
      bufferOffset = landmark_msgs.msg.NoLaneChangeZone.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [polyline]
    bufferOffset = Polyline.serialize(obj.polyline, buffer, bufferOffset);
    // Serialize message field [lane_limit_info_list]
    // Serialize the length for message field [lane_limit_info_list]
    bufferOffset = _serializer.uint32(obj.lane_limit_info_list.length, buffer, bufferOffset);
    obj.lane_limit_info_list.forEach((val) => {
      bufferOffset = LaneLimitInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_types]
    // Deserialize array length for message field [lane_types]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_types = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_types[i] = landmark_msgs.msg.LaneCenterNodeLaneTypeEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lane_attrs]
    // Deserialize array length for message field [lane_attrs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_attrs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_attrs[i] = LaneAttribute.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [prev_lane_ids]
    // Deserialize array length for message field [prev_lane_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.prev_lane_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.prev_lane_ids[i] = LinkedLaneWithSplitMergeInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [next_lane_ids]
    // Deserialize array length for message field [next_lane_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.next_lane_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.next_lane_ids[i] = LinkedLaneWithSplitMergeInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [on_route_offset]
    data.on_route_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lb_left]
    // Deserialize array length for message field [lb_left]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lb_left = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lb_left[i] = LaneBoundaryInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lb_right]
    // Deserialize array length for message field [lb_right]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lb_right = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lb_right[i] = LaneBoundaryInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [related_road_id]
    // Deserialize array length for message field [related_road_id]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.related_road_id = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.related_road_id[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_no_lane_change_zones]
    // Deserialize array length for message field [left_no_lane_change_zones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_no_lane_change_zones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_no_lane_change_zones[i] = landmark_msgs.msg.NoLaneChangeZone.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_no_lane_change_zones]
    // Deserialize array length for message field [right_no_lane_change_zones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_no_lane_change_zones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_no_lane_change_zones[i] = landmark_msgs.msg.NoLaneChangeZone.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [polyline]
    data.polyline = Polyline.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_limit_info_list]
    // Deserialize array length for message field [lane_limit_info_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_limit_info_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_limit_info_list[i] = LaneLimitInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lane_types.length;
    length += 10 * object.lane_attrs.length;
    length += 19 * object.prev_lane_ids.length;
    length += 19 * object.next_lane_ids.length;
    object.lb_left.forEach((val) => {
      length += LaneBoundaryInfo.getMessageSize(val);
    });
    object.lb_right.forEach((val) => {
      length += LaneBoundaryInfo.getMessageSize(val);
    });
    length += 18 * object.related_road_id.length;
    length += 9 * object.left_no_lane_change_zones.length;
    length += 9 * object.right_no_lane_change_zones.length;
    length += Polyline.getMessageSize(object.polyline);
    object.lane_limit_info_list.forEach((val) => {
      length += LaneLimitInfo.getMessageSize(val);
    });
    return length + 67;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd05a29a7ac14a18b56d5fb12295f2ee7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_TOPO_VALID = 1
    uint8 ON_ROUTE_OFFSET_VALID = 2
    uint8 LANE_TYPE_VALID = 4
    uint8 LANE_ATTRIBUTE_VALID = 8
    uint8 LANE_LEFT_BOUNDARY_VALID = 16
    uint8 LANE_RIGHT_BOUNDARY_VALID = 32
    uint8 LANE_WIDTH_VALID = 64
    uint8 available
    landmark_msgs/TrackId lane_id
    landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
    lane_navi_info_msgs/LaneAttribute[] lane_attrs
    lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] prev_lane_ids
    lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] next_lane_ids
    float32 on_route_offset
    float32 width
    lane_navi_info_msgs/LaneBoundaryInfo[] lb_left
    lane_navi_info_msgs/LaneBoundaryInfo[] lb_right
    landmark_msgs/TrackId[] related_road_id
    landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones
    landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones
    lane_navi_info_msgs/Polyline polyline
    lane_navi_info_msgs/LaneLimitInfo[] lane_limit_info_list
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum
    uint8 LANE_TYPE_UNKNOWN = 0
    uint8 LANE_TYPE_NORMAL = 1
    uint8 LANE_TYPE_EMERGENCY = 5
    uint8 LANE_TYPE_BUS = 6
    uint8 LANE_TYPE_PASSING = 7
    uint8 LANE_TYPE_HOV = 8
    uint8 LANE_TYPE_ACCELERATE = 9
    uint8 LANE_TYPE_UTURN = 10
    uint8 LANE_TYPE_DECELERATE = 11
    uint8 LANE_TYPE_SHOULDER = 12
    uint8 LANE_TYPE_INTERSECTION = 14
    uint8 LANE_TYPE_NON_MOTOR = 15
    uint8 LANE_TYPE_MIXED_MOTOR = 16
    uint8 LANE_TYPE_SIDE_WALK = 17
    uint8 LANE_TYPE_MOTORCYCLE = 18
    uint8 LANE_TYPE_TOLL_ETC = 19
    uint8 LANE_TYPE_TOLL = 20
    uint8 LANE_TYPE_CHECKPOINT = 21
    uint8 LANE_TYPE_RAMP = 22
    uint8 LANE_TYPE_BARRIER = 23
    uint8 LANE_TYPE_CHANNELIZATION = 24
    uint8 LANE_TYPE_EMERGENCE_STOP = 25
    uint8 LANE_TYPE_HAZARDOUS_GOODS = 26
    uint8 LANE_TYPE_STEEP_GRADE = 27
    uint8 LANE_TYPE_DIREC_VARIABLE = 28
    uint8 LANE_TYPE_CUSTOMS_SUP = 29
    uint8 LANE_TYPE_EMERGENCE_RAMP = 30
    uint8 LANE_TYPE_PARKING = 31
    uint8 LANE_TYPE_TIDAL = 32
    uint8 LANE_TYPE_TEMPORARY = 33
    uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34
    uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35
    uint8 LANE_TYPE_LEFT_ACC = 36
    uint8 LANE_TYPE_RIGHT_ACC = 37
    uint8 LANE_TYPE_LEFT_DEC = 38
    uint8 LANE_TYPE_RIGHT_DEC = 39
    uint8 LANE_TYPE_SERVICE_RAMP = 40
    uint8 LANE_TYPE_CURB = 41
    uint8 LANE_TYPE_RAILWAY = 42
    uint8 LANE_TYPE_BUS_STOP = 43
    uint8 LANE_TYPE_ROUNDABOUT = 44
    uint8 LANE_TYPE_INVALID = 45
    uint8 LANE_TYPE_WIDE = 46
    uint8 LANE_TYPE_VIRTUAL = 47
    uint8 LANE_TYPE_OTHERS = 63
    uint8 LANE_TYPE_ACC_DEC = 70
    uint8 LANE_TYPE_WAITING_AREA = 71
    uint8 LANE_TYPE_TOLL_MANUAL = 72
    uint8 LANE_TYPE_INCOMPLETE = 73
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/LaneAttribute
    uint8 LANE_DIRECTION_VALID = 1
    uint8 START_OFFSET_VALID = 2
    uint8 END_OFFSET_VALID = 4
    uint8 available
    landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum
    uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
    uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
    uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
    uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
    uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
    uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
    uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
    uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
    uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo
    landmark_msgs/TrackId lane_id
    lane_navi_info_msgs/SplitMergeInfo split_merge_info
    
    ================================================================================
    MSG: lane_navi_info_msgs/SplitMergeInfo
    uint8 NONE = 0
    uint8 SPLIT = 1
    uint8 MERGE = 2
    uint8 CONTINUE = 3
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/LaneBoundaryInfo
    landmark_msgs/LaneBoundaryTypeEnum type
    float32 start_offset
    float32 end_offset
    lane_navi_info_msgs/Polyline polyline
    
    ================================================================================
    MSG: landmark_msgs/LaneBoundaryTypeEnum
    uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_TYPE_DASHED = 1
    uint8 LANE_BOUNDARY_TYPE_SOLID = 2
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
    uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
    uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
    uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
    uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
    uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
    uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
    uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
    uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
    uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
    uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
    uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
    uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
    uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/Polyline
    lane_navi_info_msgs/Point[] points
    
    ================================================================================
    MSG: lane_navi_info_msgs/Point
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: landmark_msgs/NoLaneChangeZone
    uint8 UNKNOWN = 1
    uint8 SOLID_LINE = 2
    uint8 BUS_LANE = 3
    uint8 OTHERS = 99
    uint8 type
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: lane_navi_info_msgs/LaneLimitInfo
    lane_navi_info_msgs/DayOfYear[] day_of_year_list
    lane_navi_info_msgs/DaysOfWeek[] day_of_week_list
    lane_navi_info_msgs/TimeRangeOfDay[] time_range_list
    lane_navi_info_msgs/Holiday[] holiday_list
    lane_navi_info_msgs/VehicleType[] vehicle_type_list
    
    ================================================================================
    MSG: lane_navi_info_msgs/DayOfYear
    uint16 year
    uint8 month
    uint8 day
    
    ================================================================================
    MSG: lane_navi_info_msgs/DaysOfWeek
    lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/DaysOfWeekType
    uint8 DAYSOFWEEKTYPE_INVALID = 0
    uint8 DAYSOFWEEKTYPE_SUNDAY = 1
    uint8 DAYSOFWEEKTYPE_MONDAY = 2
    uint8 DAYSOFWEEKTYPE_TUESDAY = 3
    uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4
    uint8 DAYSOFWEEKTYPE_THURSDAY = 5
    uint8 DAYSOFWEEKTYPE_FRIDAY = 6
    uint8 DAYSOFWEEKTYPE_SATURDAY = 7
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeRangeOfDay
    lane_navi_info_msgs/TimeOfDay start_time
    lane_navi_info_msgs/TimeOfDay end_time
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeOfDay
    uint8 hours
    uint8 minutes
    
    ================================================================================
    MSG: lane_navi_info_msgs/Holiday
    lane_navi_info_msgs/HolidayType holiday_type
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/HolidayType
    uint8 HOLIDAYTYPE_NONE = 0
    uint8 HOLIDAYTYPE_VALID = 1
    uint8 HOLIDAYTYPE_EXCEPT = 2
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/VehicleType
    uint8 RESTRICTION_VEHICLE_ALL = 0
    uint8 RESTRICTION_VEHICLE_MOTOR = 1
    uint8 RESTRICTION_VEHICLE_CAR = 2
    uint8 RESTRICTION_VEHICLE_BUS = 3
    uint8 RESTRICTION_VEHICLE_HOV = 4
    uint8 RESTRICTION_VEHICLE_UNKNOWN = 255
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lane(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = landmark_msgs.msg.TrackId.Resolve(msg.lane_id)
    }
    else {
      resolved.lane_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.lane_types !== undefined) {
      resolved.lane_types = new Array(msg.lane_types.length);
      for (let i = 0; i < resolved.lane_types.length; ++i) {
        resolved.lane_types[i] = landmark_msgs.msg.LaneCenterNodeLaneTypeEnum.Resolve(msg.lane_types[i]);
      }
    }
    else {
      resolved.lane_types = []
    }

    if (msg.lane_attrs !== undefined) {
      resolved.lane_attrs = new Array(msg.lane_attrs.length);
      for (let i = 0; i < resolved.lane_attrs.length; ++i) {
        resolved.lane_attrs[i] = LaneAttribute.Resolve(msg.lane_attrs[i]);
      }
    }
    else {
      resolved.lane_attrs = []
    }

    if (msg.prev_lane_ids !== undefined) {
      resolved.prev_lane_ids = new Array(msg.prev_lane_ids.length);
      for (let i = 0; i < resolved.prev_lane_ids.length; ++i) {
        resolved.prev_lane_ids[i] = LinkedLaneWithSplitMergeInfo.Resolve(msg.prev_lane_ids[i]);
      }
    }
    else {
      resolved.prev_lane_ids = []
    }

    if (msg.next_lane_ids !== undefined) {
      resolved.next_lane_ids = new Array(msg.next_lane_ids.length);
      for (let i = 0; i < resolved.next_lane_ids.length; ++i) {
        resolved.next_lane_ids[i] = LinkedLaneWithSplitMergeInfo.Resolve(msg.next_lane_ids[i]);
      }
    }
    else {
      resolved.next_lane_ids = []
    }

    if (msg.on_route_offset !== undefined) {
      resolved.on_route_offset = msg.on_route_offset;
    }
    else {
      resolved.on_route_offset = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.lb_left !== undefined) {
      resolved.lb_left = new Array(msg.lb_left.length);
      for (let i = 0; i < resolved.lb_left.length; ++i) {
        resolved.lb_left[i] = LaneBoundaryInfo.Resolve(msg.lb_left[i]);
      }
    }
    else {
      resolved.lb_left = []
    }

    if (msg.lb_right !== undefined) {
      resolved.lb_right = new Array(msg.lb_right.length);
      for (let i = 0; i < resolved.lb_right.length; ++i) {
        resolved.lb_right[i] = LaneBoundaryInfo.Resolve(msg.lb_right[i]);
      }
    }
    else {
      resolved.lb_right = []
    }

    if (msg.related_road_id !== undefined) {
      resolved.related_road_id = new Array(msg.related_road_id.length);
      for (let i = 0; i < resolved.related_road_id.length; ++i) {
        resolved.related_road_id[i] = landmark_msgs.msg.TrackId.Resolve(msg.related_road_id[i]);
      }
    }
    else {
      resolved.related_road_id = []
    }

    if (msg.left_no_lane_change_zones !== undefined) {
      resolved.left_no_lane_change_zones = new Array(msg.left_no_lane_change_zones.length);
      for (let i = 0; i < resolved.left_no_lane_change_zones.length; ++i) {
        resolved.left_no_lane_change_zones[i] = landmark_msgs.msg.NoLaneChangeZone.Resolve(msg.left_no_lane_change_zones[i]);
      }
    }
    else {
      resolved.left_no_lane_change_zones = []
    }

    if (msg.right_no_lane_change_zones !== undefined) {
      resolved.right_no_lane_change_zones = new Array(msg.right_no_lane_change_zones.length);
      for (let i = 0; i < resolved.right_no_lane_change_zones.length; ++i) {
        resolved.right_no_lane_change_zones[i] = landmark_msgs.msg.NoLaneChangeZone.Resolve(msg.right_no_lane_change_zones[i]);
      }
    }
    else {
      resolved.right_no_lane_change_zones = []
    }

    if (msg.polyline !== undefined) {
      resolved.polyline = Polyline.Resolve(msg.polyline)
    }
    else {
      resolved.polyline = new Polyline()
    }

    if (msg.lane_limit_info_list !== undefined) {
      resolved.lane_limit_info_list = new Array(msg.lane_limit_info_list.length);
      for (let i = 0; i < resolved.lane_limit_info_list.length; ++i) {
        resolved.lane_limit_info_list[i] = LaneLimitInfo.Resolve(msg.lane_limit_info_list[i]);
      }
    }
    else {
      resolved.lane_limit_info_list = []
    }

    return resolved;
    }
};

// Constants for message
Lane.Constants = {
  LANE_TOPO_VALID: 1,
  ON_ROUTE_OFFSET_VALID: 2,
  LANE_TYPE_VALID: 4,
  LANE_ATTRIBUTE_VALID: 8,
  LANE_LEFT_BOUNDARY_VALID: 16,
  LANE_RIGHT_BOUNDARY_VALID: 32,
  LANE_WIDTH_VALID: 64,
}

module.exports = Lane;
