// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SceneObjectsMeta = require('./SceneObjectsMeta.js');
let ScenePolygonObject = require('./ScenePolygonObject.js');
let SceneCircleObject = require('./SceneCircleObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SceneObjects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.available = null;
      this.on_path_polygon_objects = null;
      this.surround_polygon_objects = null;
      this.on_path_circle_objects = null;
      this.surround_circle_objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new SceneObjectsMeta();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('on_path_polygon_objects')) {
        this.on_path_polygon_objects = initObj.on_path_polygon_objects
      }
      else {
        this.on_path_polygon_objects = [];
      }
      if (initObj.hasOwnProperty('surround_polygon_objects')) {
        this.surround_polygon_objects = initObj.surround_polygon_objects
      }
      else {
        this.surround_polygon_objects = [];
      }
      if (initObj.hasOwnProperty('on_path_circle_objects')) {
        this.on_path_circle_objects = initObj.on_path_circle_objects
      }
      else {
        this.on_path_circle_objects = [];
      }
      if (initObj.hasOwnProperty('surround_circle_objects')) {
        this.surround_circle_objects = initObj.surround_circle_objects
      }
      else {
        this.surround_circle_objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SceneObjects
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = SceneObjectsMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [on_path_polygon_objects]
    // Serialize the length for message field [on_path_polygon_objects]
    bufferOffset = _serializer.uint32(obj.on_path_polygon_objects.length, buffer, bufferOffset);
    obj.on_path_polygon_objects.forEach((val) => {
      bufferOffset = ScenePolygonObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [surround_polygon_objects]
    // Serialize the length for message field [surround_polygon_objects]
    bufferOffset = _serializer.uint32(obj.surround_polygon_objects.length, buffer, bufferOffset);
    obj.surround_polygon_objects.forEach((val) => {
      bufferOffset = ScenePolygonObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [on_path_circle_objects]
    // Serialize the length for message field [on_path_circle_objects]
    bufferOffset = _serializer.uint32(obj.on_path_circle_objects.length, buffer, bufferOffset);
    obj.on_path_circle_objects.forEach((val) => {
      bufferOffset = SceneCircleObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [surround_circle_objects]
    // Serialize the length for message field [surround_circle_objects]
    bufferOffset = _serializer.uint32(obj.surround_circle_objects.length, buffer, bufferOffset);
    obj.surround_circle_objects.forEach((val) => {
      bufferOffset = SceneCircleObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneObjects
    let len;
    let data = new SceneObjects(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = SceneObjectsMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [on_path_polygon_objects]
    // Deserialize array length for message field [on_path_polygon_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.on_path_polygon_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.on_path_polygon_objects[i] = ScenePolygonObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [surround_polygon_objects]
    // Deserialize array length for message field [surround_polygon_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.surround_polygon_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.surround_polygon_objects[i] = ScenePolygonObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [on_path_circle_objects]
    // Deserialize array length for message field [on_path_circle_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.on_path_circle_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.on_path_circle_objects[i] = SceneCircleObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [surround_circle_objects]
    // Deserialize array length for message field [surround_circle_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.surround_circle_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.surround_circle_objects[i] = SceneCircleObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.on_path_polygon_objects.forEach((val) => {
      length += ScenePolygonObject.getMessageSize(val);
    });
    object.surround_polygon_objects.forEach((val) => {
      length += ScenePolygonObject.getMessageSize(val);
    });
    length += 41 * object.on_path_circle_objects.length;
    length += 41 * object.surround_circle_objects.length;
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/SceneObjects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc3ada393d35f588f6de2a9e57c0c8df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ON_PATH_POLYGON_OBJECTS = 1
    uint8 SURROUND_POLYGON_OBJECTS = 2
    uint8 ON_PATH_CIRCLE_OBJECTS = 4
    uint8 SURROUND_CIRCLE_OBJECTS = 8
    std_msgs/Header header
    worldmodel_msgs/SceneObjectsMeta meta
    uint8 available
    worldmodel_msgs/ScenePolygonObject[] on_path_polygon_objects
    worldmodel_msgs/ScenePolygonObject[] surround_polygon_objects
    worldmodel_msgs/SceneCircleObject[] on_path_circle_objects
    worldmodel_msgs/SceneCircleObject[] surround_circle_objects
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: worldmodel_msgs/SceneObjectsMeta
    uint64 timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    
    ================================================================================
    MSG: worldmodel_msgs/ScenePolygonObject
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
    
    ================================================================================
    MSG: worldmodel_msgs/SceneCircleObject
    uint64 object_id
    worldmodel_msgs/SceneObjectType object_type
    perception_interface_msgs/Point2d center_point
    float64 radius
    float64 height
    
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
    const resolved = new SceneObjects(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = SceneObjectsMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new SceneObjectsMeta()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.on_path_polygon_objects !== undefined) {
      resolved.on_path_polygon_objects = new Array(msg.on_path_polygon_objects.length);
      for (let i = 0; i < resolved.on_path_polygon_objects.length; ++i) {
        resolved.on_path_polygon_objects[i] = ScenePolygonObject.Resolve(msg.on_path_polygon_objects[i]);
      }
    }
    else {
      resolved.on_path_polygon_objects = []
    }

    if (msg.surround_polygon_objects !== undefined) {
      resolved.surround_polygon_objects = new Array(msg.surround_polygon_objects.length);
      for (let i = 0; i < resolved.surround_polygon_objects.length; ++i) {
        resolved.surround_polygon_objects[i] = ScenePolygonObject.Resolve(msg.surround_polygon_objects[i]);
      }
    }
    else {
      resolved.surround_polygon_objects = []
    }

    if (msg.on_path_circle_objects !== undefined) {
      resolved.on_path_circle_objects = new Array(msg.on_path_circle_objects.length);
      for (let i = 0; i < resolved.on_path_circle_objects.length; ++i) {
        resolved.on_path_circle_objects[i] = SceneCircleObject.Resolve(msg.on_path_circle_objects[i]);
      }
    }
    else {
      resolved.on_path_circle_objects = []
    }

    if (msg.surround_circle_objects !== undefined) {
      resolved.surround_circle_objects = new Array(msg.surround_circle_objects.length);
      for (let i = 0; i < resolved.surround_circle_objects.length; ++i) {
        resolved.surround_circle_objects[i] = SceneCircleObject.Resolve(msg.surround_circle_objects[i]);
      }
    }
    else {
      resolved.surround_circle_objects = []
    }

    return resolved;
    }
};

// Constants for message
SceneObjects.Constants = {
  ON_PATH_POLYGON_OBJECTS: 1,
  SURROUND_POLYGON_OBJECTS: 2,
  ON_PATH_CIRCLE_OBJECTS: 4,
  SURROUND_CIRCLE_OBJECTS: 8,
}

module.exports = SceneObjects;
