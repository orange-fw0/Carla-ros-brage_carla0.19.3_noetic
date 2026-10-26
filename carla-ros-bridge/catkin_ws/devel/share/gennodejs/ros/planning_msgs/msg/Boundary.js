// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Box2f = require('./Box2f.js');
let Polygon2f = require('./Polygon2f.js');

//-----------------------------------------------------------

class Boundary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.box = null;
      this.polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = new Box2f();
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = new Polygon2f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Boundary
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = Box2f.serialize(obj.box, buffer, bufferOffset);
    // Serialize message field [polygon]
    bufferOffset = Polygon2f.serialize(obj.polygon, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Boundary
    let len;
    let data = new Boundary(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = Box2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [polygon]
    data.polygon = Polygon2f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Polygon2f.getMessageSize(object.polygon);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Boundary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ab1c750a8b963519677acba357af34f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BOX = 1
    uint8 POLYGON = 2
    uint8 available
    planning_msgs/Box2f box
    planning_msgs/Polygon2f polygon
    
    ================================================================================
    MSG: planning_msgs/Box2f
    geometry_msgs/Point32 center
    float32 heading
    float32 length
    float32 width
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: planning_msgs/Polygon2f
    geometry_msgs/Point32[] points
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Boundary(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.box !== undefined) {
      resolved.box = Box2f.Resolve(msg.box)
    }
    else {
      resolved.box = new Box2f()
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = Polygon2f.Resolve(msg.polygon)
    }
    else {
      resolved.polygon = new Polygon2f()
    }

    return resolved;
    }
};

// Constants for message
Boundary.Constants = {
  BOX: 1,
  POLYGON: 2,
}

module.exports = Boundary;
