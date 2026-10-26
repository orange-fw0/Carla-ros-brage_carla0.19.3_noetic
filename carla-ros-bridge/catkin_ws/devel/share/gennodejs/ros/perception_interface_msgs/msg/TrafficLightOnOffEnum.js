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

class TrafficLightOnOffEnum {
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
    // Serializes a message object of type TrafficLightOnOffEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightOnOffEnum
    let len;
    let data = new TrafficLightOnOffEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficLightOnOffEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04f595a1ed29db67b154a36851db594b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_LIGHT_ONOFF_ON = 0
    uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1
    uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2
    uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5
    uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightOnOffEnum(null);
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
TrafficLightOnOffEnum.Constants = {
  TRAFFIC_LIGHT_ONOFF_ON: 0,
  TRAFFIC_LIGHT_ONOFF_OFF: 1,
  TRAFFIC_LIGHT_ONOFF_UNKNOW: 2,
  TRAFFIC_LIGHT_ONOFF_UNMARKED: 3,
  TRAFFIC_LIGHT_ONOFF_RESERVE1: 4,
  TRAFFIC_LIGHT_ONOFF_RESERVE2: 5,
  TRAFFIC_LIGHT_ONOFF_RESERVE3: 6,
}

module.exports = TrafficLightOnOffEnum;
