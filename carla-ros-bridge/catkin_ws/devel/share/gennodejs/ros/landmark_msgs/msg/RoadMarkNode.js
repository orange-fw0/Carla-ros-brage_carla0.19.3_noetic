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
let RoadMarkNodeTypeEnum = require('./RoadMarkNodeTypeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class RoadMarkNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.track_id = null;
      this.polygon_points = null;
      this.types = null;
      this.is_prohibited = null;
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
      if (initObj.hasOwnProperty('polygon_points')) {
        this.polygon_points = initObj.polygon_points
      }
      else {
        this.polygon_points = [];
      }
      if (initObj.hasOwnProperty('types')) {
        this.types = initObj.types
      }
      else {
        this.types = [];
      }
      if (initObj.hasOwnProperty('is_prohibited')) {
        this.is_prohibited = initObj.is_prohibited
      }
      else {
        this.is_prohibited = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadMarkNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [polygon_points]
    // Serialize the length for message field [polygon_points]
    bufferOffset = _serializer.uint32(obj.polygon_points.length, buffer, bufferOffset);
    obj.polygon_points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [types]
    // Serialize the length for message field [types]
    bufferOffset = _serializer.uint32(obj.types.length, buffer, bufferOffset);
    obj.types.forEach((val) => {
      bufferOffset = RoadMarkNodeTypeEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_prohibited]
    bufferOffset = _serializer.bool(obj.is_prohibited, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadMarkNode
    let len;
    let data = new RoadMarkNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [polygon_points]
    // Deserialize array length for message field [polygon_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [types]
    // Deserialize array length for message field [types]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.types = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.types[i] = RoadMarkNodeTypeEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_prohibited]
    data.is_prohibited = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.polygon_points.length;
    length += object.types.length;
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadMarkNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50a66bd216458c671c4885a316a564cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 POLYGON_POINTS_VALID = 1
    uint16 TYPES_VALID = 2
    uint16 IS_PROHIBITED_VALID = 4
    uint16 SCORE_VALID = 8
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f[] polygon_points
    landmark_msgs/RoadMarkNodeTypeEnum[] types
    bool is_prohibited
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: landmark_msgs/RoadMarkNodeTypeEnum
    uint8 ROAD_MARK_TYPE_UNKNOWN = 0
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9
    uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10
    uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11
    uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12
    uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13
    uint8 ROAD_MARK_TYPE_SYMBOL = 14
    uint8 ROAD_MARK_TYPE_TEXT = 15
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16
    uint8 ROAD_MARK_TYPE_PROHIBIT = 17
    uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18
    uint8 ROAD_MARK_TYPE_YIELD_LINE = 21
    uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22
    uint8 ROAD_MARK_TYPE_NON_MOTOR = 24
    uint8 ROAD_MARK_TYPE_STOP = 25
    uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26
    uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadMarkNode(null);
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

    if (msg.polygon_points !== undefined) {
      resolved.polygon_points = new Array(msg.polygon_points.length);
      for (let i = 0; i < resolved.polygon_points.length; ++i) {
        resolved.polygon_points[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.polygon_points[i]);
      }
    }
    else {
      resolved.polygon_points = []
    }

    if (msg.types !== undefined) {
      resolved.types = new Array(msg.types.length);
      for (let i = 0; i < resolved.types.length; ++i) {
        resolved.types[i] = RoadMarkNodeTypeEnum.Resolve(msg.types[i]);
      }
    }
    else {
      resolved.types = []
    }

    if (msg.is_prohibited !== undefined) {
      resolved.is_prohibited = msg.is_prohibited;
    }
    else {
      resolved.is_prohibited = false
    }

    return resolved;
    }
};

// Constants for message
RoadMarkNode.Constants = {
  POLYGON_POINTS_VALID: 1,
  TYPES_VALID: 2,
  IS_PROHIBITED_VALID: 4,
  SCORE_VALID: 8,
}

module.exports = RoadMarkNode;
