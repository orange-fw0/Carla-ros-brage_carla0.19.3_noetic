// Auto-generated. Do not edit!

// (in-package pnp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapDownloadTypeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapDownloadTypeEnum
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapDownloadTypeEnum
    let len;
    let data = new MapDownloadTypeEnum(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pnp_msgs/MapDownloadTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a12b9adcbb91d261498227c0f0a80ef6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 CRUISING_SEARCH = 1
    uint8 SD_DESTINATION_SEARCH = 2
    uint8 SPECIFIC_ID = 3
    uint8 RANGE_SEARCH = 4
    uint8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapDownloadTypeEnum(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
MapDownloadTypeEnum.Constants = {
  UNKNOWN: 0,
  CRUISING_SEARCH: 1,
  SD_DESTINATION_SEARCH: 2,
  SPECIFIC_ID: 3,
  RANGE_SEARCH: 4,
}

module.exports = MapDownloadTypeEnum;
