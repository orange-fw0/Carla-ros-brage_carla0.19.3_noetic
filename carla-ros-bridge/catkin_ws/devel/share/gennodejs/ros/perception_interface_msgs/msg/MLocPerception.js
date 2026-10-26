// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PerceptionMeta = require('./PerceptionMeta.js');
let LaneSegmentPerception = require('./LaneSegmentPerception.js');
let PoleLinePerception = require('./PoleLinePerception.js');
let TrafficSignPerception = require('./TrafficSignPerception.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MLocPerception {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.lane_segment_perception = null;
      this.pole_line_perception = null;
      this.traffic_sign_perception = null;
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
        this.meta = new PerceptionMeta();
      }
      if (initObj.hasOwnProperty('lane_segment_perception')) {
        this.lane_segment_perception = initObj.lane_segment_perception
      }
      else {
        this.lane_segment_perception = new LaneSegmentPerception();
      }
      if (initObj.hasOwnProperty('pole_line_perception')) {
        this.pole_line_perception = initObj.pole_line_perception
      }
      else {
        this.pole_line_perception = new PoleLinePerception();
      }
      if (initObj.hasOwnProperty('traffic_sign_perception')) {
        this.traffic_sign_perception = initObj.traffic_sign_perception
      }
      else {
        this.traffic_sign_perception = new TrafficSignPerception();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLocPerception
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [lane_segment_perception]
    bufferOffset = LaneSegmentPerception.serialize(obj.lane_segment_perception, buffer, bufferOffset);
    // Serialize message field [pole_line_perception]
    bufferOffset = PoleLinePerception.serialize(obj.pole_line_perception, buffer, bufferOffset);
    // Serialize message field [traffic_sign_perception]
    bufferOffset = TrafficSignPerception.serialize(obj.traffic_sign_perception, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLocPerception
    let len;
    let data = new MLocPerception(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_segment_perception]
    data.lane_segment_perception = LaneSegmentPerception.deserialize(buffer, bufferOffset);
    // Deserialize message field [pole_line_perception]
    data.pole_line_perception = PoleLinePerception.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_sign_perception]
    data.traffic_sign_perception = TrafficSignPerception.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionMeta.getMessageSize(object.meta);
    length += LaneSegmentPerception.getMessageSize(object.lane_segment_perception);
    length += PoleLinePerception.getMessageSize(object.pole_line_perception);
    length += TrafficSignPerception.getMessageSize(object.traffic_sign_perception);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/MLocPerception';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '411afc801397b1352688d7de607d356c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/PerceptionMeta meta
    perception_interface_msgs/LaneSegmentPerception lane_segment_perception
    perception_interface_msgs/PoleLinePerception pole_line_perception
    perception_interface_msgs/TrafficSignPerception traffic_sign_perception
    
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
    MSG: perception_interface_msgs/PerceptionMeta
    string algorithm_name
    string instance_name
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    perception_interface_msgs/FrameMeta[] relevant_frames
    string version_tag
    string ts_log
    uint64 sequence
    string task_tag
    
    ================================================================================
    MSG: perception_interface_msgs/FrameMeta
    uint64 timestamp_us
    uint64 sequence
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    
    ================================================================================
    MSG: perception_interface_msgs/CameraSourceEnum
    uint8 CAMERA_SOURCE_FRONT_FAR = 0
    uint8 CAMERA_SOURCE_FRONT_MID = 1
    uint8 CAMERA_SOURCE_FRONT_WIDE = 2
    uint8 CAMERA_SOURCE_LEFT_FRONT = 3
    uint8 CAMERA_SOURCE_LEFT_REAR = 4
    uint8 CAMERA_SOURCE_REAR_MID = 5
    uint8 CAMERA_SOURCE_REAR_MID_UP = 6
    uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
    uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
    uint8 CAMERA_SOURCE_RIGHT_REAR = 9
    uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
    uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
    uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
    uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
    uint8 CAMERA_SOURCE_FISHEYE = 14
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
    uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
    uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
    uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
    uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
    uint8 CAMERA_SOURCE_BEV = 25
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/CameraModelEnum
    uint8 CAMERA_MODEL_UNKNOWN = 0
    uint8 CAMERA_MODEL_RAW = 1
    uint8 CAMERA_MODEL_CYLINDER = 2
    uint8 CAMERA_MODEL_DEDISTORT = 3
    uint8 CAMERA_MODEL_PSTITCH = 4
    uint8 CAMERA_MODEL_RESERVED_A = 5
    uint8 CAMERA_MODEL_RESERVED_B = 6
    uint8 CAMERA_MODEL_RESERVED_C = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/LaneSegmentPerception
    uint8 VISION_PERCEPTION_LANE_SEGMENT_RESULT = 1
    uint8 VISION_PERCEPTION_LANE_SEGMENT_RESERVED_INFOS = 2
    uint64 available
    perception_interface_msgs/LaneSegment[] lane_segments
    string[] reserved_infos
    
    ================================================================================
    MSG: perception_interface_msgs/LaneSegment
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    perception_interface_msgs/Point2f[] points_2d
    perception_interface_msgs/Point3f[] points_3d
    uint32[] points_track_id
    float32[] points_score
    perception_interface_msgs/LaneSegmentPointEnum[] points_type
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/LaneSegmentPointEnum
    uint8 LANE_SEGMENT_POINT_UNKNOWN = 0
    uint8 LANE_SEGMENT_POINT_FAKE_POINT = 1
    uint8 LANE_SEGMENT_POINT_REAL_POINT = 2
    uint8 LANE_SEGMENT_POINT_FARTHEST_POINT = 3
    uint8 LANE_SEGMENT_POINT_OCCLUSION_POINT = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/PoleLinePerception
    uint8 VISION_PERCEPTION_POLE_LINE_RESULT = 1
    uint8 VISION_PERCEPTION_POLE_LINE_RESERVED_INFOS = 2
    uint64 available
    perception_interface_msgs/PoleLine[] pole_lines
    string[] reserved_infos
    
    ================================================================================
    MSG: perception_interface_msgs/PoleLine
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/PoleLinePoint[] points_2d
    perception_interface_msgs/PoleLineTypeEnum type
    uint32 track_id
    
    ================================================================================
    MSG: perception_interface_msgs/PoleLinePoint
    perception_interface_msgs/Point2f position
    float32 visibility
    
    ================================================================================
    MSG: perception_interface_msgs/PoleLineTypeEnum
    uint8 POLE_LINE_TYPE_UNKNOWN = 0
    uint8 POLE_LINE_TYPE_GENERAL_POLE = 1
    uint8 POLE_LINE_TYPE_LIGHT_POLE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignPerception
    uint8 VISION_PERCEPTION_TRAFFIC_SIGN_RESULT = 1
    uint8 VISION_PERCEPTION_TRAFFIC_SIGN_RESERVED_INFOS = 2
    uint64 available
    perception_interface_msgs/TrafficSign[] traffic_signs
    string[] reserved_infos
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSign
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/TrafficSignPoint[] points_2d
    uint32 track_id
    perception_interface_msgs/TrafficSignShapeEnum shape_info
    perception_interface_msgs/Rect4f bounding_box_2d
    bool is_speed_sign
    perception_interface_msgs/SpeedSignTypeEnum speed_type
    perception_interface_msgs/SpeedSignSpeedEnum speed_num
    bool is_road_mark
    perception_interface_msgs/RoadMarkTypeEnum road_mark_type
    perception_interface_msgs/TrafficSignTypeEnum type_info
    perception_interface_msgs/SpeedSignCategoryEnum speedsign_category
    bool is_restriction_sign
    perception_interface_msgs/RestrictionSignTypeEnum restriction_type
    float32 restriction_value
    perception_interface_msgs/ReservedParkingSignSubtypeEnum reseved_parking_subtype
    bool is_multi_cam
    perception_interface_msgs/Point3d position
    perception_interface_msgs/TrafficSignArrowDirectionEnum arrow_direction
    perception_interface_msgs/TrafficSignRegionEnum region
    bool is_condition_weather
    bool is_condition_arrow
    bool is_condition_period
    bool is_condition_ramp
    bool is_condition_exit
    bool is_condition_vehicle_type
    bool is_condition_school
    bool is_condition_arrow_left
    bool is_condition_arrow_right
    bool is_condition_arrow_front
    bool is_condition_regional
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignPoint
    perception_interface_msgs/Point2f position
    float32 visibility
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignShapeEnum
    uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1
    uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2
    uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3
    uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4
    uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5
    uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6
    uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7
    uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Rect4f
    float32 left
    float32 top
    float32 right
    float32 bottom
    
    ================================================================================
    MSG: perception_interface_msgs/SpeedSignTypeEnum
    uint8 SPEED_SIGN_TYPE_UNKNOWN = 0
    uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1
    uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2
    uint8 SPEED_SIGN_TYPE_DESPEED = 3
    uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/SpeedSignSpeedEnum
    uint8 SPEED_SIGN_SPEED_UNKNOWN = 0
    uint8 SPEED_SIGN_SPEED_5 = 1
    uint8 SPEED_SIGN_SPEED_10 = 2
    uint8 SPEED_SIGN_SPEED_15 = 3
    uint8 SPEED_SIGN_SPEED_20 = 4
    uint8 SPEED_SIGN_SPEED_25 = 5
    uint8 SPEED_SIGN_SPEED_30 = 6
    uint8 SPEED_SIGN_SPEED_35 = 7
    uint8 SPEED_SIGN_SPEED_40 = 8
    uint8 SPEED_SIGN_SPEED_50 = 9
    uint8 SPEED_SIGN_SPEED_60 = 10
    uint8 SPEED_SIGN_SPEED_70 = 11
    uint8 SPEED_SIGN_SPEED_80 = 12
    uint8 SPEED_SIGN_SPEED_90 = 13
    uint8 SPEED_SIGN_SPEED_100 = 14
    uint8 SPEED_SIGN_SPEED_110 = 15
    uint8 SPEED_SIGN_SPEED_120 = 16
    uint8 SPEED_SIGN_SPEED_130 = 17
    uint8 SPEED_SIGN_SPEED_140 = 18
    uint8 SPEED_SIGN_SPEED_45 = 19
    uint8 SPEED_SIGN_SPEED_55 = 20
    uint8 SPEED_SIGN_SPEED_65 = 21
    uint8 SPEED_SIGN_SPEED_75 = 22
    uint8 SPEED_SIGN_SPEED_85 = 23
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/RoadMarkTypeEnum
    uint8 ROAD_MARK_TYPE_UNKNOWN = 0
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4
    uint8 ROAD_MARK_TYPE_TURN_LEFT = 5
    uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6
    uint8 ROAD_MARK_TYPE_TURN_BACK = 7
    uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8
    uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9
    uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10
    uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignTypeEnum
    uint8 TRAFFIC_SIGN_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_TYPE_OTHER = 1
    uint8 TRAFFIC_SIGN_TYPE_STOP = 2
    uint8 TRAFFIC_SIGN_TYPE_GIVE_WAY = 3
    uint8 TRAFFIC_SIGN_TYPE_NO_OVERTAKING = 4
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING = 5
    uint8 TRAFFIC_SIGN_TYPE_NO_ENTRANCE = 6
    uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE = 7
    uint8 TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS = 8
    uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE = 9
    uint8 TRAFFIC_SIGN_TYPE_RAMP = 10
    uint8 TRAFFIC_SIGN_TYPE_EXIT = 11
    uint8 TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING = 12
    uint8 TRAFFIC_SIGN_TYPE_TIME = 13
    uint8 TRAFFIC_SIGN_TYPE_NO_MINIBUSES = 14
    uint8 TRAFFIC_SIGN_TYPE_NO_LEFT_TURN = 15
    uint8 TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN = 16
    uint8 TRAFFIC_SIGN_TYPE_NO_U_TURN = 17
    uint8 TRAFFIC_SIGN_TYPE_NO_HONKING = 18
    uint8 TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD = 19
    uint8 TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING = 20
    uint8 TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING = 21
    uint8 TRAFFIC_SIGN_TYPE_ROAD_WORK = 22
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN = 23
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS = 24
    uint8 TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE = 25
    uint8 TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION = 26
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 27
    uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 28
    uint8 TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD = 29
    uint8 TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD = 30
    uint8 TRAFFIC_SIGN_TYPE_UPHILL_AHEAD = 31
    uint8 TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD = 32
    uint8 TRAFFIC_SIGN_TYPE_NO_PARKING = 33
    uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING = 34
    uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING = 35
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING = 36
    uint8 TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE = 37
    uint8 TRAFFIC_SIGN_TYPE_EXPWAY_EXIT = 38
    uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS = 39
    uint8 TRAFFIC_SIGN_TYPE_PARKING = 40
    uint8 TRAFFIC_SIGN_TYPE_RESERVED_PARKING = 41
    uint8 TRAFFIC_SIGN_TYPE_PAYMENT_PARKING = 42
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/SpeedSignCategoryEnum
    uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0
    uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1
    uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/RestrictionSignTypeEnum
    uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0
    uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1
    uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2
    uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ReservedParkingSignSubtypeEnum
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6
    uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignArrowDirectionEnum
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3
    uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficSignRegionEnum
    uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_REGION_CN = 1
    uint8 TRAFFIC_SIGN_REGION_EU = 2
    uint8 TRAFFIC_SIGN_REGION_US = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLocPerception(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = PerceptionMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new PerceptionMeta()
    }

    if (msg.lane_segment_perception !== undefined) {
      resolved.lane_segment_perception = LaneSegmentPerception.Resolve(msg.lane_segment_perception)
    }
    else {
      resolved.lane_segment_perception = new LaneSegmentPerception()
    }

    if (msg.pole_line_perception !== undefined) {
      resolved.pole_line_perception = PoleLinePerception.Resolve(msg.pole_line_perception)
    }
    else {
      resolved.pole_line_perception = new PoleLinePerception()
    }

    if (msg.traffic_sign_perception !== undefined) {
      resolved.traffic_sign_perception = TrafficSignPerception.Resolve(msg.traffic_sign_perception)
    }
    else {
      resolved.traffic_sign_perception = new TrafficSignPerception()
    }

    return resolved;
    }
};

module.exports = MLocPerception;
