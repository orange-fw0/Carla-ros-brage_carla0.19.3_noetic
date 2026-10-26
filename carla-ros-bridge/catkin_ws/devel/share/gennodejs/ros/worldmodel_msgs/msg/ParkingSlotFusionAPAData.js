// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let APAInfo = require('./APAInfo.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class ParkingSlotFusionAPAData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.parking_slot = null;
      this.apa_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('parking_slot')) {
        this.parking_slot = initObj.parking_slot
      }
      else {
        this.parking_slot = new perception_interface_msgs.msg.FusionParkingSlotData();
      }
      if (initObj.hasOwnProperty('apa_info')) {
        this.apa_info = initObj.apa_info
      }
      else {
        this.apa_info = new APAInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingSlotFusionAPAData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [parking_slot]
    bufferOffset = perception_interface_msgs.msg.FusionParkingSlotData.serialize(obj.parking_slot, buffer, bufferOffset);
    // Serialize message field [apa_info]
    bufferOffset = APAInfo.serialize(obj.apa_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingSlotFusionAPAData
    let len;
    let data = new ParkingSlotFusionAPAData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [parking_slot]
    data.parking_slot = perception_interface_msgs.msg.FusionParkingSlotData.deserialize(buffer, bufferOffset);
    // Deserialize message field [apa_info]
    data.apa_info = APAInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += perception_interface_msgs.msg.FusionParkingSlotData.getMessageSize(object.parking_slot);
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/ParkingSlotFusionAPAData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e3b0e30d3ab97c35f5d4c0bcede920b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PARKING_SLOT = 1
    uint8 APA_INFO = 2
    uint8 available
    perception_interface_msgs/FusionParkingSlotData parking_slot
    worldmodel_msgs/APAInfo apa_info
    
    ================================================================================
    MSG: perception_interface_msgs/FusionParkingSlotData
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
    
    ================================================================================
    MSG: worldmodel_msgs/APAInfo
    uint32 UNKNOWN = 0
    uint32 OCCUPIED = 1
    uint32 VACANT = 2
    uint32 APA_FAIL = 3
    uint32 APA_SUCCEED = 4
    uint32 REVERSED = 5
    uint32 status
    int32 map_id
    uint64 last_update_timestamp
    bool allow_back_in
    bool allow_front_in
    int32 back_in_estimated_zigzag_num
    int32 front_in_estimated_zigzag_num
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingSlotFusionAPAData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.parking_slot !== undefined) {
      resolved.parking_slot = perception_interface_msgs.msg.FusionParkingSlotData.Resolve(msg.parking_slot)
    }
    else {
      resolved.parking_slot = new perception_interface_msgs.msg.FusionParkingSlotData()
    }

    if (msg.apa_info !== undefined) {
      resolved.apa_info = APAInfo.Resolve(msg.apa_info)
    }
    else {
      resolved.apa_info = new APAInfo()
    }

    return resolved;
    }
};

// Constants for message
ParkingSlotFusionAPAData.Constants = {
  PARKING_SLOT: 1,
  APA_INFO: 2,
}

module.exports = ParkingSlotFusionAPAData;
