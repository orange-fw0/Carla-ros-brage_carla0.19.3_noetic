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

class SDLongSolidLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.effect_road_ids = null;
      this.valid_lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('effect_road_ids')) {
        this.effect_road_ids = initObj.effect_road_ids
      }
      else {
        this.effect_road_ids = [];
      }
      if (initObj.hasOwnProperty('valid_lanes')) {
        this.valid_lanes = initObj.valid_lanes
      }
      else {
        this.valid_lanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDLongSolidLine
    // Serialize message field [effect_road_ids]
    // Serialize the length for message field [effect_road_ids]
    bufferOffset = _serializer.uint32(obj.effect_road_ids.length, buffer, bufferOffset);
    obj.effect_road_ids.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [valid_lanes]
    bufferOffset = _arraySerializer.uint32(obj.valid_lanes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDLongSolidLine
    let len;
    let data = new SDLongSolidLine(null);
    // Deserialize message field [effect_road_ids]
    // Deserialize array length for message field [effect_road_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.effect_road_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.effect_road_ids[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [valid_lanes]
    data.valid_lanes = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 18 * object.effect_road_ids.length;
    length += 4 * object.valid_lanes.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDLongSolidLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00d386e361e1daca07ad28c613b509db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/TrackId[] effect_road_ids
    uint32[] valid_lanes
    
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
    const resolved = new SDLongSolidLine(null);
    if (msg.effect_road_ids !== undefined) {
      resolved.effect_road_ids = new Array(msg.effect_road_ids.length);
      for (let i = 0; i < resolved.effect_road_ids.length; ++i) {
        resolved.effect_road_ids[i] = landmark_msgs.msg.TrackId.Resolve(msg.effect_road_ids[i]);
      }
    }
    else {
      resolved.effect_road_ids = []
    }

    if (msg.valid_lanes !== undefined) {
      resolved.valid_lanes = msg.valid_lanes;
    }
    else {
      resolved.valid_lanes = []
    }

    return resolved;
    }
};

module.exports = SDLongSolidLine;
