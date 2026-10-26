// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left = null;
      this.right = null;
      this.mid = null;
      this.can_go_straight = null;
      this.can_right_turn = null;
      this.can_left_turn = null;
      this.can_u_turn = null;
      this.bbox_pts = null;
      this.bbox_cnt = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
      if (initObj.hasOwnProperty('mid')) {
        this.mid = initObj.mid
      }
      else {
        this.mid = 0;
      }
      if (initObj.hasOwnProperty('can_go_straight')) {
        this.can_go_straight = initObj.can_go_straight
      }
      else {
        this.can_go_straight = false;
      }
      if (initObj.hasOwnProperty('can_right_turn')) {
        this.can_right_turn = initObj.can_right_turn
      }
      else {
        this.can_right_turn = false;
      }
      if (initObj.hasOwnProperty('can_left_turn')) {
        this.can_left_turn = initObj.can_left_turn
      }
      else {
        this.can_left_turn = false;
      }
      if (initObj.hasOwnProperty('can_u_turn')) {
        this.can_u_turn = initObj.can_u_turn
      }
      else {
        this.can_u_turn = false;
      }
      if (initObj.hasOwnProperty('bbox_pts')) {
        this.bbox_pts = initObj.bbox_pts
      }
      else {
        this.bbox_pts = [];
      }
      if (initObj.hasOwnProperty('bbox_cnt')) {
        this.bbox_cnt = initObj.bbox_cnt
      }
      else {
        this.bbox_cnt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLight
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.int8(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.int8(obj.right, buffer, bufferOffset);
    // Serialize message field [mid]
    bufferOffset = _serializer.int8(obj.mid, buffer, bufferOffset);
    // Serialize message field [can_go_straight]
    bufferOffset = _serializer.bool(obj.can_go_straight, buffer, bufferOffset);
    // Serialize message field [can_right_turn]
    bufferOffset = _serializer.bool(obj.can_right_turn, buffer, bufferOffset);
    // Serialize message field [can_left_turn]
    bufferOffset = _serializer.bool(obj.can_left_turn, buffer, bufferOffset);
    // Serialize message field [can_u_turn]
    bufferOffset = _serializer.bool(obj.can_u_turn, buffer, bufferOffset);
    // Serialize message field [bbox_pts]
    // Serialize the length for message field [bbox_pts]
    bufferOffset = _serializer.uint32(obj.bbox_pts.length, buffer, bufferOffset);
    obj.bbox_pts.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bbox_cnt]
    bufferOffset = _serializer.uint8(obj.bbox_cnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLight
    let len;
    let data = new TrafficLight(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [mid]
    data.mid = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [can_go_straight]
    data.can_go_straight = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_right_turn]
    data.can_right_turn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_left_turn]
    data.can_left_turn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [can_u_turn]
    data.can_u_turn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bbox_pts]
    // Deserialize array length for message field [bbox_pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bbox_pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bbox_pts[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bbox_cnt]
    data.bbox_cnt = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.bbox_pts.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/TrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42b80712527dc831c63b18d66634ee39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int8 left
    int8 right
    int8 mid
    bool can_go_straight
    bool can_right_turn
    bool can_left_turn
    bool can_u_turn
    geometry_msgs/Pose2D[] bbox_pts
    uint8 bbox_cnt
    
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
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLight(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    if (msg.mid !== undefined) {
      resolved.mid = msg.mid;
    }
    else {
      resolved.mid = 0
    }

    if (msg.can_go_straight !== undefined) {
      resolved.can_go_straight = msg.can_go_straight;
    }
    else {
      resolved.can_go_straight = false
    }

    if (msg.can_right_turn !== undefined) {
      resolved.can_right_turn = msg.can_right_turn;
    }
    else {
      resolved.can_right_turn = false
    }

    if (msg.can_left_turn !== undefined) {
      resolved.can_left_turn = msg.can_left_turn;
    }
    else {
      resolved.can_left_turn = false
    }

    if (msg.can_u_turn !== undefined) {
      resolved.can_u_turn = msg.can_u_turn;
    }
    else {
      resolved.can_u_turn = false
    }

    if (msg.bbox_pts !== undefined) {
      resolved.bbox_pts = new Array(msg.bbox_pts.length);
      for (let i = 0; i < resolved.bbox_pts.length; ++i) {
        resolved.bbox_pts[i] = geometry_msgs.msg.Pose2D.Resolve(msg.bbox_pts[i]);
      }
    }
    else {
      resolved.bbox_pts = []
    }

    if (msg.bbox_cnt !== undefined) {
      resolved.bbox_cnt = msg.bbox_cnt;
    }
    else {
      resolved.bbox_cnt = 0
    }

    return resolved;
    }
};

module.exports = TrafficLight;
