// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutingStatusEnum = require('./RoutingStatusEnum.js');
let PNPRoutingTour = require('./PNPRoutingTour.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PNPRoutingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.request_id = null;
      this.response_id = null;
      this.status = null;
      this.main_tour_id = null;
      this.tour = null;
      this.error_msg = null;
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
      if (initObj.hasOwnProperty('response_id')) {
        this.response_id = initObj.response_id
      }
      else {
        this.response_id = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new RoutingStatusEnum();
      }
      if (initObj.hasOwnProperty('main_tour_id')) {
        this.main_tour_id = initObj.main_tour_id
      }
      else {
        this.main_tour_id = 0;
      }
      if (initObj.hasOwnProperty('tour')) {
        this.tour = initObj.tour
      }
      else {
        this.tour = new PNPRoutingTour();
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPRoutingResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [request_id]
    bufferOffset = _serializer.uint64(obj.request_id, buffer, bufferOffset);
    // Serialize message field [response_id]
    bufferOffset = _serializer.uint64(obj.response_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = RoutingStatusEnum.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [main_tour_id]
    bufferOffset = _serializer.uint64(obj.main_tour_id, buffer, bufferOffset);
    // Serialize message field [tour]
    bufferOffset = PNPRoutingTour.serialize(obj.tour, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPRoutingResponse
    let len;
    let data = new PNPRoutingResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [response_id]
    data.response_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = RoutingStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [main_tour_id]
    data.main_tour_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [tour]
    data.tour = PNPRoutingTour.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PNPRoutingTour.getMessageSize(object.tour);
    length += _getByteLength(object.error_msg);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/PNPRoutingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f057f9fbc8c3afd8178c0d4175aa4107';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint64 request_id
    uint64 response_id
    pnp_msgs/RoutingStatusEnum status
    uint64 main_tour_id
    pnp_msgs/PNPRoutingTour tour
    string error_msg
    
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
    MSG: pnp_msgs/RoutingStatusEnum
    uint8 ROUTING_SUCCESS = 0
    uint8 NO_ROUTING_FOUND = 1
    uint8 NO_ROADS_NEARBY_VEHICLE = 2
    uint8 NO_PARKING_LOT = 3
    uint8 NO_PARKING_SPACE = 4
    uint8 NO_ROADS_BOUNDED_SPACE = 5
    uint8 TOO_SHORT_PATH = 6
    uint8 TOO_LONG_PATH = 7
    uint8 MAP_DATA_ERROR = 8
    uint8 SYSTEM_ERROR = 255
    uint8 status
    
    ================================================================================
    MSG: pnp_msgs/PNPRoutingTour
    uint64 tour_id
    pnp_msgs/Path[] path_list
    float32 total_length
    
    ================================================================================
    MSG: pnp_msgs/Path
    pnp_msgs/IdxRoadId[] road_list
    float32 length
    pnp_msgs/RoadCursor start_road_cursor
    pnp_msgs/RoadCursor end_road_cursor
    
    ================================================================================
    MSG: pnp_msgs/IdxRoadId
    pnp_msgs/PNPRoadId road_id
    uint32 index_at_tour
    
    ================================================================================
    MSG: pnp_msgs/PNPRoadId
    uint16 ur_id
    uint32 tile_id
    uint32 road_count
    
    ================================================================================
    MSG: pnp_msgs/RoadCursor
    pnp_msgs/IdxRoadId index_road_id
    float32 offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPRoutingResponse(null);
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

    if (msg.response_id !== undefined) {
      resolved.response_id = msg.response_id;
    }
    else {
      resolved.response_id = 0
    }

    if (msg.status !== undefined) {
      resolved.status = RoutingStatusEnum.Resolve(msg.status)
    }
    else {
      resolved.status = new RoutingStatusEnum()
    }

    if (msg.main_tour_id !== undefined) {
      resolved.main_tour_id = msg.main_tour_id;
    }
    else {
      resolved.main_tour_id = 0
    }

    if (msg.tour !== undefined) {
      resolved.tour = PNPRoutingTour.Resolve(msg.tour)
    }
    else {
      resolved.tour = new PNPRoutingTour()
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    return resolved;
    }
};

module.exports = PNPRoutingResponse;
