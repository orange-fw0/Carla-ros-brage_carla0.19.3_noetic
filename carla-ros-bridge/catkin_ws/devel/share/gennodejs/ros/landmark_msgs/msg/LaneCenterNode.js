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
let LaneCenterNodeLaneTypeEnum = require('./LaneCenterNodeLaneTypeEnum.js');
let LaneCenterNodeDirectionTypeEnum = require('./LaneCenterNodeDirectionTypeEnum.js');
let LaneCenterFlowTypeEnum = require('./LaneCenterFlowTypeEnum.js');
let LaneCenterNodeLaneAttribute = require('./LaneCenterNodeLaneAttribute.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class LaneCenterNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.index = null;
      this.track_id = null;
      this.coefficient_bv = null;
      this.lane_types = null;
      this.direction_types = null;
      this.flow_type = null;
      this.lane_attribute = null;
      this.line_points = null;
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
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
      if (initObj.hasOwnProperty('coefficient_bv')) {
        this.coefficient_bv = initObj.coefficient_bv
      }
      else {
        this.coefficient_bv = [];
      }
      if (initObj.hasOwnProperty('lane_types')) {
        this.lane_types = initObj.lane_types
      }
      else {
        this.lane_types = [];
      }
      if (initObj.hasOwnProperty('direction_types')) {
        this.direction_types = initObj.direction_types
      }
      else {
        this.direction_types = [];
      }
      if (initObj.hasOwnProperty('flow_type')) {
        this.flow_type = initObj.flow_type
      }
      else {
        this.flow_type = new LaneCenterFlowTypeEnum();
      }
      if (initObj.hasOwnProperty('lane_attribute')) {
        this.lane_attribute = initObj.lane_attribute
      }
      else {
        this.lane_attribute = [];
      }
      if (initObj.hasOwnProperty('line_points')) {
        this.line_points = initObj.line_points
      }
      else {
        this.line_points = [];
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
    // Serializes a message object of type LaneCenterNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [coefficient_bv]
    bufferOffset = _arraySerializer.float32(obj.coefficient_bv, buffer, bufferOffset, null);
    // Serialize message field [lane_types]
    // Serialize the length for message field [lane_types]
    bufferOffset = _serializer.uint32(obj.lane_types.length, buffer, bufferOffset);
    obj.lane_types.forEach((val) => {
      bufferOffset = LaneCenterNodeLaneTypeEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [direction_types]
    // Serialize the length for message field [direction_types]
    bufferOffset = _serializer.uint32(obj.direction_types.length, buffer, bufferOffset);
    obj.direction_types.forEach((val) => {
      bufferOffset = LaneCenterNodeDirectionTypeEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [flow_type]
    bufferOffset = LaneCenterFlowTypeEnum.serialize(obj.flow_type, buffer, bufferOffset);
    // Serialize message field [lane_attribute]
    // Serialize the length for message field [lane_attribute]
    bufferOffset = _serializer.uint32(obj.lane_attribute.length, buffer, bufferOffset);
    obj.lane_attribute.forEach((val) => {
      bufferOffset = LaneCenterNodeLaneAttribute.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [line_points]
    // Serialize the length for message field [line_points]
    bufferOffset = _serializer.uint32(obj.line_points.length, buffer, bufferOffset);
    obj.line_points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_virtual]
    bufferOffset = _serializer.bool(obj.is_virtual, buffer, bufferOffset);
    // Serialize message field [in_intersection]
    bufferOffset = _serializer.bool(obj.in_intersection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterNode
    let len;
    let data = new LaneCenterNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [coefficient_bv]
    data.coefficient_bv = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [lane_types]
    // Deserialize array length for message field [lane_types]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_types = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_types[i] = LaneCenterNodeLaneTypeEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [direction_types]
    // Deserialize array length for message field [direction_types]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.direction_types = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.direction_types[i] = LaneCenterNodeDirectionTypeEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [flow_type]
    data.flow_type = LaneCenterFlowTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_attribute]
    // Deserialize array length for message field [lane_attribute]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_attribute = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_attribute[i] = LaneCenterNodeLaneAttribute.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [line_points]
    // Deserialize array length for message field [line_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_virtual]
    data.is_virtual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [in_intersection]
    data.in_intersection = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.coefficient_bv.length;
    length += object.lane_types.length;
    length += object.direction_types.length;
    length += 21 * object.lane_attribute.length;
    length += 12 * object.line_points.length;
    return length + 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a377ef8bb24b68f12c1050df737414ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 COEFFICIENT_BV_VALID = 2
    uint16 LANE_TYPE_VALID = 4
    uint16 DIRECTION_TYPE_VALID = 8
    uint16 FLOW_TYPE_VALID = 16
    uint16 LANE_ATTRIBUTE_VALID = 32
    uint16 LINE_POINTS_VALID = 64
    uint16 IS_VIRTUAL_VALID = 128
    uint16 IN_INTERSECTION_VALID = 256
    uint16 available
    float32 score
    int32 index
    landmark_msgs/TrackId track_id
    float32[] coefficient_bv
    landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
    landmark_msgs/LaneCenterNodeDirectionTypeEnum[] direction_types
    landmark_msgs/LaneCenterFlowTypeEnum flow_type
    landmark_msgs/LaneCenterNodeLaneAttribute[] lane_attribute
    perception_interface_msgs/Point3f[] line_points
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
    MSG: landmark_msgs/LaneCenterFlowTypeEnum
    uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0
    uint8 LANE_CENTER_FLOW_TYPE_SAME = 1
    uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2
    uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterNodeLaneAttribute
    uint8 SPEED_LIMIT_VALID = 1
    uint8 CURVATURE_VALID = 2
    uint8 SLOPE_VALID = 4
    uint8 OFFSET_VALID = 8
    uint8 available
    float32 speed_limit
    float32 curvature
    float32 slope
    float32 start_offset
    float32 end_offset
    
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
    const resolved = new LaneCenterNode(null);
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

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    if (msg.coefficient_bv !== undefined) {
      resolved.coefficient_bv = msg.coefficient_bv;
    }
    else {
      resolved.coefficient_bv = []
    }

    if (msg.lane_types !== undefined) {
      resolved.lane_types = new Array(msg.lane_types.length);
      for (let i = 0; i < resolved.lane_types.length; ++i) {
        resolved.lane_types[i] = LaneCenterNodeLaneTypeEnum.Resolve(msg.lane_types[i]);
      }
    }
    else {
      resolved.lane_types = []
    }

    if (msg.direction_types !== undefined) {
      resolved.direction_types = new Array(msg.direction_types.length);
      for (let i = 0; i < resolved.direction_types.length; ++i) {
        resolved.direction_types[i] = LaneCenterNodeDirectionTypeEnum.Resolve(msg.direction_types[i]);
      }
    }
    else {
      resolved.direction_types = []
    }

    if (msg.flow_type !== undefined) {
      resolved.flow_type = LaneCenterFlowTypeEnum.Resolve(msg.flow_type)
    }
    else {
      resolved.flow_type = new LaneCenterFlowTypeEnum()
    }

    if (msg.lane_attribute !== undefined) {
      resolved.lane_attribute = new Array(msg.lane_attribute.length);
      for (let i = 0; i < resolved.lane_attribute.length; ++i) {
        resolved.lane_attribute[i] = LaneCenterNodeLaneAttribute.Resolve(msg.lane_attribute[i]);
      }
    }
    else {
      resolved.lane_attribute = []
    }

    if (msg.line_points !== undefined) {
      resolved.line_points = new Array(msg.line_points.length);
      for (let i = 0; i < resolved.line_points.length; ++i) {
        resolved.line_points[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.line_points[i]);
      }
    }
    else {
      resolved.line_points = []
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
LaneCenterNode.Constants = {
  SCORE_VALID: 1,
  COEFFICIENT_BV_VALID: 2,
  LANE_TYPE_VALID: 4,
  DIRECTION_TYPE_VALID: 8,
  FLOW_TYPE_VALID: 16,
  LANE_ATTRIBUTE_VALID: 32,
  LINE_POINTS_VALID: 64,
  IS_VIRTUAL_VALID: 128,
  IN_INTERSECTION_VALID: 256,
}

module.exports = LaneCenterNode;
