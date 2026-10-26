// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlacCalibStatusEnum {
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
    // Serializes a message object of type PlacCalibStatusEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlacCalibStatusEnum
    let len;
    let data = new PlacCalibStatusEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/PlacCalibStatusEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14931cc4e4fe154bc24d7611ff34cd95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CALIB_STATUS_IDLE = 0
    uint8 CALIB_STATUS_RUNNING = 1
    uint8 CALIB_STATUS_SUCCESS = 2
    uint8 CALIB_STATUS_FAIL = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlacCalibStatusEnum(null);
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
PlacCalibStatusEnum.Constants = {
  CALIB_STATUS_IDLE: 0,
  CALIB_STATUS_RUNNING: 1,
  CALIB_STATUS_SUCCESS: 2,
  CALIB_STATUS_FAIL: 3,
}

module.exports = PlacCalibStatusEnum;
