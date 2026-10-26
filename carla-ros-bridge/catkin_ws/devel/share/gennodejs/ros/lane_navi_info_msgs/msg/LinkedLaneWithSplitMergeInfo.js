// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SplitMergeInfo = require('./SplitMergeInfo.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class LinkedLaneWithSplitMergeInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.split_merge_info = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('split_merge_info')) {
        this.split_merge_info = initObj.split_merge_info
      }
      else {
        this.split_merge_info = new SplitMergeInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkedLaneWithSplitMergeInfo
    // Serialize message field [lane_id]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [split_merge_info]
    bufferOffset = SplitMergeInfo.serialize(obj.split_merge_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkedLaneWithSplitMergeInfo
    let len;
    let data = new LinkedLaneWithSplitMergeInfo(null);
    // Deserialize message field [lane_id]
    data.lane_id = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [split_merge_info]
    data.split_merge_info = SplitMergeInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3462ad2276fbd8b14c6c839076350ba4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/TrackId lane_id
    lane_navi_info_msgs/SplitMergeInfo split_merge_info
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/SplitMergeInfo
    uint8 NONE = 0
    uint8 SPLIT = 1
    uint8 MERGE = 2
    uint8 CONTINUE = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LinkedLaneWithSplitMergeInfo(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = landmark_msgs.msg.TrackId.Resolve(msg.lane_id)
    }
    else {
      resolved.lane_id = new landmark_msgs.msg.TrackId()
    }

    if (msg.split_merge_info !== undefined) {
      resolved.split_merge_info = SplitMergeInfo.Resolve(msg.split_merge_info)
    }
    else {
      resolved.split_merge_info = new SplitMergeInfo()
    }

    return resolved;
    }
};

module.exports = LinkedLaneWithSplitMergeInfo;
