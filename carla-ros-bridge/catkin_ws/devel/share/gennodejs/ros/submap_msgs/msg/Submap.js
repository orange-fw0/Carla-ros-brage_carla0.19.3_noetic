// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SubmapMeta = require('./SubmapMeta.js');
let SubmapAuxiliaryInfo = require('./SubmapAuxiliaryInfo.js');
let ParkingSlotMap = require('./ParkingSlotMap.js');
let RoadmarkMap = require('./RoadmarkMap.js');
let SlopeMap = require('./SlopeMap.js');
let StaticObstacleMap = require('./StaticObstacleMap.js');
let VectorizedMap = require('./VectorizedMap.js');
let TimeDisDiff = require('./TimeDisDiff.js');
let SubmapReserved = require('./SubmapReserved.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Submap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.auxiliary_info = null;
      this.parking_slot_map = null;
      this.roadmark_map = null;
      this.slope_map = null;
      this.obs_map = null;
      this.vectorized_map = null;
      this.time_dis_diff = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new SubmapMeta();
      }
      if (initObj.hasOwnProperty('auxiliary_info')) {
        this.auxiliary_info = initObj.auxiliary_info
      }
      else {
        this.auxiliary_info = new SubmapAuxiliaryInfo();
      }
      if (initObj.hasOwnProperty('parking_slot_map')) {
        this.parking_slot_map = initObj.parking_slot_map
      }
      else {
        this.parking_slot_map = new ParkingSlotMap();
      }
      if (initObj.hasOwnProperty('roadmark_map')) {
        this.roadmark_map = initObj.roadmark_map
      }
      else {
        this.roadmark_map = new RoadmarkMap();
      }
      if (initObj.hasOwnProperty('slope_map')) {
        this.slope_map = initObj.slope_map
      }
      else {
        this.slope_map = new SlopeMap();
      }
      if (initObj.hasOwnProperty('obs_map')) {
        this.obs_map = initObj.obs_map
      }
      else {
        this.obs_map = new StaticObstacleMap();
      }
      if (initObj.hasOwnProperty('vectorized_map')) {
        this.vectorized_map = initObj.vectorized_map
      }
      else {
        this.vectorized_map = new VectorizedMap();
      }
      if (initObj.hasOwnProperty('time_dis_diff')) {
        this.time_dis_diff = initObj.time_dis_diff
      }
      else {
        this.time_dis_diff = new TimeDisDiff();
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = new SubmapReserved();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Submap
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = SubmapMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [auxiliary_info]
    bufferOffset = SubmapAuxiliaryInfo.serialize(obj.auxiliary_info, buffer, bufferOffset);
    // Serialize message field [parking_slot_map]
    bufferOffset = ParkingSlotMap.serialize(obj.parking_slot_map, buffer, bufferOffset);
    // Serialize message field [roadmark_map]
    bufferOffset = RoadmarkMap.serialize(obj.roadmark_map, buffer, bufferOffset);
    // Serialize message field [slope_map]
    bufferOffset = SlopeMap.serialize(obj.slope_map, buffer, bufferOffset);
    // Serialize message field [obs_map]
    bufferOffset = StaticObstacleMap.serialize(obj.obs_map, buffer, bufferOffset);
    // Serialize message field [vectorized_map]
    bufferOffset = VectorizedMap.serialize(obj.vectorized_map, buffer, bufferOffset);
    // Serialize message field [time_dis_diff]
    bufferOffset = TimeDisDiff.serialize(obj.time_dis_diff, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = SubmapReserved.serialize(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Submap
    let len;
    let data = new Submap(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = SubmapMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [auxiliary_info]
    data.auxiliary_info = SubmapAuxiliaryInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_slot_map]
    data.parking_slot_map = ParkingSlotMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [roadmark_map]
    data.roadmark_map = RoadmarkMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [slope_map]
    data.slope_map = SlopeMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [obs_map]
    data.obs_map = StaticObstacleMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [vectorized_map]
    data.vectorized_map = VectorizedMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_dis_diff]
    data.time_dis_diff = TimeDisDiff.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = SubmapReserved.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += SubmapAuxiliaryInfo.getMessageSize(object.auxiliary_info);
    length += ParkingSlotMap.getMessageSize(object.parking_slot_map);
    length += RoadmarkMap.getMessageSize(object.roadmark_map);
    length += SlopeMap.getMessageSize(object.slope_map);
    length += StaticObstacleMap.getMessageSize(object.obs_map);
    length += VectorizedMap.getMessageSize(object.vectorized_map);
    length += SubmapReserved.getMessageSize(object.reserved_info);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/Submap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e70c67c22bf211a0195455ce5a6e693';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    submap_msgs/SubmapMeta meta
    submap_msgs/SubmapAuxiliaryInfo auxiliary_info
    submap_msgs/ParkingSlotMap parking_slot_map
    submap_msgs/RoadmarkMap roadmark_map
    submap_msgs/SlopeMap slope_map
    submap_msgs/StaticObstacleMap obs_map
    submap_msgs/VectorizedMap vectorized_map
    submap_msgs/TimeDisDiff time_dis_diff
    submap_msgs/SubmapReserved reserved_info
    
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
    MSG: submap_msgs/SubmapMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: submap_msgs/SubmapAuxiliaryInfo
    submap_msgs/SubmapTrajectory trajectory
    
    ================================================================================
    MSG: submap_msgs/SubmapTrajectory
    float64 distance
    submap_msgs/Position[] positions
    
    ================================================================================
    MSG: submap_msgs/Position
    geometry_msgs/Quaternion orientation
    geometry_msgs/Vector3 translation
    float64 timestamp
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    MSG: submap_msgs/ParkingSlotMap
    submap_msgs/ParkingSlot[] slots
    
    ================================================================================
    MSG: submap_msgs/ParkingSlot
    geometry_msgs/Point[] points
    geometry_msgs/Point[] points_local
    float64 timestamp
    uint32 id
    float32 score
    float32 slide_distance
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: submap_msgs/RoadmarkMap
    submap_msgs/Roadmark roadmark_contours
    submap_msgs/Roadmark roadmark_raw_points
    
    ================================================================================
    MSG: submap_msgs/Roadmark
    submap_msgs/RoadmarkLayer[] layers
    
    ================================================================================
    MSG: submap_msgs/RoadmarkLayer
    submap_msgs/RoadmarkType type
    geometry_msgs/Point[] points
    geometry_msgs/Point[] points_local
    
    ================================================================================
    MSG: submap_msgs/RoadmarkType
    uint8 NORMAL = 0
    uint8 ARROW = 1
    uint8 SPEED_BUMP = 2
    uint8 CROSS_WALK = 3
    uint8 STOP_LINE = 4
    uint8 value
    
    ================================================================================
    MSG: submap_msgs/SlopeMap
    submap_msgs/Slope[] slopes
    
    ================================================================================
    MSG: submap_msgs/Slope
    submap_msgs/Position enter
    submap_msgs/Position exit
    submap_msgs/Position detected_slope_pose
    bool is_up
    bool finished
    float32 score
    float32 slide_distance
    
    ================================================================================
    MSG: submap_msgs/StaticObstacleMap
    submap_msgs/GroundLine[] ground_lines
    submap_msgs/Pillar[] pillars
    
    ================================================================================
    MSG: submap_msgs/GroundLine
    geometry_msgs/Point start
    geometry_msgs/Point end
    geometry_msgs/Point[] map_points
    geometry_msgs/Point[] raw_points
    uint32 id
    submap_msgs/GroundLineType type
    float32 score
    float32 slide_distance
    
    ================================================================================
    MSG: submap_msgs/GroundLineType
    uint8 UNKNOWN = 0
    uint8 WALL = 1
    uint8 PILLAR = 2
    uint8 FENCE = 3
    uint8 STEP = 4
    uint8 SPECIAL = 5
    uint8 PARKING_GATE = 6
    uint8 value
    
    ================================================================================
    MSG: submap_msgs/Pillar
    geometry_msgs/Point center
    geometry_msgs/Point center_local
    geometry_msgs/Point[] edge_points
    geometry_msgs/Point[] edge_points_local
    uint32 id
    uint32 point_number
    float32 score
    float32 slide_distance
    
    ================================================================================
    MSG: submap_msgs/VectorizedMap
    submap_msgs/VectorElement[] vector_elements
    
    ================================================================================
    MSG: submap_msgs/VectorElement
    uint32 id
    submap_msgs/VectorElementTypeEnum type
    float32 score
    float32 slide_distance
    geometry_msgs/Point center
    geometry_msgs/Point center_point
    geometry_msgs/Point[] points
    geometry_msgs/Point[] points_local
    
    ================================================================================
    MSG: submap_msgs/VectorElementTypeEnum
    uint8 UNKNOWN = 0
    uint8 GATE = 1
    uint8 ARROW = 2
    uint8 STOP_LINE = 3
    uint8 DASH_LINE = 4
    uint8 SPEED_BUMP = 5
    uint8 ZWBRA_LINE = 6
    uint8 DDLD_ROAD_BOUNDARY = 7
    uint8 DDLD_LANE_BOUNDARY = 8
    uint8 DDLD_STOP_LINE = 9
    uint8 DDLD_CROSS_WALK = 10
    uint8 DDLD_ROAD_MARK = 11
    uint8 DDLD_TRAFFIC_SIGN = 12
    uint8 DDLD_TRAFFIC_LIGHT = 13
    uint8 value
    float32 score
    
    ================================================================================
    MSG: submap_msgs/TimeDisDiff
    float64 dis_idff
    float64 time_diff
    float64 last_pose_timestamp
    
    ================================================================================
    MSG: submap_msgs/SubmapReserved
    uint8 SUBMAP_RESERVED_DATA = 1
    uint8 available
    uint64[] reserved_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Submap(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = SubmapMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new SubmapMeta()
    }

    if (msg.auxiliary_info !== undefined) {
      resolved.auxiliary_info = SubmapAuxiliaryInfo.Resolve(msg.auxiliary_info)
    }
    else {
      resolved.auxiliary_info = new SubmapAuxiliaryInfo()
    }

    if (msg.parking_slot_map !== undefined) {
      resolved.parking_slot_map = ParkingSlotMap.Resolve(msg.parking_slot_map)
    }
    else {
      resolved.parking_slot_map = new ParkingSlotMap()
    }

    if (msg.roadmark_map !== undefined) {
      resolved.roadmark_map = RoadmarkMap.Resolve(msg.roadmark_map)
    }
    else {
      resolved.roadmark_map = new RoadmarkMap()
    }

    if (msg.slope_map !== undefined) {
      resolved.slope_map = SlopeMap.Resolve(msg.slope_map)
    }
    else {
      resolved.slope_map = new SlopeMap()
    }

    if (msg.obs_map !== undefined) {
      resolved.obs_map = StaticObstacleMap.Resolve(msg.obs_map)
    }
    else {
      resolved.obs_map = new StaticObstacleMap()
    }

    if (msg.vectorized_map !== undefined) {
      resolved.vectorized_map = VectorizedMap.Resolve(msg.vectorized_map)
    }
    else {
      resolved.vectorized_map = new VectorizedMap()
    }

    if (msg.time_dis_diff !== undefined) {
      resolved.time_dis_diff = TimeDisDiff.Resolve(msg.time_dis_diff)
    }
    else {
      resolved.time_dis_diff = new TimeDisDiff()
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = SubmapReserved.Resolve(msg.reserved_info)
    }
    else {
      resolved.reserved_info = new SubmapReserved()
    }

    return resolved;
    }
};

module.exports = Submap;
