// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutingActionEnum = require('./RoutingActionEnum.js');
let PNPRoadId = require('./PNPRoadId.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RoutingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.request_id = null;
      this.action = null;
      this.parking_lotId = null;
      this.ego_parking_spaceId = null;
      this.parking_spaceId = null;
      this.target_roadId = null;
      this.target_road_offset = null;
      this.obstacle_roadId_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new RoutingActionEnum();
      }
      if (initObj.hasOwnProperty('parking_lotId')) {
        this.parking_lotId = initObj.parking_lotId
      }
      else {
        this.parking_lotId = 0;
      }
      if (initObj.hasOwnProperty('ego_parking_spaceId')) {
        this.ego_parking_spaceId = initObj.ego_parking_spaceId
      }
      else {
        this.ego_parking_spaceId = 0;
      }
      if (initObj.hasOwnProperty('parking_spaceId')) {
        this.parking_spaceId = initObj.parking_spaceId
      }
      else {
        this.parking_spaceId = 0;
      }
      if (initObj.hasOwnProperty('target_roadId')) {
        this.target_roadId = initObj.target_roadId
      }
      else {
        this.target_roadId = new PNPRoadId();
      }
      if (initObj.hasOwnProperty('target_road_offset')) {
        this.target_road_offset = initObj.target_road_offset
      }
      else {
        this.target_road_offset = 0.0;
      }
      if (initObj.hasOwnProperty('obstacle_roadId_list')) {
        this.obstacle_roadId_list = initObj.obstacle_roadId_list
      }
      else {
        this.obstacle_roadId_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [request_id]
    bufferOffset = _serializer.uint64(obj.request_id, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = RoutingActionEnum.serialize(obj.action, buffer, bufferOffset);
    // Serialize message field [parking_lotId]
    bufferOffset = _serializer.uint32(obj.parking_lotId, buffer, bufferOffset);
    // Serialize message field [ego_parking_spaceId]
    bufferOffset = _serializer.uint32(obj.ego_parking_spaceId, buffer, bufferOffset);
    // Serialize message field [parking_spaceId]
    bufferOffset = _serializer.uint32(obj.parking_spaceId, buffer, bufferOffset);
    // Serialize message field [target_roadId]
    bufferOffset = PNPRoadId.serialize(obj.target_roadId, buffer, bufferOffset);
    // Serialize message field [target_road_offset]
    bufferOffset = _serializer.float32(obj.target_road_offset, buffer, bufferOffset);
    // Serialize message field [obstacle_roadId_list]
    // Serialize the length for message field [obstacle_roadId_list]
    bufferOffset = _serializer.uint32(obj.obstacle_roadId_list.length, buffer, bufferOffset);
    obj.obstacle_roadId_list.forEach((val) => {
      bufferOffset = PNPRoadId.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingRequest
    let len;
    let data = new RoutingRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = RoutingActionEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_lotId]
    data.parking_lotId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ego_parking_spaceId]
    data.ego_parking_spaceId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [parking_spaceId]
    data.parking_spaceId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [target_roadId]
    data.target_roadId = PNPRoadId.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_road_offset]
    data.target_road_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obstacle_roadId_list]
    // Deserialize array length for message field [obstacle_roadId_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_roadId_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_roadId_list[i] = PNPRoadId.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 10 * object.obstacle_roadId_list.length;
    return length + 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/RoutingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a0c73549abc12da5175bf72c6e347ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint64 request_id
    pnp_msgs/RoutingActionEnum action
    uint32 parking_lotId
    uint32 ego_parking_spaceId
    uint32 parking_spaceId
    pnp_msgs/PNPRoadId target_roadId
    float32 target_road_offset
    pnp_msgs/PNPRoadId[] obstacle_roadId_list
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: pnp_msgs/RoutingActionEnum
    uint8 PARKING_ENTER = 0
    uint8 PARKING_EXIT = 1
    uint8 value
    
    ================================================================================
    MSG: pnp_msgs/PNPRoadId
    uint16 ur_id
    uint32 tile_id
    uint32 road_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutingRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = 0
    }

    if (msg.action !== undefined) {
      resolved.action = RoutingActionEnum.Resolve(msg.action)
    }
    else {
      resolved.action = new RoutingActionEnum()
    }

    if (msg.parking_lotId !== undefined) {
      resolved.parking_lotId = msg.parking_lotId;
    }
    else {
      resolved.parking_lotId = 0
    }

    if (msg.ego_parking_spaceId !== undefined) {
      resolved.ego_parking_spaceId = msg.ego_parking_spaceId;
    }
    else {
      resolved.ego_parking_spaceId = 0
    }

    if (msg.parking_spaceId !== undefined) {
      resolved.parking_spaceId = msg.parking_spaceId;
    }
    else {
      resolved.parking_spaceId = 0
    }

    if (msg.target_roadId !== undefined) {
      resolved.target_roadId = PNPRoadId.Resolve(msg.target_roadId)
    }
    else {
      resolved.target_roadId = new PNPRoadId()
    }

    if (msg.target_road_offset !== undefined) {
      resolved.target_road_offset = msg.target_road_offset;
    }
    else {
      resolved.target_road_offset = 0.0
    }

    if (msg.obstacle_roadId_list !== undefined) {
      resolved.obstacle_roadId_list = new Array(msg.obstacle_roadId_list.length);
      for (let i = 0; i < resolved.obstacle_roadId_list.length; ++i) {
        resolved.obstacle_roadId_list[i] = PNPRoadId.Resolve(msg.obstacle_roadId_list[i]);
      }
    }
    else {
      resolved.obstacle_roadId_list = []
    }

    return resolved;
    }
};

module.exports = RoutingRequest;
