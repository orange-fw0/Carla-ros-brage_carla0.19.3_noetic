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

class ScenePolygonObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_id = null;
      this.object_type = null;
      this.object_polygon = null;
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
      if (initObj.hasOwnProperty('object_polygon')) {
        this.object_polygon = initObj.object_polygon
      }
      else {
        this.object_polygon = new perception_interface_msgs.msg.Polygon3f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScenePolygonObject
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint64(obj.object_id, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = SceneObjectType.serialize(obj.object_type, buffer, bufferOffset);
    // Serialize message field [object_polygon]
    bufferOffset = perception_interface_msgs.msg.Polygon3f.serialize(obj.object_polygon, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScenePolygonObject
    let len;
    let data = new ScenePolygonObject(null);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = SceneObjectType.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_polygon]
    data.object_polygon = perception_interface_msgs.msg.Polygon3f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += perception_interface_msgs.msg.Polygon3f.getMessageSize(object.object_polygon);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ScenePolygonObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2966a81dad84df9927a29c8d4bade247';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 object_id
    worldmodel_msgs/SceneObjectType object_type
    perception_interface_msgs/Polygon3f object_polygon
    
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
    MSG: perception_interface_msgs/Polygon3f
    perception_interface_msgs/Point3f[] points
    
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
    const resolved = new ScenePolygonObject(null);
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

    if (msg.object_polygon !== undefined) {
      resolved.object_polygon = perception_interface_msgs.msg.Polygon3f.Resolve(msg.object_polygon)
    }
    else {
      resolved.object_polygon = new perception_interface_msgs.msg.Polygon3f()
    }

    return resolved;
    }
};

module.exports = ScenePolygonObject;
