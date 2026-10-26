// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutingRequestType = require('./RoutingRequestType.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RoutingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.order_id = null;
      this.type = null;
      this.json_path = null;
      this.route_ends = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new RoutingRequestType();
      }
      if (initObj.hasOwnProperty('json_path')) {
        this.json_path = initObj.json_path
      }
      else {
        this.json_path = '';
      }
      if (initObj.hasOwnProperty('route_ends')) {
        this.route_ends = initObj.route_ends
      }
      else {
        this.route_ends = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [order_id]
    bufferOffset = _serializer.int64(obj.order_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = RoutingRequestType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [json_path]
    bufferOffset = _serializer.string(obj.json_path, buffer, bufferOffset);
    // Serialize message field [route_ends]
    // Serialize the length for message field [route_ends]
    bufferOffset = _serializer.uint32(obj.route_ends.length, buffer, bufferOffset);
    obj.route_ends.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingRequest
    let len;
    let data = new RoutingRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = RoutingRequestType.deserialize(buffer, bufferOffset);
    // Deserialize message field [json_path]
    data.json_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [route_ends]
    // Deserialize array length for message field [route_ends]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.route_ends = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.route_ends[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.json_path);
    length += 24 * object.route_ends.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/RoutingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebc20bf1e15843c1c60434850faa0494';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int64 order_id
    framework_status_msgs/RoutingRequestType type
    string json_path
    geometry_msgs/Point[] route_ends
    
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

    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = RoutingRequestType.Resolve(msg.type)
    }
    else {
      resolved.type = new RoutingRequestType()
    }

    if (msg.json_path !== undefined) {
      resolved.json_path = msg.json_path;
    }
    else {
      resolved.json_path = ''
    }

    if (msg.route_ends !== undefined) {
      resolved.route_ends = new Array(msg.route_ends.length);
      for (let i = 0; i < resolved.route_ends.length; ++i) {
        resolved.route_ends[i] = geometry_msgs.msg.Point.Resolve(msg.route_ends[i]);
      }
    }
    else {
      resolved.route_ends = []
    }

    return resolved;
    }
};

module.exports = RoutingRequest;
