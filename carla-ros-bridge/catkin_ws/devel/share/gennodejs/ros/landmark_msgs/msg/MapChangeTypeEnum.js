// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapChangeTypeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapChangeTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapChangeTypeEnum
    let len;
    let data = new MapChangeTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/MapChangeTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f78ff6afc08b26767f3b8efa366d3410';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MAP_CHANGE_TYPE_UNKNOWN = 0
    uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1
    uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2
    uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3
    uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapChangeTypeEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
MapChangeTypeEnum.Constants = {
  MAP_CHANGE_TYPE_UNKNOWN: 0,
  MAP_CHANGE_TYPE_NO_CHANGE: 1,
  MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE: 2,
  MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE: 3,
  MAP_CHANGE_TYPE_OTHER_CHANGES: 4,
}

module.exports = MapChangeTypeEnum;
