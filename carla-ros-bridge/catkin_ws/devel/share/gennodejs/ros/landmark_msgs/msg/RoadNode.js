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
let RoadDirectionTypeEnum = require('./RoadDirectionTypeEnum.js');
let RoadNodeRoadClassEnum = require('./RoadNodeRoadClassEnum.js');
let RoadNodeFormwayEnum = require('./RoadNodeFormwayEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class RoadNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.track_id = null;
      this.road_direction = null;
      this.road_class = null;
      this.formway = null;
      this.center_line = null;
      this.start_lateral_line = null;
      this.end_lateral_line = null;
      this.is_virtual = null;
      this.in_intersection = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
      if (initObj.hasOwnProperty('road_direction')) {
        this.road_direction = initObj.road_direction
      }
      else {
        this.road_direction = new RoadDirectionTypeEnum();
      }
      if (initObj.hasOwnProperty('road_class')) {
        this.road_class = initObj.road_class
      }
      else {
        this.road_class = new RoadNodeRoadClassEnum();
      }
      if (initObj.hasOwnProperty('formway')) {
        this.formway = initObj.formway
      }
      else {
        this.formway = [];
      }
      if (initObj.hasOwnProperty('center_line')) {
        this.center_line = initObj.center_line
      }
      else {
        this.center_line = [];
      }
      if (initObj.hasOwnProperty('start_lateral_line')) {
        this.start_lateral_line = initObj.start_lateral_line
      }
      else {
        this.start_lateral_line = [];
      }
      if (initObj.hasOwnProperty('end_lateral_line')) {
        this.end_lateral_line = initObj.end_lateral_line
      }
      else {
        this.end_lateral_line = [];
      }
      if (initObj.hasOwnProperty('is_virtual')) {
        this.is_virtual = initObj.is_virtual
      }
      else {
        this.is_virtual = false;
      }
      if (initObj.hasOwnProperty('in_intersection')) {
        this.in_intersection = initObj.in_intersection
      }
      else {
        this.in_intersection = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [road_direction]
    bufferOffset = RoadDirectionTypeEnum.serialize(obj.road_direction, buffer, bufferOffset);
    // Serialize message field [road_class]
    bufferOffset = RoadNodeRoadClassEnum.serialize(obj.road_class, buffer, bufferOffset);
    // Serialize message field [formway]
    // Serialize the length for message field [formway]
    bufferOffset = _serializer.uint32(obj.formway.length, buffer, bufferOffset);
    obj.formway.forEach((val) => {
      bufferOffset = RoadNodeFormwayEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [center_line]
    // Serialize the length for message field [center_line]
    bufferOffset = _serializer.uint32(obj.center_line.length, buffer, bufferOffset);
    obj.center_line.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [start_lateral_line]
    // Serialize the length for message field [start_lateral_line]
    bufferOffset = _serializer.uint32(obj.start_lateral_line.length, buffer, bufferOffset);
    obj.start_lateral_line.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [end_lateral_line]
    // Serialize the length for message field [end_lateral_line]
    bufferOffset = _serializer.uint32(obj.end_lateral_line.length, buffer, bufferOffset);
    obj.end_lateral_line.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_virtual]
    bufferOffset = _serializer.bool(obj.is_virtual, buffer, bufferOffset);
    // Serialize message field [in_intersection]
    bufferOffset = _serializer.bool(obj.in_intersection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadNode
    let len;
    let data = new RoadNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_direction]
    data.road_direction = RoadDirectionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_class]
    data.road_class = RoadNodeRoadClassEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [formway]
    // Deserialize array length for message field [formway]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.formway = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.formway[i] = RoadNodeFormwayEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [center_line]
    // Deserialize array length for message field [center_line]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.center_line = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.center_line[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [start_lateral_line]
    // Deserialize array length for message field [start_lateral_line]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.start_lateral_line = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.start_lateral_line[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [end_lateral_line]
    // Deserialize array length for message field [end_lateral_line]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.end_lateral_line = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.end_lateral_line[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_virtual]
    data.is_virtual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [in_intersection]
    data.in_intersection = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.formway.length;
    length += 12 * object.center_line.length;
    length += 12 * object.start_lateral_line.length;
    length += 12 * object.end_lateral_line.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5eb1360c5105d4175c7acd48521c0bd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 DIRECTION_VALID = 2
    uint16 ROAD_CLASS_VALID = 4
    uint16 FORMWAY_VALID = 8
    uint16 CENTER_LINE_VALID = 16
    uint16 START_LATERAL_LINE_VALID = 32
    uint16 END_LATERAL_LINE_VALID = 64
    uint16 IS_VIRETUAL_VALID = 128
    uint16 IN_INTERSECTION_VALID = 256
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    landmark_msgs/RoadDirectionTypeEnum road_direction
    landmark_msgs/RoadNodeRoadClassEnum road_class
    landmark_msgs/RoadNodeFormwayEnum[] formway
    perception_interface_msgs/Point3f[] center_line
    perception_interface_msgs/Point3f[] start_lateral_line
    perception_interface_msgs/Point3f[] end_lateral_line
    bool is_virtual
    bool in_intersection
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/RoadDirectionTypeEnum
    uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0
    uint8 ROAD_DIRECTION_TYPE_NONE = 1
    uint8 ROAD_DIRECTION_TYPE_A_B = 2
    uint8 ROAD_DIRECTION_TYPE_B_A = 3
    uint8 ROAD_DIRECTION_TYPE_BOTH = 4
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
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadNode(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    if (msg.road_direction !== undefined) {
      resolved.road_direction = RoadDirectionTypeEnum.Resolve(msg.road_direction)
    }
    else {
      resolved.road_direction = new RoadDirectionTypeEnum()
    }

    if (msg.road_class !== undefined) {
      resolved.road_class = RoadNodeRoadClassEnum.Resolve(msg.road_class)
    }
    else {
      resolved.road_class = new RoadNodeRoadClassEnum()
    }

    if (msg.formway !== undefined) {
      resolved.formway = new Array(msg.formway.length);
      for (let i = 0; i < resolved.formway.length; ++i) {
        resolved.formway[i] = RoadNodeFormwayEnum.Resolve(msg.formway[i]);
      }
    }
    else {
      resolved.formway = []
    }

    if (msg.center_line !== undefined) {
      resolved.center_line = new Array(msg.center_line.length);
      for (let i = 0; i < resolved.center_line.length; ++i) {
        resolved.center_line[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.center_line[i]);
      }
    }
    else {
      resolved.center_line = []
    }

    if (msg.start_lateral_line !== undefined) {
      resolved.start_lateral_line = new Array(msg.start_lateral_line.length);
      for (let i = 0; i < resolved.start_lateral_line.length; ++i) {
        resolved.start_lateral_line[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.start_lateral_line[i]);
      }
    }
    else {
      resolved.start_lateral_line = []
    }

    if (msg.end_lateral_line !== undefined) {
      resolved.end_lateral_line = new Array(msg.end_lateral_line.length);
      for (let i = 0; i < resolved.end_lateral_line.length; ++i) {
        resolved.end_lateral_line[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.end_lateral_line[i]);
      }
    }
    else {
      resolved.end_lateral_line = []
    }

    if (msg.is_virtual !== undefined) {
      resolved.is_virtual = msg.is_virtual;
    }
    else {
      resolved.is_virtual = false
    }

    if (msg.in_intersection !== undefined) {
      resolved.in_intersection = msg.in_intersection;
    }
    else {
      resolved.in_intersection = false
    }

    return resolved;
    }
};

// Constants for message
RoadNode.Constants = {
  SCORE_VALID: 1,
  DIRECTION_VALID: 2,
  ROAD_CLASS_VALID: 4,
  FORMWAY_VALID: 8,
  CENTER_LINE_VALID: 16,
  START_LATERAL_LINE_VALID: 32,
  END_LATERAL_LINE_VALID: 64,
  IS_VIRETUAL_VALID: 128,
  IN_INTERSECTION_VALID: 256,
}

module.exports = RoadNode;
