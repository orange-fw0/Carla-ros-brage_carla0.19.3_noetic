// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Obstacle = require('./Obstacle.js');
let Box2d = require('./Box2d.js');
let Line = require('./Line.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class EnvironmentData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.obstacles = null;
      this.obstacle_boxes = null;
      this.obstacle_lines = null;
      this.lines = null;
      this.points = null;
      this.step_points = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
      if (initObj.hasOwnProperty('obstacle_boxes')) {
        this.obstacle_boxes = initObj.obstacle_boxes
      }
      else {
        this.obstacle_boxes = [];
      }
      if (initObj.hasOwnProperty('obstacle_lines')) {
        this.obstacle_lines = initObj.obstacle_lines
      }
      else {
        this.obstacle_lines = [];
      }
      if (initObj.hasOwnProperty('lines')) {
        this.lines = initObj.lines
      }
      else {
        this.lines = [];
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('step_points')) {
        this.step_points = initObj.step_points
      }
      else {
        this.step_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnvironmentData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = Obstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacle_boxes]
    // Serialize the length for message field [obstacle_boxes]
    bufferOffset = _serializer.uint32(obj.obstacle_boxes.length, buffer, bufferOffset);
    obj.obstacle_boxes.forEach((val) => {
      bufferOffset = Box2d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacle_lines]
    // Serialize the length for message field [obstacle_lines]
    bufferOffset = _serializer.uint32(obj.obstacle_lines.length, buffer, bufferOffset);
    obj.obstacle_lines.forEach((val) => {
      bufferOffset = Line.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lines]
    // Serialize the length for message field [lines]
    bufferOffset = _serializer.uint32(obj.lines.length, buffer, bufferOffset);
    obj.lines.forEach((val) => {
      bufferOffset = Line.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [step_points]
    // Serialize the length for message field [step_points]
    bufferOffset = _serializer.uint32(obj.step_points.length, buffer, bufferOffset);
    obj.step_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnvironmentData
    let len;
    let data = new EnvironmentData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = Obstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacle_boxes]
    // Deserialize array length for message field [obstacle_boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_boxes[i] = Box2d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacle_lines]
    // Deserialize array length for message field [obstacle_lines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_lines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_lines[i] = Line.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lines]
    // Deserialize array length for message field [lines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lines[i] = Line.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [step_points]
    // Deserialize array length for message field [step_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.step_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.step_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.obstacles.forEach((val) => {
      length += Obstacle.getMessageSize(val);
    });
    length += 48 * object.obstacle_boxes.length;
    length += 48 * object.obstacle_lines.length;
    length += 48 * object.lines.length;
    length += 24 * object.points.length;
    length += 24 * object.step_points.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/EnvironmentData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efab7c926f4af3e159778971cdc7a6b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 OBSTACLES = 1
    uint8 OBSTACLE_BOXES = 2
    uint8 OBSTACLE_LINES = 4
    uint8 LINES = 8
    uint8 POINTS = 16
    uint8 STEP_POINTS = 32
    uint8 available
    planning_msgs/Obstacle[] obstacles
    planning_msgs/Box2d[] obstacle_boxes
    planning_msgs/Line[] obstacle_lines
    planning_msgs/Line[] lines
    geometry_msgs/Point[] points
    geometry_msgs/Point[] step_points
    
    ================================================================================
    MSG: planning_msgs/Obstacle
    uint8 BOX = 1
    uint8 POLYGON = 2
    uint8 POLYLINE = 4
    uint8 POINT = 8
    uint8 available
    planning_msgs/ObstacleTypeEnum obstacle_type
    planning_msgs/Box2f box
    planning_msgs/Polygon2f polygon
    planning_msgs/Polyline2f polyline
    geometry_msgs/Point32 point
    
    ================================================================================
    MSG: planning_msgs/ObstacleTypeEnum
    uint8 PHYSICAL = 1
    uint8 LOGICAL = 2
    uint8 PARKING_SLOT = 4
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/Box2f
    geometry_msgs/Point32 center
    float32 heading
    float32 length
    float32 width
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: planning_msgs/Polygon2f
    geometry_msgs/Point32[] points
    
    ================================================================================
    MSG: planning_msgs/Polyline2f
    geometry_msgs/Point32[] points
    
    ================================================================================
    MSG: planning_msgs/Box2d
    geometry_msgs/Point center
    float64 heading
    float64 length
    float64 width
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: planning_msgs/Line
    geometry_msgs/Point start
    geometry_msgs/Point end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnvironmentData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = Obstacle.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    if (msg.obstacle_boxes !== undefined) {
      resolved.obstacle_boxes = new Array(msg.obstacle_boxes.length);
      for (let i = 0; i < resolved.obstacle_boxes.length; ++i) {
        resolved.obstacle_boxes[i] = Box2d.Resolve(msg.obstacle_boxes[i]);
      }
    }
    else {
      resolved.obstacle_boxes = []
    }

    if (msg.obstacle_lines !== undefined) {
      resolved.obstacle_lines = new Array(msg.obstacle_lines.length);
      for (let i = 0; i < resolved.obstacle_lines.length; ++i) {
        resolved.obstacle_lines[i] = Line.Resolve(msg.obstacle_lines[i]);
      }
    }
    else {
      resolved.obstacle_lines = []
    }

    if (msg.lines !== undefined) {
      resolved.lines = new Array(msg.lines.length);
      for (let i = 0; i < resolved.lines.length; ++i) {
        resolved.lines[i] = Line.Resolve(msg.lines[i]);
      }
    }
    else {
      resolved.lines = []
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.step_points !== undefined) {
      resolved.step_points = new Array(msg.step_points.length);
      for (let i = 0; i < resolved.step_points.length; ++i) {
        resolved.step_points[i] = geometry_msgs.msg.Point.Resolve(msg.step_points[i]);
      }
    }
    else {
      resolved.step_points = []
    }

    return resolved;
    }
};

// Constants for message
EnvironmentData.Constants = {
  OBSTACLES: 1,
  OBSTACLE_BOXES: 2,
  OBSTACLE_LINES: 4,
  LINES: 8,
  POINTS: 16,
  STEP_POINTS: 32,
}

module.exports = EnvironmentData;
