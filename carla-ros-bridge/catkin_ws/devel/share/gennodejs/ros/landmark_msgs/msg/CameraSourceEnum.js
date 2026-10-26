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

class CameraSourceEnum {
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
    // Serializes a message object of type CameraSourceEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraSourceEnum
    let len;
    let data = new CameraSourceEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/CameraSourceEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7c1c5eb952b9b4dd66efffb1d5138d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CAMERA_SOURCE_FRONT_FAR = 0
    uint8 CAMERA_SOURCE_FRONT_MID = 1
    uint8 CAMERA_SOURCE_FRONT_WIDE = 2
    uint8 CAMERA_SOURCE_LEFT_FRONT = 3
    uint8 CAMERA_SOURCE_LEFT_REAR = 4
    uint8 CAMERA_SOURCE_REAR_MID = 5
    uint8 CAMERA_SOURCE_REAR_MID_UP = 6
    uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
    uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
    uint8 CAMERA_SOURCE_RIGHT_REAR = 9
    uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
    uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
    uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
    uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
    uint8 CAMERA_SOURCE_FISHEYE = 14
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
    uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
    uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
    uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
    uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
    uint8 CAMERA_SOURCE_BEV = 25
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraSourceEnum(null);
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
CameraSourceEnum.Constants = {
  CAMERA_SOURCE_FRONT_FAR: 0,
  CAMERA_SOURCE_FRONT_MID: 1,
  CAMERA_SOURCE_FRONT_WIDE: 2,
  CAMERA_SOURCE_LEFT_FRONT: 3,
  CAMERA_SOURCE_LEFT_REAR: 4,
  CAMERA_SOURCE_REAR_MID: 5,
  CAMERA_SOURCE_REAR_MID_UP: 6,
  CAMERA_SOURCE_REAR_MID_DOWN: 7,
  CAMERA_SOURCE_RIGHT_FRONT: 8,
  CAMERA_SOURCE_RIGHT_REAR: 9,
  CAMERA_SOURCE_FRONT_FISHEYE: 10,
  CAMERA_SOURCE_LEFT_FISHEYE: 11,
  CAMERA_SOURCE_RIGHT_FISHEYE: 12,
  CAMERA_SOURCE_REAR_FISHEYE: 13,
  CAMERA_SOURCE_FISHEYE: 14,
  CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT: 15,
  CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT: 16,
  CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT: 17,
  CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT: 18,
  CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT: 19,
  CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT: 20,
  CAMERA_SOURCE_LEFT_REAR_SUB_LEFT: 21,
  CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT: 22,
  CAMERA_SOURCE_FRONT_MID_FAR: 23,
  CAMERA_SOURCE_FRONT_SUPER_FAR: 24,
  CAMERA_SOURCE_BEV: 25,
}

module.exports = CameraSourceEnum;
