// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicParkSlotResult = require('./UltrasonicParkSlotResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UltrasonicParkslotReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.uss_parkslot_result = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('uss_parkslot_result')) {
        this.uss_parkslot_result = initObj.uss_parkslot_result
      }
      else {
        this.uss_parkslot_result = new UltrasonicParkSlotResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicParkslotReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [uss_parkslot_result]
    bufferOffset = UltrasonicParkSlotResult.serialize(obj.uss_parkslot_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicParkslotReport
    let len;
    let data = new UltrasonicParkslotReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_parkslot_result]
    data.uss_parkslot_result = UltrasonicParkSlotResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += UltrasonicParkSlotResult.getMessageSize(object.uss_parkslot_result);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicParkslotReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63489b9b41b44ca5cf5afaf5ae615160';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    sensor_interface_msgs/UltrasonicParkSlotResult uss_parkslot_result
    
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
    MSG: sensor_interface_msgs/UltrasonicParkSlotResult
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
    const resolved = new UltrasonicParkslotReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.uss_parkslot_result !== undefined) {
      resolved.uss_parkslot_result = UltrasonicParkSlotResult.Resolve(msg.uss_parkslot_result)
    }
    else {
      resolved.uss_parkslot_result = new UltrasonicParkSlotResult()
    }

    return resolved;
    }
};

module.exports = UltrasonicParkslotReport;
