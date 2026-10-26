// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class MLARoadLaneIdInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.road_id = null;
      this.offset = null;
      this.road_class = null;
      this.floor_id = null;
      this.status = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('road_id')) {
        this.road_id = initObj.road_id
      }
      else {
        this.road_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('road_class')) {
        this.road_class = initObj.road_class
      }
      else {
        this.road_class = 0;
      }
      if (initObj.hasOwnProperty('floor_id')) {
        this.floor_id = initObj.floor_id
      }
      else {
        this.floor_id = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLARoadLaneIdInfo
    // Serialize message field [lane_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [road_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.road_id, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.uint32(obj.offset, buffer, bufferOffset);
    // Serialize message field [road_class]
    bufferOffset = _serializer.uint16(obj.road_class, buffer, bufferOffset);
    // Serialize message field [floor_id]
    bufferOffset = _serializer.float64(obj.floor_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint16(obj.status, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint16(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLARoadLaneIdInfo
    let len;
    let data = new MLARoadLaneIdInfo(null);
    // Deserialize message field [lane_id]
    data.lane_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_id]
    data.road_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [road_class]
    data.road_class = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [floor_id]
    data.floor_id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLARoadLaneIdInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c72cc0c521b316521e57f63cc9a1a145';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/TrackId lane_id
    landmark_msgs/TrackId road_id
    uint32 offset
    uint16 road_class
    float64 floor_id
    uint16 status
    uint16 reserved
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLARoadLaneIdInfo(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = landmark_msgs.msg.TrackId.Resolve(msg.lane_id)
    }
    else {
      resolved.lane_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.road_id !== undefined) {
      resolved.road_id = landmark_msgs.msg.TrackId.Resolve(msg.road_id)
    }
    else {
      resolved.road_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.road_class !== undefined) {
      resolved.road_class = msg.road_class;
    }
    else {
      resolved.road_class = 0
    }

    if (msg.floor_id !== undefined) {
      resolved.floor_id = msg.floor_id;
    }
    else {
      resolved.floor_id = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = MLARoadLaneIdInfo;
