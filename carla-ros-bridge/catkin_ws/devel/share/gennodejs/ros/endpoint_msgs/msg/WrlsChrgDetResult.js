// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WrlsChrgDetResult {
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
    // Serializes a message object of type WrlsChrgDetResult
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WrlsChrgDetResult
    let len;
    let data = new WrlsChrgDetResult(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WrlsChrgDetResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd46664860429aa7df0e64f40ff5f26c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0
    uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1
    uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2
    uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3
    uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4
    uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5
    uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6
    uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7
    uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WrlsChrgDetResult(null);
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
WrlsChrgDetResult.Constants = {
  WIRELESS_CHARGER_DETECED_RESULT_DEFAULT: 0,
  WIRELESS_CHARGER_DETECED_RESULT_OK: 1,
  WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK: 2,
  WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK: 3,
  WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK: 4,
  WIRELESS_CHARGER_DETECED_RESULT_METAL: 5,
  WIRELESS_CHARGER_DETECED_RESULT_LIVING: 6,
  WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK: 7,
  WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING: 8,
}

module.exports = WrlsChrgDetResult;
