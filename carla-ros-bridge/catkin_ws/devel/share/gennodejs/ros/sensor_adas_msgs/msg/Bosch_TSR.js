// Auto-generated. Do not edit!

// (in-package sensor_adas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Bosch_TSR {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TSR_Fusion_Speed = null;
      this.TSR_Function_Status = null;
      this.SLA_Output_Speed_Limit = null;
      this.SLA_Output_Speed_Limit_Status = null;
      this.SLA_Output_Speed_Limit_Unit = null;
      this.RSI_SignMisc = null;
      this.reserved1 = null;
      this.reserved2 = null;
    }
    else {
      if (initObj.hasOwnProperty('TSR_Fusion_Speed')) {
        this.TSR_Fusion_Speed = initObj.TSR_Fusion_Speed
      }
      else {
        this.TSR_Fusion_Speed = 0;
      }
      if (initObj.hasOwnProperty('TSR_Function_Status')) {
        this.TSR_Function_Status = initObj.TSR_Function_Status
      }
      else {
        this.TSR_Function_Status = 0;
      }
      if (initObj.hasOwnProperty('SLA_Output_Speed_Limit')) {
        this.SLA_Output_Speed_Limit = initObj.SLA_Output_Speed_Limit
      }
      else {
        this.SLA_Output_Speed_Limit = 0;
      }
      if (initObj.hasOwnProperty('SLA_Output_Speed_Limit_Status')) {
        this.SLA_Output_Speed_Limit_Status = initObj.SLA_Output_Speed_Limit_Status
      }
      else {
        this.SLA_Output_Speed_Limit_Status = 0;
      }
      if (initObj.hasOwnProperty('SLA_Output_Speed_Limit_Unit')) {
        this.SLA_Output_Speed_Limit_Unit = initObj.SLA_Output_Speed_Limit_Unit
      }
      else {
        this.SLA_Output_Speed_Limit_Unit = 0;
      }
      if (initObj.hasOwnProperty('RSI_SignMisc')) {
        this.RSI_SignMisc = initObj.RSI_SignMisc
      }
      else {
        this.RSI_SignMisc = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0.0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bosch_TSR
    // Serialize message field [TSR_Fusion_Speed]
    bufferOffset = _serializer.uint16(obj.TSR_Fusion_Speed, buffer, bufferOffset);
    // Serialize message field [TSR_Function_Status]
    bufferOffset = _serializer.uint16(obj.TSR_Function_Status, buffer, bufferOffset);
    // Serialize message field [SLA_Output_Speed_Limit]
    bufferOffset = _serializer.uint16(obj.SLA_Output_Speed_Limit, buffer, bufferOffset);
    // Serialize message field [SLA_Output_Speed_Limit_Status]
    bufferOffset = _serializer.uint16(obj.SLA_Output_Speed_Limit_Status, buffer, bufferOffset);
    // Serialize message field [SLA_Output_Speed_Limit_Unit]
    bufferOffset = _serializer.uint16(obj.SLA_Output_Speed_Limit_Unit, buffer, bufferOffset);
    // Serialize message field [RSI_SignMisc]
    bufferOffset = _serializer.uint16(obj.RSI_SignMisc, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float64(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.float64(obj.reserved2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bosch_TSR
    let len;
    let data = new Bosch_TSR(null);
    // Deserialize message field [TSR_Fusion_Speed]
    data.TSR_Fusion_Speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [TSR_Function_Status]
    data.TSR_Function_Status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SLA_Output_Speed_Limit]
    data.SLA_Output_Speed_Limit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SLA_Output_Speed_Limit_Status]
    data.SLA_Output_Speed_Limit_Status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SLA_Output_Speed_Limit_Unit]
    data.SLA_Output_Speed_Limit_Unit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RSI_SignMisc]
    data.RSI_SignMisc = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_adas_msgs/Bosch_TSR';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81a303defd0e65a4559f0a0455c731e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Bosch_TSR(null);
    if (msg.TSR_Fusion_Speed !== undefined) {
      resolved.TSR_Fusion_Speed = msg.TSR_Fusion_Speed;
    }
    else {
      resolved.TSR_Fusion_Speed = 0
    }

    if (msg.TSR_Function_Status !== undefined) {
      resolved.TSR_Function_Status = msg.TSR_Function_Status;
    }
    else {
      resolved.TSR_Function_Status = 0
    }

    if (msg.SLA_Output_Speed_Limit !== undefined) {
      resolved.SLA_Output_Speed_Limit = msg.SLA_Output_Speed_Limit;
    }
    else {
      resolved.SLA_Output_Speed_Limit = 0
    }

    if (msg.SLA_Output_Speed_Limit_Status !== undefined) {
      resolved.SLA_Output_Speed_Limit_Status = msg.SLA_Output_Speed_Limit_Status;
    }
    else {
      resolved.SLA_Output_Speed_Limit_Status = 0
    }

    if (msg.SLA_Output_Speed_Limit_Unit !== undefined) {
      resolved.SLA_Output_Speed_Limit_Unit = msg.SLA_Output_Speed_Limit_Unit;
    }
    else {
      resolved.SLA_Output_Speed_Limit_Unit = 0
    }

    if (msg.RSI_SignMisc !== undefined) {
      resolved.RSI_SignMisc = msg.RSI_SignMisc;
    }
    else {
      resolved.RSI_SignMisc = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0.0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0.0
    }

    return resolved;
    }
};

