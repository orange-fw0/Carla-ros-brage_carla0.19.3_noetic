// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkingResponseErrorEnum = require('./ParkingResponseErrorEnum.js');
let ParkingLotInfo = require('./ParkingLotInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SysMapProviderParkingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.request_seq = null;
      this.error_code = null;
      this.parking_lot_lists = null;
      this.storage_size = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('request_seq')) {
        this.request_seq = initObj.request_seq
      }
      else {
        this.request_seq = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new ParkingResponseErrorEnum();
      }
      if (initObj.hasOwnProperty('parking_lot_lists')) {
        this.parking_lot_lists = initObj.parking_lot_lists
      }
      else {
        this.parking_lot_lists = [];
      }
      if (initObj.hasOwnProperty('storage_size')) {
        this.storage_size = initObj.storage_size
      }
      else {
        this.storage_size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysMapProviderParkingResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [request_seq]
    bufferOffset = _serializer.uint32(obj.request_seq, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = ParkingResponseErrorEnum.serialize(obj.error_code, buffer, bufferOffset);
    // Serialize message field [parking_lot_lists]
    // Serialize the length for message field [parking_lot_lists]
    bufferOffset = _serializer.uint32(obj.parking_lot_lists.length, buffer, bufferOffset);
    obj.parking_lot_lists.forEach((val) => {
      bufferOffset = ParkingLotInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [storage_size]
    bufferOffset = _serializer.int64(obj.storage_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysMapProviderParkingResponse
    let len;
    let data = new SysMapProviderParkingResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [request_seq]
    data.request_seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = ParkingResponseErrorEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_lot_lists]
    // Deserialize array length for message field [parking_lot_lists]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_lot_lists = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_lot_lists[i] = ParkingLotInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [storage_size]
    data.storage_size = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.parking_lot_lists.forEach((val) => {
      length += ParkingLotInfo.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysMapProviderParkingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70d19a26cbb38866f66e1250a27f6e64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 request_seq
    system_manager_msgs/ParkingResponseErrorEnum error_code
    system_manager_msgs/ParkingLotInfo[] parking_lot_lists
    int64 storage_size
    
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
    MSG: system_manager_msgs/ParkingResponseErrorEnum
    uint8 SUCCESS = 0
    uint8 SEARCH_RESULT_EMPTY = 1
    uint8 LOAD_LPNP_FAILED = 2
    uint8 LOAD_PNP_FAILED = 3
    uint8 DELETE_FAILED = 4
    uint8 RENAME_FAILED = 5
    uint8 value
    
    ================================================================================
    MSG: system_manager_msgs/ParkingLotInfo
    float32 dist
    uint32 id
    string name
    mla_localization_msgs/MLAPosGlobal position
    uint32 parking_space_id
    mla_localization_msgs/MLAPosGlobal[] parking_space_positions
    mla_localization_msgs/MLAPosGlobal trace_start_position
    mla_localization_msgs/MLAPosGlobal trace_end_position
    system_manager_msgs/ParkingLotTypeEnum type
    string render_data
    string address
    uint32 trajectory_length
    string label
    string reversed
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosGlobal
    float64 latitude
    float64 longitude
    float64 altitude
    
    ================================================================================
    MSG: system_manager_msgs/ParkingLotTypeEnum
    uint8 PNP = 0
    uint8 LPNP = 1
    uint8 BOTH = 2
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysMapProviderParkingResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.request_seq !== undefined) {
      resolved.request_seq = msg.request_seq;
    }
    else {
      resolved.request_seq = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = ParkingResponseErrorEnum.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new ParkingResponseErrorEnum()
    }

    if (msg.parking_lot_lists !== undefined) {
      resolved.parking_lot_lists = new Array(msg.parking_lot_lists.length);
      for (let i = 0; i < resolved.parking_lot_lists.length; ++i) {
        resolved.parking_lot_lists[i] = ParkingLotInfo.Resolve(msg.parking_lot_lists[i]);
      }
    }
    else {
      resolved.parking_lot_lists = []
    }

    if (msg.storage_size !== undefined) {
      resolved.storage_size = msg.storage_size;
    }
    else {
      resolved.storage_size = 0
    }

    return resolved;
    }
};

module.exports = SysMapProviderParkingResponse;
