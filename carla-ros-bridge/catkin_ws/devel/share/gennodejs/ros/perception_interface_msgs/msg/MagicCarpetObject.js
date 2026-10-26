// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MagicCarpetObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.elevation_cm = null;
      this.longitude_distance_m = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('elevation_cm')) {
        this.elevation_cm = initObj.elevation_cm
      }
      else {
        this.elevation_cm = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_distance_m')) {
        this.longitude_distance_m = initObj.longitude_distance_m
      }
      else {
        this.longitude_distance_m = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagicCarpetObject
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [elevation_cm]
    bufferOffset = _serializer.float32(obj.elevation_cm, buffer, bufferOffset);
    // Serialize message field [longitude_distance_m]
    bufferOffset = _serializer.float32(obj.longitude_distance_m, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagicCarpetObject
    let len;
    let data = new MagicCarpetObject(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [elevation_cm]
    data.elevation_cm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude_distance_m]
    data.longitude_distance_m = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/MagicCarpetObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03e17ae2dcc8c18245253ec598d35969';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 MANHOLE = 1
    uint8 SPEED_BUMP = 2
    uint8 ROAD_CRACK = 3
    uint8 BROKEN_ROAD = 4
    uint8 ROAD_CURB = 5
    uint8 RESERVED_6 = 6
    uint8 RESERVED_7 = 7
    uint8 RESERVED_8 = 8
    uint8 RESERVED_9 = 9
    uint8 RESERVED_10 = 10
    uint8 type
    float32 elevation_cm
    float32 longitude_distance_m
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagicCarpetObject(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.elevation_cm !== undefined) {
      resolved.elevation_cm = msg.elevation_cm;
    }
    else {
      resolved.elevation_cm = 0.0
    }

    if (msg.longitude_distance_m !== undefined) {
      resolved.longitude_distance_m = msg.longitude_distance_m;
    }
    else {
      resolved.longitude_distance_m = 0.0
    }

    return resolved;
    }
};

// Constants for message
MagicCarpetObject.Constants = {
  UNKNOWN: 0,
  MANHOLE: 1,
  SPEED_BUMP: 2,
  ROAD_CRACK: 3,
  BROKEN_ROAD: 4,
  ROAD_CURB: 5,
  RESERVED_6: 6,
  RESERVED_7: 7,
  RESERVED_8: 8,
  RESERVED_9: 9,
  RESERVED_10: 10,
}

module.exports = MagicCarpetObject;
