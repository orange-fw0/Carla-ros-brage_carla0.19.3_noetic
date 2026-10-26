// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PerceptionFusionResultMeta = require('./PerceptionFusionResultMeta.js');
let FusionParkingSlot = require('./FusionParkingSlot.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FusionParkingSlotResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.parking_slot = null;
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
        this.meta = new PerceptionFusionResultMeta();
      }
      if (initObj.hasOwnProperty('parking_slot')) {
        this.parking_slot = initObj.parking_slot
      }
      else {
        this.parking_slot = new FusionParkingSlot();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionParkingSlotResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PerceptionFusionResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [parking_slot]
    bufferOffset = FusionParkingSlot.serialize(obj.parking_slot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionParkingSlotResult
    let len;
    let data = new FusionParkingSlotResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PerceptionFusionResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_slot]
    data.parking_slot = FusionParkingSlot.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PerceptionFusionResultMeta.getMessageSize(object.meta);
    length += FusionParkingSlot.getMessageSize(object.parking_slot);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FusionParkingSlotResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec0b72689c0d478b1680208a15610491';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    perception_interface_msgs/PerceptionFusionResultMeta meta
    perception_interface_msgs/FusionParkingSlot parking_slot
    
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
    MSG: perception_interface_msgs/PerceptionFusionResultMeta
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    string version_tag
    
    ================================================================================
    MSG: perception_interface_msgs/FusionParkingSlot
    uint8 FUSION_PARKING_SLOT_AVAILABLE_DATA = 1
    uint8 FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT = 2
    uint8 FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO = 4
    uint8 available
    perception_interface_msgs/FusionParkingSlotData[] parking_slot_data
    perception_interface_msgs/EgoParkingSlot ego_parking_slot
    string[] reserved_info
    
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
    MSG: perception_interface_msgs/EgoParkingSlot
    uint64 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionParkingSlotResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = PerceptionFusionResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new PerceptionFusionResultMeta()
    }

    if (msg.parking_slot !== undefined) {
      resolved.parking_slot = FusionParkingSlot.Resolve(msg.parking_slot)
    }
    else {
      resolved.parking_slot = new FusionParkingSlot()
    }

    return resolved;
    }
};

module.exports = FusionParkingSlotResult;
