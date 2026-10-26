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

class SDArrowMarking {
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
    // Serializes a message object of type SDArrowMarking
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDArrowMarking
    let len;
    let data = new SDArrowMarking(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDArrowMarking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7bef5b294ac8fa89d7cc71649e01451';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ARROWMARKING_STRAIGHT = 0
    uint8 ARROWMARKING_LEFT = 1
    uint8 ARROWMARKING_STRAIGHT_LEFT = 2
    uint8 ARROWMARKING_RIGHT = 3
    uint8 ARROWMARKING_STRAIGHT_RIGHT = 4
    uint8 ARROWMARKING_LEFT_UTURN = 5
    uint8 ARROWMARKING_LEFT_RIGHT = 6
    uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7
    uint8 ARROWMARKING_RIGHT_UTURN = 8
    uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9
    uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10
    uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11
    uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12
    uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16
    uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17
    uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18
    uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19
    uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20
    uint8 ARROWMARKING_UNKNOWN = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SDArrowMarking(null);
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
SDArrowMarking.Constants = {
  ARROWMARKING_STRAIGHT: 0,
  ARROWMARKING_LEFT: 1,
  ARROWMARKING_STRAIGHT_LEFT: 2,
  ARROWMARKING_RIGHT: 3,
  ARROWMARKING_STRAIGHT_RIGHT: 4,
  ARROWMARKING_LEFT_UTURN: 5,
  ARROWMARKING_LEFT_RIGHT: 6,
  ARROWMARKING_LEFT_RIGHT_STRAIGHT: 7,
  ARROWMARKING_RIGHT_UTURN: 8,
  ARROWMARKING_STRAIGHT_LEFT_UTURN: 9,
  ARROWMARKING_STRAIGHT_RIGHT_UTURN: 10,
  ARROWMARKING_LEFT_LEFT_UTURN: 11,
  ARROWMARKING_RIGHT_RIGHT_UTURN: 12,
  ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN: 16,
  ARROWMARKING_RIGHT_LEFT_UTURN: 17,
  ARROWMARKING_LEFT_RIGHT_LEFT_UTURN: 18,
  ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN: 19,
  ARROWMARKING_LEFT_RIGHT_UTURN: 20,
  ARROWMARKING_UNKNOWN: 255,
}

module.exports = SDArrowMarking;
