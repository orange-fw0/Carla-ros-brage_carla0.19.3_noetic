// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FusionParkingSlotData = require('./FusionParkingSlotData.js');
let EgoParkingSlot = require('./EgoParkingSlot.js');

//-----------------------------------------------------------

class FusionParkingSlot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.parking_slot_data = null;
      this.ego_parking_slot = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('parking_slot_data')) {
        this.parking_slot_data = initObj.parking_slot_data
      }
      else {
        this.parking_slot_data = [];
      }
      if (initObj.hasOwnProperty('ego_parking_slot')) {
        this.ego_parking_slot = initObj.ego_parking_slot
      }
      else {
        this.ego_parking_slot = new EgoParkingSlot();
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
    // Serializes a message object of type FusionParkingSlot
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [parking_slot_data]
    // Serialize the length for message field [parking_slot_data]
    bufferOffset = _serializer.uint32(obj.parking_slot_data.length, buffer, bufferOffset);
    obj.parking_slot_data.forEach((val) => {
      bufferOffset = FusionParkingSlotData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ego_parking_slot]
    bufferOffset = EgoParkingSlot.serialize(obj.ego_parking_slot, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _arraySerializer.string(obj.reserved_info, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionParkingSlot
    let len;
    let data = new FusionParkingSlot(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [parking_slot_data]
    // Deserialize array length for message field [parking_slot_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_slot_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_slot_data[i] = FusionParkingSlotData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ego_parking_slot]
    data.ego_parking_slot = EgoParkingSlot.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.parking_slot_data.forEach((val) => {
      length += FusionParkingSlotData.getMessageSize(val);
    });
    object.reserved_info.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FusionParkingSlot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '229603488f57390a20e86c13b064f375';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FusionParkingSlot(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.parking_slot_data !== undefined) {
      resolved.parking_slot_data = new Array(msg.parking_slot_data.length);
      for (let i = 0; i < resolved.parking_slot_data.length; ++i) {
        resolved.parking_slot_data[i] = FusionParkingSlotData.Resolve(msg.parking_slot_data[i]);
      }
    }
    else {
      resolved.parking_slot_data = []
    }

    if (msg.ego_parking_slot !== undefined) {
      resolved.ego_parking_slot = EgoParkingSlot.Resolve(msg.ego_parking_slot)
    }
    else {
      resolved.ego_parking_slot = new EgoParkingSlot()
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
FusionParkingSlot.Constants = {
  FUSION_PARKING_SLOT_AVAILABLE_DATA: 1,
  FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT: 2,
  FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO: 4,
}

module.exports = FusionParkingSlot;
