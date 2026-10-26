// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class APAInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.map_id = null;
      this.last_update_timestamp = null;
      this.allow_back_in = null;
      this.allow_front_in = null;
      this.back_in_estimated_zigzag_num = null;
      this.front_in_estimated_zigzag_num = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = 0;
      }
      if (initObj.hasOwnProperty('last_update_timestamp')) {
        this.last_update_timestamp = initObj.last_update_timestamp
      }
      else {
        this.last_update_timestamp = 0;
      }
      if (initObj.hasOwnProperty('allow_back_in')) {
        this.allow_back_in = initObj.allow_back_in
      }
      else {
        this.allow_back_in = false;
      }
      if (initObj.hasOwnProperty('allow_front_in')) {
        this.allow_front_in = initObj.allow_front_in
      }
      else {
        this.allow_front_in = false;
      }
      if (initObj.hasOwnProperty('back_in_estimated_zigzag_num')) {
        this.back_in_estimated_zigzag_num = initObj.back_in_estimated_zigzag_num
      }
      else {
        this.back_in_estimated_zigzag_num = 0;
      }
      if (initObj.hasOwnProperty('front_in_estimated_zigzag_num')) {
        this.front_in_estimated_zigzag_num = initObj.front_in_estimated_zigzag_num
      }
      else {
        this.front_in_estimated_zigzag_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type APAInfo
    // Serialize message field [status]
    bufferOffset = _serializer.uint32(obj.status, buffer, bufferOffset);
    // Serialize message field [map_id]
    bufferOffset = _serializer.int32(obj.map_id, buffer, bufferOffset);
    // Serialize message field [last_update_timestamp]
    bufferOffset = _serializer.uint64(obj.last_update_timestamp, buffer, bufferOffset);
    // Serialize message field [allow_back_in]
    bufferOffset = _serializer.bool(obj.allow_back_in, buffer, bufferOffset);
    // Serialize message field [allow_front_in]
    bufferOffset = _serializer.bool(obj.allow_front_in, buffer, bufferOffset);
    // Serialize message field [back_in_estimated_zigzag_num]
    bufferOffset = _serializer.int32(obj.back_in_estimated_zigzag_num, buffer, bufferOffset);
    // Serialize message field [front_in_estimated_zigzag_num]
    bufferOffset = _serializer.int32(obj.front_in_estimated_zigzag_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type APAInfo
    let len;
    let data = new APAInfo(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [last_update_timestamp]
    data.last_update_timestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [allow_back_in]
    data.allow_back_in = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [allow_front_in]
    data.allow_front_in = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [back_in_estimated_zigzag_num]
    data.back_in_estimated_zigzag_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_in_estimated_zigzag_num]
    data.front_in_estimated_zigzag_num = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/APAInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd28bc323f691be3d9ac9ed39ca01246c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new APAInfo(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = 0
    }

    if (msg.last_update_timestamp !== undefined) {
      resolved.last_update_timestamp = msg.last_update_timestamp;
    }
    else {
      resolved.last_update_timestamp = 0
    }

    if (msg.allow_back_in !== undefined) {
      resolved.allow_back_in = msg.allow_back_in;
    }
    else {
      resolved.allow_back_in = false
    }

    if (msg.allow_front_in !== undefined) {
      resolved.allow_front_in = msg.allow_front_in;
    }
    else {
      resolved.allow_front_in = false
    }

    if (msg.back_in_estimated_zigzag_num !== undefined) {
      resolved.back_in_estimated_zigzag_num = msg.back_in_estimated_zigzag_num;
    }
    else {
      resolved.back_in_estimated_zigzag_num = 0
    }

    if (msg.front_in_estimated_zigzag_num !== undefined) {
      resolved.front_in_estimated_zigzag_num = msg.front_in_estimated_zigzag_num;
    }
    else {
      resolved.front_in_estimated_zigzag_num = 0
    }

    return resolved;
    }
};

// Constants for message
APAInfo.Constants = {
  UNKNOWN: 0,
  OCCUPIED: 1,
  VACANT: 2,
  APA_FAIL: 3,
  APA_SUCCEED: 4,
  REVERSED: 5,
}

module.exports = APAInfo;
