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
let RoadSurfaceTypeEnum = require('./RoadSurfaceTypeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class RoadSurfaceNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.track_id = null;
      this.available = null;
      this.type = null;
      this.score = null;
      this.polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new RoadSurfaceTypeEnum();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadSurfaceNode
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = RoadSurfaceTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [polygon]
    // Serialize the length for message field [polygon]
    bufferOffset = _serializer.uint32(obj.polygon.length, buffer, bufferOffset);
    obj.polygon.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadSurfaceNode
    let len;
    let data = new RoadSurfaceNode(null);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = RoadSurfaceTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [polygon]
    // Deserialize array length for message field [polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.polygon.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadSurfaceNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4a174b8fb9396f8d1e466656df9f158';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 NODE_TYPE_VALID = 1
    uint16 SCORE_VALID = 2
    uint16 POLYGON_VALID = 4
    landmark_msgs/TrackId track_id
    uint16 available
    landmark_msgs/RoadSurfaceTypeEnum type
    float32 score
    perception_interface_msgs/Point3f[] polygon
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/RoadSurfaceTypeEnum
    uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0
    uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1
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
    const resolved = new RoadSurfaceNode(null);
    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.type !== undefined) {
      resolved.type = RoadSurfaceTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new RoadSurfaceTypeEnum()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = new Array(msg.polygon.length);
      for (let i = 0; i < resolved.polygon.length; ++i) {
        resolved.polygon[i] = perception_interface_msgs.msg.Point3f.Resolve(msg.polygon[i]);
      }
    }
    else {
      resolved.polygon = []
    }

    return resolved;
    }
};

// Constants for message
RoadSurfaceNode.Constants = {
  NODE_TYPE_VALID: 1,
  SCORE_VALID: 2,
  POLYGON_VALID: 4,
}

module.exports = RoadSurfaceNode;
