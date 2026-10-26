// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkingSpaceInfo = require('./ParkingSpaceInfo.js');
let PointsPosition = require('./PointsPosition.js');
let LiveLPNPMapRoadPoint = require('./LiveLPNPMapRoadPoint.js');
let RoadTypeEnum = require('./RoadTypeEnum.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LiveLPNPMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.psd_map = null;
      this.speed_bumps = null;
      this.pillars = null;
      this.walls = null;
      this.intersections = null;
      this.parking_gates = null;
      this.trajectory_points = null;
      this.road_id = null;
      this.road_type = null;
      this.transform = null;
    }
    else {
      if (initObj.hasOwnProperty('psd_map')) {
        this.psd_map = initObj.psd_map
      }
      else {
        this.psd_map = [];
      }
      if (initObj.hasOwnProperty('speed_bumps')) {
        this.speed_bumps = initObj.speed_bumps
      }
      else {
        this.speed_bumps = [];
      }
      if (initObj.hasOwnProperty('pillars')) {
        this.pillars = initObj.pillars
      }
      else {
        this.pillars = [];
      }
      if (initObj.hasOwnProperty('walls')) {
        this.walls = initObj.walls
      }
      else {
        this.walls = [];
      }
      if (initObj.hasOwnProperty('intersections')) {
        this.intersections = initObj.intersections
      }
      else {
        this.intersections = [];
      }
      if (initObj.hasOwnProperty('parking_gates')) {
        this.parking_gates = initObj.parking_gates
      }
      else {
        this.parking_gates = [];
      }
      if (initObj.hasOwnProperty('trajectory_points')) {
        this.trajectory_points = initObj.trajectory_points
      }
      else {
        this.trajectory_points = [];
      }
      if (initObj.hasOwnProperty('road_id')) {
        this.road_id = initObj.road_id
      }
      else {
        this.road_id = 0;
      }
      if (initObj.hasOwnProperty('road_type')) {
        this.road_type = initObj.road_type
      }
      else {
        this.road_type = new RoadTypeEnum();
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.TransformStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LiveLPNPMap
    // Serialize message field [psd_map]
    // Serialize the length for message field [psd_map]
    bufferOffset = _serializer.uint32(obj.psd_map.length, buffer, bufferOffset);
    obj.psd_map.forEach((val) => {
      bufferOffset = ParkingSpaceInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [speed_bumps]
    // Serialize the length for message field [speed_bumps]
    bufferOffset = _serializer.uint32(obj.speed_bumps.length, buffer, bufferOffset);
    obj.speed_bumps.forEach((val) => {
      bufferOffset = PointsPosition.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pillars]
    // Serialize the length for message field [pillars]
    bufferOffset = _serializer.uint32(obj.pillars.length, buffer, bufferOffset);
    obj.pillars.forEach((val) => {
      bufferOffset = PointsPosition.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [walls]
    // Serialize the length for message field [walls]
    bufferOffset = _serializer.uint32(obj.walls.length, buffer, bufferOffset);
    obj.walls.forEach((val) => {
      bufferOffset = PointsPosition.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [intersections]
    // Serialize the length for message field [intersections]
    bufferOffset = _serializer.uint32(obj.intersections.length, buffer, bufferOffset);
    obj.intersections.forEach((val) => {
      bufferOffset = PointsPosition.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parking_gates]
    // Serialize the length for message field [parking_gates]
    bufferOffset = _serializer.uint32(obj.parking_gates.length, buffer, bufferOffset);
    obj.parking_gates.forEach((val) => {
      bufferOffset = PointsPosition.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [trajectory_points]
    // Serialize the length for message field [trajectory_points]
    bufferOffset = _serializer.uint32(obj.trajectory_points.length, buffer, bufferOffset);
    obj.trajectory_points.forEach((val) => {
      bufferOffset = LiveLPNPMapRoadPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_id]
    bufferOffset = _serializer.uint32(obj.road_id, buffer, bufferOffset);
    // Serialize message field [road_type]
    bufferOffset = RoadTypeEnum.serialize(obj.road_type, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.transform, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiveLPNPMap
    let len;
    let data = new LiveLPNPMap(null);
    // Deserialize message field [psd_map]
    // Deserialize array length for message field [psd_map]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.psd_map = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.psd_map[i] = ParkingSpaceInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [speed_bumps]
    // Deserialize array length for message field [speed_bumps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.speed_bumps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.speed_bumps[i] = PointsPosition.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pillars]
    // Deserialize array length for message field [pillars]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pillars = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pillars[i] = PointsPosition.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [walls]
    // Deserialize array length for message field [walls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.walls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.walls[i] = PointsPosition.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [intersections]
    // Deserialize array length for message field [intersections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.intersections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.intersections[i] = PointsPosition.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parking_gates]
    // Deserialize array length for message field [parking_gates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_gates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_gates[i] = PointsPosition.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [trajectory_points]
    // Deserialize array length for message field [trajectory_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory_points[i] = LiveLPNPMapRoadPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_id]
    data.road_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [road_type]
    data.road_type = RoadTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.psd_map.forEach((val) => {
      length += ParkingSpaceInfo.getMessageSize(val);
    });
    object.speed_bumps.forEach((val) => {
      length += PointsPosition.getMessageSize(val);
    });
    object.pillars.forEach((val) => {
      length += PointsPosition.getMessageSize(val);
    });
    object.walls.forEach((val) => {
      length += PointsPosition.getMessageSize(val);
    });
    object.intersections.forEach((val) => {
      length += PointsPosition.getMessageSize(val);
    });
    object.parking_gates.forEach((val) => {
      length += PointsPosition.getMessageSize(val);
    });
    length += 32 * object.trajectory_points.length;
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.transform);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/LiveLPNPMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b966108b5c783baed293373c10146e4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_manager_msgs/ParkingSpaceInfo[] psd_map
    system_manager_msgs/PointsPosition[] speed_bumps
    system_manager_msgs/PointsPosition[] pillars
    system_manager_msgs/PointsPosition[] walls
    system_manager_msgs/PointsPosition[] intersections
    system_manager_msgs/PointsPosition[] parking_gates
    system_manager_msgs/LiveLPNPMapRoadPoint[] trajectory_points
    uint32 road_id
    system_manager_msgs/RoadTypeEnum road_type
    geometry_msgs/TransformStamped transform
    
    ================================================================================
    MSG: system_manager_msgs/ParkingSpaceInfo
    uint64 id
    uint8 code
    system_manager_msgs/ParkingSpaceStatusEnum status
    system_manager_msgs/ParkingSpaceTypeEnum type
    mla_localization_msgs/MLAPosLocal[] corners
    
    ================================================================================
    MSG: system_manager_msgs/ParkingSpaceStatusEnum
    uint8 NO_INFORMATION = 0
    uint8 PARKING_SPACE_VACANT = 1
    uint8 PARKING_SPACE_OCCUPIED = 2
    uint8 PARKING_SPACE_HIGHLIGHT = 3
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/ParkingSpaceTypeEnum
    uint8 UNKNOWN = 0
    uint8 PARKING_SPACE_WITH_CHARGING = 1
    uint8 value
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosLocal
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: system_manager_msgs/PointsPosition
    mla_localization_msgs/MLAPosLocal[] points
    
    ================================================================================
    MSG: system_manager_msgs/LiveLPNPMapRoadPoint
    float64 x
    float64 y
    float64 z
    float64 width
    
    ================================================================================
    MSG: system_manager_msgs/RoadTypeEnum
    uint8 UNKNOWN = 0
    uint8 LEVEL = 1
    uint8 DOWNHILL = 2
    uint8 UPHILL = 3
    uint8 GROUND_PARKING = 4
    uint8 PUBLIC_ROAD = 5
    uint8 value
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LiveLPNPMap(null);
    if (msg.psd_map !== undefined) {
      resolved.psd_map = new Array(msg.psd_map.length);
      for (let i = 0; i < resolved.psd_map.length; ++i) {
        resolved.psd_map[i] = ParkingSpaceInfo.Resolve(msg.psd_map[i]);
      }
    }
    else {
      resolved.psd_map = []
    }

    if (msg.speed_bumps !== undefined) {
      resolved.speed_bumps = new Array(msg.speed_bumps.length);
      for (let i = 0; i < resolved.speed_bumps.length; ++i) {
        resolved.speed_bumps[i] = PointsPosition.Resolve(msg.speed_bumps[i]);
      }
    }
    else {
      resolved.speed_bumps = []
    }

    if (msg.pillars !== undefined) {
      resolved.pillars = new Array(msg.pillars.length);
      for (let i = 0; i < resolved.pillars.length; ++i) {
        resolved.pillars[i] = PointsPosition.Resolve(msg.pillars[i]);
      }
    }
    else {
      resolved.pillars = []
    }

    if (msg.walls !== undefined) {
      resolved.walls = new Array(msg.walls.length);
      for (let i = 0; i < resolved.walls.length; ++i) {
        resolved.walls[i] = PointsPosition.Resolve(msg.walls[i]);
      }
    }
    else {
      resolved.walls = []
    }

    if (msg.intersections !== undefined) {
      resolved.intersections = new Array(msg.intersections.length);
      for (let i = 0; i < resolved.intersections.length; ++i) {
        resolved.intersections[i] = PointsPosition.Resolve(msg.intersections[i]);
      }
    }
    else {
      resolved.intersections = []
    }

    if (msg.parking_gates !== undefined) {
      resolved.parking_gates = new Array(msg.parking_gates.length);
      for (let i = 0; i < resolved.parking_gates.length; ++i) {
        resolved.parking_gates[i] = PointsPosition.Resolve(msg.parking_gates[i]);
      }
    }
    else {
      resolved.parking_gates = []
    }

    if (msg.trajectory_points !== undefined) {
      resolved.trajectory_points = new Array(msg.trajectory_points.length);
      for (let i = 0; i < resolved.trajectory_points.length; ++i) {
        resolved.trajectory_points[i] = LiveLPNPMapRoadPoint.Resolve(msg.trajectory_points[i]);
      }
    }
    else {
      resolved.trajectory_points = []
    }

    if (msg.road_id !== undefined) {
      resolved.road_id = msg.road_id;
    }
    else {
      resolved.road_id = 0
    }

    if (msg.road_type !== undefined) {
      resolved.road_type = RoadTypeEnum.Resolve(msg.road_type)
    }
    else {
      resolved.road_type = new RoadTypeEnum()
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.TransformStamped.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.TransformStamped()
    }

    return resolved;
    }
};

module.exports = LiveLPNPMap;
