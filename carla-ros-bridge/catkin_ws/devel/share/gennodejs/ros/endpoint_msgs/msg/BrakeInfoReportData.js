// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehESPSwitch = require('./VehESPSwitch.js');

//-----------------------------------------------------------

class BrakeInfoReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.accleration_on_wheel = null;
      this.lateral_accleration_on_wheel = null;
      this.stationary = null;
      this.abs_active = null;
      this.abs_fault = null;
      this.tcs_active = null;
      this.tcs_fault = null;
      this.msr_active = null;
      this.msr_fault = null;
      this.esp_active = null;
      this.esp_fault = null;
      this.tsr_active = null;
      this.tsr_fault = null;
      this.pressure = null;
      this.brake_torque_delivery = null;
      this.brake_torque_delivery_valid = null;
      this.brake_regen_torque_delivery = null;
      this.brake_regen_torque_delivery_valid = null;
      this.brake_frct_torque_delivery = null;
      this.brake_frct_torque_delivery_valid = null;
      this.master_pressure_delivery = null;
      this.master_pressure_delivery_valid = null;
      this.pedal_brake_torque = null;
      this.pedal_brake_torque_valid = null;
      this.pkg_fastswitch_enable = null;
      this.vehicle_block = null;
      this.esp_status = null;
      this.vdc_active = null;
      this.vdc_fault = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('accleration_on_wheel')) {
        this.accleration_on_wheel = initObj.accleration_on_wheel
      }
      else {
        this.accleration_on_wheel = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_accleration_on_wheel')) {
        this.lateral_accleration_on_wheel = initObj.lateral_accleration_on_wheel
      }
      else {
        this.lateral_accleration_on_wheel = 0.0;
      }
      if (initObj.hasOwnProperty('stationary')) {
        this.stationary = initObj.stationary
      }
      else {
        this.stationary = false;
      }
      if (initObj.hasOwnProperty('abs_active')) {
        this.abs_active = initObj.abs_active
      }
      else {
        this.abs_active = false;
      }
      if (initObj.hasOwnProperty('abs_fault')) {
        this.abs_fault = initObj.abs_fault
      }
      else {
        this.abs_fault = false;
      }
      if (initObj.hasOwnProperty('tcs_active')) {
        this.tcs_active = initObj.tcs_active
      }
      else {
        this.tcs_active = false;
      }
      if (initObj.hasOwnProperty('tcs_fault')) {
        this.tcs_fault = initObj.tcs_fault
      }
      else {
        this.tcs_fault = false;
      }
      if (initObj.hasOwnProperty('msr_active')) {
        this.msr_active = initObj.msr_active
      }
      else {
        this.msr_active = false;
      }
      if (initObj.hasOwnProperty('msr_fault')) {
        this.msr_fault = initObj.msr_fault
      }
      else {
        this.msr_fault = false;
      }
      if (initObj.hasOwnProperty('esp_active')) {
        this.esp_active = initObj.esp_active
      }
      else {
        this.esp_active = false;
      }
      if (initObj.hasOwnProperty('esp_fault')) {
        this.esp_fault = initObj.esp_fault
      }
      else {
        this.esp_fault = false;
      }
      if (initObj.hasOwnProperty('tsr_active')) {
        this.tsr_active = initObj.tsr_active
      }
      else {
        this.tsr_active = false;
      }
      if (initObj.hasOwnProperty('tsr_fault')) {
        this.tsr_fault = initObj.tsr_fault
      }
      else {
        this.tsr_fault = false;
      }
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = false;
      }
      if (initObj.hasOwnProperty('brake_torque_delivery')) {
        this.brake_torque_delivery = initObj.brake_torque_delivery
      }
      else {
        this.brake_torque_delivery = 0.0;
      }
      if (initObj.hasOwnProperty('brake_torque_delivery_valid')) {
        this.brake_torque_delivery_valid = initObj.brake_torque_delivery_valid
      }
      else {
        this.brake_torque_delivery_valid = false;
      }
      if (initObj.hasOwnProperty('brake_regen_torque_delivery')) {
        this.brake_regen_torque_delivery = initObj.brake_regen_torque_delivery
      }
      else {
        this.brake_regen_torque_delivery = 0.0;
      }
      if (initObj.hasOwnProperty('brake_regen_torque_delivery_valid')) {
        this.brake_regen_torque_delivery_valid = initObj.brake_regen_torque_delivery_valid
      }
      else {
        this.brake_regen_torque_delivery_valid = false;
      }
      if (initObj.hasOwnProperty('brake_frct_torque_delivery')) {
        this.brake_frct_torque_delivery = initObj.brake_frct_torque_delivery
      }
      else {
        this.brake_frct_torque_delivery = 0.0;
      }
      if (initObj.hasOwnProperty('brake_frct_torque_delivery_valid')) {
        this.brake_frct_torque_delivery_valid = initObj.brake_frct_torque_delivery_valid
      }
      else {
        this.brake_frct_torque_delivery_valid = false;
      }
      if (initObj.hasOwnProperty('master_pressure_delivery')) {
        this.master_pressure_delivery = initObj.master_pressure_delivery
      }
      else {
        this.master_pressure_delivery = 0.0;
      }
      if (initObj.hasOwnProperty('master_pressure_delivery_valid')) {
        this.master_pressure_delivery_valid = initObj.master_pressure_delivery_valid
      }
      else {
        this.master_pressure_delivery_valid = false;
      }
      if (initObj.hasOwnProperty('pedal_brake_torque')) {
        this.pedal_brake_torque = initObj.pedal_brake_torque
      }
      else {
        this.pedal_brake_torque = 0.0;
      }
      if (initObj.hasOwnProperty('pedal_brake_torque_valid')) {
        this.pedal_brake_torque_valid = initObj.pedal_brake_torque_valid
      }
      else {
        this.pedal_brake_torque_valid = false;
      }
      if (initObj.hasOwnProperty('pkg_fastswitch_enable')) {
        this.pkg_fastswitch_enable = initObj.pkg_fastswitch_enable
      }
      else {
        this.pkg_fastswitch_enable = false;
      }
      if (initObj.hasOwnProperty('vehicle_block')) {
        this.vehicle_block = initObj.vehicle_block
      }
      else {
        this.vehicle_block = false;
      }
      if (initObj.hasOwnProperty('esp_status')) {
        this.esp_status = initObj.esp_status
      }
      else {
        this.esp_status = new VehESPSwitch();
      }
      if (initObj.hasOwnProperty('vdc_active')) {
        this.vdc_active = initObj.vdc_active
      }
      else {
        this.vdc_active = false;
      }
      if (initObj.hasOwnProperty('vdc_fault')) {
        this.vdc_fault = initObj.vdc_fault
      }
      else {
        this.vdc_fault = false;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeInfoReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [accleration_on_wheel]
    bufferOffset = _serializer.float32(obj.accleration_on_wheel, buffer, bufferOffset);
    // Serialize message field [lateral_accleration_on_wheel]
    bufferOffset = _serializer.float32(obj.lateral_accleration_on_wheel, buffer, bufferOffset);
    // Serialize message field [stationary]
    bufferOffset = _serializer.bool(obj.stationary, buffer, bufferOffset);
    // Serialize message field [abs_active]
    bufferOffset = _serializer.bool(obj.abs_active, buffer, bufferOffset);
    // Serialize message field [abs_fault]
    bufferOffset = _serializer.bool(obj.abs_fault, buffer, bufferOffset);
    // Serialize message field [tcs_active]
    bufferOffset = _serializer.bool(obj.tcs_active, buffer, bufferOffset);
    // Serialize message field [tcs_fault]
    bufferOffset = _serializer.bool(obj.tcs_fault, buffer, bufferOffset);
    // Serialize message field [msr_active]
    bufferOffset = _serializer.bool(obj.msr_active, buffer, bufferOffset);
    // Serialize message field [msr_fault]
    bufferOffset = _serializer.bool(obj.msr_fault, buffer, bufferOffset);
    // Serialize message field [esp_active]
    bufferOffset = _serializer.bool(obj.esp_active, buffer, bufferOffset);
    // Serialize message field [esp_fault]
    bufferOffset = _serializer.bool(obj.esp_fault, buffer, bufferOffset);
    // Serialize message field [tsr_active]
    bufferOffset = _serializer.bool(obj.tsr_active, buffer, bufferOffset);
    // Serialize message field [tsr_fault]
    bufferOffset = _serializer.bool(obj.tsr_fault, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _serializer.bool(obj.pressure, buffer, bufferOffset);
    // Serialize message field [brake_torque_delivery]
    bufferOffset = _serializer.float32(obj.brake_torque_delivery, buffer, bufferOffset);
    // Serialize message field [brake_torque_delivery_valid]
    bufferOffset = _serializer.bool(obj.brake_torque_delivery_valid, buffer, bufferOffset);
    // Serialize message field [brake_regen_torque_delivery]
    bufferOffset = _serializer.float32(obj.brake_regen_torque_delivery, buffer, bufferOffset);
    // Serialize message field [brake_regen_torque_delivery_valid]
    bufferOffset = _serializer.bool(obj.brake_regen_torque_delivery_valid, buffer, bufferOffset);
    // Serialize message field [brake_frct_torque_delivery]
    bufferOffset = _serializer.float32(obj.brake_frct_torque_delivery, buffer, bufferOffset);
    // Serialize message field [brake_frct_torque_delivery_valid]
    bufferOffset = _serializer.bool(obj.brake_frct_torque_delivery_valid, buffer, bufferOffset);
    // Serialize message field [master_pressure_delivery]
    bufferOffset = _serializer.float32(obj.master_pressure_delivery, buffer, bufferOffset);
    // Serialize message field [master_pressure_delivery_valid]
    bufferOffset = _serializer.bool(obj.master_pressure_delivery_valid, buffer, bufferOffset);
    // Serialize message field [pedal_brake_torque]
    bufferOffset = _serializer.float32(obj.pedal_brake_torque, buffer, bufferOffset);
    // Serialize message field [pedal_brake_torque_valid]
    bufferOffset = _serializer.bool(obj.pedal_brake_torque_valid, buffer, bufferOffset);
    // Serialize message field [pkg_fastswitch_enable]
    bufferOffset = _serializer.bool(obj.pkg_fastswitch_enable, buffer, bufferOffset);
    // Serialize message field [vehicle_block]
    bufferOffset = _serializer.bool(obj.vehicle_block, buffer, bufferOffset);
    // Serialize message field [esp_status]
    bufferOffset = VehESPSwitch.serialize(obj.esp_status, buffer, bufferOffset);
    // Serialize message field [vdc_active]
    bufferOffset = _serializer.bool(obj.vdc_active, buffer, bufferOffset);
    // Serialize message field [vdc_fault]
    bufferOffset = _serializer.bool(obj.vdc_fault, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeInfoReportData
    let len;
    let data = new BrakeInfoReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [accleration_on_wheel]
    data.accleration_on_wheel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_accleration_on_wheel]
    data.lateral_accleration_on_wheel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stationary]
    data.stationary = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [abs_active]
    data.abs_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [abs_fault]
    data.abs_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tcs_active]
    data.tcs_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tcs_fault]
    data.tcs_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msr_active]
    data.msr_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msr_fault]
    data.msr_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [esp_active]
    data.esp_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [esp_fault]
    data.esp_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tsr_active]
    data.tsr_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tsr_fault]
    data.tsr_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_torque_delivery]
    data.brake_torque_delivery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_torque_delivery_valid]
    data.brake_torque_delivery_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_regen_torque_delivery]
    data.brake_regen_torque_delivery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_regen_torque_delivery_valid]
    data.brake_regen_torque_delivery_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_frct_torque_delivery]
    data.brake_frct_torque_delivery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_frct_torque_delivery_valid]
    data.brake_frct_torque_delivery_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [master_pressure_delivery]
    data.master_pressure_delivery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [master_pressure_delivery_valid]
    data.master_pressure_delivery_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pedal_brake_torque]
    data.pedal_brake_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pedal_brake_torque_valid]
    data.pedal_brake_torque_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pkg_fastswitch_enable]
    data.pkg_fastswitch_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_block]
    data.vehicle_block = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [esp_status]
    data.esp_status = VehESPSwitch.deserialize(buffer, bufferOffset);
    // Deserialize message field [vdc_active]
    data.vdc_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vdc_fault]
    data.vdc_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 59;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/BrakeInfoReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ca52bf3a77488f03bf8723c06136c01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    float32 accleration_on_wheel
    float32 lateral_accleration_on_wheel
    bool stationary
    bool abs_active
    bool abs_fault
    bool tcs_active
    bool tcs_fault
    bool msr_active
    bool msr_fault
    bool esp_active
    bool esp_fault
    bool tsr_active
    bool tsr_fault
    bool pressure
    float32 brake_torque_delivery
    bool brake_torque_delivery_valid
    float32 brake_regen_torque_delivery
    bool brake_regen_torque_delivery_valid
    float32 brake_frct_torque_delivery
    bool brake_frct_torque_delivery_valid
    float32 master_pressure_delivery
    bool master_pressure_delivery_valid
    float32 pedal_brake_torque
    bool pedal_brake_torque_valid
    bool pkg_fastswitch_enable
    bool vehicle_block
    endpoint_msgs/VehESPSwitch esp_status
    bool vdc_active
    bool vdc_fault
    uint8 reserved
    
    ================================================================================
    MSG: endpoint_msgs/VehESPSwitch
    uint8 NONE = 0
    uint8 ON = 1
    uint8 OFF = 2
    uint8 RESVERD = 3
    uint8 INVALID = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeInfoReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.accleration_on_wheel !== undefined) {
      resolved.accleration_on_wheel = msg.accleration_on_wheel;
    }
    else {
      resolved.accleration_on_wheel = 0.0
    }

    if (msg.lateral_accleration_on_wheel !== undefined) {
      resolved.lateral_accleration_on_wheel = msg.lateral_accleration_on_wheel;
    }
    else {
      resolved.lateral_accleration_on_wheel = 0.0
    }

    if (msg.stationary !== undefined) {
      resolved.stationary = msg.stationary;
    }
    else {
      resolved.stationary = false
    }

    if (msg.abs_active !== undefined) {
      resolved.abs_active = msg.abs_active;
    }
    else {
      resolved.abs_active = false
    }

    if (msg.abs_fault !== undefined) {
      resolved.abs_fault = msg.abs_fault;
    }
    else {
      resolved.abs_fault = false
    }

    if (msg.tcs_active !== undefined) {
      resolved.tcs_active = msg.tcs_active;
    }
    else {
      resolved.tcs_active = false
    }

    if (msg.tcs_fault !== undefined) {
      resolved.tcs_fault = msg.tcs_fault;
    }
    else {
      resolved.tcs_fault = false
    }

    if (msg.msr_active !== undefined) {
      resolved.msr_active = msg.msr_active;
    }
    else {
      resolved.msr_active = false
    }

    if (msg.msr_fault !== undefined) {
      resolved.msr_fault = msg.msr_fault;
    }
    else {
      resolved.msr_fault = false
    }

    if (msg.esp_active !== undefined) {
      resolved.esp_active = msg.esp_active;
    }
    else {
      resolved.esp_active = false
    }

    if (msg.esp_fault !== undefined) {
      resolved.esp_fault = msg.esp_fault;
    }
    else {
      resolved.esp_fault = false
    }

    if (msg.tsr_active !== undefined) {
      resolved.tsr_active = msg.tsr_active;
    }
    else {
      resolved.tsr_active = false
    }

    if (msg.tsr_fault !== undefined) {
      resolved.tsr_fault = msg.tsr_fault;
    }
    else {
      resolved.tsr_fault = false
    }

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = false
    }

    if (msg.brake_torque_delivery !== undefined) {
      resolved.brake_torque_delivery = msg.brake_torque_delivery;
    }
    else {
      resolved.brake_torque_delivery = 0.0
    }

    if (msg.brake_torque_delivery_valid !== undefined) {
      resolved.brake_torque_delivery_valid = msg.brake_torque_delivery_valid;
    }
    else {
      resolved.brake_torque_delivery_valid = false
    }

    if (msg.brake_regen_torque_delivery !== undefined) {
      resolved.brake_regen_torque_delivery = msg.brake_regen_torque_delivery;
    }
    else {
      resolved.brake_regen_torque_delivery = 0.0
    }

    if (msg.brake_regen_torque_delivery_valid !== undefined) {
      resolved.brake_regen_torque_delivery_valid = msg.brake_regen_torque_delivery_valid;
    }
    else {
      resolved.brake_regen_torque_delivery_valid = false
    }

    if (msg.brake_frct_torque_delivery !== undefined) {
      resolved.brake_frct_torque_delivery = msg.brake_frct_torque_delivery;
    }
    else {
      resolved.brake_frct_torque_delivery = 0.0
    }

    if (msg.brake_frct_torque_delivery_valid !== undefined) {
      resolved.brake_frct_torque_delivery_valid = msg.brake_frct_torque_delivery_valid;
    }
    else {
      resolved.brake_frct_torque_delivery_valid = false
    }

    if (msg.master_pressure_delivery !== undefined) {
      resolved.master_pressure_delivery = msg.master_pressure_delivery;
    }
    else {
      resolved.master_pressure_delivery = 0.0
    }

    if (msg.master_pressure_delivery_valid !== undefined) {
      resolved.master_pressure_delivery_valid = msg.master_pressure_delivery_valid;
    }
    else {
      resolved.master_pressure_delivery_valid = false
    }

    if (msg.pedal_brake_torque !== undefined) {
      resolved.pedal_brake_torque = msg.pedal_brake_torque;
    }
    else {
      resolved.pedal_brake_torque = 0.0
    }

    if (msg.pedal_brake_torque_valid !== undefined) {
      resolved.pedal_brake_torque_valid = msg.pedal_brake_torque_valid;
    }
    else {
      resolved.pedal_brake_torque_valid = false
    }

    if (msg.pkg_fastswitch_enable !== undefined) {
      resolved.pkg_fastswitch_enable = msg.pkg_fastswitch_enable;
    }
    else {
      resolved.pkg_fastswitch_enable = false
    }

    if (msg.vehicle_block !== undefined) {
      resolved.vehicle_block = msg.vehicle_block;
    }
    else {
      resolved.vehicle_block = false
    }

    if (msg.esp_status !== undefined) {
      resolved.esp_status = VehESPSwitch.Resolve(msg.esp_status)
    }
    else {
      resolved.esp_status = new VehESPSwitch()
    }

    if (msg.vdc_active !== undefined) {
      resolved.vdc_active = msg.vdc_active;
    }
    else {
      resolved.vdc_active = false
    }

    if (msg.vdc_fault !== undefined) {
      resolved.vdc_fault = msg.vdc_fault;
    }
    else {
      resolved.vdc_fault = false
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = BrakeInfoReportData;
