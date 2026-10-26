// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3f = require('./Point3f.js');
let ParkingSlotPointTypeEnum = require('./ParkingSlotPointTypeEnum.js');
let Point2f = require('./Point2f.js');
let FusionParkingSlotType = require('./FusionParkingSlotType.js');
let FusionSpecialParkingSlotType = require('./FusionSpecialParkingSlotType.js');
let ParkingSlotVirtualPoint = require('./ParkingSlotVirtualPoint.js');

//-----------------------------------------------------------

class FusionParkingSlotData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.charge_property = null;
      this.track_id = null;
      this.empty_votes = null;
      this.points_fusion = null;
      this.points_fusion_confidence = null;
      this.points_fusion_type = null;
      this.local_points_fusion = null;
      this.local_points_fusion_confidence = null;
      this.local_points_fusion_type = null;
      this.points_fusion_in_image = null;
      this.points_fusion_in_image_confidence = null;
      this.points_fusion_in_image_type = null;
      this.local_wheel_stop_points = null;
      this.slot_type = null;
      this.special_slot_type = null;
      this.virtual_point = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('charge_property')) {
        this.charge_property = initObj.charge_property
      }
      else {
        this.charge_property = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('empty_votes')) {
        this.empty_votes = initObj.empty_votes
      }
      else {
        this.empty_votes = 0;
      }
      if (initObj.hasOwnProperty('points_fusion')) {
        this.points_fusion = initObj.points_fusion
      }
      else {
        this.points_fusion = [];
      }
      if (initObj.hasOwnProperty('points_fusion_confidence')) {
        this.points_fusion_confidence = initObj.points_fusion_confidence
      }
      else {
        this.points_fusion_confidence = [];
      }
      if (initObj.hasOwnProperty('points_fusion_type')) {
        this.points_fusion_type = initObj.points_fusion_type
      }
      else {
        this.points_fusion_type = [];
      }
      if (initObj.hasOwnProperty('local_points_fusion')) {
        this.local_points_fusion = initObj.local_points_fusion
      }
      else {
        this.local_points_fusion = [];
      }
      if (initObj.hasOwnProperty('local_points_fusion_confidence')) {
        this.local_points_fusion_confidence = initObj.local_points_fusion_confidence
      }
      else {
        this.local_points_fusion_confidence = [];
      }
      if (initObj.hasOwnProperty('local_points_fusion_type')) {
        this.local_points_fusion_type = initObj.local_points_fusion_type
      }
      else {
        this.local_points_fusion_type = [];
      }
      if (initObj.hasOwnProperty('points_fusion_in_image')) {
        this.points_fusion_in_image = initObj.points_fusion_in_image
      }
      else {
        this.points_fusion_in_image = [];
      }
      if (initObj.hasOwnProperty('points_fusion_in_image_confidence')) {
        this.points_fusion_in_image_confidence = initObj.points_fusion_in_image_confidence
      }
      else {
        this.points_fusion_in_image_confidence = [];
      }
      if (initObj.hasOwnProperty('points_fusion_in_image_type')) {
        this.points_fusion_in_image_type = initObj.points_fusion_in_image_type
      }
      else {
        this.points_fusion_in_image_type = [];
      }
      if (initObj.hasOwnProperty('local_wheel_stop_points')) {
        this.local_wheel_stop_points = initObj.local_wheel_stop_points
      }
      else {
        this.local_wheel_stop_points = [];
      }
      if (initObj.hasOwnProperty('slot_type')) {
        this.slot_type = initObj.slot_type
      }
      else {
        this.slot_type = new FusionParkingSlotType();
      }
      if (initObj.hasOwnProperty('special_slot_type')) {
        this.special_slot_type = initObj.special_slot_type
      }
      else {
        this.special_slot_type = new FusionSpecialParkingSlotType();
      }
      if (initObj.hasOwnProperty('virtual_point')) {
        this.virtual_point = initObj.virtual_point
      }
      else {
        this.virtual_point = new ParkingSlotVirtualPoint();
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
    // Serializes a message object of type FusionParkingSlotData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [charge_property]
    bufferOffset = _serializer.uint8(obj.charge_property, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.uint64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [empty_votes]
    bufferOffset = _serializer.int32(obj.empty_votes, buffer, bufferOffset);
    // Serialize message field [points_fusion]
    // Serialize the length for message field [points_fusion]
    bufferOffset = _serializer.uint32(obj.points_fusion.length, buffer, bufferOffset);
    obj.points_fusion.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_fusion_confidence]
    bufferOffset = _arraySerializer.float32(obj.points_fusion_confidence, buffer, bufferOffset, null);
    // Serialize message field [points_fusion_type]
    // Serialize the length for message field [points_fusion_type]
    bufferOffset = _serializer.uint32(obj.points_fusion_type.length, buffer, bufferOffset);
    obj.points_fusion_type.forEach((val) => {
      bufferOffset = ParkingSlotPointTypeEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [local_points_fusion]
    // Serialize the length for message field [local_points_fusion]
    bufferOffset = _serializer.uint32(obj.local_points_fusion.length, buffer, bufferOffset);
    obj.local_points_fusion.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [local_points_fusion_confidence]
    bufferOffset = _arraySerializer.float32(obj.local_points_fusion_confidence, buffer, bufferOffset, null);
    // Serialize message field [local_points_fusion_type]
    // Serialize the length for message field [local_points_fusion_type]
    bufferOffset = _serializer.uint32(obj.local_points_fusion_type.length, buffer, bufferOffset);
    obj.local_points_fusion_type.forEach((val) => {
      bufferOffset = ParkingSlotPointTypeEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_fusion_in_image]
    // Serialize the length for message field [points_fusion_in_image]
    bufferOffset = _serializer.uint32(obj.points_fusion_in_image.length, buffer, bufferOffset);
    obj.points_fusion_in_image.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_fusion_in_image_confidence]
    bufferOffset = _arraySerializer.float32(obj.points_fusion_in_image_confidence, buffer, bufferOffset, null);
    // Serialize message field [points_fusion_in_image_type]
    // Serialize the length for message field [points_fusion_in_image_type]
    bufferOffset = _serializer.uint32(obj.points_fusion_in_image_type.length, buffer, bufferOffset);
    obj.points_fusion_in_image_type.forEach((val) => {
      bufferOffset = ParkingSlotPointTypeEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [local_wheel_stop_points]
    // Serialize the length for message field [local_wheel_stop_points]
    bufferOffset = _serializer.uint32(obj.local_wheel_stop_points.length, buffer, bufferOffset);
    obj.local_wheel_stop_points.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [slot_type]
    bufferOffset = FusionParkingSlotType.serialize(obj.slot_type, buffer, bufferOffset);
    // Serialize message field [special_slot_type]
    bufferOffset = FusionSpecialParkingSlotType.serialize(obj.special_slot_type, buffer, bufferOffset);
    // Serialize message field [virtual_point]
    bufferOffset = ParkingSlotVirtualPoint.serialize(obj.virtual_point, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionParkingSlotData
    let len;
    let data = new FusionParkingSlotData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [charge_property]
    data.charge_property = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [empty_votes]
    data.empty_votes = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [points_fusion]
    // Deserialize array length for message field [points_fusion]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_fusion = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_fusion[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_fusion_confidence]
    data.points_fusion_confidence = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_fusion_type]
    // Deserialize array length for message field [points_fusion_type]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_fusion_type = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_fusion_type[i] = ParkingSlotPointTypeEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [local_points_fusion]
    // Deserialize array length for message field [local_points_fusion]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.local_points_fusion = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.local_points_fusion[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [local_points_fusion_confidence]
    data.local_points_fusion_confidence = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [local_points_fusion_type]
    // Deserialize array length for message field [local_points_fusion_type]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.local_points_fusion_type = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.local_points_fusion_type[i] = ParkingSlotPointTypeEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_fusion_in_image]
    // Deserialize array length for message field [points_fusion_in_image]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_fusion_in_image = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_fusion_in_image[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_fusion_in_image_confidence]
    data.points_fusion_in_image_confidence = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [points_fusion_in_image_type]
    // Deserialize array length for message field [points_fusion_in_image_type]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_fusion_in_image_type = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_fusion_in_image_type[i] = ParkingSlotPointTypeEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [local_wheel_stop_points]
    // Deserialize array length for message field [local_wheel_stop_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.local_wheel_stop_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.local_wheel_stop_points[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [slot_type]
    data.slot_type = FusionParkingSlotType.deserialize(buffer, bufferOffset);
    // Deserialize message field [special_slot_type]
    data.special_slot_type = FusionSpecialParkingSlotType.deserialize(buffer, bufferOffset);
    // Deserialize message field [virtual_point]
    data.virtual_point = ParkingSlotVirtualPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.points_fusion.length;
    length += 4 * object.points_fusion_confidence.length;
    length += object.points_fusion_type.length;
    length += 12 * object.local_points_fusion.length;
    length += 4 * object.local_points_fusion_confidence.length;
    length += object.local_points_fusion_type.length;
    length += 8 * object.points_fusion_in_image.length;
    length += 4 * object.points_fusion_in_image_confidence.length;
    length += object.points_fusion_in_image_type.length;
    length += 12 * object.local_wheel_stop_points.length;
    length += _getByteLength(object.reserved_info);
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FusionParkingSlotData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '618da66150395d2014c8628a0fab5524';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1
    uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2
    uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4
    uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8
    uint8 available
    uint8 charge_property
    uint64 track_id
    int32 empty_votes
    perception_interface_msgs/Point3f[] points_fusion
    float32[] points_fusion_confidence
    perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type
    perception_interface_msgs/Point3f[] local_points_fusion
    float32[] local_points_fusion_confidence
    perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type
    perception_interface_msgs/Point2f[] points_fusion_in_image
    float32[] points_fusion_in_image_confidence
    perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type
    perception_interface_msgs/Point3f[] local_wheel_stop_points
    perception_interface_msgs/FusionParkingSlotType slot_type
    perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type
    perception_interface_msgs/ParkingSlotVirtualPoint virtual_point
    string reserved_info
    
    ================================================================================
    MSG: perception_interface_msgs/Point3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
    uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
    uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
    uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: perception_interface_msgs/FusionParkingSlotType
    uint8 PARKING_SLOT_TYPE_UNKOWN = 0
    uint8 PARKING_SLOT_TYPE_VERTICAL = 1
    uint8 PARKING_SLOT_TYPE_PARALLEL = 2
    uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3
    uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4
    uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/FusionSpecialParkingSlotType
    uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0
    uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1
    uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2
    uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4
    uint8 value
    
    ================================================================================
    MSG: perception_interface_msgs/ParkingSlotVirtualPoint
    uint8 point_index
    perception_interface_msgs/Point3f local_point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionParkingSlotData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.charge_property !== undefined) {
      resolved.charge_property = msg.charge_property;
    }
    else {
      resolved.charge_property = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.empty_votes !== undefined) {
      resolved.empty_votes = msg.empty_votes;
    }
    else {
      resolved.empty_votes = 0
    }

    if (msg.points_fusion !== undefined) {
      resolved.points_fusion = new Array(msg.points_fusion.length);
      for (let i = 0; i < resolved.points_fusion.length; ++i) {
        resolved.points_fusion[i] = Point3f.Resolve(msg.points_fusion[i]);
      }
    }
    else {
      resolved.points_fusion = []
    }

    if (msg.points_fusion_confidence !== undefined) {
      resolved.points_fusion_confidence = msg.points_fusion_confidence;
    }
    else {
      resolved.points_fusion_confidence = []
    }

    if (msg.points_fusion_type !== undefined) {
      resolved.points_fusion_type = new Array(msg.points_fusion_type.length);
      for (let i = 0; i < resolved.points_fusion_type.length; ++i) {
        resolved.points_fusion_type[i] = ParkingSlotPointTypeEnum.Resolve(msg.points_fusion_type[i]);
      }
    }
    else {
      resolved.points_fusion_type = []
    }

    if (msg.local_points_fusion !== undefined) {
      resolved.local_points_fusion = new Array(msg.local_points_fusion.length);
      for (let i = 0; i < resolved.local_points_fusion.length; ++i) {
        resolved.local_points_fusion[i] = Point3f.Resolve(msg.local_points_fusion[i]);
      }
    }
    else {
      resolved.local_points_fusion = []
    }

    if (msg.local_points_fusion_confidence !== undefined) {
      resolved.local_points_fusion_confidence = msg.local_points_fusion_confidence;
    }
    else {
      resolved.local_points_fusion_confidence = []
    }

    if (msg.local_points_fusion_type !== undefined) {
      resolved.local_points_fusion_type = new Array(msg.local_points_fusion_type.length);
      for (let i = 0; i < resolved.local_points_fusion_type.length; ++i) {
        resolved.local_points_fusion_type[i] = ParkingSlotPointTypeEnum.Resolve(msg.local_points_fusion_type[i]);
      }
    }
    else {
      resolved.local_points_fusion_type = []
    }

    if (msg.points_fusion_in_image !== undefined) {
      resolved.points_fusion_in_image = new Array(msg.points_fusion_in_image.length);
      for (let i = 0; i < resolved.points_fusion_in_image.length; ++i) {
        resolved.points_fusion_in_image[i] = Point2f.Resolve(msg.points_fusion_in_image[i]);
      }
    }
    else {
      resolved.points_fusion_in_image = []
    }

    if (msg.points_fusion_in_image_confidence !== undefined) {
      resolved.points_fusion_in_image_confidence = msg.points_fusion_in_image_confidence;
    }
    else {
      resolved.points_fusion_in_image_confidence = []
    }

    if (msg.points_fusion_in_image_type !== undefined) {
      resolved.points_fusion_in_image_type = new Array(msg.points_fusion_in_image_type.length);
      for (let i = 0; i < resolved.points_fusion_in_image_type.length; ++i) {
        resolved.points_fusion_in_image_type[i] = ParkingSlotPointTypeEnum.Resolve(msg.points_fusion_in_image_type[i]);
      }
    }
    else {
      resolved.points_fusion_in_image_type = []
    }

    if (msg.local_wheel_stop_points !== undefined) {
      resolved.local_wheel_stop_points = new Array(msg.local_wheel_stop_points.length);
      for (let i = 0; i < resolved.local_wheel_stop_points.length; ++i) {
        resolved.local_wheel_stop_points[i] = Point3f.Resolve(msg.local_wheel_stop_points[i]);
      }
    }
    else {
      resolved.local_wheel_stop_points = []
    }

    if (msg.slot_type !== undefined) {
      resolved.slot_type = FusionParkingSlotType.Resolve(msg.slot_type)
    }
    else {
      resolved.slot_type = new FusionParkingSlotType()
    }

    if (msg.special_slot_type !== undefined) {
      resolved.special_slot_type = FusionSpecialParkingSlotType.Resolve(msg.special_slot_type)
    }
    else {
      resolved.special_slot_type = new FusionSpecialParkingSlotType()
    }

    if (msg.virtual_point !== undefined) {
      resolved.virtual_point = ParkingSlotVirtualPoint.Resolve(msg.virtual_point)
    }
    else {
      resolved.virtual_point = new ParkingSlotVirtualPoint()
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

// Constants for message
FusionParkingSlotData.Constants = {
  FUSION_PARKING_SLOT_SOURCE_VISON: 1,
  FUSION_PARKING_SLOT_SOURCE_ULTRASONIC: 2,
  FUSION_PARKING_SLOT_SOURCE_MAP: 4,
  FUSION_PARKING_SLOT_SOURCE_USER_SELECT: 8,
}

module.exports = FusionParkingSlotData;