// Constants for message
Bosch_TSR.Constants = {
  SLA_OUTPUT_SPEED_LIMIT_NODISPLAY: 0,
  SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL: 1,
  SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL: 2,
  SPEED_UNIT_INVALID: 0,
  SPEED_UNIT_KMH: 1,
  SPEED_UNIT_MPH: 2,
  SPEED_UNIT_RESERVED: 3,
  SPEED_TYPE_NONE: 0,
  SPEED_TYPE_NORMAL_SPEED: 1,
  SPEED_TYPE_LED_SPEED: 2,
  SPEED_TYPE_NAVI_SPEED: 3,
  RSI_DEFAULT_NO_DISPLAY: 0,
  RSI_NO_ENTRY_SIGN: 1,
  RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN: 2,
  RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN: 3,
  RSI_NO_PARKING_SIGN: 4,
  RSI_NO_OVERTAKING_SIGN: 5,
  RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN: 6,
  RSI_NO_LEFT_TURN_SIGN: 7,
  RSI_NO_RIGHT_TURN_SIGN: 8,
  RSI_U_TURN_PROHIBITED_SIGN: 9,
  RSI_PARKING_SIGN: 10,
  RSI_YIELD_SIGN: 11,
  RSI_NO_HORN_SIGN: 12,
  RSI_CHILDREN_YIELD_SIGN: 13,
  RSI_PEDESTRIANS_CROSSING: 14,
  RSI_ROAD_CONSTRUCTION_SIGN: 15,
  RSI_CAUTION_SLIPPERY_SIGN: 16,
  RSI_CAUTION_DANGER_SIGN: 17,
  RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN: 18,
  RSI_HIGHWAY_STARTING_POINT_SIGN: 19,
  RSI_HIGHWAY_END_POINT_SIGN: 20,
  RSI_SHARP_RIGHT_TURN_SIGN: 21,
  RSI_SHARP_LEFT_TURN_SIGN: 22,
  RSI_LONG_TERM_PARKING_PROHIBITED_SIGN: 23,
  RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN: 24,
  RSI_CAUTION_STEEP_ASCENT_SIGN: 25,
  RSI_CAUTION_STEEP_DESCENT_SIGN: 26,
  TSR_FUNCTION_STATUS_OFF: 0,
  TSR_FUNCTION_STATUS_FUSION_MODE: 1,
  TSR_FUNCTION_STATUS_VISION_MODE: 2,
  TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE: 3,
  TSR_FUNCTION_STATUS_PASSIVE: 4,
  TSR_FUNCTION_STATUS_FAULT: 5,
}

module.exports = Bosch_TSR;
