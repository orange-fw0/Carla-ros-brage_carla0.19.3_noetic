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
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class DashLineEndNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.score = null;
      this.track_id = null;
      this.center = null;
      this.segment_start = null;
      this.segment_end = null;
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
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('segment_start')) {
        this.segment_start = initObj.segment_start
      }
      else {
        this.segment_start = new perception_interface_msgs.msg.Point3f();
      }
      if (initObj.hasOwnProperty('segment_end')) {
        this.segment_end = initObj.segment_end
      }
      else {
        this.segment_end = new perception_interface_msgs.msg.Point3f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DashLineEndNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [segment_start]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.segment_start, buffer, bufferOffset);
    // Serialize message field [segment_end]
    bufferOffset = perception_interface_msgs.msg.Point3f.serialize(obj.segment_end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DashLineEndNode
    let len;
    let data = new DashLineEndNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [segment_start]
    data.segment_start = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [segment_end]
    data.segment_end = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/DashLineEndNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d3f1496b28f03f904353895dc6597f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SCORE_VALID = 1
    uint16 CENTER_VALID = 2
    uint16 SEGMENT_START_VALID = 4
    uint16 SEGMENT_END_VALID = 8
    uint16 available
    float32 score
    landmark_msgs/TrackId track_id
    perception_interface_msgs/Point3f center
    perception_interface_msgs/Point3f segment_start
    perception_interface_msgs/Point3f segment_end
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DashLineEndNode(null);
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

    if (msg.center !== undefined) {
      resolved.center = perception_interface_msgs.msg.Point3f.Resolve(msg.center)
    }
    else {
      resolved.center = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.segment_start !== undefined) {
      resolved.segment_start = perception_interface_msgs.msg.Point3f.Resolve(msg.segment_start)
    }
    else {
      resolved.segment_start = new perception_interface_msgs.msg.Point3f()
    }

    if (msg.segment_end !== undefined) {
      resolved.segment_end = perception_interface_msgs.msg.Point3f.Resolve(msg.segment_end)
    }
    else {
      resolved.segment_end = new perception_interface_msgs.msg.Point3f()
    }

    return resolved;
    }
};

// Constants for message
DashLineEndNode.Constants = {
  SCORE_VALID: 1,
  CENTER_VALID: 2,
  SEGMENT_START_VALID: 4,
  SEGMENT_END_VALID: 8,
}

module.exports = DashLineEndNode;
