// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleTypeEnum = require('./ObstacleTypeEnum.js');
let Box2f = require('./Box2f.js');
let Polygon2f = require('./Polygon2f.js');
let Polyline2f = require('./Polyline2f.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.obstacle_type = null;
      this.box = null;
      this.polygon = null;
      this.polyline = null;
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('obstacle_type')) {
        this.obstacle_type = initObj.obstacle_type
      }
      else {
        this.obstacle_type = new ObstacleTypeEnum();
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = new Box2f();
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = new Polygon2f();
      }
      if (initObj.hasOwnProperty('polyline')) {
        this.polyline = initObj.polyline
      }
      else {
        this.polyline = new Polyline2f();
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [obstacle_type]
    bufferOffset = ObstacleTypeEnum.serialize(obj.obstacle_type, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = Box2f.serialize(obj.box, buffer, bufferOffset);
    // Serialize message field [polygon]
    bufferOffset = Polygon2f.serialize(obj.polygon, buffer, bufferOffset);
    // Serialize message field [polyline]
    bufferOffset = Polyline2f.serialize(obj.polyline, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [obstacle_type]
    data.obstacle_type = ObstacleTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = Box2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [polygon]
    data.polygon = Polygon2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [polyline]
    data.polyline = Polyline2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Polygon2f.getMessageSize(object.polygon);
    length += Polyline2f.getMessageSize(object.polyline);
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b9f22e247ebbe5f0d21d8c258a8994c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Obstacle(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.obstacle_type !== undefined) {
      resolved.obstacle_type = ObstacleTypeEnum.Resolve(msg.obstacle_type)
    }
    else {
      resolved.obstacle_type = new ObstacleTypeEnum()
    }

    if (msg.box !== undefined) {
      resolved.box = Box2f.Resolve(msg.box)
    }
    else {
      resolved.box = new Box2f()
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = Polygon2f.Resolve(msg.polygon)
    }
    else {
      resolved.polygon = new Polygon2f()
    }

    if (msg.polyline !== undefined) {
      resolved.polyline = Polyline2f.Resolve(msg.polyline)
    }
    else {
      resolved.polyline = new Polyline2f()
    }

    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point32.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

// Constants for message
Obstacle.Constants = {
  BOX: 1,
  POLYGON: 2,
  POLYLINE: 4,
  POINT: 8,
}

module.exports = Obstacle;
