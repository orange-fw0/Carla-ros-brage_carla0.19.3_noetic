// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficSign = require('./TrafficSign.js');

//-----------------------------------------------------------

class TrafficSignPerception {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.traffic_signs = null;
      this.reserved_infos = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('traffic_signs')) {
        this.traffic_signs = initObj.traffic_signs
      }
      else {
        this.traffic_signs = [];
      }
      if (initObj.hasOwnProperty('reserved_infos')) {
        this.reserved_infos = initObj.reserved_infos
      }
      else {
        this.reserved_infos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficSignPerception
    // Serialize message field [available]
    bufferOffset = _serializer.uint64(obj.available, buffer, bufferOffset);
    // Serialize message field [traffic_signs]
    // Serialize the length for message field [traffic_signs]
    bufferOffset = _serializer.uint32(obj.traffic_signs.length, buffer, bufferOffset);
    obj.traffic_signs.forEach((val) => {
      bufferOffset = TrafficSign.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_infos]
    bufferOffset = _arraySerializer.string(obj.reserved_infos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignPerception
    let len;
    let data = new TrafficSignPerception(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [traffic_signs]
    // Deserialize array length for message field [traffic_signs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_signs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_signs[i] = TrafficSign.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_infos]
    data.reserved_infos = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.traffic_signs.forEach((val) => {
      length += TrafficSign.getMessageSize(val);
    });
    object.reserved_infos.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficSignPerception';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b94d805030c7ff576c6a1ef723a5a81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: perception_interface_msgs/TrafficSignPoint
    perception_interface_msgs/Point2f position
    float32 visibility
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
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
    const resolved = new TrafficSignPerception(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.traffic_signs !== undefined) {
      resolved.traffic_signs = new Array(msg.traffic_signs.length);
      for (let i = 0; i < resolved.traffic_signs.length; ++i) {
        resolved.traffic_signs[i] = TrafficSign.Resolve(msg.traffic_signs[i]);
      }
    }
    else {
      resolved.traffic_signs = []
    }

    if (msg.reserved_infos !== undefined) {
      resolved.reserved_infos = msg.reserved_infos;
    }
    else {
      resolved.reserved_infos = []
    }

    return resolved;
    }
};

// Constants for message
TrafficSignPerception.Constants = {
  VISION_PERCEPTION_TRAFFIC_SIGN_RESULT: 1,
  VISION_PERCEPTION_TRAFFIC_SIGN_RESERVED_INFOS: 2,
}

module.exports = TrafficSignPerception;
