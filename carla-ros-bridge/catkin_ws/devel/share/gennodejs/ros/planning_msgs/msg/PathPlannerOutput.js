// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PathPlannerOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.dx_ds = null;
      this.dy_ds = null;
      this.d2x_ds2 = null;
      this.d2y_ds2 = null;
      this.curvature = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('dx_ds')) {
        this.dx_ds = initObj.dx_ds
      }
      else {
        this.dx_ds = [];
      }
      if (initObj.hasOwnProperty('dy_ds')) {
        this.dy_ds = initObj.dy_ds
      }
      else {
        this.dy_ds = [];
      }
      if (initObj.hasOwnProperty('d2x_ds2')) {
        this.d2x_ds2 = initObj.d2x_ds2
      }
      else {
        this.d2x_ds2 = [];
      }
      if (initObj.hasOwnProperty('d2y_ds2')) {
        this.d2y_ds2 = initObj.d2y_ds2
      }
      else {
        this.d2y_ds2 = [];
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPlannerOutput
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float64(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float64(obj.y, buffer, bufferOffset, null);
    // Serialize message field [dx_ds]
    bufferOffset = _arraySerializer.float64(obj.dx_ds, buffer, bufferOffset, null);
    // Serialize message field [dy_ds]
    bufferOffset = _arraySerializer.float64(obj.dy_ds, buffer, bufferOffset, null);
    // Serialize message field [d2x_ds2]
    bufferOffset = _arraySerializer.float64(obj.d2x_ds2, buffer, bufferOffset, null);
    // Serialize message field [d2y_ds2]
    bufferOffset = _arraySerializer.float64(obj.d2y_ds2, buffer, bufferOffset, null);
    // Serialize message field [curvature]
    bufferOffset = _arraySerializer.float64(obj.curvature, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPlannerOutput
    let len;
    let data = new PathPlannerOutput(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dx_ds]
    data.dx_ds = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dy_ds]
    data.dy_ds = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [d2x_ds2]
    data.d2x_ds2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [d2y_ds2]
    data.d2y_ds2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [curvature]
    data.curvature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.x.length;
    length += 8 * object.y.length;
    length += 8 * object.dx_ds.length;
    length += 8 * object.dy_ds.length;
    length += 8 * object.d2x_ds2.length;
    length += 8 * object.d2y_ds2.length;
    length += 8 * object.curvature.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PathPlannerOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8250a011137bc624e80892f39cfdefe3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] x
    float64[] y
    float64[] dx_ds
    float64[] dy_ds
    float64[] d2x_ds2
    float64[] d2y_ds2
    float64[] curvature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathPlannerOutput(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.dx_ds !== undefined) {
      resolved.dx_ds = msg.dx_ds;
    }
    else {
      resolved.dx_ds = []
    }

    if (msg.dy_ds !== undefined) {
      resolved.dy_ds = msg.dy_ds;
    }
    else {
      resolved.dy_ds = []
    }

    if (msg.d2x_ds2 !== undefined) {
      resolved.d2x_ds2 = msg.d2x_ds2;
    }
    else {
      resolved.d2x_ds2 = []
    }

    if (msg.d2y_ds2 !== undefined) {
      resolved.d2y_ds2 = msg.d2y_ds2;
    }
    else {
      resolved.d2y_ds2 = []
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = []
    }

    return resolved;
    }
};

module.exports = PathPlannerOutput;
