// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LinkedRoad = require('./LinkedRoad.js');
let IntersectionType = require('./IntersectionType.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class Intersection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.intersection_id = null;
      this.intersection_roads = null;
      this.roads_enter = null;
      this.roads_exit = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('intersection_id')) {
        this.intersection_id = initObj.intersection_id
      }
      else {
        this.intersection_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('intersection_roads')) {
        this.intersection_roads = initObj.intersection_roads
      }
      else {
        this.intersection_roads = [];
      }
      if (initObj.hasOwnProperty('roads_enter')) {
        this.roads_enter = initObj.roads_enter
      }
      else {
        this.roads_enter = [];
      }
      if (initObj.hasOwnProperty('roads_exit')) {
        this.roads_exit = initObj.roads_exit
      }
      else {
        this.roads_exit = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new IntersectionType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Intersection
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [intersection_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.intersection_id, buffer, bufferOffset);
    // Serialize message field [intersection_roads]
    // Serialize the length for message field [intersection_roads]
    bufferOffset = _serializer.uint32(obj.intersection_roads.length, buffer, bufferOffset);
    obj.intersection_roads.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [roads_enter]
    // Serialize the length for message field [roads_enter]
    bufferOffset = _serializer.uint32(obj.roads_enter.length, buffer, bufferOffset);
    obj.roads_enter.forEach((val) => {
      bufferOffset = LinkedRoad.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [roads_exit]
    // Serialize the length for message field [roads_exit]
    bufferOffset = _serializer.uint32(obj.roads_exit.length, buffer, bufferOffset);
    obj.roads_exit.forEach((val) => {
      bufferOffset = LinkedRoad.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [type]
    bufferOffset = IntersectionType.serialize(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Intersection
    let len;
    let data = new Intersection(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [intersection_id]
    data.intersection_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [intersection_roads]
    // Deserialize array length for message field [intersection_roads]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.intersection_roads = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.intersection_roads[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [roads_enter]
    // Deserialize array length for message field [roads_enter]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.roads_enter = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.roads_enter[i] = LinkedRoad.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [roads_exit]
    // Deserialize array length for message field [roads_exit]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.roads_exit = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.roads_exit[i] = LinkedRoad.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [type]
    data.type = IntersectionType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 18 * object.intersection_roads.length;
    object.roads_enter.forEach((val) => {
      length += LinkedRoad.getMessageSize(val);
    });
    object.roads_exit.forEach((val) => {
      length += LinkedRoad.getMessageSize(val);
    });
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/Intersection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31fe710ac983200e5d02acd040904f8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ROADS_VALID = 1
    uint8 ROADS_ENTER_VALID = 2
    uint8 ROADS_EXIT = 4
    uint8 available
    landmark_msgs/TrackId intersection_id
    landmark_msgs/TrackId[] intersection_roads
    lane_navi_info_msgs/LinkedRoad[] roads_enter
    lane_navi_info_msgs/LinkedRoad[] roads_exit
    lane_navi_info_msgs/IntersectionType type
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/LinkedRoad
    landmark_msgs/TrackId[] linked_roads
    landmark_msgs/TrafficLightGroup linked_traffic_light_group
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightGroup
    landmark_msgs/TrafficLight[] traffic_light_group
    
    ================================================================================
    MSG: landmark_msgs/TrafficLight
    landmark_msgs/TrafficLightType type
    landmark_msgs/Direction[] direction
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightType
    uint8 UNKNOWN = 0
    uint8 DOT_TRAFFIC_LIGHT = 1
    uint8 ARROW_TRAFFIC_LIGHT = 2
    uint8 NUMBER_TRAFFIC_LIGHT = 3
    uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4
    uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5
    uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6
    uint8 value
    
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
    MSG: lane_navi_info_msgs/IntersectionType
    uint8 UNKNOWN = 0
    uint8 HIGHWAY_SPLIT = 1
    uint8 URBAN_NORMAL = 2
    uint8 NORMAL_SPLIT_MERGE = 3
    uint8 T_JUNCTION = 4
    uint8 Y_JUNCTION = 5
    uint8 ROUNDABOUT = 6
    uint8 OVERPASS = 7
    uint8 OTHERS = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Intersection(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.intersection_id !== undefined) {
      resolved.intersection_id = landmark_msgs.msg.TrackId.Resolve(msg.intersection_id)
    }
    else {
      resolved.intersection_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.intersection_roads !== undefined) {
      resolved.intersection_roads = new Array(msg.intersection_roads.length);
      for (let i = 0; i < resolved.intersection_roads.length; ++i) {
        resolved.intersection_roads[i] = landmark_msgs.msg.TrackId.Resolve(msg.intersection_roads[i]);
      }
    }
    else {
      resolved.intersection_roads = []
    }

    if (msg.roads_enter !== undefined) {
      resolved.roads_enter = new Array(msg.roads_enter.length);
      for (let i = 0; i < resolved.roads_enter.length; ++i) {
        resolved.roads_enter[i] = LinkedRoad.Resolve(msg.roads_enter[i]);
      }
    }
    else {
      resolved.roads_enter = []
    }

    if (msg.roads_exit !== undefined) {
      resolved.roads_exit = new Array(msg.roads_exit.length);
      for (let i = 0; i < resolved.roads_exit.length; ++i) {
        resolved.roads_exit[i] = LinkedRoad.Resolve(msg.roads_exit[i]);
      }
    }
    else {
      resolved.roads_exit = []
    }

    if (msg.type !== undefined) {
      resolved.type = IntersectionType.Resolve(msg.type)
    }
    else {
      resolved.type = new IntersectionType()
    }

    return resolved;
    }
};

// Constants for message
Intersection.Constants = {
  ROADS_VALID: 1,
  ROADS_ENTER_VALID: 2,
  ROADS_EXIT: 4,
}

module.exports = Intersection;
