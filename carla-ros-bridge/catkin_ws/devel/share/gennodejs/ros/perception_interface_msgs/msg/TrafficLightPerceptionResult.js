// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficLightInFov = require('./TrafficLightInFov.js');
let TrafficLightROI = require('./TrafficLightROI.js');
let TrafficLightSingleFrame = require('./TrafficLightSingleFrame.js');
let TrafficLightMultiFrame = require('./TrafficLightMultiFrame.js');
let TrafficLightDecision = require('./TrafficLightDecision.js');
let HDMapTafficLightInformation = require('./HDMapTafficLightInformation.js');
let PhysicalTrafficLightSingleFrame = require('./PhysicalTrafficLightSingleFrame.js');
let PhysicalTrafficLightMultiFrame = require('./PhysicalTrafficLightMultiFrame.js');

//-----------------------------------------------------------

class TrafficLightPerceptionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cross_id = null;
      this.in_fov = null;
      this.traffic_light_roi = null;
      this.traffic_light_single_frame = null;
      this.traffic_light_multi_frame = null;
      this.traffic_light_decision = null;
      this.hdmap_traffic_light_information = null;
      this.physical_traffic_light_single_frame = null;
      this.physical_traffic_light_multi_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('cross_id')) {
        this.cross_id = initObj.cross_id
      }
      else {
        this.cross_id = 0;
      }
      if (initObj.hasOwnProperty('in_fov')) {
        this.in_fov = initObj.in_fov
      }
      else {
        this.in_fov = new TrafficLightInFov();
      }
      if (initObj.hasOwnProperty('traffic_light_roi')) {
        this.traffic_light_roi = initObj.traffic_light_roi
      }
      else {
        this.traffic_light_roi = [];
      }
      if (initObj.hasOwnProperty('traffic_light_single_frame')) {
        this.traffic_light_single_frame = initObj.traffic_light_single_frame
      }
      else {
        this.traffic_light_single_frame = [];
      }
      if (initObj.hasOwnProperty('traffic_light_multi_frame')) {
        this.traffic_light_multi_frame = initObj.traffic_light_multi_frame
      }
      else {
        this.traffic_light_multi_frame = [];
      }
      if (initObj.hasOwnProperty('traffic_light_decision')) {
        this.traffic_light_decision = initObj.traffic_light_decision
      }
      else {
        this.traffic_light_decision = [];
      }
      if (initObj.hasOwnProperty('hdmap_traffic_light_information')) {
        this.hdmap_traffic_light_information = initObj.hdmap_traffic_light_information
      }
      else {
        this.hdmap_traffic_light_information = new HDMapTafficLightInformation();
      }
      if (initObj.hasOwnProperty('physical_traffic_light_single_frame')) {
        this.physical_traffic_light_single_frame = initObj.physical_traffic_light_single_frame
      }
      else {
        this.physical_traffic_light_single_frame = [];
      }
      if (initObj.hasOwnProperty('physical_traffic_light_multi_frame')) {
        this.physical_traffic_light_multi_frame = initObj.physical_traffic_light_multi_frame
      }
      else {
        this.physical_traffic_light_multi_frame = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightPerceptionResult
    // Serialize message field [cross_id]
    bufferOffset = _serializer.uint64(obj.cross_id, buffer, bufferOffset);
    // Serialize message field [in_fov]
    bufferOffset = TrafficLightInFov.serialize(obj.in_fov, buffer, bufferOffset);
    // Serialize message field [traffic_light_roi]
    // Serialize the length for message field [traffic_light_roi]
    bufferOffset = _serializer.uint32(obj.traffic_light_roi.length, buffer, bufferOffset);
    obj.traffic_light_roi.forEach((val) => {
      bufferOffset = TrafficLightROI.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light_single_frame]
    // Serialize the length for message field [traffic_light_single_frame]
    bufferOffset = _serializer.uint32(obj.traffic_light_single_frame.length, buffer, bufferOffset);
    obj.traffic_light_single_frame.forEach((val) => {
      bufferOffset = TrafficLightSingleFrame.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light_multi_frame]
    // Serialize the length for message field [traffic_light_multi_frame]
    bufferOffset = _serializer.uint32(obj.traffic_light_multi_frame.length, buffer, bufferOffset);
    obj.traffic_light_multi_frame.forEach((val) => {
      bufferOffset = TrafficLightMultiFrame.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light_decision]
    // Serialize the length for message field [traffic_light_decision]
    bufferOffset = _serializer.uint32(obj.traffic_light_decision.length, buffer, bufferOffset);
    obj.traffic_light_decision.forEach((val) => {
      bufferOffset = TrafficLightDecision.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [hdmap_traffic_light_information]
    bufferOffset = HDMapTafficLightInformation.serialize(obj.hdmap_traffic_light_information, buffer, bufferOffset);
    // Serialize message field [physical_traffic_light_single_frame]
    // Serialize the length for message field [physical_traffic_light_single_frame]
    bufferOffset = _serializer.uint32(obj.physical_traffic_light_single_frame.length, buffer, bufferOffset);
    obj.physical_traffic_light_single_frame.forEach((val) => {
      bufferOffset = PhysicalTrafficLightSingleFrame.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [physical_traffic_light_multi_frame]
    // Serialize the length for message field [physical_traffic_light_multi_frame]
    bufferOffset = _serializer.uint32(obj.physical_traffic_light_multi_frame.length, buffer, bufferOffset);
    obj.physical_traffic_light_multi_frame.forEach((val) => {
      bufferOffset = PhysicalTrafficLightMultiFrame.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightPerceptionResult
    let len;
    let data = new TrafficLightPerceptionResult(null);
    // Deserialize message field [cross_id]
    data.cross_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [in_fov]
    data.in_fov = TrafficLightInFov.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_light_roi]
    // Deserialize array length for message field [traffic_light_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_roi[i] = TrafficLightROI.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light_single_frame]
    // Deserialize array length for message field [traffic_light_single_frame]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_single_frame = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_single_frame[i] = TrafficLightSingleFrame.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light_multi_frame]
    // Deserialize array length for message field [traffic_light_multi_frame]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_multi_frame = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_multi_frame[i] = TrafficLightMultiFrame.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light_decision]
    // Deserialize array length for message field [traffic_light_decision]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_decision = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_decision[i] = TrafficLightDecision.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [hdmap_traffic_light_information]
    data.hdmap_traffic_light_information = HDMapTafficLightInformation.deserialize(buffer, bufferOffset);
    // Deserialize message field [physical_traffic_light_single_frame]
    // Deserialize array length for message field [physical_traffic_light_single_frame]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.physical_traffic_light_single_frame = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.physical_traffic_light_single_frame[i] = PhysicalTrafficLightSingleFrame.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [physical_traffic_light_multi_frame]
    // Deserialize array length for message field [physical_traffic_light_multi_frame]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.physical_traffic_light_multi_frame = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.physical_traffic_light_multi_frame[i] = PhysicalTrafficLightMultiFrame.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 18 * object.traffic_light_roi.length;
    object.traffic_light_single_frame.forEach((val) => {
      length += TrafficLightSingleFrame.getMessageSize(val);
    });
    object.traffic_light_multi_frame.forEach((val) => {
      length += TrafficLightMultiFrame.getMessageSize(val);
    });
    object.traffic_light_decision.forEach((val) => {
      length += TrafficLightDecision.getMessageSize(val);
    });
    length += HDMapTafficLightInformation.getMessageSize(object.hdmap_traffic_light_information);
    object.physical_traffic_light_single_frame.forEach((val) => {
      length += PhysicalTrafficLightSingleFrame.getMessageSize(val);
    });
    object.physical_traffic_light_multi_frame.forEach((val) => {
      length += PhysicalTrafficLightMultiFrame.getMessageSize(val);
    });
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficLightPerceptionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06bac2504e379afdf9b0c9e8de2bb35f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 cross_id
    perception_interface_msgs/TrafficLightInFov in_fov
    perception_interface_msgs/TrafficLightROI[] traffic_light_roi
    perception_interface_msgs/TrafficLightSingleFrame[] traffic_light_single_frame
    perception_interface_msgs/TrafficLightMultiFrame[] traffic_light_multi_frame
    perception_interface_msgs/TrafficLightDecision[] traffic_light_decision
    perception_interface_msgs/HDMapTafficLightInformation hdmap_traffic_light_information
    perception_interface_msgs/PhysicalTrafficLightSingleFrame[] physical_traffic_light_single_frame
    perception_interface_msgs/PhysicalTrafficLightMultiFrame[] physical_traffic_light_multi_frame
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightInFov
    uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1
    uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2
    uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4
    uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8
    uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightROI
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    perception_interface_msgs/Rect4f roi
    
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
    MSG: perception_interface_msgs/Rect4f
    float32 left
    float32 top
    float32 right
    float32 bottom
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightSingleFrame
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/TrafficLightTypeEnum type
    perception_interface_msgs/Rect4f bounding_box_2d
    float32[] features
    int32 track_id
    perception_interface_msgs/TrafficLightPatternEnum[] pattern
    perception_interface_msgs/TrafficLightStatusEnum[] status
    perception_interface_msgs/TrafficLightOnOffEnum[] onoff
    perception_interface_msgs/TrafficLightNumberEnum[] number
    float32[] glim_type_scores
    float32[] pattern_scores
    float32[] status_scores
    float32[] onoff_scores
    float32[] number_scores
    uint8 count_number
    perception_interface_msgs/Shape3f shape_3d
    perception_interface_msgs/Point3f location_bv
    float32 heading_theta_bv
    perception_interface_msgs/Vector2f velocity_bv
    perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightTypeEnum
    uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightPatternEnum
    uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
    uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
    uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
    uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
    uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
    uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
    uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
    uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
    uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
    uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
    uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
    uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
    uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightStatusEnum
    uint8 TRAFFIC_LIGHT_STATUS_RED = 0
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
    uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
    uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
    uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
    uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
    uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
    uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
    uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
    uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
    uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightOnOffEnum
    uint8 TRAFFIC_LIGHT_ONOFF_ON = 0
    uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1
    uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2
    uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightNumberEnum
    uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0
    uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1
    uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2
    uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3
    uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4
    uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5
    uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6
    uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7
    uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8
    uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9
    uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10
    uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11
    uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12
    uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13
    uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14
    uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15
    uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16
    uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Shape3f
    float32 length
    float32 height
    float32 width
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/Vector2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightAssociatedInfo
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    uint32 track_id
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightMultiFrame
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    perception_interface_msgs/TrafficLightTypeEnum type
    int32 track_id
    perception_interface_msgs/TrafficLightPatternEnum[] pattern
    perception_interface_msgs/TrafficLightStatusEnum[] status
    float32[] pattern_score
    float32[] status_score
    float32 duration
    float32 remaining
    uint8 count_number
    perception_interface_msgs/Shape3f shape_3d
    perception_interface_msgs/Point3f location_bv
    float32 heading_theta_bv
    perception_interface_msgs/Vector2f velocity_bv
    perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightDecision
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    perception_interface_msgs/TrafficLightPatternEnum pattern
    perception_interface_msgs/TrafficLightStatusEnum status
    float32 duration
    float32 remaining
    uint8 count_number
    float32 score
    string reserved_info
    perception_interface_msgs/TrafficLightPositionFeature pos_feature
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightPositionFeature
    perception_interface_msgs/Point3f position
    float32 yaw
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapTafficLightInformation
    bool valid
    bool in_intersection
    perception_interface_msgs/HDMapIntersection[] hdmap_intersecions
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapIntersection
    perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line
    perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapIntersectionStopLine
    float64 distance_to_stop_line
    float64 distance_buffer
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapTrafficLightGroup
    uint64 track_id
    perception_interface_msgs/HDMapTrafficLight[] traffic_lights
    
    ================================================================================
    MSG: perception_interface_msgs/HDMapTrafficLight
    perception_interface_msgs/Point3d[] boundary
    perception_interface_msgs/TrafficLightPatternEnum pattern
    bool on_route
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_interface_msgs/PhysicalTrafficLightSingleFrame
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/TrafficLightGroupEnum group_type
    perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type
    perception_interface_msgs/TrafficLightGroupPropertyEnum group_property
    uint8 bulb_num
    perception_interface_msgs/PhysicalTrafficLightBulb[] bulb
    perception_interface_msgs/Rect4f bounding_box_2d
    int32 track_id
    perception_interface_msgs/TrafficLightOnOffEnum[] onoff
    float32[] group_type_scores
    float32[] shape_scores
    float32[] onoff_scores
    uint8 count_number
    perception_interface_msgs/Shape3f shape_3d
    perception_interface_msgs/Point3f location_bv
    float32 heading_theta_bv
    perception_interface_msgs/Vector2f velocity_bv
    perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightGroupEnum
    uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0
    uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1
    uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2
    uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3
    uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4
    uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5
    uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightGroupShapeEnum
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/TrafficLightGroupPropertyEnum
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6
    uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/PhysicalTrafficLightBulb
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/TrafficLightTypeEnum type
    perception_interface_msgs/Rect4f bounding_box_2d
    int32 track_id
    perception_interface_msgs/TrafficLightPatternEnum[] pattern
    perception_interface_msgs/TrafficLightStatusEnum[] status
    perception_interface_msgs/TrafficLightOnOffEnum[] onoff
    perception_interface_msgs/TrafficLightNumberEnum[] number
    float32[] glim_type_scores
    float32[] pattern_scores
    float32[] status_scores
    float32[] onoff_scores
    float32[] number_scores
    uint8 bulb_id
    uint8 count_number
    perception_interface_msgs/Shape3f shape_3d
    perception_interface_msgs/Point3f location_bv
    float32 heading_theta_bv
    perception_interface_msgs/Vector2f velocity_bv
    perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/PhysicalTrafficLightMultiFrame
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    float32 score
    perception_interface_msgs/TrafficLightGroupEnum group_type
    perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type
    perception_interface_msgs/TrafficLightGroupPropertyEnum group_property
    uint8 bulb_num
    perception_interface_msgs/PhysicalTrafficLightBulb[] bulb
    perception_interface_msgs/Rect4f bounding_box_2d
    int32 track_id
    perception_interface_msgs/TrafficLightOnOffEnum[] onoff
    float32[] group_type_scores
    float32[] shape_scores
    float32[] onoff_scores
    uint8 count_number
    perception_interface_msgs/Shape3f shape_3d
    perception_interface_msgs/Point3f location_bv
    float32 heading_theta_bv
    perception_interface_msgs/Vector2f velocity_bv
    perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightPerceptionResult(null);
    if (msg.cross_id !== undefined) {
      resolved.cross_id = msg.cross_id;
    }
    else {
      resolved.cross_id = 0
    }

    if (msg.in_fov !== undefined) {
      resolved.in_fov = TrafficLightInFov.Resolve(msg.in_fov)
    }
    else {
      resolved.in_fov = new TrafficLightInFov()
    }

    if (msg.traffic_light_roi !== undefined) {
      resolved.traffic_light_roi = new Array(msg.traffic_light_roi.length);
      for (let i = 0; i < resolved.traffic_light_roi.length; ++i) {
        resolved.traffic_light_roi[i] = TrafficLightROI.Resolve(msg.traffic_light_roi[i]);
      }
    }
    else {
      resolved.traffic_light_roi = []
    }

    if (msg.traffic_light_single_frame !== undefined) {
      resolved.traffic_light_single_frame = new Array(msg.traffic_light_single_frame.length);
      for (let i = 0; i < resolved.traffic_light_single_frame.length; ++i) {
        resolved.traffic_light_single_frame[i] = TrafficLightSingleFrame.Resolve(msg.traffic_light_single_frame[i]);
      }
    }
    else {
      resolved.traffic_light_single_frame = []
    }

    if (msg.traffic_light_multi_frame !== undefined) {
      resolved.traffic_light_multi_frame = new Array(msg.traffic_light_multi_frame.length);
      for (let i = 0; i < resolved.traffic_light_multi_frame.length; ++i) {
        resolved.traffic_light_multi_frame[i] = TrafficLightMultiFrame.Resolve(msg.traffic_light_multi_frame[i]);
      }
    }
    else {
      resolved.traffic_light_multi_frame = []
    }

    if (msg.traffic_light_decision !== undefined) {
      resolved.traffic_light_decision = new Array(msg.traffic_light_decision.length);
      for (let i = 0; i < resolved.traffic_light_decision.length; ++i) {
        resolved.traffic_light_decision[i] = TrafficLightDecision.Resolve(msg.traffic_light_decision[i]);
      }
    }
    else {
      resolved.traffic_light_decision = []
    }

    if (msg.hdmap_traffic_light_information !== undefined) {
      resolved.hdmap_traffic_light_information = HDMapTafficLightInformation.Resolve(msg.hdmap_traffic_light_information)
    }
    else {
      resolved.hdmap_traffic_light_information = new HDMapTafficLightInformation()
    }

    if (msg.physical_traffic_light_single_frame !== undefined) {
      resolved.physical_traffic_light_single_frame = new Array(msg.physical_traffic_light_single_frame.length);
      for (let i = 0; i < resolved.physical_traffic_light_single_frame.length; ++i) {
        resolved.physical_traffic_light_single_frame[i] = PhysicalTrafficLightSingleFrame.Resolve(msg.physical_traffic_light_single_frame[i]);
      }
    }
    else {
      resolved.physical_traffic_light_single_frame = []
    }

    if (msg.physical_traffic_light_multi_frame !== undefined) {
      resolved.physical_traffic_light_multi_frame = new Array(msg.physical_traffic_light_multi_frame.length);
      for (let i = 0; i < resolved.physical_traffic_light_multi_frame.length; ++i) {
        resolved.physical_traffic_light_multi_frame[i] = PhysicalTrafficLightMultiFrame.Resolve(msg.physical_traffic_light_multi_frame[i]);
      }
    }
    else {
      resolved.physical_traffic_light_multi_frame = []
    }

    return resolved;
    }
};

module.exports = TrafficLightPerceptionResult;
