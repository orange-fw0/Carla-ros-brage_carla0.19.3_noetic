// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LPNPMappingStatusEnum = require('./LPNPMappingStatusEnum.js');
let LPNPMappingFailureCase = require('./LPNPMappingFailureCase.js');
let LPNPMappingParkingSpaceBuildingWayEnum = require('./LPNPMappingParkingSpaceBuildingWayEnum.js');
let LiveLPNPMap = require('./LiveLPNPMap.js');
let LPNPMapIncrementOffset = require('./LPNPMapIncrementOffset.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LPNPMappingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.summary = null;
      this.path_verify_rate = null;
      this.status = null;
      this.failure_case = null;
      this.parking_space_building_way = null;
      this.learning_distance = null;
      this.total_distance = null;
      this.speed_bump_num = null;
      this.slope_num = null;
      this.parking_slot_num = null;
      this.current_map_id = null;
      this.floor_id = null;
      this.in_parking_space = null;
      this.live_map = null;
      this.increment_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('summary')) {
        this.summary = initObj.summary
      }
      else {
        this.summary = '';
      }
      if (initObj.hasOwnProperty('path_verify_rate')) {
        this.path_verify_rate = initObj.path_verify_rate
      }
      else {
        this.path_verify_rate = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new LPNPMappingStatusEnum();
      }
      if (initObj.hasOwnProperty('failure_case')) {
        this.failure_case = initObj.failure_case
      }
      else {
        this.failure_case = new LPNPMappingFailureCase();
      }
      if (initObj.hasOwnProperty('parking_space_building_way')) {
        this.parking_space_building_way = initObj.parking_space_building_way
      }
      else {
        this.parking_space_building_way = new LPNPMappingParkingSpaceBuildingWayEnum();
      }
      if (initObj.hasOwnProperty('learning_distance')) {
        this.learning_distance = initObj.learning_distance
      }
      else {
        this.learning_distance = 0.0;
      }
      if (initObj.hasOwnProperty('total_distance')) {
        this.total_distance = initObj.total_distance
      }
      else {
        this.total_distance = 0.0;
      }
      if (initObj.hasOwnProperty('speed_bump_num')) {
        this.speed_bump_num = initObj.speed_bump_num
      }
      else {
        this.speed_bump_num = 0;
      }
      if (initObj.hasOwnProperty('slope_num')) {
        this.slope_num = initObj.slope_num
      }
      else {
        this.slope_num = 0;
      }
      if (initObj.hasOwnProperty('parking_slot_num')) {
        this.parking_slot_num = initObj.parking_slot_num
      }
      else {
        this.parking_slot_num = 0;
      }
      if (initObj.hasOwnProperty('current_map_id')) {
        this.current_map_id = initObj.current_map_id
      }
      else {
        this.current_map_id = 0;
      }
      if (initObj.hasOwnProperty('floor_id')) {
        this.floor_id = initObj.floor_id
      }
      else {
        this.floor_id = 0.0;
      }
      if (initObj.hasOwnProperty('in_parking_space')) {
        this.in_parking_space = initObj.in_parking_space
      }
      else {
        this.in_parking_space = false;
      }
      if (initObj.hasOwnProperty('live_map')) {
        this.live_map = initObj.live_map
      }
      else {
        this.live_map = [];
      }
      if (initObj.hasOwnProperty('increment_offset')) {
        this.increment_offset = initObj.increment_offset
      }
      else {
        this.increment_offset = new LPNPMapIncrementOffset();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LPNPMappingInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [summary]
    bufferOffset = _serializer.string(obj.summary, buffer, bufferOffset);
    // Serialize message field [path_verify_rate]
    bufferOffset = _serializer.uint8(obj.path_verify_rate, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = LPNPMappingStatusEnum.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [failure_case]
    bufferOffset = LPNPMappingFailureCase.serialize(obj.failure_case, buffer, bufferOffset);
    // Serialize message field [parking_space_building_way]
    bufferOffset = LPNPMappingParkingSpaceBuildingWayEnum.serialize(obj.parking_space_building_way, buffer, bufferOffset);
    // Serialize message field [learning_distance]
    bufferOffset = _serializer.float32(obj.learning_distance, buffer, bufferOffset);
    // Serialize message field [total_distance]
    bufferOffset = _serializer.float32(obj.total_distance, buffer, bufferOffset);
    // Serialize message field [speed_bump_num]
    bufferOffset = _serializer.uint32(obj.speed_bump_num, buffer, bufferOffset);
    // Serialize message field [slope_num]
    bufferOffset = _serializer.uint32(obj.slope_num, buffer, bufferOffset);
    // Serialize message field [parking_slot_num]
    bufferOffset = _serializer.uint32(obj.parking_slot_num, buffer, bufferOffset);
    // Serialize message field [current_map_id]
    bufferOffset = _serializer.uint32(obj.current_map_id, buffer, bufferOffset);
    // Serialize message field [floor_id]
    bufferOffset = _serializer.float64(obj.floor_id, buffer, bufferOffset);
    // Serialize message field [in_parking_space]
    bufferOffset = _serializer.bool(obj.in_parking_space, buffer, bufferOffset);
    // Serialize message field [live_map]
    // Serialize the length for message field [live_map]
    bufferOffset = _serializer.uint32(obj.live_map.length, buffer, bufferOffset);
    obj.live_map.forEach((val) => {
      bufferOffset = LiveLPNPMap.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [increment_offset]
    bufferOffset = LPNPMapIncrementOffset.serialize(obj.increment_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LPNPMappingInfo
    let len;
    let data = new LPNPMappingInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [summary]
    data.summary = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [path_verify_rate]
    data.path_verify_rate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = LPNPMappingStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [failure_case]
    data.failure_case = LPNPMappingFailureCase.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_space_building_way]
    data.parking_space_building_way = LPNPMappingParkingSpaceBuildingWayEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [learning_distance]
    data.learning_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [total_distance]
    data.total_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_bump_num]
    data.speed_bump_num = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [slope_num]
    data.slope_num = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [parking_slot_num]
    data.parking_slot_num = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [current_map_id]
    data.current_map_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [floor_id]
    data.floor_id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [in_parking_space]
    data.in_parking_space = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [live_map]
    // Deserialize array length for message field [live_map]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.live_map = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.live_map[i] = LiveLPNPMap.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [increment_offset]
    data.increment_offset = LPNPMapIncrementOffset.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.summary);
    object.live_map.forEach((val) => {
      length += LiveLPNPMap.getMessageSize(val);
    });
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/LPNPMappingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d7cd29b15e32952abc2a80060bc25d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string summary
    uint8 path_verify_rate
    system_manager_msgs/LPNPMappingStatusEnum status
    system_manager_msgs/LPNPMappingFailureCase failure_case
    system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum parking_space_building_way
    float32 learning_distance
    float32 total_distance
    uint32 speed_bump_num
    uint32 slope_num
    uint32 parking_slot_num
    uint32 current_map_id
    float64 floor_id
    bool in_parking_space
    system_manager_msgs/LiveLPNPMap[] live_map
    system_manager_msgs/LPNPMapIncrementOffset increment_offset
    
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
    MSG: system_manager_msgs/LPNPMappingStatusEnum
    uint8 SUCCESS = 0
    uint8 MAPPING = 1
    uint8 SAVING_MAP = 2
    uint8 FAILURE = 3
    uint8 MAPPING_IN = 4
    uint8 MAPPING_OUT = 5
    uint8 WAITING_TO_SAVE = 6
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LPNPMappingFailureCase
    uint8 FAILURE_UNDEFINED_CASE = 0
    uint8 FAILUER_BACK_UP_AT_THE_BEGINNING = 1
    uint8 FAILURE_TOO_SHORT_TRAVERL_DISTANCE = 2
    uint8 FAILURE_TOO_LONG_BACK_UP_DISTANCE = 3
    uint8 FAILURE_STEEP_SLOP = 4
    uint8 FAILURE_HEAD_IN_PARKING = 5
    uint8 FAILURE_NOT_PARKED_IN_PARKING_SLOT = 6
    uint8 FAILURE_ROUTE_REPEAT = 7
    uint8 FAILURE_LACK_ELEMENT = 8
    uint8 FAILURE_SILENT_MAPPING_TOO_LONG = 9
    uint8 FAILURE_USER_MAPPING_TOO_LONG = 10
    uint8 FAILURE_USER_MAPPING_TIME_TOO_LONG = 11
    uint8 FAILURE_TRAJ_SEG_LENGTH_TOO_LONG = 12
    uint8 FAILURE_VERIFY_MAP_TIME_TOO_LONG = 13
    uint8 FAILURE_BAD_REFERENCE_POINT = 14
    uint8 FAILURE_DB_WRITE_ERROR = 15
    uint8 FAILURE_SILENTMAPPING_LACK_SLOPE = 16
    uint8 FAILURE_TRAJECTORY_SMOOTH_ERROR = 17
    uint8 FAILURE_ROAD_POINT_LESS = 18
    uint8 FAILURE_TRAJECTORY_TURN_AROUND = 19
    uint8 FAILURE_ABORT_MAPPING = 20
    uint8 FAILURE_MODULE_PAUSE = 21
    uint8 FAILURE_NOT_SAVE_FOR_TOO_LONG = 22
    uint8 FAILURE_SPAMAP_ALLOC = 100
    uint8 FAILURE_SPAMAP_NON_CREATED = 101
    uint8 FAILURE_SPAMAP_NULL_PARAM = 102
    uint8 FAILURE_SPAMAP_NOT_SUPPORTED = 103
    uint8 FAILURE_SPAMAP_UNSUPPROT_CMD = 104
    uint8 FAILURE_SPAMAP_CAMEAR_NUM = 105
    uint8 FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL = 106
    uint8 FAILURE_SPAMAP_STITCH_IMG_IS_NULL = 107
    uint8 FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL = 108
    uint8 FAILURE_SPAMAP_REJECTED = 109
    uint8 FAILURE_SPAMAP_NO_MAP_INFO_FOUND = 110
    uint8 FAILURE_SPAMAP_INTERNAL = 111
    uint8 FAILURE_SPAMAP_UNKNOWN = 112
    uint8 FAILURE_SPAMAP_CHANGED = 113
    uint8 FAILURE_SPAMAP_LOAD_CAMERA_PARAMS = 114
    uint8 FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG = 115
    uint8 FAILURE_SPAMAP_INVALID_CONFIG = 116
    uint8 FAILURE_SPAMAP_INIT_EGO = 117
    uint8 FAILURE_SPAMAP_EGO_LOST = 118
    uint8 FAILURE_SPAMAP_CREATE_SPAMAPPER = 119
    uint8 FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER = 120
    uint8 FAILURE_SPAMAP_INVALID_POI_TYPE = 121
    uint8 FAILURE_SPAMAP_INVALID_SPA_HANDLE = 122
    uint8 FAILURE_SPAMAP_SAVE_MAP = 123
    uint8 FAILURE_SPAMAP_INVALID_MAP = 124
    uint8 FAILURE_SPAMAP_UNVERIFIED = 125
    uint8 FAILURE_SPAMAP_VERIFY_FAILED = 126
    uint8 FAILURE_SPAMAP_LOAD_PARAM = 127
    uint8 FAILURE_SPAMAP_INVALID_CAMERA = 128
    uint8 FAILURE_SPAMAP_INVERSE_STAMP_WHEEL = 129
    uint8 FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER = 130
    uint8 FAILURE_SPAMAP_UNSUPPORTED_TASK = 131
    uint8 FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE = 132
    uint8 FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE = 133
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum
    uint8 UNKNOWN = 0
    uint8 PERCEIVED_BELOW = 1
    uint8 USER_SELECTED = 2
    uint8 NO_TARGET_SLOT = 3
    uint8 VIRTUAL = 4
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/LiveLPNPMap
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
    
    ================================================================================
    MSG: system_manager_msgs/LPNPMapIncrementOffset
    int32 parking_slot
    int32 speed_bump
    int32 trajectory_point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LPNPMappingInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.summary !== undefined) {
      resolved.summary = msg.summary;
    }
    else {
      resolved.summary = ''
    }

    if (msg.path_verify_rate !== undefined) {
      resolved.path_verify_rate = msg.path_verify_rate;
    }
    else {
      resolved.path_verify_rate = 0
    }

    if (msg.status !== undefined) {
      resolved.status = LPNPMappingStatusEnum.Resolve(msg.status)
    }
    else {
      resolved.status = new LPNPMappingStatusEnum()
    }

    if (msg.failure_case !== undefined) {
      resolved.failure_case = LPNPMappingFailureCase.Resolve(msg.failure_case)
    }
    else {
      resolved.failure_case = new LPNPMappingFailureCase()
    }

    if (msg.parking_space_building_way !== undefined) {
      resolved.parking_space_building_way = LPNPMappingParkingSpaceBuildingWayEnum.Resolve(msg.parking_space_building_way)
    }
    else {
      resolved.parking_space_building_way = new LPNPMappingParkingSpaceBuildingWayEnum()
    }

    if (msg.learning_distance !== undefined) {
      resolved.learning_distance = msg.learning_distance;
    }
    else {
      resolved.learning_distance = 0.0
    }

    if (msg.total_distance !== undefined) {
      resolved.total_distance = msg.total_distance;
    }
    else {
      resolved.total_distance = 0.0
    }

    if (msg.speed_bump_num !== undefined) {
      resolved.speed_bump_num = msg.speed_bump_num;
    }
    else {
      resolved.speed_bump_num = 0
    }

    if (msg.slope_num !== undefined) {
      resolved.slope_num = msg.slope_num;
    }
    else {
      resolved.slope_num = 0
    }

    if (msg.parking_slot_num !== undefined) {
      resolved.parking_slot_num = msg.parking_slot_num;
    }
    else {
      resolved.parking_slot_num = 0
    }

    if (msg.current_map_id !== undefined) {
      resolved.current_map_id = msg.current_map_id;
    }
    else {
      resolved.current_map_id = 0
    }

    if (msg.floor_id !== undefined) {
      resolved.floor_id = msg.floor_id;
    }
    else {
      resolved.floor_id = 0.0
    }

    if (msg.in_parking_space !== undefined) {
      resolved.in_parking_space = msg.in_parking_space;
    }
    else {
      resolved.in_parking_space = false
    }

    if (msg.live_map !== undefined) {
      resolved.live_map = new Array(msg.live_map.length);
      for (let i = 0; i < resolved.live_map.length; ++i) {
        resolved.live_map[i] = LiveLPNPMap.Resolve(msg.live_map[i]);
      }
    }
    else {
      resolved.live_map = []
    }

    if (msg.increment_offset !== undefined) {
      resolved.increment_offset = LPNPMapIncrementOffset.Resolve(msg.increment_offset)
    }
    else {
      resolved.increment_offset = new LPNPMapIncrementOffset()
    }

    return resolved;
    }
};

module.exports = LPNPMappingInfo;
