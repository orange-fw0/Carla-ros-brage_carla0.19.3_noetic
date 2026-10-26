// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicResultMeta = require('./UltrasonicResultMeta.js');
let UltrasonicPaingslotType = require('./UltrasonicPaingslotType.js');
let BordertType = require('./BordertType.js');

//-----------------------------------------------------------

class UssParkSlotData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.meta = null;
      this.parkslot_id = null;
      this.parking_slot_type = null;
      this.border_type_data = null;
      this.veh_obj1_x = null;
      this.veh_obj1_y = null;
      this.veh_obj2_x = null;
      this.veh_obj2_y = null;
      this.veh_obj3_x = null;
      this.veh_obj3_y = null;
      this.veh_obj4_x = null;
      this.veh_obj4_y = null;
      this.parkslot_prob = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new UltrasonicResultMeta();
      }
      if (initObj.hasOwnProperty('parkslot_id')) {
        this.parkslot_id = initObj.parkslot_id
      }
      else {
        this.parkslot_id = 0;
      }
      if (initObj.hasOwnProperty('parking_slot_type')) {
        this.parking_slot_type = initObj.parking_slot_type
      }
      else {
        this.parking_slot_type = new UltrasonicPaingslotType();
      }
      if (initObj.hasOwnProperty('border_type_data')) {
        this.border_type_data = initObj.border_type_data
      }
      else {
        this.border_type_data = [];
      }
      if (initObj.hasOwnProperty('veh_obj1_x')) {
        this.veh_obj1_x = initObj.veh_obj1_x
      }
      else {
        this.veh_obj1_x = 0.0;
      }
      if (initObj.hasOwnProperty('veh_obj1_y')) {
        this.veh_obj1_y = initObj.veh_obj1_y
      }
      else {
        this.veh_obj1_y = 0.0;
      }
      if (initObj.hasOwnProperty('veh_obj2_x')) {
        this.veh_obj2_x = initObj.veh_obj2_x
      }
      else {
        this.veh_obj2_x = 0.0;
      }
      if (initObj.hasOwnProperty('veh_obj2_y')) {
        this.veh_obj2_y = initObj.veh_obj2_y
      }
      else {
        this.veh_obj2_y = 0.0;
      }
      if (initObj.hasOwnProperty('veh_obj3_x')) {
        this.veh_obj3_x = initObj.veh_obj3_x
      }
      else {
        this.veh_obj3_x = 0.0;
      }
      if (initObj.hasOwnProperty('veh_obj3_y')) {
        this.veh_obj3_y = initObj.veh_obj3_y
      }
      else {
        this.veh_obj3_y = 0.0;
      }
      if (initObj.hasOwnProperty('veh_obj4_x')) {
        this.veh_obj4_x = initObj.veh_obj4_x
      }
      else {
        this.veh_obj4_x = 0.0;
      }
      if (initObj.hasOwnProperty('veh_obj4_y')) {
        this.veh_obj4_y = initObj.veh_obj4_y
      }
      else {
        this.veh_obj4_y = 0.0;
      }
      if (initObj.hasOwnProperty('parkslot_prob')) {
        this.parkslot_prob = initObj.parkslot_prob
      }
      else {
        this.parkslot_prob = 0.0;
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
    // Serializes a message object of type UssParkSlotData
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = UltrasonicResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [parkslot_id]
    bufferOffset = _serializer.uint32(obj.parkslot_id, buffer, bufferOffset);
    // Serialize message field [parking_slot_type]
    bufferOffset = UltrasonicPaingslotType.serialize(obj.parking_slot_type, buffer, bufferOffset);
    // Serialize message field [border_type_data]
    // Serialize the length for message field [border_type_data]
    bufferOffset = _serializer.uint32(obj.border_type_data.length, buffer, bufferOffset);
    obj.border_type_data.forEach((val) => {
      bufferOffset = BordertType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [veh_obj1_x]
    bufferOffset = _serializer.float32(obj.veh_obj1_x, buffer, bufferOffset);
    // Serialize message field [veh_obj1_y]
    bufferOffset = _serializer.float32(obj.veh_obj1_y, buffer, bufferOffset);
    // Serialize message field [veh_obj2_x]
    bufferOffset = _serializer.float32(obj.veh_obj2_x, buffer, bufferOffset);
    // Serialize message field [veh_obj2_y]
    bufferOffset = _serializer.float32(obj.veh_obj2_y, buffer, bufferOffset);
    // Serialize message field [veh_obj3_x]
    bufferOffset = _serializer.float32(obj.veh_obj3_x, buffer, bufferOffset);
    // Serialize message field [veh_obj3_y]
    bufferOffset = _serializer.float32(obj.veh_obj3_y, buffer, bufferOffset);
    // Serialize message field [veh_obj4_x]
    bufferOffset = _serializer.float32(obj.veh_obj4_x, buffer, bufferOffset);
    // Serialize message field [veh_obj4_y]
    bufferOffset = _serializer.float32(obj.veh_obj4_y, buffer, bufferOffset);
    // Serialize message field [parkslot_prob]
    bufferOffset = _serializer.float32(obj.parkslot_prob, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssParkSlotData
    let len;
    let data = new UssParkSlotData(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = UltrasonicResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [parkslot_id]
    data.parkslot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [parking_slot_type]
    data.parking_slot_type = UltrasonicPaingslotType.deserialize(buffer, bufferOffset);
    // Deserialize message field [border_type_data]
    // Deserialize array length for message field [border_type_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.border_type_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.border_type_data[i] = BordertType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [veh_obj1_x]
    data.veh_obj1_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [veh_obj1_y]
    data.veh_obj1_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [veh_obj2_x]
    data.veh_obj2_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [veh_obj2_y]
    data.veh_obj2_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [veh_obj3_x]
    data.veh_obj3_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [veh_obj3_y]
    data.veh_obj3_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [veh_obj4_x]
    data.veh_obj4_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [veh_obj4_y]
    data.veh_obj4_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [parkslot_prob]
    data.parkslot_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.border_type_data.length;
    length += _getByteLength(object.reserved_info);
    return length + 66;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssParkSlotData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b8a657208389ec0925a2e4f916d0058';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UssParkSlotData(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.meta !== undefined) {
      resolved.meta = UltrasonicResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new UltrasonicResultMeta()
    }

    if (msg.parkslot_id !== undefined) {
      resolved.parkslot_id = msg.parkslot_id;
    }
    else {
      resolved.parkslot_id = 0
    }

    if (msg.parking_slot_type !== undefined) {
      resolved.parking_slot_type = UltrasonicPaingslotType.Resolve(msg.parking_slot_type)
    }
    else {
      resolved.parking_slot_type = new UltrasonicPaingslotType()
    }

    if (msg.border_type_data !== undefined) {
      resolved.border_type_data = new Array(msg.border_type_data.length);
      for (let i = 0; i < resolved.border_type_data.length; ++i) {
        resolved.border_type_data[i] = BordertType.Resolve(msg.border_type_data[i]);
      }
    }
    else {
      resolved.border_type_data = []
    }

    if (msg.veh_obj1_x !== undefined) {
      resolved.veh_obj1_x = msg.veh_obj1_x;
    }
    else {
      resolved.veh_obj1_x = 0.0
    }

    if (msg.veh_obj1_y !== undefined) {
      resolved.veh_obj1_y = msg.veh_obj1_y;
    }
    else {
      resolved.veh_obj1_y = 0.0
    }

    if (msg.veh_obj2_x !== undefined) {
      resolved.veh_obj2_x = msg.veh_obj2_x;
    }
    else {
      resolved.veh_obj2_x = 0.0
    }

    if (msg.veh_obj2_y !== undefined) {
      resolved.veh_obj2_y = msg.veh_obj2_y;
    }
    else {
      resolved.veh_obj2_y = 0.0
    }

    if (msg.veh_obj3_x !== undefined) {
      resolved.veh_obj3_x = msg.veh_obj3_x;
    }
    else {
      resolved.veh_obj3_x = 0.0
    }

    if (msg.veh_obj3_y !== undefined) {
      resolved.veh_obj3_y = msg.veh_obj3_y;
    }
    else {
      resolved.veh_obj3_y = 0.0
    }

    if (msg.veh_obj4_x !== undefined) {
      resolved.veh_obj4_x = msg.veh_obj4_x;
    }
    else {
      resolved.veh_obj4_x = 0.0
    }

    if (msg.veh_obj4_y !== undefined) {
      resolved.veh_obj4_y = msg.veh_obj4_y;
    }
    else {
      resolved.veh_obj4_y = 0.0
    }

    if (msg.parkslot_prob !== undefined) {
      resolved.parkslot_prob = msg.parkslot_prob;
    }
    else {
      resolved.parkslot_prob = 0.0
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

module.exports = UssParkSlotData;
