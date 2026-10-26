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
let TrafficLightTypeEnum = require('./TrafficLightTypeEnum.js');
let Rect4f = require('./Rect4f.js');
let TrafficLightPatternEnum = require('./TrafficLightPatternEnum.js');
let TrafficLightStatusEnum = require('./TrafficLightStatusEnum.js');
let TrafficLightOnOffEnum = require('./TrafficLightOnOffEnum.js');
let TrafficLightNumberEnum = require('./TrafficLightNumberEnum.js');
let Shape3f = require('./Shape3f.js');
let Point3f = require('./Point3f.js');
let Vector2f = require('./Vector2f.js');
let TrafficLightAssociatedInfo = require('./TrafficLightAssociatedInfo.js');

//-----------------------------------------------------------

class PhysicalTrafficLightBulb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.score = null;
      this.type = null;
      this.bounding_box_2d = null;
      this.track_id = null;
      this.pattern = null;
      this.status = null;
      this.onoff = null;
      this.number = null;
      this.glim_type_scores = null;
      this.pattern_scores = null;
      this.status_scores = null;
      this.onoff_scores = null;
      this.number_scores = null;
      this.bulb_id = null;
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
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new TrafficLightTypeEnum();
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
      if (initObj.hasOwnProperty('pattern')) {
        this.pattern = initObj.pattern
      }
      else {
        this.pattern = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
      if (initObj.hasOwnProperty('onoff')) {
        this.onoff = initObj.onoff
      }
      else {
        this.onoff = [];
      }
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = [];
      }
      if (initObj.hasOwnProperty('glim_type_scores')) {
        this.glim_type_scores = initObj.glim_type_scores
      }
      else {
        this.glim_type_scores = [];
      }
      if (initObj.hasOwnProperty('pattern_scores')) {
        this.pattern_scores = initObj.pattern_scores
      }
      else {
        this.pattern_scores = [];
      }
      if (initObj.hasOwnProperty('status_scores')) {
        this.status_scores = initObj.status_scores
      }
      else {
        this.status_scores = [];
      }
      if (initObj.hasOwnProperty('onoff_scores')) {
        this.onoff_scores = initObj.onoff_scores
      }
      else {
        this.onoff_scores = [];
      }
      if (initObj.hasOwnProperty('number_scores')) {
        this.number_scores = initObj.number_scores
      }
      else {
        this.number_scores = [];
      }
      if (initObj.hasOwnProperty('bulb_id')) {
        this.bulb_id = initObj.bulb_id
      }
      else {
        this.bulb_id = 0;
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
    // Serializes a message object of type PhysicalTrafficLightBulb
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = TrafficLightTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [bounding_box_2d]
    bufferOffset = Rect4f.serialize(obj.bounding_box_2d, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.int32(obj.track_id, buffer, bufferOffset);
    // Serialize message field [pattern]
    // Serialize the length for message field [pattern]
    bufferOffset = _serializer.uint32(obj.pattern.length, buffer, bufferOffset);
    obj.pattern.forEach((val) => {
      bufferOffset = TrafficLightPatternEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [status]
    // Serialize the length for message field [status]
    bufferOffset = _serializer.uint32(obj.status.length, buffer, bufferOffset);
    obj.status.forEach((val) => {
      bufferOffset = TrafficLightStatusEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [onoff]
    // Serialize the length for message field [onoff]
    bufferOffset = _serializer.uint32(obj.onoff.length, buffer, bufferOffset);
    obj.onoff.forEach((val) => {
      bufferOffset = TrafficLightOnOffEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [number]
    // Serialize the length for message field [number]
    bufferOffset = _serializer.uint32(obj.number.length, buffer, bufferOffset);
    obj.number.forEach((val) => {
      bufferOffset = TrafficLightNumberEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [glim_type_scores]
    bufferOffset = _arraySerializer.float32(obj.glim_type_scores, buffer, bufferOffset, null);
    // Serialize message field [pattern_scores]
    bufferOffset = _arraySerializer.float32(obj.pattern_scores, buffer, bufferOffset, null);
    // Serialize message field [status_scores]
    bufferOffset = _arraySerializer.float32(obj.status_scores, buffer, bufferOffset, null);
    // Serialize message field [onoff_scores]
    bufferOffset = _arraySerializer.float32(obj.onoff_scores, buffer, bufferOffset, null);
    // Serialize message field [number_scores]
    bufferOffset = _arraySerializer.float32(obj.number_scores, buffer, bufferOffset, null);
    // Serialize message field [bulb_id]
    bufferOffset = _serializer.uint8(obj.bulb_id, buffer, bufferOffset);
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
    //deserializes a message object of type PhysicalTrafficLightBulb
    let len;
    let data = new PhysicalTrafficLightBulb(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = TrafficLightTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box_2d]
    data.bounding_box_2d = Rect4f.deserialize(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pattern]
    // Deserialize array length for message field [pattern]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pattern = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pattern[i] = TrafficLightPatternEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [status]
    // Deserialize array length for message field [status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.status[i] = TrafficLightStatusEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [onoff]
    // Deserialize array length for message field [onoff]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.onoff = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.onoff[i] = TrafficLightOnOffEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [number]
    // Deserialize array length for message field [number]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.number = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.number[i] = TrafficLightNumberEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [glim_type_scores]
    data.glim_type_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pattern_scores]
    data.pattern_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [status_scores]
    data.status_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [onoff_scores]
    data.onoff_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [number_scores]
    data.number_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [bulb_id]
    data.bulb_id = _deserializer.uint8(buffer, bufferOffset);
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
    length += object.pattern.length;
    length += object.status.length;
    length += object.onoff.length;
    length += object.number.length;
    length += 4 * object.glim_type_scores.length;
    length += 4 * object.pattern_scores.length;
    length += 4 * object.status_scores.length;
    length += 4 * object.onoff_scores.length;
    length += 4 * object.number_scores.length;
    length += 6 * object.associated_infos.length;
    length += _getByteLength(object.reserved_info);
    return length + 109;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/PhysicalTrafficLightBulb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '748f093997311e936cef09ebba4a5b68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PhysicalTrafficLightBulb(null);
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

    if (msg.type !== undefined) {
      resolved.type = TrafficLightTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new TrafficLightTypeEnum()
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

    if (msg.pattern !== undefined) {
      resolved.pattern = new Array(msg.pattern.length);
      for (let i = 0; i < resolved.pattern.length; ++i) {
        resolved.pattern[i] = TrafficLightPatternEnum.Resolve(msg.pattern[i]);
      }
    }
    else {
      resolved.pattern = []
    }

    if (msg.status !== undefined) {
      resolved.status = new Array(msg.status.length);
      for (let i = 0; i < resolved.status.length; ++i) {
        resolved.status[i] = TrafficLightStatusEnum.Resolve(msg.status[i]);
      }
    }
    else {
      resolved.status = []
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

    if (msg.number !== undefined) {
      resolved.number = new Array(msg.number.length);
      for (let i = 0; i < resolved.number.length; ++i) {
        resolved.number[i] = TrafficLightNumberEnum.Resolve(msg.number[i]);
      }
    }
    else {
      resolved.number = []
    }

    if (msg.glim_type_scores !== undefined) {
      resolved.glim_type_scores = msg.glim_type_scores;
    }
    else {
      resolved.glim_type_scores = []
    }

    if (msg.pattern_scores !== undefined) {
      resolved.pattern_scores = msg.pattern_scores;
    }
    else {
      resolved.pattern_scores = []
    }

    if (msg.status_scores !== undefined) {
      resolved.status_scores = msg.status_scores;
    }
    else {
      resolved.status_scores = []
    }

    if (msg.onoff_scores !== undefined) {
      resolved.onoff_scores = msg.onoff_scores;
    }
    else {
      resolved.onoff_scores = []
    }

    if (msg.number_scores !== undefined) {
      resolved.number_scores = msg.number_scores;
    }
    else {
      resolved.number_scores = []
    }

    if (msg.bulb_id !== undefined) {
      resolved.bulb_id = msg.bulb_id;
    }
    else {
      resolved.bulb_id = 0
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

module.exports = PhysicalTrafficLightBulb;
