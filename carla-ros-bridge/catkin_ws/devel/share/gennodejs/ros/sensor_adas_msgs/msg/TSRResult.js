// Auto-generated. Do not edit!

// (in-package sensor_adas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Bosch_TSR = require('./Bosch_TSR.js');

//-----------------------------------------------------------

class TSRResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.bosch_tsr = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('bosch_tsr')) {
        this.bosch_tsr = initObj.bosch_tsr
      }
      else {
        this.bosch_tsr = new Bosch_TSR();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TSRResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [bosch_tsr]
    bufferOffset = Bosch_TSR.serialize(obj.bosch_tsr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TSRResult
    let len;
    let data = new TSRResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bosch_tsr]
    data.bosch_tsr = Bosch_TSR.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_adas_msgs/TSRResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b3e154cc80f2796114cd089b43ffd4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BOSCH_TSR_DATA_TYPE = 1
    uint8 available
    sensor_adas_msgs/Bosch_TSR bosch_tsr
    
    ================================================================================
    MSG: sensor_adas_msgs/Bosch_TSR
    uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0
    uint8 SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL = 1
    uint8 SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL = 2
    uint8 SPEED_UNIT_INVALID = 0
    uint8 SPEED_UNIT_KMH = 1
    uint8 SPEED_UNIT_MPH = 2
    uint8 SPEED_UNIT_RESERVED = 3
    uint8 SPEED_TYPE_NONE = 0
    uint8 SPEED_TYPE_NORMAL_SPEED = 1
    uint8 SPEED_TYPE_LED_SPEED = 2
    uint8 SPEED_TYPE_NAVI_SPEED = 3
    uint8 RSI_DEFAULT_NO_DISPLAY = 0
    uint8 RSI_NO_ENTRY_SIGN = 1
    uint8 RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN = 2
    uint8 RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN = 3
    uint8 RSI_NO_PARKING_SIGN = 4
    uint8 RSI_NO_OVERTAKING_SIGN = 5
    uint8 RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN = 6
    uint8 RSI_NO_LEFT_TURN_SIGN = 7
    uint8 RSI_NO_RIGHT_TURN_SIGN = 8
    uint8 RSI_U_TURN_PROHIBITED_SIGN = 9
    uint8 RSI_PARKING_SIGN = 10
    uint8 RSI_YIELD_SIGN = 11
    uint8 RSI_NO_HORN_SIGN = 12
    uint8 RSI_CHILDREN_YIELD_SIGN = 13
    uint8 RSI_PEDESTRIANS_CROSSING = 14
    uint8 RSI_ROAD_CONSTRUCTION_SIGN = 15
    uint8 RSI_CAUTION_SLIPPERY_SIGN = 16
    uint8 RSI_CAUTION_DANGER_SIGN = 17
    uint8 RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN = 18
    uint8 RSI_HIGHWAY_STARTING_POINT_SIGN = 19
    uint8 RSI_HIGHWAY_END_POINT_SIGN = 20
    uint8 RSI_SHARP_RIGHT_TURN_SIGN = 21
    uint8 RSI_SHARP_LEFT_TURN_SIGN = 22
    uint8 RSI_LONG_TERM_PARKING_PROHIBITED_SIGN = 23
    uint8 RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN = 24
    uint8 RSI_CAUTION_STEEP_ASCENT_SIGN = 25
    uint8 RSI_CAUTION_STEEP_DESCENT_SIGN = 26
    uint8 TSR_FUNCTION_STATUS_OFF = 0
    uint8 TSR_FUNCTION_STATUS_FUSION_MODE = 1
    uint8 TSR_FUNCTION_STATUS_VISION_MODE = 2
    uint8 TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE = 3
    uint8 TSR_FUNCTION_STATUS_PASSIVE = 4
    uint8 TSR_FUNCTION_STATUS_FAULT = 5
    uint16 TSR_Fusion_Speed
    uint16 TSR_Function_Status
    uint16 SLA_Output_Speed_Limit
    uint16 SLA_Output_Speed_Limit_Status
    uint16 SLA_Output_Speed_Limit_Unit
    uint16 RSI_SignMisc
    float64 reserved1
    float64 reserved2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TSRResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.bosch_tsr !== undefined) {
      resolved.bosch_tsr = Bosch_TSR.Resolve(msg.bosch_tsr)
    }
    else {
      resolved.bosch_tsr = new Bosch_TSR()
    }

    return resolved;
    }
};

// Constants for message
TSRResult.Constants = {
  BOSCH_TSR_DATA_TYPE: 1,
}

module.exports = TSRResult;
