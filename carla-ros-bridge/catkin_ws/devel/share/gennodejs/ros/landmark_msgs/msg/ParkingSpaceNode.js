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
let ParkingSpaceAttributeEnum = require('./ParkingSpaceAttributeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class ParkingSpaceNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.track_id = null;
      this.attribute = null;
      this.polygon_points = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = new TrackId();
      }
      if (initObj.hasOwnProperty('attribute')) {
        this.attribute = initObj.attribute
      }
      else {
        this.attribute = new ParkingSpaceAttributeEnum();
      }
      if (initObj.hasOwnProperty('polygon_points')) {
        this.polygon_points = initObj.polygon_points
      }
      else {
        this.polygon_points = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSpaceNode
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = TrackId.serialize(obj.track_id, buffer, bufferOffset);
    // Serialize message field [attribute]
    bufferOffset = ParkingSpaceAttributeEnum.serialize(obj.attribute, buffer, bufferOffset);
    // Serialize message field [polygon_points]
    // Serialize the length for message field [polygon_points]
    bufferOffset = _serializer.uint32(obj.polygon_points.length, buffer, bufferOffset);
    obj.polygon_points.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSpaceNode
    let len;
    let data = new ParkingSpaceNode(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [attribute]
    data.attribute = ParkingSpaceAttributeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [polygon_points]
    // Deserialize array length for message field [polygon_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_points[i] = perception_interface_msgs.msg.Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.polygon_points.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/ParkingSpaceNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24947dc573533b5c58121fcbcd06203f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 ATTRIBUTE_VALID = 1
    uint16 POLYGON_POINTS_VALID = 2
    uint16 SCORE_VALID = 4
    uint8 available
    landmark_msgs/TrackId track_id
    landmark_msgs/ParkingSpaceAttributeEnum attribute
    perception_interface_msgs/Point3f[] polygon_points
    float32 score
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/ParkingSpaceAttributeEnum
    uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0
    uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1
    uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2
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
    const resolved = new ParkingSpaceNode(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = TrackId.Resolve(msg.track_id)
    }
    else {
      resolved.track_id = new TrackId()
    }

    if (msg.attribute !== undefined) {
      resolved.attribute = ParkingSpaceAttributeEnum.Resolve(msg.attribute)
    }
    else {
      resolved.attribute = new ParkingSpaceAttributeEnum()
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

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

// Constants for message
ParkingSpaceNode.Constants = {
  ATTRIBUTE_VALID: 1,
  POLYGON_POINTS_VALID: 2,
  SCORE_VALID: 4,
}

module.exports = ParkingSpaceNode;
