// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lane = require('./Lane.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class LaneGroup {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.lane_group_id = null;
      this.length = null;
      this.lane_number = null;
      this.lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lane_group_id')) {
        this.lane_group_id = initObj.lane_group_id
      }
      else {
        this.lane_group_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('lane_number')) {
        this.lane_number = initObj.lane_number
      }
      else {
        this.lane_number = 0;
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneGroup
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lane_group_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.lane_group_id, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [lane_number]
    bufferOffset = _serializer.uint8(obj.lane_number, buffer, bufferOffset);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneGroup
    let len;
    let data = new LaneGroup(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_group_id]
    data.lane_group_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_number]
    data.lane_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = Lane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lanes.forEach((val) => {
      length += Lane.getMessageSize(val);
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/LaneGroup';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a603daf4352012a2b3e37e2db2e19e37';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_VALID = 1
    uint8 available
    landmark_msgs/TrackId lane_group_id
    float32 length
    uint8 lane_number
    lane_navi_info_msgs/Lane[] lanes
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/Lane
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
    const resolved = new LaneGroup(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lane_group_id !== undefined) {
      resolved.lane_group_id = landmark_msgs.msg.TrackId.Resolve(msg.lane_group_id)
    }
    else {
      resolved.lane_group_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.lane_number !== undefined) {
      resolved.lane_number = msg.lane_number;
    }
    else {
      resolved.lane_number = 0
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = Lane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    return resolved;
    }
};

// Constants for message
LaneGroup.Constants = {
  LANE_VALID: 1,
}

module.exports = LaneGroup;
