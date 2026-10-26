// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DelResponseTypeEnum = require('./DelResponseTypeEnum.js');
let DelStatusTypeEnum = require('./DelStatusTypeEnum.js');
let DelErrorTypeEnum = require('./DelErrorTypeEnum.js');

//-----------------------------------------------------------

class DMSFidDelInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.user_id = null;
      this.delete_timestamp_us = null;
      this.del_response = null;
      this.del_status = null;
      this.del_error = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('user_id')) {
        this.user_id = initObj.user_id
      }
      else {
        this.user_id = '';
      }
      if (initObj.hasOwnProperty('delete_timestamp_us')) {
        this.delete_timestamp_us = initObj.delete_timestamp_us
      }
      else {
        this.delete_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('del_response')) {
        this.del_response = initObj.del_response
      }
      else {
        this.del_response = new DelResponseTypeEnum();
      }
      if (initObj.hasOwnProperty('del_status')) {
        this.del_status = initObj.del_status
      }
      else {
        this.del_status = new DelStatusTypeEnum();
      }
      if (initObj.hasOwnProperty('del_error')) {
        this.del_error = initObj.del_error
      }
      else {
        this.del_error = new DelErrorTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFidDelInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [user_id]
    bufferOffset = _serializer.string(obj.user_id, buffer, bufferOffset);
    // Serialize message field [delete_timestamp_us]
    bufferOffset = _serializer.uint64(obj.delete_timestamp_us, buffer, bufferOffset);
    // Serialize message field [del_response]
    bufferOffset = DelResponseTypeEnum.serialize(obj.del_response, buffer, bufferOffset);
    // Serialize message field [del_status]
    bufferOffset = DelStatusTypeEnum.serialize(obj.del_status, buffer, bufferOffset);
    // Serialize message field [del_error]
    bufferOffset = DelErrorTypeEnum.serialize(obj.del_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFidDelInfo
    let len;
    let data = new DMSFidDelInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [user_id]
    data.user_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [delete_timestamp_us]
    data.delete_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [del_response]
    data.del_response = DelResponseTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [del_status]
    data.del_status = DelStatusTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [del_error]
    data.del_error = DelErrorTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.user_id);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFidDelInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63889ef8b3b279e0186cff225e9a6eb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DEL_INFO_UN_AVAILABLE = 0
    uint8 DEL_INFO_AVAILABLE = 1
    uint8 available
    string user_id
    uint64 delete_timestamp_us
    dms_msgs/DelResponseTypeEnum del_response
    dms_msgs/DelStatusTypeEnum del_status
    dms_msgs/DelErrorTypeEnum del_error
    
    ================================================================================
    MSG: dms_msgs/DelResponseTypeEnum
    uint8 NO_ACTION = 0
    uint8 RESPOND_SUCCESS = 1
    uint8 RESPOND_FAIL = 2
    uint8 RESERVED = 3
    uint8 RESERVED1 = 4
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DelStatusTypeEnum
    uint8 DEL_FAIL = 0
    uint8 DELETING = 1
    uint8 DEL_SUCCESS = 2
    uint8 RESERVED = 3
    uint8 RESERVED1 = 4
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DelErrorTypeEnum
    uint8 NO_ERROR = 0
    uint8 NO_USER = 1
    uint8 TIME_OUT = 2
    uint8 SYSTEM_ERROR = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 RESERVED3 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFidDelInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.user_id !== undefined) {
      resolved.user_id = msg.user_id;
    }
    else {
      resolved.user_id = ''
    }

    if (msg.delete_timestamp_us !== undefined) {
      resolved.delete_timestamp_us = msg.delete_timestamp_us;
    }
    else {
      resolved.delete_timestamp_us = 0
    }

    if (msg.del_response !== undefined) {
      resolved.del_response = DelResponseTypeEnum.Resolve(msg.del_response)
    }
    else {
      resolved.del_response = new DelResponseTypeEnum()
    }

    if (msg.del_status !== undefined) {
      resolved.del_status = DelStatusTypeEnum.Resolve(msg.del_status)
    }
    else {
      resolved.del_status = new DelStatusTypeEnum()
    }

    if (msg.del_error !== undefined) {
      resolved.del_error = DelErrorTypeEnum.Resolve(msg.del_error)
    }
    else {
      resolved.del_error = new DelErrorTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
DMSFidDelInfo.Constants = {
  DEL_INFO_UN_AVAILABLE: 0,
  DEL_INFO_AVAILABLE: 1,
}

module.exports = DMSFidDelInfo;
