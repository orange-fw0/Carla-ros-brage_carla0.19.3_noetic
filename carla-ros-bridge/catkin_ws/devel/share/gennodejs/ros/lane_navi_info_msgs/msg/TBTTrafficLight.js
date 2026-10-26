// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cursor = require('./Cursor.js');
let Point = require('./Point.js');

//-----------------------------------------------------------

class TBTTrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.offset = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = new Cursor();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TBTTrafficLight
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = Cursor.serialize(obj.offset, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TBTTrafficLight
    let len;
    let data = new TBTTrafficLight(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = Cursor.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/TBTTrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7838d6665117d6bb919f9737f3758bda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 OFFSET_VALID = 1
    uint8 POSITION_VALID = 2
    uint8 available
    lane_navi_info_msgs/Cursor offset
    lane_navi_info_msgs/Point position
    
    ================================================================================
    MSG: lane_navi_info_msgs/Cursor
    landmark_msgs/TrackId road_id
    float32 offset
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/Point
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
    const resolved = new TBTTrafficLight(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.offset !== undefined) {
      resolved.offset = Cursor.Resolve(msg.offset)
    }
    else {
      resolved.offset = new Cursor()
    }

    if (msg.position !== undefined) {
      resolved.position = Point.Resolve(msg.position)
    }
    else {
      resolved.position = new Point()
    }

    return resolved;
    }
};

// Constants for message
TBTTrafficLight.Constants = {
  OFFSET_VALID: 1,
  POSITION_VALID: 2,
}

module.exports = TBTTrafficLight;
