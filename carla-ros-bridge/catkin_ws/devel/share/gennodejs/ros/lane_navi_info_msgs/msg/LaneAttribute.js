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

class LaneAttribute {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.lane_direction = null;
      this.start_offset = null;
      this.end_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('lane_direction')) {
        this.lane_direction = initObj.lane_direction
      }
      else {
        this.lane_direction = new landmark_msgs.msg.LaneCenterNodeDirectionTypeEnum();
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
    // Serializes a message object of type LaneAttribute
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lane_direction]
    bufferOffset = landmark_msgs.msg.LaneCenterNodeDirectionTypeEnum.serialize(obj.lane_direction, buffer, bufferOffset);
    // Serialize message field [start_offset]
    bufferOffset = _serializer.float32(obj.start_offset, buffer, bufferOffset);
    // Serialize message field [end_offset]
    bufferOffset = _serializer.float32(obj.end_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttribute
    let len;
    let data = new LaneAttribute(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_direction]
    data.lane_direction = landmark_msgs.msg.LaneCenterNodeDirectionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_offset]
    data.start_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_offset]
    data.end_offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/LaneAttribute';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e14f5da531b46624c1b6a5969a7c5c72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_DIRECTION_VALID = 1
    uint8 START_OFFSET_VALID = 2
    uint8 END_OFFSET_VALID = 4
    uint8 available
    landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum
    uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
    uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
    uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
    uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
    uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
    uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
    uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
    uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
    uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttribute(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lane_direction !== undefined) {
      resolved.lane_direction = landmark_msgs.msg.LaneCenterNodeDirectionTypeEnum.Resolve(msg.lane_direction)
    }
    else {
      resolved.lane_direction = new landmark_msgs.msg.LaneCenterNodeDirectionTypeEnum()
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

// Constants for message
LaneAttribute.Constants = {
  LANE_DIRECTION_VALID: 1,
  START_OFFSET_VALID: 2,
  END_OFFSET_VALID: 4,
}

module.exports = LaneAttribute;
