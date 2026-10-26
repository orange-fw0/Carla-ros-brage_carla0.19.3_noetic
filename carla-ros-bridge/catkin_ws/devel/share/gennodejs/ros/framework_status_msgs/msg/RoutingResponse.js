// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutingRequest = require('./RoutingRequest.js');
let MDKDiRoadId = require('./MDKDiRoadId.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RoutingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.request = null;
      this.success = null;
      this.di_roads = null;
      this.road_points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = new RoutingRequest();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('di_roads')) {
        this.di_roads = initObj.di_roads
      }
      else {
        this.di_roads = [];
      }
      if (initObj.hasOwnProperty('road_points')) {
        this.road_points = initObj.road_points
      }
      else {
        this.road_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = RoutingRequest.serialize(obj.request, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [di_roads]
    // Serialize the length for message field [di_roads]
    bufferOffset = _serializer.uint32(obj.di_roads.length, buffer, bufferOffset);
    obj.di_roads.forEach((val) => {
      bufferOffset = MDKDiRoadId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_points]
    // Serialize the length for message field [road_points]
    bufferOffset = _serializer.uint32(obj.road_points.length, buffer, bufferOffset);
    obj.road_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingResponse
    let len;
    let data = new RoutingResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [request]
    data.request = RoutingRequest.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [di_roads]
    // Deserialize array length for message field [di_roads]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.di_roads = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.di_roads[i] = MDKDiRoadId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_points]
    // Deserialize array length for message field [road_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += RoutingRequest.getMessageSize(object.request);
    length += 17 * object.di_roads.length;
    length += 24 * object.road_points.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/RoutingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '915e22414641ea31361c68ceb1642d31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    framework_status_msgs/RoutingRequest request
    bool success
    framework_status_msgs/MDKDiRoadId[] di_roads
    geometry_msgs/Point[] road_points
    
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
    MSG: framework_status_msgs/RoutingRequest
    std_msgs/Header header
    int64 order_id
    framework_status_msgs/RoutingRequestType type
    string json_path
    geometry_msgs/Point[] route_ends
    
    ================================================================================
    MSG: framework_status_msgs/RoutingRequestType
    uint8 ROUTE_ENDS = 0
    uint8 JSON_FILE = 1
    uint8 value
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: framework_status_msgs/MDKDiRoadId
    int64 tile_id
    int64 road_count
    bool dir_reversed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutingResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.request !== undefined) {
      resolved.request = RoutingRequest.Resolve(msg.request)
    }
    else {
      resolved.request = new RoutingRequest()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.di_roads !== undefined) {
      resolved.di_roads = new Array(msg.di_roads.length);
      for (let i = 0; i < resolved.di_roads.length; ++i) {
        resolved.di_roads[i] = MDKDiRoadId.Resolve(msg.di_roads[i]);
      }
    }
    else {
      resolved.di_roads = []
    }

    if (msg.road_points !== undefined) {
      resolved.road_points = new Array(msg.road_points.length);
      for (let i = 0; i < resolved.road_points.length; ++i) {
        resolved.road_points[i] = geometry_msgs.msg.Point.Resolve(msg.road_points[i]);
      }
    }
    else {
      resolved.road_points = []
    }

    return resolved;
    }
};

module.exports = RoutingResponse;
