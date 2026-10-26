// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polyline = require('./Polyline.js');
let Lane_Cursor = require('./Lane_Cursor.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class ExperienceTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polyline = null;
      this.related_lane_id = null;
      this.start_lane = null;
      this.end_lane = null;
    }
    else {
      if (initObj.hasOwnProperty('polyline')) {
        this.polyline = initObj.polyline
      }
      else {
        this.polyline = new Polyline();
      }
      if (initObj.hasOwnProperty('related_lane_id')) {
        this.related_lane_id = initObj.related_lane_id
      }
      else {
        this.related_lane_id = [];
      }
      if (initObj.hasOwnProperty('start_lane')) {
        this.start_lane = initObj.start_lane
      }
      else {
        this.start_lane = new Lane_Cursor();
      }
      if (initObj.hasOwnProperty('end_lane')) {
        this.end_lane = initObj.end_lane
      }
      else {
        this.end_lane = new Lane_Cursor();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExperienceTrajectory
    // Serialize message field [polyline]
    bufferOffset = Polyline.serialize(obj.polyline, buffer, bufferOffset);
    // Serialize message field [related_lane_id]
    // Serialize the length for message field [related_lane_id]
    bufferOffset = _serializer.uint32(obj.related_lane_id.length, buffer, bufferOffset);
    obj.related_lane_id.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [start_lane]
    bufferOffset = Lane_Cursor.serialize(obj.start_lane, buffer, bufferOffset);
    // Serialize message field [end_lane]
    bufferOffset = Lane_Cursor.serialize(obj.end_lane, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExperienceTrajectory
    let len;
    let data = new ExperienceTrajectory(null);
    // Deserialize message field [polyline]
    data.polyline = Polyline.deserialize(buffer, bufferOffset);
    // Deserialize message field [related_lane_id]
    // Deserialize array length for message field [related_lane_id]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.related_lane_id = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.related_lane_id[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [start_lane]
    data.start_lane = Lane_Cursor.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_lane]
    data.end_lane = Lane_Cursor.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Polyline.getMessageSize(object.polyline);
    length += 18 * object.related_lane_id.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/ExperienceTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45b1b4350457a5db2a1e546375062dbd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane_navi_info_msgs/Polyline polyline
    landmark_msgs/TrackId[] related_lane_id
    lane_navi_info_msgs/Lane_Cursor start_lane
    lane_navi_info_msgs/Lane_Cursor end_lane
    
    ================================================================================
    MSG: lane_navi_info_msgs/Polyline
    lane_navi_info_msgs/Point[] points
    
    ================================================================================
    MSG: lane_navi_info_msgs/Point
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/Lane_Cursor
    landmark_msgs/TrackId lane_id
    float32 offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExperienceTrajectory(null);
    if (msg.polyline !== undefined) {
      resolved.polyline = Polyline.Resolve(msg.polyline)
    }
    else {
      resolved.polyline = new Polyline()
    }

    if (msg.related_lane_id !== undefined) {
      resolved.related_lane_id = new Array(msg.related_lane_id.length);
      for (let i = 0; i < resolved.related_lane_id.length; ++i) {
        resolved.related_lane_id[i] = landmark_msgs.msg.TrackId.Resolve(msg.related_lane_id[i]);
      }
    }
    else {
      resolved.related_lane_id = []
    }

    if (msg.start_lane !== undefined) {
      resolved.start_lane = Lane_Cursor.Resolve(msg.start_lane)
    }
    else {
      resolved.start_lane = new Lane_Cursor()
    }

    if (msg.end_lane !== undefined) {
      resolved.end_lane = Lane_Cursor.Resolve(msg.end_lane)
    }
    else {
      resolved.end_lane = new Lane_Cursor()
    }

    return resolved;
    }
};

module.exports = ExperienceTrajectory;
