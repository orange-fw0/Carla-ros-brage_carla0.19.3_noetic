// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSFidUserInfo = require('./DMSFidUserInfo.js');
let UserListSyncTypeEnum = require('./UserListSyncTypeEnum.js');

//-----------------------------------------------------------

class DMSFidUserListInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.user_list = null;
      this.user_list_sync_type = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('user_list')) {
        this.user_list = initObj.user_list
      }
      else {
        this.user_list = [];
      }
      if (initObj.hasOwnProperty('user_list_sync_type')) {
        this.user_list_sync_type = initObj.user_list_sync_type
      }
      else {
        this.user_list_sync_type = new UserListSyncTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFidUserListInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [user_list]
    // Serialize the length for message field [user_list]
    bufferOffset = _serializer.uint32(obj.user_list.length, buffer, bufferOffset);
    obj.user_list.forEach((val) => {
      bufferOffset = DMSFidUserInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [user_list_sync_type]
    bufferOffset = UserListSyncTypeEnum.serialize(obj.user_list_sync_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFidUserListInfo
    let len;
    let data = new DMSFidUserListInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [user_list]
    // Deserialize array length for message field [user_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.user_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.user_list[i] = DMSFidUserInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [user_list_sync_type]
    data.user_list_sync_type = UserListSyncTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.user_list.forEach((val) => {
      length += DMSFidUserInfo.getMessageSize(val);
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFidUserListInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '828fbff18db307cd0d669e5661bfa95a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 USER_LIST_INFO_UN_AVAILABLE = 0
    uint8 USER_LIST_INFO_AVAILABLE = 1
    uint8 available
    dms_msgs/DMSFidUserInfo[] user_list
    dms_msgs/UserListSyncTypeEnum user_list_sync_type
    
    ================================================================================
    MSG: dms_msgs/DMSFidUserInfo
    string user_id
    string create_time
    
    ================================================================================
    MSG: dms_msgs/UserListSyncTypeEnum
    uint8 NO_ACTION = 0
    uint8 USER_LIST_SYNC_SUCCESS = 1
    uint8 USER_LIST_SYNC_FAIL = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFidUserListInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.user_list !== undefined) {
      resolved.user_list = new Array(msg.user_list.length);
      for (let i = 0; i < resolved.user_list.length; ++i) {
        resolved.user_list[i] = DMSFidUserInfo.Resolve(msg.user_list[i]);
      }
    }
    else {
      resolved.user_list = []
    }

    if (msg.user_list_sync_type !== undefined) {
      resolved.user_list_sync_type = UserListSyncTypeEnum.Resolve(msg.user_list_sync_type)
    }
    else {
      resolved.user_list_sync_type = new UserListSyncTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
DMSFidUserListInfo.Constants = {
  USER_LIST_INFO_UN_AVAILABLE: 0,
  USER_LIST_INFO_AVAILABLE: 1,
}

module.exports = DMSFidUserListInfo;
