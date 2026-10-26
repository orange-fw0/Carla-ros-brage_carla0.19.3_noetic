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

class TrafficSignShapeEnum {
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
    // Serializes a message object of type TrafficSignShapeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignShapeEnum
    let len;
    let data = new TrafficSignShapeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficSignShapeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '431f0c16990575d9ef25ed37f5d6dcf5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1
    uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2
    uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3
    uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4
    uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5
    uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6
    uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7
    uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignShapeEnum(null);
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
TrafficSignShapeEnum.Constants = {
  TRAFFIC_SIGN_SHAPE_UNKNOWN: 0,
  TRAFFIC_SIGN_SHAPE_BACKGROUND: 1,
  TRAFFIC_SIGN_SHAPE_HEXAGON: 2,
  TRAFFIC_SIGN_SHAPE_DIAMOND: 3,
  TRAFFIC_SIGN_SHAPE_RECTANGLE: 4,
  TRAFFIC_SIGN_SHAPE_TRIANGLE: 5,
  TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE: 6,
  TRAFFIC_SIGN_SHAPE_POLYGON: 7,
  TRAFFIC_SIGN_SHAPE_CIRCLE: 8,
}

module.exports = TrafficSignShapeEnum;
