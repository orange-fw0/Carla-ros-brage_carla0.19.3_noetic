// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class IntersectionType {
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
    // Serializes a message object of type IntersectionType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntersectionType
    let len;
    let data = new IntersectionType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/IntersectionType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17a20b3ea6b3a397c26232434b5abaac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 HIGHWAY_SPLIT = 1
    uint8 URBAN_NORMAL = 2
    uint8 NORMAL_SPLIT_MERGE = 3
    uint8 T_JUNCTION = 4
    uint8 Y_JUNCTION = 5
    uint8 ROUNDABOUT = 6
    uint8 OVERPASS = 7
    uint8 OTHERS = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntersectionType(null);
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
IntersectionType.Constants = {
  UNKNOWN: 0,
  HIGHWAY_SPLIT: 1,
  URBAN_NORMAL: 2,
  NORMAL_SPLIT_MERGE: 3,
  T_JUNCTION: 4,
  Y_JUNCTION: 5,
  ROUNDABOUT: 6,
  OVERPASS: 7,
  OTHERS: 255,
}

module.exports = IntersectionType;
