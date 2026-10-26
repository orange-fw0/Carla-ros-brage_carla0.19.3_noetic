// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Trajectory = require('./Trajectory.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Planning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.v_target = null;
      this.a_target = null;
      this.dis_to_stop = null;
      this.v_array = null;
      this.a_array = null;
      this.traffic_light_decision = null;
      this.traj = null;
      this.pose_array = null;
      this.lon_follow_obstacles = null;
      this.lon_overtake_obstacles = null;
      this.lat_nudge_obstacles = null;
      this.blocking_obstacle_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('v_target')) {
        this.v_target = initObj.v_target
      }
      else {
        this.v_target = 0.0;
      }
      if (initObj.hasOwnProperty('a_target')) {
        this.a_target = initObj.a_target
      }
      else {
        this.a_target = 0.0;
      }
      if (initObj.hasOwnProperty('dis_to_stop')) {
        this.dis_to_stop = initObj.dis_to_stop
      }
      else {
        this.dis_to_stop = 0.0;
      }
      if (initObj.hasOwnProperty('v_array')) {
        this.v_array = initObj.v_array
      }
      else {
        this.v_array = [];
      }
      if (initObj.hasOwnProperty('a_array')) {
        this.a_array = initObj.a_array
      }
      else {
        this.a_array = [];
      }
      if (initObj.hasOwnProperty('traffic_light_decision')) {
        this.traffic_light_decision = initObj.traffic_light_decision
      }
      else {
        this.traffic_light_decision = [];
      }
      if (initObj.hasOwnProperty('traj')) {
        this.traj = initObj.traj
      }
      else {
        this.traj = new Trajectory();
      }
      if (initObj.hasOwnProperty('pose_array')) {
        this.pose_array = initObj.pose_array
      }
      else {
        this.pose_array = [];
      }
      if (initObj.hasOwnProperty('lon_follow_obstacles')) {
        this.lon_follow_obstacles = initObj.lon_follow_obstacles
      }
      else {
        this.lon_follow_obstacles = [];
      }
      if (initObj.hasOwnProperty('lon_overtake_obstacles')) {
        this.lon_overtake_obstacles = initObj.lon_overtake_obstacles
      }
      else {
        this.lon_overtake_obstacles = [];
      }
      if (initObj.hasOwnProperty('lat_nudge_obstacles')) {
        this.lat_nudge_obstacles = initObj.lat_nudge_obstacles
      }
      else {
        this.lat_nudge_obstacles = [];
      }
      if (initObj.hasOwnProperty('blocking_obstacle_id')) {
        this.blocking_obstacle_id = initObj.blocking_obstacle_id
      }
      else {
        this.blocking_obstacle_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Planning
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [v_target]
    bufferOffset = _serializer.float32(obj.v_target, buffer, bufferOffset);
    // Serialize message field [a_target]
    bufferOffset = _serializer.float32(obj.a_target, buffer, bufferOffset);
    // Serialize message field [dis_to_stop]
    bufferOffset = _serializer.float32(obj.dis_to_stop, buffer, bufferOffset);
    // Serialize message field [v_array]
    bufferOffset = _arraySerializer.float32(obj.v_array, buffer, bufferOffset, null);
    // Serialize message field [a_array]
    bufferOffset = _arraySerializer.float32(obj.a_array, buffer, bufferOffset, null);
    // Serialize message field [traffic_light_decision]
    bufferOffset = _arraySerializer.uint8(obj.traffic_light_decision, buffer, bufferOffset, null);
    // Serialize message field [traj]
    bufferOffset = Trajectory.serialize(obj.traj, buffer, bufferOffset);
    // Serialize message field [pose_array]
    // Serialize the length for message field [pose_array]
    bufferOffset = _serializer.uint32(obj.pose_array.length, buffer, bufferOffset);
    obj.pose_array.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lon_follow_obstacles]
    bufferOffset = _arraySerializer.uint32(obj.lon_follow_obstacles, buffer, bufferOffset, null);
    // Serialize message field [lon_overtake_obstacles]
    bufferOffset = _arraySerializer.uint32(obj.lon_overtake_obstacles, buffer, bufferOffset, null);
    // Serialize message field [lat_nudge_obstacles]
    bufferOffset = _arraySerializer.uint32(obj.lat_nudge_obstacles, buffer, bufferOffset, null);
    // Serialize message field [blocking_obstacle_id]
    bufferOffset = _serializer.uint32(obj.blocking_obstacle_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Planning
    let len;
    let data = new Planning(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [v_target]
    data.v_target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a_target]
    data.a_target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_to_stop]
    data.dis_to_stop = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_array]
    data.v_array = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [a_array]
    data.a_array = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [traffic_light_decision]
    data.traffic_light_decision = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [traj]
    data.traj = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_array]
    // Deserialize array length for message field [pose_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_array[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lon_follow_obstacles]
    data.lon_follow_obstacles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [lon_overtake_obstacles]
    data.lon_overtake_obstacles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [lat_nudge_obstacles]
    data.lat_nudge_obstacles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [blocking_obstacle_id]
    data.blocking_obstacle_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.v_array.length;
    length += 4 * object.a_array.length;
    length += object.traffic_light_decision.length;
    length += Trajectory.getMessageSize(object.traj);
    length += 24 * object.pose_array.length;
    length += 4 * object.lon_follow_obstacles.length;
    length += 4 * object.lon_overtake_obstacles.length;
    length += 4 * object.lat_nudge_obstacles.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/Planning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab92aa9d2f14a467829d4a120d4e5d52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float32 v_target
    float32 a_target
    float32 dis_to_stop
    float32[] v_array
    float32[] a_array
    uint8[] traffic_light_decision
    momenta_msgs/Trajectory traj
    geometry_msgs/Pose2D[] pose_array
    uint32[] lon_follow_obstacles
    uint32[] lon_overtake_obstacles
    uint32[] lat_nudge_obstacles
    uint32 blocking_obstacle_id
    
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
    MSG: momenta_msgs/Trajectory
    std_msgs/Header header
    momenta_msgs/Line path
    float32[] vel_array
    float32[] curvature
    float32[] accleration
    float32[] s
    float32[] relative_time
    bool is_replan
    int32 type
    
    ================================================================================
    MSG: momenta_msgs/Line
    geometry_msgs/Pose2D[] pose_array
    
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
    const resolved = new Planning(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.v_target !== undefined) {
      resolved.v_target = msg.v_target;
    }
    else {
      resolved.v_target = 0.0
    }

    if (msg.a_target !== undefined) {
      resolved.a_target = msg.a_target;
    }
    else {
      resolved.a_target = 0.0
    }

    if (msg.dis_to_stop !== undefined) {
      resolved.dis_to_stop = msg.dis_to_stop;
    }
    else {
      resolved.dis_to_stop = 0.0
    }

    if (msg.v_array !== undefined) {
      resolved.v_array = msg.v_array;
    }
    else {
      resolved.v_array = []
    }

    if (msg.a_array !== undefined) {
      resolved.a_array = msg.a_array;
    }
    else {
      resolved.a_array = []
    }

    if (msg.traffic_light_decision !== undefined) {
      resolved.traffic_light_decision = msg.traffic_light_decision;
    }
    else {
      resolved.traffic_light_decision = []
    }

    if (msg.traj !== undefined) {
      resolved.traj = Trajectory.Resolve(msg.traj)
    }
    else {
      resolved.traj = new Trajectory()
    }

    if (msg.pose_array !== undefined) {
      resolved.pose_array = new Array(msg.pose_array.length);
      for (let i = 0; i < resolved.pose_array.length; ++i) {
        resolved.pose_array[i] = geometry_msgs.msg.Pose2D.Resolve(msg.pose_array[i]);
      }
    }
    else {
      resolved.pose_array = []
    }

    if (msg.lon_follow_obstacles !== undefined) {
      resolved.lon_follow_obstacles = msg.lon_follow_obstacles;
    }
    else {
      resolved.lon_follow_obstacles = []
    }

    if (msg.lon_overtake_obstacles !== undefined) {
      resolved.lon_overtake_obstacles = msg.lon_overtake_obstacles;
    }
    else {
      resolved.lon_overtake_obstacles = []
    }

    if (msg.lat_nudge_obstacles !== undefined) {
      resolved.lat_nudge_obstacles = msg.lat_nudge_obstacles;
    }
    else {
      resolved.lat_nudge_obstacles = []
    }

    if (msg.blocking_obstacle_id !== undefined) {
      resolved.blocking_obstacle_id = msg.blocking_obstacle_id;
    }
    else {
      resolved.blocking_obstacle_id = 0
    }

    return resolved;
    }
};

module.exports = Planning;
