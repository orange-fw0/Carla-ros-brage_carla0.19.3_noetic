// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UssParkSlotData = require('./UssParkSlotData.js');

//-----------------------------------------------------------

class UltrasonicParkSlotResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_park_slot_data = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_park_slot_data')) {
        this.uss_park_slot_data = initObj.uss_park_slot_data
      }
      else {
        this.uss_park_slot_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicParkSlotResult
    // Serialize message field [uss_park_slot_data]
    // Serialize the length for message field [uss_park_slot_data]
    bufferOffset = _serializer.uint32(obj.uss_park_slot_data.length, buffer, bufferOffset);
    obj.uss_park_slot_data.forEach((val) => {
      bufferOffset = UssParkSlotData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicParkSlotResult
    let len;
    let data = new UltrasonicParkSlotResult(null);
    // Deserialize message field [uss_park_slot_data]
    // Deserialize array length for message field [uss_park_slot_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_park_slot_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_park_slot_data[i] = UssParkSlotData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.uss_park_slot_data.forEach((val) => {
      length += UssParkSlotData.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicParkSlotResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e179d9ef03c41198026705c8f0db6bd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/UssParkSlotData[] uss_park_slot_data
    
    ================================================================================
    MSG: sensor_interface_msgs/UssParkSlotData
    uint8 available
    sensor_interface_msgs/UltrasonicResultMeta meta
    uint32 parkslot_id
    sensor_interface_msgs/UltrasonicPaingslotType parking_slot_type
    sensor_interface_msgs/BordertType[] border_type_data
    float32 veh_obj1_x
    float32 veh_obj1_y
    float32 veh_obj2_x
    float32 veh_obj2_y
    float32 veh_obj3_x
    float32 veh_obj3_y
    float32 veh_obj4_x
    float32 veh_obj4_y
    float32 parkslot_prob
    string reserved_info
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicPaingslotType
    uint8 PSC_SLOT_PARALLE_LE = 0
    uint8 PSC_SLOT_PARALLE_RI = 1
    uint8 PSC_SLOT_CROSS_LE = 2
    uint8 PSC_SLOT_CROSS_RI = 3
    uint8 PSC_SLOT_OBLIQUE_LE = 4
    uint8 PSC_SLOT_OBLIQUE_RI = 5
    uint8 PSC_COMMON_SLOT_LE = 6
    uint8 PSC_COMMON_SLOT_RI = 7
    uint8 POC_SLOT_PARALLE_LE = 8
    uint8 POC_SLOT_PARALLE_RI = 9
    uint8 POC_SLOT_CROSS_LE = 10
    uint8 POC_SLOT_CROSS_RI = 11
    uint8 POC_COMMON_SLOT_LE = 12
    uint8 POC_COMMON_SLOT_RI = 13
    uint8 RESERVED_INFO1 = 14
    uint8 RESERVED_INFO2 = 15
    uint8 value
    
    ================================================================================
    MSG: sensor_interface_msgs/BordertType
    uint8 HAT_USLOT_NON_CURB = 0
    uint8 HAT_USLOT_EXIST_CURB = 1
    uint8 UNKNOWN = 2
    uint8 RESERVED_INFO = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicParkSlotResult(null);
    if (msg.uss_park_slot_data !== undefined) {
      resolved.uss_park_slot_data = new Array(msg.uss_park_slot_data.length);
      for (let i = 0; i < resolved.uss_park_slot_data.length; ++i) {
        resolved.uss_park_slot_data[i] = UssParkSlotData.Resolve(msg.uss_park_slot_data[i]);
      }
    }
    else {
      resolved.uss_park_slot_data = []
    }

    return resolved;
    }
};

module.exports = UltrasonicParkSlotResult;
