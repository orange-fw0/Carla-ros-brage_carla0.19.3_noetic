// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutingResponse = require('./RoutingResponse.js');
let ManagerNotify = require('./ManagerNotify.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ManagerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.available = null;
      this.auto_status = null;
      this.map_engine_status = null;
      this.map_routing_response = null;
      this.notify = null;
      this.hdmap_available = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('auto_status')) {
        this.auto_status = initObj.auto_status
      }
      else {
        this.auto_status = 0;
      }
      if (initObj.hasOwnProperty('map_engine_status')) {
        this.map_engine_status = initObj.map_engine_status
      }
      else {
        this.map_engine_status = 0;
      }
      if (initObj.hasOwnProperty('map_routing_response')) {
        this.map_routing_response = initObj.map_routing_response
      }
      else {
        this.map_routing_response = new RoutingResponse();
      }
      if (initObj.hasOwnProperty('notify')) {
        this.notify = initObj.notify
      }
      else {
        this.notify = [];
      }
      if (initObj.hasOwnProperty('hdmap_available')) {
        this.hdmap_available = initObj.hdmap_available
      }
      else {
        this.hdmap_available = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManagerStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [auto_status]
    bufferOffset = _serializer.uint8(obj.auto_status, buffer, bufferOffset);
    // Serialize message field [map_engine_status]
    bufferOffset = _serializer.uint8(obj.map_engine_status, buffer, bufferOffset);
    // Serialize message field [map_routing_response]
    bufferOffset = RoutingResponse.serialize(obj.map_routing_response, buffer, bufferOffset);
    // Serialize message field [notify]
    // Serialize the length for message field [notify]
    bufferOffset = _serializer.uint32(obj.notify.length, buffer, bufferOffset);
    obj.notify.forEach((val) => {
      bufferOffset = ManagerNotify.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [hdmap_available]
    bufferOffset = _serializer.bool(obj.hdmap_available, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManagerStatus
    let len;
    let data = new ManagerStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [auto_status]
    data.auto_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [map_engine_status]
    data.map_engine_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [map_routing_response]
    data.map_routing_response = RoutingResponse.deserialize(buffer, bufferOffset);
    // Deserialize message field [notify]
    // Deserialize array length for message field [notify]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.notify = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.notify[i] = ManagerNotify.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [hdmap_available]
    data.hdmap_available = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += RoutingResponse.getMessageSize(object.map_routing_response);
    object.notify.forEach((val) => {
      length += ManagerNotify.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/ManagerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bee84429af0bd75d8feb94d49983977';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 INITIALIZING = 0
    uint8 READY = 1
    uint8 ENGAGE_PENDING = 2
    uint8 ENGAGED = 3
    uint8 DISENGAGE_PENDING = 4
    uint8 FAULT = 5
    uint8 NAVIGATE = 0
    uint8 CRUISE = 1
    uint8 OFF_MAP = 2
    uint8 AUTO_STATUS = 1
    uint8 MAP_ENGINE_STATUS = 2
    uint8 MAP_ROUTING_RESPONSE = 4
    uint8 NOTIFY = 8
    uint8 HDMAP_AVAILABLE = 16
    std_msgs/Header header
    uint8 available
    uint8 auto_status
    uint8 map_engine_status
    framework_status_msgs/RoutingResponse map_routing_response
    framework_status_msgs/ManagerNotify[] notify
    bool hdmap_available
    
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
    MSG: framework_status_msgs/RoutingResponse
    std_msgs/Header header
    framework_status_msgs/RoutingRequest request
    bool success
    framework_status_msgs/MDKDiRoadId[] di_roads
    geometry_msgs/Point[] road_points
    
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
    
    ================================================================================
    MSG: framework_status_msgs/ManagerNotify
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManagerStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.auto_status !== undefined) {
      resolved.auto_status = msg.auto_status;
    }
    else {
      resolved.auto_status = 0
    }

    if (msg.map_engine_status !== undefined) {
      resolved.map_engine_status = msg.map_engine_status;
    }
    else {
      resolved.map_engine_status = 0
    }

    if (msg.map_routing_response !== undefined) {
      resolved.map_routing_response = RoutingResponse.Resolve(msg.map_routing_response)
    }
    else {
      resolved.map_routing_response = new RoutingResponse()
    }

    if (msg.notify !== undefined) {
      resolved.notify = new Array(msg.notify.length);
      for (let i = 0; i < resolved.notify.length; ++i) {
        resolved.notify[i] = ManagerNotify.Resolve(msg.notify[i]);
      }
    }
    else {
      resolved.notify = []
    }

    if (msg.hdmap_available !== undefined) {
      resolved.hdmap_available = msg.hdmap_available;
    }
    else {
      resolved.hdmap_available = false
    }

    return resolved;
    }
};

// Constants for message
ManagerStatus.Constants = {
  INITIALIZING: 0,
  READY: 1,
  ENGAGE_PENDING: 2,
  ENGAGED: 3,
  DISENGAGE_PENDING: 4,
  FAULT: 5,
  NAVIGATE: 0,
  CRUISE: 1,
  OFF_MAP: 2,
  AUTO_STATUS: 1,
  MAP_ENGINE_STATUS: 2,
  MAP_ROUTING_RESPONSE: 4,
  NOTIFY: 8,
  HDMAP_AVAILABLE: 16,
}

module.exports = ManagerStatus;
