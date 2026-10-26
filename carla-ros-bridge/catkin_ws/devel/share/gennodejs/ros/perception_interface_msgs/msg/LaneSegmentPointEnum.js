// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaneSegmentPointEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneSegmentPointEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneSegmentPointEnum
    let len;
    let data = new LaneSegmentPointEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/LaneSegmentPointEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c3775ea63f9345e02ce4664a9779553';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_SEGMENT_POINT_UNKNOWN = 0
    uint8 LANE_SEGMENT_POINT_FAKE_POINT = 1
    uint8 LANE_SEGMENT_POINT_REAL_POINT = 2
    uint8 LANE_SEGMENT_POINT_FARTHEST_POINT = 3
    uint8 LANE_SEGMENT_POINT_OCCLUSION_POINT = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneSegmentPointEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
LaneSegmentPointEnum.Constants = {
  LANE_SEGMENT_POINT_UNKNOWN: 0,
  LANE_SEGMENT_POINT_FAKE_POINT: 1,
  LANE_SEGMENT_POINT_REAL_POINT: 2,
  LANE_SEGMENT_POINT_FARTHEST_POINT: 3,
  LANE_SEGMENT_POINT_OCCLUSION_POINT: 4,
}

module.exports = LaneSegmentPointEnum;
