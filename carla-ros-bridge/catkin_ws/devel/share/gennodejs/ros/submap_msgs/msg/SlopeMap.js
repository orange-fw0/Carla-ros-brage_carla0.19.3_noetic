// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Slope = require('./Slope.js');

//-----------------------------------------------------------

class SlopeMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.slopes = null;
    }
    else {
      if (initObj.hasOwnProperty('slopes')) {
        this.slopes = initObj.slopes
      }
      else {
        this.slopes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SlopeMap
    // Serialize message field [slopes]
    // Serialize the length for message field [slopes]
    bufferOffset = _serializer.uint32(obj.slopes.length, buffer, bufferOffset);
    obj.slopes.forEach((val) => {
      bufferOffset = Slope.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SlopeMap
    let len;
    let data = new SlopeMap(null);
    // Deserialize message field [slopes]
    // Deserialize array length for message field [slopes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.slopes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.slopes[i] = Slope.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 202 * object.slopes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/SlopeMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2eb0d47b299ccf18f0632c481301ba98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    submap_msgs/Slope[] slopes
    
    ================================================================================
    MSG: submap_msgs/Slope
    submap_msgs/Position enter
    submap_msgs/Position exit
    submap_msgs/Position detected_slope_pose
    bool is_up
    bool finished
    float32 score
    float32 slide_distance
    
    ================================================================================
    MSG: submap_msgs/Position
    geometry_msgs/Quaternion orientation
    geometry_msgs/Vector3 translation
    float64 timestamp
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new SlopeMap(null);
    if (msg.slopes !== undefined) {
      resolved.slopes = new Array(msg.slopes.length);
      for (let i = 0; i < resolved.slopes.length; ++i) {
        resolved.slopes[i] = Slope.Resolve(msg.slopes[i]);
      }
    }
    else {
      resolved.slopes = []
    }

    return resolved;
    }
};

module.exports = SlopeMap;
