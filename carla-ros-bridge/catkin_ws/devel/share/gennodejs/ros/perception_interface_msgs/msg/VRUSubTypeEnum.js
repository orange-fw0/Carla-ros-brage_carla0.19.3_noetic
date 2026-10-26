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

class VRUSubTypeEnum {
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
    // Serializes a message object of type VRUSubTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VRUSubTypeEnum
    let len;
    let data = new VRUSubTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/VRUSubTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23ddcc9847cb4f2833e74a78a134d97f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0
    uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1
    uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2
    uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3
    uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4
    uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5
    uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6
    uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7
    uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8
    uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9
    uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10
    uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11
    uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12
    uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13
    uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14
    uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15
    uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16
    uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17
    uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18
    uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19
    uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20
    uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21
    uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22
    uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23
    uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24
    uint8 VRU_SUB_TYPE_ANIMAL = 25
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VRUSubTypeEnum(null);
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
VRUSubTypeEnum.Constants = {
  VRU_SUB_TYPE_UNKNOWN_VRU: 0,
  VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN: 1,
  VRU_SUB_TYPE_STAND_PEDESTRIAN: 2,
  VRU_SUB_TYPE_SQUATTER_PEDESTRIAN: 3,
  VRU_SUB_TYPE_LYING_PEDESTRIAN: 4,
  VRU_SUB_TYPE_UNKNOWN_BICYCLIST: 5,
  VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST: 6,
  VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST: 7,
  VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST: 8,
  VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST: 9,
  VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST: 10,
  VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST: 11,
  VRU_SUB_TYPE_UNKNOWN_TRICYCLIST: 12,
  VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST: 13,
  VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST: 14,
  VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST: 15,
  VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST: 16,
  VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST: 17,
  VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST: 18,
  VRU_SUB_TYPE_UNKNOWN_TROLLEY: 19,
  VRU_SUB_TYPE_FLAT_TROLLEY: 20,
  VRU_SUB_TYPE_SHOPPING_TROLLEY: 21,
  VRU_SUB_TYPE_STROLLER_TROLLEY: 22,
  VRU_SUB_TYPE_GARBAGE_TROLLEY: 23,
  VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY: 24,
  VRU_SUB_TYPE_ANIMAL: 25,
}

module.exports = VRUSubTypeEnum;
