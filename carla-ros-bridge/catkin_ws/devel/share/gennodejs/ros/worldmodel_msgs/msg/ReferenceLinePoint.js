// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneBoundaryType = require('./LaneBoundaryType.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class ReferenceLinePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enu_point = null;
      this.curvature = null;
      this.distance_to_left_road_border = null;
      this.distance_to_right_road_border = null;
      this.distance_to_left_lane_border = null;
      this.distance_to_right_lane_border = null;
      this.distance_to_left_obstacle = null;
      this.distance_to_right_obstacle = null;
      this.lane_width = null;
      this.max_velocity = null;
      this.track_id = null;
      this.is_experience_data = null;
      this.left_road_border_type = null;
      this.right_road_border_type = null;
      this.on_route = null;
      this.longitudinal_slope = null;
      this.horizontal_slope = null;
    }
    else {
      if (initObj.hasOwnProperty('enu_point')) {
        this.enu_point = initObj.enu_point
      }
      else {
        this.enu_point = new perception_interface_msgs.msg.Point3d();
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_left_road_border')) {
        this.distance_to_left_road_border = initObj.distance_to_left_road_border
      }
      else {
        this.distance_to_left_road_border = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_right_road_border')) {
        this.distance_to_right_road_border = initObj.distance_to_right_road_border
      }
      else {
        this.distance_to_right_road_border = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_left_lane_border')) {
        this.distance_to_left_lane_border = initObj.distance_to_left_lane_border
      }
      else {
        this.distance_to_left_lane_border = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_right_lane_border')) {
        this.distance_to_right_lane_border = initObj.distance_to_right_lane_border
      }
      else {
        this.distance_to_right_lane_border = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_left_obstacle')) {
        this.distance_to_left_obstacle = initObj.distance_to_left_obstacle
      }
      else {
        this.distance_to_left_obstacle = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_right_obstacle')) {
        this.distance_to_right_obstacle = initObj.distance_to_right_obstacle
      }
      else {
        this.distance_to_right_obstacle = 0.0;
      }
      if (initObj.hasOwnProperty('lane_width')) {
        this.lane_width = initObj.lane_width
      }
      else {
        this.lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('max_velocity')) {
        this.max_velocity = initObj.max_velocity
      }
      else {
        this.max_velocity = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('is_experience_data')) {
        this.is_experience_data = initObj.is_experience_data
      }
      else {
        this.is_experience_data = false;
      }
      if (initObj.hasOwnProperty('left_road_border_type')) {
        this.left_road_border_type = initObj.left_road_border_type
      }
      else {
        this.left_road_border_type = new LaneBoundaryType();
      }
      if (initObj.hasOwnProperty('right_road_border_type')) {
        this.right_road_border_type = initObj.right_road_border_type
      }
      else {
        this.right_road_border_type = new LaneBoundaryType();
      }
      if (initObj.hasOwnProperty('on_route')) {
        this.on_route = initObj.on_route
      }
      else {
        this.on_route = false;
      }
      if (initObj.hasOwnProperty('longitudinal_slope')) {
        this.longitudinal_slope = initObj.longitudinal_slope
      }
      else {
        this.longitudinal_slope = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_slope')) {
        this.horizontal_slope = initObj.horizontal_slope
      }
      else {
        this.horizontal_slope = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReferenceLinePoint
    // Serialize message field [enu_point]
    bufferOffset = perception_interface_msgs.msg.Point3d.serialize(obj.enu_point, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float32(obj.curvature, buffer, bufferOffset);
    // Serialize message field [distance_to_left_road_border]
    bufferOffset = _serializer.float32(obj.distance_to_left_road_border, buffer, bufferOffset);
    // Serialize message field [distance_to_right_road_border]
    bufferOffset = _serializer.float32(obj.distance_to_right_road_border, buffer, bufferOffset);
    // Serialize message field [distance_to_left_lane_border]
    bufferOffset = _serializer.float32(obj.distance_to_left_lane_border, buffer, bufferOffset);
    // Serialize message field [distance_to_right_lane_border]
    bufferOffset = _serializer.float32(obj.distance_to_right_lane_border, buffer, bufferOffset);
    // Serialize message field [distance_to_left_obstacle]
    bufferOffset = _serializer.float32(obj.distance_to_left_obstacle, buffer, bufferOffset);
    // Serialize message field [distance_to_right_obstacle]
    bufferOffset = _serializer.float32(obj.distance_to_right_obstacle, buffer, bufferOffset);
    // Serialize message field [lane_width]
    bufferOffset = _serializer.float32(obj.lane_width, buffer, bufferOffset);
    // Serialize message field [max_velocity]
    bufferOffset = _serializer.int32(obj.max_velocity, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [is_experience_data]
    bufferOffset = _serializer.bool(obj.is_experience_data, buffer, bufferOffset);
    // Serialize message field [left_road_border_type]
    bufferOffset = LaneBoundaryType.serialize(obj.left_road_border_type, buffer, bufferOffset);
    // Serialize message field [right_road_border_type]
    bufferOffset = LaneBoundaryType.serialize(obj.right_road_border_type, buffer, bufferOffset);
    // Serialize message field [on_route]
    bufferOffset = _serializer.bool(obj.on_route, buffer, bufferOffset);
    // Serialize message field [longitudinal_slope]
    bufferOffset = _serializer.float64(obj.longitudinal_slope, buffer, bufferOffset);
    // Serialize message field [horizontal_slope]
    bufferOffset = _serializer.float64(obj.horizontal_slope, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReferenceLinePoint
    let len;
    let data = new ReferenceLinePoint(null);
    // Deserialize message field [enu_point]
    data.enu_point = perception_interface_msgs.msg.Point3d.deserialize(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_left_road_border]
    data.distance_to_left_road_border = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_right_road_border]
    data.distance_to_right_road_border = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_left_lane_border]
    data.distance_to_left_lane_border = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_right_lane_border]
    data.distance_to_right_lane_border = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_left_obstacle]
    data.distance_to_left_obstacle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_right_obstacle]
    data.distance_to_right_obstacle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_width]
    data.lane_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_velocity]
    data.max_velocity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [is_experience_data]
    data.is_experience_data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_road_border_type]
    data.left_road_border_type = LaneBoundaryType.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_road_border_type]
    data.right_road_border_type = LaneBoundaryType.deserialize(buffer, bufferOffset);
    // Deserialize message field [on_route]
    data.on_route = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [longitudinal_slope]
    data.longitudinal_slope = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontal_slope]
    data.horizontal_slope = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ReferenceLinePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00add1f69861e3bf3d68775bc3111b4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/Point3d enu_point
    float32 curvature
    float32 distance_to_left_road_border
    float32 distance_to_right_road_border
    float32 distance_to_left_lane_border
    float32 distance_to_right_lane_border
    float32 distance_to_left_obstacle
    float32 distance_to_right_obstacle
    float32 lane_width
    int32 max_velocity
    uint64 track_id
    bool is_experience_data
    worldmodel_msgs/LaneBoundaryType left_road_border_type
    worldmodel_msgs/LaneBoundaryType right_road_border_type
    bool on_route
    float64 longitudinal_slope
    float64 horizontal_slope
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryType
    worldmodel_msgs/LaneBoundaryForm value
    worldmodel_msgs/LaneBoundaryColor color
    worldmodel_msgs/LaneBoundaryWidth width
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryForm
    uint8 UNKNOWN = 0
    uint8 SOLID = 1
    uint8 DASH = 2
    uint8 VIRTUAL = 3
    uint8 PHYSICAL = 4
    uint8 DOUBLE_SOLID = 5
    uint8 DASH_SOLID = 6
    uint8 SOLID_DASH = 7
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryColor
    uint8 WHITE = 0
    uint8 YELLOW = 1
    uint8 OTHER = 2
    uint8 value
    
    ================================================================================
    MSG: worldmodel_msgs/LaneBoundaryWidth
    uint8 THIN = 0
    uint8 THICK = 1
    uint8 UNKNOWN = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReferenceLinePoint(null);
    if (msg.enu_point !== undefined) {
      resolved.enu_point = perception_interface_msgs.msg.Point3d.Resolve(msg.enu_point)
    }
    else {
      resolved.enu_point = new perception_interface_msgs.msg.Point3d()
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    if (msg.distance_to_left_road_border !== undefined) {
      resolved.distance_to_left_road_border = msg.distance_to_left_road_border;
    }
    else {
      resolved.distance_to_left_road_border = 0.0
    }

    if (msg.distance_to_right_road_border !== undefined) {
      resolved.distance_to_right_road_border = msg.distance_to_right_road_border;
    }
    else {
      resolved.distance_to_right_road_border = 0.0
    }

    if (msg.distance_to_left_lane_border !== undefined) {
      resolved.distance_to_left_lane_border = msg.distance_to_left_lane_border;
    }
    else {
      resolved.distance_to_left_lane_border = 0.0
    }

    if (msg.distance_to_right_lane_border !== undefined) {
      resolved.distance_to_right_lane_border = msg.distance_to_right_lane_border;
    }
    else {
      resolved.distance_to_right_lane_border = 0.0
    }

    if (msg.distance_to_left_obstacle !== undefined) {
      resolved.distance_to_left_obstacle = msg.distance_to_left_obstacle;
    }
    else {
      resolved.distance_to_left_obstacle = 0.0
    }

    if (msg.distance_to_right_obstacle !== undefined) {
      resolved.distance_to_right_obstacle = msg.distance_to_right_obstacle;
    }
    else {
      resolved.distance_to_right_obstacle = 0.0
    }

    if (msg.lane_width !== undefined) {
      resolved.lane_width = msg.lane_width;
    }
    else {
      resolved.lane_width = 0.0
    }

    if (msg.max_velocity !== undefined) {
      resolved.max_velocity = msg.max_velocity;
    }
    else {
      resolved.max_velocity = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.is_experience_data !== undefined) {
      resolved.is_experience_data = msg.is_experience_data;
    }
    else {
      resolved.is_experience_data = false
    }

    if (msg.left_road_border_type !== undefined) {
      resolved.left_road_border_type = LaneBoundaryType.Resolve(msg.left_road_border_type)
    }
    else {
      resolved.left_road_border_type = new LaneBoundaryType()
    }

    if (msg.right_road_border_type !== undefined) {
      resolved.right_road_border_type = LaneBoundaryType.Resolve(msg.right_road_border_type)
    }
    else {
      resolved.right_road_border_type = new LaneBoundaryType()
    }

    if (msg.on_route !== undefined) {
      resolved.on_route = msg.on_route;
    }
    else {
      resolved.on_route = false
    }

    if (msg.longitudinal_slope !== undefined) {
      resolved.longitudinal_slope = msg.longitudinal_slope;
    }
    else {
      resolved.longitudinal_slope = 0.0
    }

    if (msg.horizontal_slope !== undefined) {
      resolved.horizontal_slope = msg.horizontal_slope;
    }
    else {
      resolved.horizontal_slope = 0.0
    }

    return resolved;
    }
};

module.exports = ReferenceLinePoint;
