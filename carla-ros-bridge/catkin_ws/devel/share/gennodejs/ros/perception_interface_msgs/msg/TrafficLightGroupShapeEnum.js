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

class TrafficLightGroupShapeEnum {
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
    // Serializes a message object of type TrafficLightGroupShapeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightGroupShapeEnum
    let len;
    let data = new TrafficLightGroupShapeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficLightGroupShapeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cebcc1bed0ca870c6dde53966362fb1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8
    uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightGroupShapeEnum(null);
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
TrafficLightGroupShapeEnum.Constants = {
  TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL: 0,
  TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL: 1,
  TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE: 2,
  TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION: 3,
  TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR: 4,
  TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN: 5,
  TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1: 6,
  TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2: 7,
  TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3: 8,
  TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4: 9,
}

module.exports = TrafficLightGroupShapeEnum;
