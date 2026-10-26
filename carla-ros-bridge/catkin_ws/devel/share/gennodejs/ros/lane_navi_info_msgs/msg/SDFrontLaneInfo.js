// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SDFrontLane = require('./SDFrontLane.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class SDFrontLaneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.to_road_id = null;
      this.lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('to_road_id')) {
        this.to_road_id = initObj.to_road_id
      }
      else {
        this.to_road_id = new landmark_msgs.msg.TrackId();
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
    // Serializes a message object of type SDFrontLaneInfo
    // Serialize message field [to_road_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.to_road_id, buffer, bufferOffset);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = SDFrontLane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDFrontLaneInfo
    let len;
    let data = new SDFrontLaneInfo(null);
    // Deserialize message field [to_road_id]
    data.to_road_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = SDFrontLane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lanes.forEach((val) => {
      length += SDFrontLane.getMessageSize(val);
    });
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDFrontLaneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ecc0ace40f546cb5c18d7600ba2defa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/TrackId to_road_id
    lane_navi_info_msgs/SDFrontLane[] lanes
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDFrontLane
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SDFrontLaneInfo(null);
    if (msg.to_road_id !== undefined) {
      resolved.to_road_id = landmark_msgs.msg.TrackId.Resolve(msg.to_road_id)
    }
    else {
      resolved.to_road_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = SDFrontLane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    return resolved;
    }
};

module.exports = SDFrontLaneInfo;
