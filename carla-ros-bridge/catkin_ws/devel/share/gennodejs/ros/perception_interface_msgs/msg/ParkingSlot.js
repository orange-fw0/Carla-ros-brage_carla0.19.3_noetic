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
let ParkingSlotPoint = require('./ParkingSlotPoint.js');
let ParkingSlotCenterPoint = require('./ParkingSlotCenterPoint.js');
let Point2f = require('./Point2f.js');
let ParkingSlotPoint3d = require('./ParkingSlotPoint3d.js');

//-----------------------------------------------------------

class ParkingSlot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_source = null;
      this.camera_model = null;
      this.available = null;
      this.corner_points = null;
      this.center_point = null;
      this.wheel_stop_points = null;
      this.points_3d = null;
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
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('corner_points')) {
        this.corner_points = initObj.corner_points
      }
      else {
        this.corner_points = [];
      }
      if (initObj.hasOwnProperty('center_point')) {
        this.center_point = initObj.center_point
      }
      else {
        this.center_point = new ParkingSlotCenterPoint();
      }
      if (initObj.hasOwnProperty('wheel_stop_points')) {
        this.wheel_stop_points = initObj.wheel_stop_points
      }
      else {
        this.wheel_stop_points = [];
      }
      if (initObj.hasOwnProperty('points_3d')) {
        this.points_3d = initObj.points_3d
      }
      else {
        this.points_3d = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSlot
    // Serialize message field [camera_source]
    bufferOffset = CameraSourceEnum.serialize(obj.camera_source, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [corner_points]
    // Serialize the length for message field [corner_points]
    bufferOffset = _serializer.uint32(obj.corner_points.length, buffer, bufferOffset);
    obj.corner_points.forEach((val) => {
      bufferOffset = ParkingSlotPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [center_point]
    bufferOffset = ParkingSlotCenterPoint.serialize(obj.center_point, buffer, bufferOffset);
    // Serialize message field [wheel_stop_points]
    // Serialize the length for message field [wheel_stop_points]
    bufferOffset = _serializer.uint32(obj.wheel_stop_points.length, buffer, bufferOffset);
    obj.wheel_stop_points.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_3d]
    // Serialize the length for message field [points_3d]
    bufferOffset = _serializer.uint32(obj.points_3d.length, buffer, bufferOffset);
    obj.points_3d.forEach((val) => {
      bufferOffset = ParkingSlotPoint3d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSlot
    let len;
    let data = new ParkingSlot(null);
    // Deserialize message field [camera_source]
    data.camera_source = CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [corner_points]
    // Deserialize array length for message field [corner_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.corner_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corner_points[i] = ParkingSlotPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [center_point]
    data.center_point = ParkingSlotCenterPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_stop_points]
    // Deserialize array length for message field [wheel_stop_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wheel_stop_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wheel_stop_points[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_3d]
    // Deserialize array length for message field [points_3d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_3d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_3d[i] = ParkingSlotPoint3d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 13 * object.corner_points.length;
    length += 8 * object.wheel_stop_points.length;
    length += 17 * object.points_3d.length;
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ParkingSlot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87e3c03b0fdca005d86220b8f6fc1a73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/CameraSourceEnum camera_source
    perception_interface_msgs/CameraModelEnum camera_model
    uint8 available
    perception_interface_msgs/ParkingSlotPoint[] corner_points
    perception_interface_msgs/ParkingSlotCenterPoint center_point
    perception_interface_msgs/Point2f[] wheel_stop_points
    perception_interface_msgs/ParkingSlotPoint3d[] points_3d
    
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
    MSG: perception_interface_msgs/ParkingSlotPoint
    perception_interface_msgs/Point2f position
    float32 confidence
    perception_interface_msgs/ParkingSlotPointTypeEnum type
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
    uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
    uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotCenterPoint
    perception_interface_msgs/Point2f position
    perception_interface_msgs/ParkingSlotTypeEnum available_type
    float32 confidence
    float32 center_line_angle
    perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type
    perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type
    float32 special_confidence
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotTypeEnum
    uint8 PARKING_SLOT_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_TYPE_AVAILABLE = 1
    uint8 PARKING_SLOT_TYPE_OCCUPIED = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum
    uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1
    uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum
    uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1
    uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2
    uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3
    uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotPoint3d
    perception_interface_msgs/Point3f position
    float32 confidence
    perception_interface_msgs/ParkingSlotPointTypeEnum type
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSlot(null);
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

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.corner_points !== undefined) {
      resolved.corner_points = new Array(msg.corner_points.length);
      for (let i = 0; i < resolved.corner_points.length; ++i) {
        resolved.corner_points[i] = ParkingSlotPoint.Resolve(msg.corner_points[i]);
      }
    }
    else {
      resolved.corner_points = []
    }

    if (msg.center_point !== undefined) {
      resolved.center_point = ParkingSlotCenterPoint.Resolve(msg.center_point)
    }
    else {
      resolved.center_point = new ParkingSlotCenterPoint()
    }

    if (msg.wheel_stop_points !== undefined) {
      resolved.wheel_stop_points = new Array(msg.wheel_stop_points.length);
      for (let i = 0; i < resolved.wheel_stop_points.length; ++i) {
        resolved.wheel_stop_points[i] = Point2f.Resolve(msg.wheel_stop_points[i]);
      }
    }
    else {
      resolved.wheel_stop_points = []
    }

    if (msg.points_3d !== undefined) {
      resolved.points_3d = new Array(msg.points_3d.length);
      for (let i = 0; i < resolved.points_3d.length; ++i) {
        resolved.points_3d[i] = ParkingSlotPoint3d.Resolve(msg.points_3d[i]);
      }
    }
    else {
      resolved.points_3d = []
    }

    return resolved;
    }
};

module.exports = ParkingSlot;
