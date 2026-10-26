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

class SDLaneDirectType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDLaneDirectType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDLaneDirectType
    let len;
    let data = new SDLaneDirectType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDLaneDirectType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af2c45ff4447e4771a866405902d2bee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0
    uint8 SD_LANE_DIRECT_TYPE_BUS = 1
    uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2
    uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3
    uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SDLaneDirectType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
SDLaneDirectType.Constants = {
  SD_LANE_DIRECT_TYPE_NORMAL: 0,
  SD_LANE_DIRECT_TYPE_BUS: 1,
  SD_LANE_DIRECT_TYPE_OTHER_SPECIAL: 2,
  SD_LANE_DIRECT_TYPE_REVERSIBLE: 3,
  SD_LANE_DIRECT_TYPE_VARIABLE: 4,
}

module.exports = SDLaneDirectType;
