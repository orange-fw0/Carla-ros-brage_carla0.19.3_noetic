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

class TrafficLightInFov {
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
    // Serializes a message object of type TrafficLightInFov
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightInFov
    let len;
    let data = new TrafficLightInFov(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficLightInFov';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bd3ed24862fdff9279b7619796b701d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1
    uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2
    uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4
    uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8
    uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightInFov(null);
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
TrafficLightInFov.Constants = {
  TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN: 1,
  TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW: 2,
  TRAFFIC_LIGHT_IN_FOV_UP_ARROW: 4,
  TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW: 8,
  TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN: 16,
}

module.exports = TrafficLightInFov;
