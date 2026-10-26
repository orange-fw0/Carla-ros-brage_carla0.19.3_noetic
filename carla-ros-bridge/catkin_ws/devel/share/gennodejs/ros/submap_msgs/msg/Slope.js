// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('./Position.js');

//-----------------------------------------------------------

class Slope {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enter = null;
      this.exit = null;
      this.detected_slope_pose = null;
      this.is_up = null;
      this.finished = null;
      this.score = null;
      this.slide_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('enter')) {
        this.enter = initObj.enter
      }
      else {
        this.enter = new Position();
      }
      if (initObj.hasOwnProperty('exit')) {
        this.exit = initObj.exit
      }
      else {
        this.exit = new Position();
      }
      if (initObj.hasOwnProperty('detected_slope_pose')) {
        this.detected_slope_pose = initObj.detected_slope_pose
      }
      else {
        this.detected_slope_pose = new Position();
      }
      if (initObj.hasOwnProperty('is_up')) {
        this.is_up = initObj.is_up
      }
      else {
        this.is_up = false;
      }
      if (initObj.hasOwnProperty('finished')) {
        this.finished = initObj.finished
      }
      else {
        this.finished = false;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('slide_distance')) {
        this.slide_distance = initObj.slide_distance
      }
      else {
        this.slide_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Slope
    // Serialize message field [enter]
    bufferOffset = Position.serialize(obj.enter, buffer, bufferOffset);
    // Serialize message field [exit]
    bufferOffset = Position.serialize(obj.exit, buffer, bufferOffset);
    // Serialize message field [detected_slope_pose]
    bufferOffset = Position.serialize(obj.detected_slope_pose, buffer, bufferOffset);
    // Serialize message field [is_up]
    bufferOffset = _serializer.bool(obj.is_up, buffer, bufferOffset);
    // Serialize message field [finished]
    bufferOffset = _serializer.bool(obj.finished, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [slide_distance]
    bufferOffset = _serializer.float32(obj.slide_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Slope
    let len;
    let data = new Slope(null);
    // Deserialize message field [enter]
    data.enter = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [exit]
    data.exit = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_slope_pose]
    data.detected_slope_pose = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_up]
    data.is_up = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [finished]
    data.finished = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [slide_distance]
    data.slide_distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 202;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/Slope';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcf6315814e9d509950a72cf49c97c31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Slope(null);
    if (msg.enter !== undefined) {
      resolved.enter = Position.Resolve(msg.enter)
    }
    else {
      resolved.enter = new Position()
    }

    if (msg.exit !== undefined) {
      resolved.exit = Position.Resolve(msg.exit)
    }
    else {
      resolved.exit = new Position()
    }

    if (msg.detected_slope_pose !== undefined) {
      resolved.detected_slope_pose = Position.Resolve(msg.detected_slope_pose)
    }
    else {
      resolved.detected_slope_pose = new Position()
    }

    if (msg.is_up !== undefined) {
      resolved.is_up = msg.is_up;
    }
    else {
      resolved.is_up = false
    }

    if (msg.finished !== undefined) {
      resolved.finished = msg.finished;
    }
    else {
      resolved.finished = false
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.slide_distance !== undefined) {
      resolved.slide_distance = msg.slide_distance;
    }
    else {
      resolved.slide_distance = 0.0
    }

    return resolved;
    }
};

module.exports = Slope;
