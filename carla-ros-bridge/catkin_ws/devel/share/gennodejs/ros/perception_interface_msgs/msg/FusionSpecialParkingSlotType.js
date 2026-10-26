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

class FusionSpecialParkingSlotType {
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
    // Serializes a message object of type FusionSpecialParkingSlotType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionSpecialParkingSlotType
    let len;
    let data = new FusionSpecialParkingSlotType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/FusionSpecialParkingSlotType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1222fcf8e33a977abc4456e4db5b195c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0
    uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1
    uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2
    uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FusionSpecialParkingSlotType(null);
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
FusionSpecialParkingSlotType.Constants = {
  SPECIAL_PARKING_SLOT_TYPE_DEFAULT: 0,
  SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE: 1,
  SPECIAL_PARKING_SLOT_TYPE_MECHANICAL: 2,
  SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN: 4,
}

module.exports = FusionSpecialParkingSlotType;
