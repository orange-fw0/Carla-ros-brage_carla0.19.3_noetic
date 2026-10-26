// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class LaneGroupsOnRoad {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_group_id = null;
      this.start_offset = null;
      this.end_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_group_id')) {
        this.lane_group_id = initObj.lane_group_id
      }
      else {
        this.lane_group_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('start_offset')) {
        this.start_offset = initObj.start_offset
      }
      else {
        this.start_offset = 0.0;
      }
      if (initObj.hasOwnProperty('end_offset')) {
        this.end_offset = initObj.end_offset
      }
      else {
        this.end_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneGroupsOnRoad
    // Serialize message field [lane_group_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.lane_group_id, buffer, bufferOffset);
    // Serialize message field [start_offset]
    bufferOffset = _serializer.float32(obj.start_offset, buffer, bufferOffset);
    // Serialize message field [end_offset]
    bufferOffset = _serializer.float32(obj.end_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneGroupsOnRoad
    let len;
    let data = new LaneGroupsOnRoad(null);
    // Deserialize message field [lane_group_id]
    data.lane_group_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_offset]
    data.start_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_offset]
    data.end_offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/LaneGroupsOnRoad';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c4286373062ebd0576cf2e21e43f9f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/TrackId lane_group_id
    float32 start_offset
    float32 end_offset
    
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
    const resolved = new LaneGroupsOnRoad(null);
    if (msg.lane_group_id !== undefined) {
      resolved.lane_group_id = landmark_msgs.msg.TrackId.Resolve(msg.lane_group_id)
    }
    else {
      resolved.lane_group_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.start_offset !== undefined) {
      resolved.start_offset = msg.start_offset;
    }
    else {
      resolved.start_offset = 0.0
    }

    if (msg.end_offset !== undefined) {
      resolved.end_offset = msg.end_offset;
    }
    else {
      resolved.end_offset = 0.0
    }

    return resolved;
    }
};

module.exports = LaneGroupsOnRoad;
