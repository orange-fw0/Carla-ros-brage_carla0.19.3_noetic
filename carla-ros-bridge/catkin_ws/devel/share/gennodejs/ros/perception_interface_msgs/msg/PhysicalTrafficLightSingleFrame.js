// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraSourceEnum = require('./CameraSourceEnum.js');
let CameraModelEnum = require('./CameraModelEnum.js');
let TrafficLightGroupEnum = require('./TrafficLightGroupEnum.js');
let TrafficLightGroupShapeEnum = require('./TrafficLightGroupShapeEnum.js');
let TrafficLightGroupPropertyEnum = require('./TrafficLightGroupPropertyEnum.js');
let PhysicalTrafficLightBulb = require('./PhysicalTrafficLightBulb.js');
let Rect4f = require('./Rect4f.js');
let TrafficLightOnOffEnum = require('./TrafficLightOnOffEnum.js');
let Shape3f = require('./Shape3f.js');
let Point3f = require('./Point3f.js');
let Vector2f = require('./Vector2f.js');
let TrafficLightAssociatedInfo = require('./TrafficLightAssociatedInfo.js');

//-----------------------------------------------------------

class PhysicalTrafficLightSingleFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.score = null;
      this.group_type = null;
      this.group_shape_type = null;
      this.group_property = null;
      this.bulb_num = null;
      this.bulb = null;
      this.bounding_box_2d = null;
      this.track_id = null;
      this.onoff = null;
      this.group_type_scores = null;
      this.shape_scores = null;
      this.onoff_scores = null;
      this.count_number = null;
      this.shape_3d = null;
      this.location_bv = null;
      this.heading_theta_bv = null;
      this.velocity_bv = null;
      this.associated_infos = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_source')) {
        this.camera_source = initObj.camera_source
      }
      else {
        this.camera_source = new CameraSourceEnum();
      }
      if (initObj.hasOwnProperty('camera_model')) {
        this.camera_model = initObj.camera_model
      }
      else {
        this.camera_model = new CameraModelEnum();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('group_type')) {
        this.group_type = initObj.group_type
      }
      else {
        this.group_type = new TrafficLightGroupEnum();
      }
      if (initObj.hasOwnProperty('group_shape_type')) {
        this.group_shape_type = initObj.group_shape_type
      }
      else {
        this.group_shape_type = new TrafficLightGroupShapeEnum();
      }
      if (initObj.hasOwnProperty('group_property')) {
        this.group_property = initObj.group_property
      }
      else {
        this.group_property = new TrafficLightGroupPropertyEnum();
      }
      if (initObj.hasOwnProperty('bulb_num')) {
        this.bulb_num = initObj.bulb_num
      }
      else {
        this.bulb_num = 0;
      }
      if (initObj.hasOwnProperty('bulb')) {
        this.bulb = initObj.bulb
      }
      else {
        this.bulb = [];
      }
      if (initObj.hasOwnProperty('bounding_box_2d')) {
        this.bounding_box_2d = initObj.bounding_box_2d
      }
      else {
        this.bounding_box_2d = new Rect4f();
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('onoff')) {
        this.onoff = initObj.onoff
      }
      else {
        this.onoff = [];
      }
      if (initObj.hasOwnProperty('group_type_scores')) {
        this.group_type_scores = initObj.group_type_scores
      }
      else {
        this.group_type_scores = [];
      }
      if (initObj.hasOwnProperty('shape_scores')) {
        this.shape_scores = initObj.shape_scores
      }
      else {
        this.shape_scores = [];
      }
      if (initObj.hasOwnProperty('onoff_scores')) {
        this.onoff_scores = initObj.onoff_scores
      }
      else {
        this.onoff_scores = [];
      }
      if (initObj.hasOwnProperty('count_number')) {
        this.count_number = initObj.count_number
      }
      else {
        this.count_number = 0;
      }
      if (initObj.hasOwnProperty('shape_3d')) {
        this.shape_3d = initObj.shape_3d
      }
      else {
        this.shape_3d = new Shape3f();
      }
      if (initObj.hasOwnProperty('location_bv')) {
        this.location_bv = initObj.location_bv
      }
      else {
        this.location_bv = new Point3f();
      }
      if (initObj.hasOwnProperty('heading_theta_bv')) {
        this.heading_theta_bv = initObj.heading_theta_bv
      }
      else {
        this.heading_theta_bv = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_bv')) {
        this.velocity_bv = initObj.velocity_bv
      }
      else {
        this.velocity_bv = new Vector2f();
      }
      if (initObj.hasOwnProperty('associated_infos')) {
        this.associated_infos = initObj.associated_infos
      }
      else {
        this.associated_infos = [];
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PhysicalTrafficLightSingleFrame
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [group_type]
    bufferOffset = TrafficLightGroupEnum.serialize(obj.group_type, buffer, bufferOffset);
    // Serialize message field [group_shape_type]
    bufferOffset = TrafficLightGroupShapeEnum.serialize(obj.group_shape_type, buffer, bufferOffset);
    // Serialize message field [group_property]
    bufferOffset = TrafficLightGroupPropertyEnum.serialize(obj.group_property, buffer, bufferOffset);
    // Serialize message field [bulb_num]
    bufferOffset = _serializer.uint8(obj.bulb_num, buffer, bufferOffset);
    // Serialize message field [bulb]
    // Serialize the length for message field [bulb]
    bufferOffset = _serializer.uint32(obj.bulb.length, buffer, bufferOffset);
    obj.bulb.forEach((val) => {
      bufferOffset = PhysicalTrafficLightBulb.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bounding_box_2d]
    bufferOffset = Rect4f.serialize(obj.bounding_box_2d, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.int32(obj.track_id, buffer, bufferOffset);
    // Serialize message field [onoff]
    // Serialize the length for message field [onoff]
    bufferOffset = _serializer.uint32(obj.onoff.length, buffer, bufferOffset);
    obj.onoff.forEach((val) => {
      bufferOffset = TrafficLightOnOffEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [group_type_scores]
    bufferOffset = _arraySerializer.float32(obj.group_type_scores, buffer, bufferOffset, null);
    // Serialize message field [shape_scores]
    bufferOffset = _arraySerializer.float32(obj.shape_scores, buffer, bufferOffset, null);
    // Serialize message field [onoff_scores]
    bufferOffset = _arraySerializer.float32(obj.onoff_scores, buffer, bufferOffset, null);
    // Serialize message field [count_number]
    bufferOffset = _serializer.uint8(obj.count_number, buffer, bufferOffset);
    // Serialize message field [shape_3d]
    bufferOffset = Shape3f.serialize(obj.shape_3d, buffer, bufferOffset);
    // Serialize message field [location_bv]
    bufferOffset = Point3f.serialize(obj.location_bv, buffer, bufferOffset);
    // Serialize message field [heading_theta_bv]
    bufferOffset = _serializer.float32(obj.heading_theta_bv, buffer, bufferOffset);
    // Serialize message field [velocity_bv]
    bufferOffset = Vector2f.serialize(obj.velocity_bv, buffer, bufferOffset);
    // Serialize message field [associated_infos]
    // Serialize the length for message field [associated_infos]
    bufferOffset = _serializer.uint32(obj.associated_infos.length, buffer, bufferOffset);
    obj.associated_infos.forEach((val) => {
      bufferOffset = TrafficLightAssociatedInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PhysicalTrafficLightSingleFrame
    let len;
    let data = new PhysicalTrafficLightSingleFrame(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [group_type]
    data.group_type = TrafficLightGroupEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [group_shape_type]
    data.group_shape_type = TrafficLightGroupShapeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [group_property]
    data.group_property = TrafficLightGroupPropertyEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [bulb_num]
    data.bulb_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bulb]
    // Deserialize array length for message field [bulb]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bulb = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bulb[i] = PhysicalTrafficLightBulb.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bounding_box_2d]
    data.bounding_box_2d = Rect4f.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [onoff]
    // Deserialize array length for message field [onoff]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.onoff = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.onoff[i] = TrafficLightOnOffEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [group_type_scores]
    data.group_type_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [shape_scores]
    data.shape_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [onoff_scores]
    data.onoff_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [count_number]
    data.count_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [shape_3d]
    data.shape_3d = Shape3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [location_bv]
    data.location_bv = Point3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading_theta_bv]
    data.heading_theta_bv = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_bv]
    data.velocity_bv = Vector2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [associated_infos]
    // Deserialize array length for message field [associated_infos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.associated_infos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.associated_infos[i] = TrafficLightAssociatedInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.bulb.forEach((val) => {
      length += PhysicalTrafficLightBulb.getMessageSize(val);
    });
    length += object.onoff.length;
    length += 4 * object.group_type_scores.length;
    length += 4 * object.shape_scores.length;
    length += 4 * object.onoff_scores.length;
    length += 6 * object.associated_infos.length;
    length += _getByteLength(object.reserved_info);
    return length + 95;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/PhysicalTrafficLightSingleFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '493fc9d1b4e30252959cfd08068815b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: perception_interface_msgs/TrafficLightTypeEnum
    uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
    uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
    uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Rect4f
    float32 left
    float32 top
    float32 right
    float32 bottom
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PhysicalTrafficLightSingleFrame(null);
    if (msg.camera_source !== undefined) {
      resolved.camera_source = CameraSourceEnum.Resolve(msg.camera_source)
    }
    else {
      resolved.camera_source = new CameraSourceEnum()
    }

    if (msg.camera_model !== undefined) {
      resolved.camera_model = CameraModelEnum.Resolve(msg.camera_model)
    }
    else {
      resolved.camera_model = new CameraModelEnum()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.group_type !== undefined) {
      resolved.group_type = TrafficLightGroupEnum.Resolve(msg.group_type)
    }
    else {
      resolved.group_type = new TrafficLightGroupEnum()
    }

    if (msg.group_shape_type !== undefined) {
      resolved.group_shape_type = TrafficLightGroupShapeEnum.Resolve(msg.group_shape_type)
    }
    else {
      resolved.group_shape_type = new TrafficLightGroupShapeEnum()
    }

    if (msg.group_property !== undefined) {
      resolved.group_property = TrafficLightGroupPropertyEnum.Resolve(msg.group_property)
    }
    else {
      resolved.group_property = new TrafficLightGroupPropertyEnum()
    }

    if (msg.bulb_num !== undefined) {
      resolved.bulb_num = msg.bulb_num;
    }
    else {
      resolved.bulb_num = 0
    }

    if (msg.bulb !== undefined) {
      resolved.bulb = new Array(msg.bulb.length);
      for (let i = 0; i < resolved.bulb.length; ++i) {
        resolved.bulb[i] = PhysicalTrafficLightBulb.Resolve(msg.bulb[i]);
      }
    }
    else {
      resolved.bulb = []
    }

    if (msg.bounding_box_2d !== undefined) {
      resolved.bounding_box_2d = Rect4f.Resolve(msg.bounding_box_2d)
    }
    else {
      resolved.bounding_box_2d = new Rect4f()
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.onoff !== undefined) {
      resolved.onoff = new Array(msg.onoff.length);
      for (let i = 0; i < resolved.onoff.length; ++i) {
        resolved.onoff[i] = TrafficLightOnOffEnum.Resolve(msg.onoff[i]);
      }
    }
    else {
      resolved.onoff = []
    }

    if (msg.group_type_scores !== undefined) {
      resolved.group_type_scores = msg.group_type_scores;
    }
    else {
      resolved.group_type_scores = []
    }

    if (msg.shape_scores !== undefined) {
      resolved.shape_scores = msg.shape_scores;
    }
    else {
      resolved.shape_scores = []
    }

    if (msg.onoff_scores !== undefined) {
      resolved.onoff_scores = msg.onoff_scores;
    }
    else {
      resolved.onoff_scores = []
    }

    if (msg.count_number !== undefined) {
      resolved.count_number = msg.count_number;
    }
    else {
      resolved.count_number = 0
    }

    if (msg.shape_3d !== undefined) {
      resolved.shape_3d = Shape3f.Resolve(msg.shape_3d)
    }
    else {
      resolved.shape_3d = new Shape3f()
    }

    if (msg.location_bv !== undefined) {
      resolved.location_bv = Point3f.Resolve(msg.location_bv)
    }
    else {
      resolved.location_bv = new Point3f()
    }

    if (msg.heading_theta_bv !== undefined) {
      resolved.heading_theta_bv = msg.heading_theta_bv;
    }
    else {
      resolved.heading_theta_bv = 0.0
    }

    if (msg.velocity_bv !== undefined) {
      resolved.velocity_bv = Vector2f.Resolve(msg.velocity_bv)
    }
    else {
      resolved.velocity_bv = new Vector2f()
    }

    if (msg.associated_infos !== undefined) {
      resolved.associated_infos = new Array(msg.associated_infos.length);
      for (let i = 0; i < resolved.associated_infos.length; ++i) {
        resolved.associated_infos[i] = TrafficLightAssociatedInfo.Resolve(msg.associated_infos[i]);
      }
    }
    else {
      resolved.associated_infos = []
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = PhysicalTrafficLightSingleFrame;
