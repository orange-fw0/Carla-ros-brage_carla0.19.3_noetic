// Auto-generated. Do not edit!

// (in-package adasis_v2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProfileLongType {
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
    // Serializes a message object of type ProfileLongType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProfileLongType
    let len;
    let data = new ProfileLongType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/ProfileLongType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c05289cf9e11da36b33fae39a854b02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LONGITUDE = 1
    uint8 LATITUDE = 2
    uint8 ALTITUDE = 3
    uint8 CONTROL_POINT_LONGITUDE = 4
    uint8 CONTROL_POINT_LATITUDE = 5
    uint8 CONTROL_POINT_ALTITUDE = 6
    uint8 LINK_IDENTIFIER = 7
    uint8 TRAFFIC_SIGN = 8
    uint8 TRUCK_SPEED_LIMIT = 9
    uint8 EXTENDED_LANE = 10
    uint8 HARZ_SPEED_LIMIT_0_AND_1 = 16
    uint8 HARZ_SPEED_LIMIT_1 = 17
    uint8 TRAFFIC_EVENT = 19
    uint8 WEATHER = 20
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProfileLongType(null);
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
ProfileLongType.Constants = {
  LONGITUDE: 1,
  LATITUDE: 2,
  ALTITUDE: 3,
  CONTROL_POINT_LONGITUDE: 4,
  CONTROL_POINT_LATITUDE: 5,
  CONTROL_POINT_ALTITUDE: 6,
  LINK_IDENTIFIER: 7,
  TRAFFIC_SIGN: 8,
  TRUCK_SPEED_LIMIT: 9,
  EXTENDED_LANE: 10,
  HARZ_SPEED_LIMIT_0_AND_1: 16,
  HARZ_SPEED_LIMIT_1: 17,
  TRAFFIC_EVENT: 19,
  WEATHER: 20,
}

module.exports = ProfileLongType;
