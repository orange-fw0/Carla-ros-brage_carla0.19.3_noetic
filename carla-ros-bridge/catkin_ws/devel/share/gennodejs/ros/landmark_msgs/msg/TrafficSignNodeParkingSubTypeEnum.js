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

class TrafficSignNodeParkingSubTypeEnum {
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
    // Serializes a message object of type TrafficSignNodeParkingSubTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignNodeParkingSubTypeEnum
    let len;
    let data = new TrafficSignNodeParkingSubTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficSignNodeParkingSubTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e26d49858709c0d277e042ca328873e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7
    uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignNodeParkingSubTypeEnum(null);
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
TrafficSignNodeParkingSubTypeEnum.Constants = {
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID: 0,
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN: 1,
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI: 2,
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS: 3,
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS: 4,
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED: 5,
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL: 6,
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE: 7,
  TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER: 255,
}

module.exports = TrafficSignNodeParkingSubTypeEnum;
