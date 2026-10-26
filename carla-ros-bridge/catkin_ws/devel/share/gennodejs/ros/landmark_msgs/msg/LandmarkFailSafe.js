// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LandmarkFailSafe {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandmarkFailSafe
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandmarkFailSafe
    let len;
    let data = new LandmarkFailSafe(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LandmarkFailSafe';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36b67acc3bb98a9fdcccafd0bef22c3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 UNKNOWN = 0
    uint16 LANE_CENTER_VANISH = 1
    uint16 LANE_BOUNDARY_VANISH = 2
    uint16 ROAD_BOUNDARY_VANISH = 3
    uint16 ROAD_VANISH = 4
    uint16 STOP_LINE_VANISH = 5
    uint16 CROSS_WALK_VANISH = 6
    uint16 VALID_ROI_VANISH = 7
    uint16 ROAD_MARK_VANISH = 8
    uint16 AOI_VANISH = 9
    uint16 SPEED_BUMP_VANISH = 10
    uint16 TRAFFIC_SIGN_VANISH = 11
    uint16 POLE_VANISH = 12
    uint16 TRAFFIC_LIGHT_VANISH = 13
    uint16 DASH_LINE_END_VANISH = 14
    uint16 ROAD_ENTRY_LINE_VANISH = 15
    uint16 TRAFFIC_SIGN_GUIDE_ARROW_VANISH = 16
    uint16 NO_PARKING_ZONE_VANISH = 17
    uint16 NORMAL = 65
    uint16 ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY = 66
    uint16 ALL_VANISH = 65535
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandmarkFailSafe(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
LandmarkFailSafe.Constants = {
  UNKNOWN: 0,
  LANE_CENTER_VANISH: 1,
  LANE_BOUNDARY_VANISH: 2,
  ROAD_BOUNDARY_VANISH: 3,
  ROAD_VANISH: 4,
  STOP_LINE_VANISH: 5,
  CROSS_WALK_VANISH: 6,
  VALID_ROI_VANISH: 7,
  ROAD_MARK_VANISH: 8,
  AOI_VANISH: 9,
  SPEED_BUMP_VANISH: 10,
  TRAFFIC_SIGN_VANISH: 11,
  POLE_VANISH: 12,
  TRAFFIC_LIGHT_VANISH: 13,
  DASH_LINE_END_VANISH: 14,
  ROAD_ENTRY_LINE_VANISH: 15,
  TRAFFIC_SIGN_GUIDE_ARROW_VANISH: 16,
  NO_PARKING_ZONE_VANISH: 17,
  NORMAL: 65,
  ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY: 66,
  ALL_VANISH: 65535,
}

module.exports = LandmarkFailSafe;
