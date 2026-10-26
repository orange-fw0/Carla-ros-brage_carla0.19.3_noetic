// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SceneObjectType = require('./SceneObjectType.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class SceneCircleObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_id = null;
      this.object_type = null;
      this.center_point = null;
      this.radius = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
      }
      if (initObj.hasOwnProperty('object_type')) {
        this.object_type = initObj.object_type
      }
      else {
        this.object_type = new SceneObjectType();
      }
      if (initObj.hasOwnProperty('center_point')) {
        this.center_point = initObj.center_point
      }
      else {
        this.center_point = new perception_interface_msgs.msg.Point2d();
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SceneCircleObject
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint64(obj.object_id, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = SceneObjectType.serialize(obj.object_type, buffer, bufferOffset);
    // Serialize message field [center_point]
    bufferOffset = perception_interface_msgs.msg.Point2d.serialize(obj.center_point, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float64(obj.radius, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneCircleObject
    let len;
    let data = new SceneCircleObject(null);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = SceneObjectType.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_point]
    data.center_point = perception_interface_msgs.msg.Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/SceneCircleObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b5eb0465630ba570726bf7bfe0513b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 object_id
    worldmodel_msgs/SceneObjectType object_type
    perception_interface_msgs/Point2d center_point
    float64 radius
    float64 height
    
    ================================================================================
    MSG: worldmodel_msgs/SceneObjectType
    uint8 UNKNOWN = 0
    uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
    uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
    uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
    uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
    uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
    uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
    uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
    uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
    uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
    uint8 MAP_FIRE_EXIT_DOOR = 10
    uint8 MAP_PILLAR = 11
    uint8 MAP_TOLL_GATE = 12
    uint8 MAP_BORDER_SOLID_LINE = 13
    uint8 MAP_BORDER_DASH_LINE = 14
    uint8 MAP_BORDER_PHYSICAL = 15
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Point2d
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SceneCircleObject(null);
    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
    }

    if (msg.object_type !== undefined) {
      resolved.object_type = SceneObjectType.Resolve(msg.object_type)
    }
    else {
      resolved.object_type = new SceneObjectType()
    }

    if (msg.center_point !== undefined) {
      resolved.center_point = perception_interface_msgs.msg.Point2d.Resolve(msg.center_point)
    }
    else {
      resolved.center_point = new perception_interface_msgs.msg.Point2d()
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    return resolved;
    }
};

module.exports = SceneCircleObject;
