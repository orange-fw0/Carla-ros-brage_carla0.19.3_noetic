// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FusionAPAMeta = require('./FusionAPAMeta.js');
let ParkingSlotFusionAPAData = require('./ParkingSlotFusionAPAData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FusionAPA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.available = null;
      this.parking_slots = null;
      this.ego_parking_slot_track_id = null;
      this.ego_parking_slot_map_id = null;
      this.suggested_parking_slot_track_id = null;
      this.suggested_parking_slot_map_id = null;
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
        this.meta = new FusionAPAMeta();
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('parking_slots')) {
        this.parking_slots = initObj.parking_slots
      }
      else {
        this.parking_slots = [];
      }
      if (initObj.hasOwnProperty('ego_parking_slot_track_id')) {
        this.ego_parking_slot_track_id = initObj.ego_parking_slot_track_id
      }
      else {
        this.ego_parking_slot_track_id = 0;
      }
      if (initObj.hasOwnProperty('ego_parking_slot_map_id')) {
        this.ego_parking_slot_map_id = initObj.ego_parking_slot_map_id
      }
      else {
        this.ego_parking_slot_map_id = 0;
      }
      if (initObj.hasOwnProperty('suggested_parking_slot_track_id')) {
        this.suggested_parking_slot_track_id = initObj.suggested_parking_slot_track_id
      }
      else {
        this.suggested_parking_slot_track_id = 0;
      }
      if (initObj.hasOwnProperty('suggested_parking_slot_map_id')) {
        this.suggested_parking_slot_map_id = initObj.suggested_parking_slot_map_id
      }
      else {
        this.suggested_parking_slot_map_id = 0;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionAPA
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = FusionAPAMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [parking_slots]
    // Serialize the length for message field [parking_slots]
    bufferOffset = _serializer.uint32(obj.parking_slots.length, buffer, bufferOffset);
    obj.parking_slots.forEach((val) => {
      bufferOffset = ParkingSlotFusionAPAData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ego_parking_slot_track_id]
    bufferOffset = _serializer.int32(obj.ego_parking_slot_track_id, buffer, bufferOffset);
    // Serialize message field [ego_parking_slot_map_id]
    bufferOffset = _serializer.int32(obj.ego_parking_slot_map_id, buffer, bufferOffset);
    // Serialize message field [suggested_parking_slot_track_id]
    bufferOffset = _serializer.int32(obj.suggested_parking_slot_track_id, buffer, bufferOffset);
    // Serialize message field [suggested_parking_slot_map_id]
    bufferOffset = _serializer.int32(obj.suggested_parking_slot_map_id, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _arraySerializer.string(obj.reserved_info, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionAPA
    let len;
    let data = new FusionAPA(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = FusionAPAMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [parking_slots]
    // Deserialize array length for message field [parking_slots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_slots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_slots[i] = ParkingSlotFusionAPAData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ego_parking_slot_track_id]
    data.ego_parking_slot_track_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ego_parking_slot_map_id]
    data.ego_parking_slot_map_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [suggested_parking_slot_track_id]
    data.suggested_parking_slot_track_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [suggested_parking_slot_map_id]
    data.suggested_parking_slot_map_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.parking_slots.forEach((val) => {
      length += ParkingSlotFusionAPAData.getMessageSize(val);
    });
    object.reserved_info.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/FusionAPA';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b39ba1e5bf23d75d807e5f1922902cb3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PARKING_SLOTS = 1
    uint8 EGO_PARKING_SLOT_TRACK_ID = 2
    uint8 EGO_PARKING_SLOT_MAP_ID = 4
    uint8 SUGGESTED_PARKING_SLOT_TRACK_ID = 8
    uint8 SUGGESTED_PARKING_SLOT_MAP_ID = 16
    uint8 RESERVED_INFO = 32
    std_msgs/Header header
    worldmodel_msgs/FusionAPAMeta meta
    uint8 available
    worldmodel_msgs/ParkingSlotFusionAPAData[] parking_slots
    int32 ego_parking_slot_track_id
    int32 ego_parking_slot_map_id
    int32 suggested_parking_slot_track_id
    int32 suggested_parking_slot_map_id
    string[] reserved_info
    
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
    MSG: worldmodel_msgs/FusionAPAMeta
    uint64 timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    
    ================================================================================
    MSG: worldmodel_msgs/ParkingSlotFusionAPAData
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
    const resolved = new FusionAPA(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = FusionAPAMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new FusionAPAMeta()
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.parking_slots !== undefined) {
      resolved.parking_slots = new Array(msg.parking_slots.length);
      for (let i = 0; i < resolved.parking_slots.length; ++i) {
        resolved.parking_slots[i] = ParkingSlotFusionAPAData.Resolve(msg.parking_slots[i]);
      }
    }
    else {
      resolved.parking_slots = []
    }

    if (msg.ego_parking_slot_track_id !== undefined) {
      resolved.ego_parking_slot_track_id = msg.ego_parking_slot_track_id;
    }
    else {
      resolved.ego_parking_slot_track_id = 0
    }

    if (msg.ego_parking_slot_map_id !== undefined) {
      resolved.ego_parking_slot_map_id = msg.ego_parking_slot_map_id;
    }
    else {
      resolved.ego_parking_slot_map_id = 0
    }

    if (msg.suggested_parking_slot_track_id !== undefined) {
      resolved.suggested_parking_slot_track_id = msg.suggested_parking_slot_track_id;
    }
    else {
      resolved.suggested_parking_slot_track_id = 0
    }

    if (msg.suggested_parking_slot_map_id !== undefined) {
      resolved.suggested_parking_slot_map_id = msg.suggested_parking_slot_map_id;
    }
    else {
      resolved.suggested_parking_slot_map_id = 0
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = []
    }

    return resolved;
    }
};

// Constants for message
FusionAPA.Constants = {
  PARKING_SLOTS: 1,
  EGO_PARKING_SLOT_TRACK_ID: 2,
  EGO_PARKING_SLOT_MAP_ID: 4,
  SUGGESTED_PARKING_SLOT_TRACK_ID: 8,
  SUGGESTED_PARKING_SLOT_MAP_ID: 16,
  RESERVED_INFO: 32,
}

module.exports = FusionAPA;
