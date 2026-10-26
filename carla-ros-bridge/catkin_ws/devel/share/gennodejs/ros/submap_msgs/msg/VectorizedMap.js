// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VectorElement = require('./VectorElement.js');

//-----------------------------------------------------------

class VectorizedMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vector_elements = null;
    }
    else {
      if (initObj.hasOwnProperty('vector_elements')) {
        this.vector_elements = initObj.vector_elements
      }
      else {
        this.vector_elements = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VectorizedMap
    // Serialize message field [vector_elements]
    // Serialize the length for message field [vector_elements]
    bufferOffset = _serializer.uint32(obj.vector_elements.length, buffer, bufferOffset);
    obj.vector_elements.forEach((val) => {
      bufferOffset = VectorElement.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VectorizedMap
    let len;
    let data = new VectorizedMap(null);
    // Deserialize message field [vector_elements]
    // Deserialize array length for message field [vector_elements]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vector_elements = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vector_elements[i] = VectorElement.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.vector_elements.forEach((val) => {
      length += VectorElement.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/VectorizedMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cebbb1eb1cb447459666f4ba1adc3a54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    submap_msgs/VectorElement[] vector_elements
    
    ================================================================================
    MSG: submap_msgs/VectorElement
    uint32 id
    submap_msgs/VectorElementTypeEnum type
    float32 score
    float32 slide_distance
    geometry_msgs/Point center
    geometry_msgs/Point center_point
    geometry_msgs/Point[] points
    geometry_msgs/Point[] points_local
    
    ================================================================================
    MSG: submap_msgs/VectorElementTypeEnum
    uint8 UNKNOWN = 0
    uint8 GATE = 1
    uint8 ARROW = 2
    uint8 STOP_LINE = 3
    uint8 DASH_LINE = 4
    uint8 SPEED_BUMP = 5
    uint8 ZWBRA_LINE = 6
    uint8 DDLD_ROAD_BOUNDARY = 7
    uint8 DDLD_LANE_BOUNDARY = 8
    uint8 DDLD_STOP_LINE = 9
    uint8 DDLD_CROSS_WALK = 10
    uint8 DDLD_ROAD_MARK = 11
    uint8 DDLD_TRAFFIC_SIGN = 12
    uint8 DDLD_TRAFFIC_LIGHT = 13
    uint8 value
    float32 score
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VectorizedMap(null);
    if (msg.vector_elements !== undefined) {
      resolved.vector_elements = new Array(msg.vector_elements.length);
      for (let i = 0; i < resolved.vector_elements.length; ++i) {
        resolved.vector_elements[i] = VectorElement.Resolve(msg.vector_elements[i]);
      }
    }
    else {
      resolved.vector_elements = []
    }

    return resolved;
    }
};

module.exports = VectorizedMap;
