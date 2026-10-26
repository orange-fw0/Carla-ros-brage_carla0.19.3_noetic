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

class ThrottleInfoReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.front_left_mot_rpm = null;
      this.front_left_mot_rpm_valid = null;
      this.front_right_mot_rpm = null;
      this.front_right_mot_rpm_valid = null;
      this.rear_left_mot_rpm = null;
      this.rear_left_mot_rpm_valid = null;
      this.rear_right_mot_rpm = null;
      this.rear_right_mot_rpm_valid = null;
      this.throttle_pedal_percent = null;
      this.throttle_pedal_rate = null;
      this.vehicle_speed_average = null;
      this.vehicle_speed_average_valid = null;
      this.vehicle_mileage = null;
      this.throttle_torque_delivery = null;
      this.throttle_torque_delivery_valid = null;
      this.pressure = null;
      this.input_shaft_speed = null;
      this.output_shaft_speed = null;
      this.curr_transmission_gear = null;
      this.curr_gear_ration = null;
      this.input_shaft_speed_valid = null;
      this.output_shaft_speed_valid = null;
      this.curr_transmission_gear_valid = null;
      this.curr_gear_ration_valid = null;
      this.reserved1 = null;
      this.reserved2 = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('front_left_mot_rpm')) {
        this.front_left_mot_rpm = initObj.front_left_mot_rpm
      }
      else {
        this.front_left_mot_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('front_left_mot_rpm_valid')) {
        this.front_left_mot_rpm_valid = initObj.front_left_mot_rpm_valid
      }
      else {
        this.front_left_mot_rpm_valid = false;
      }
      if (initObj.hasOwnProperty('front_right_mot_rpm')) {
        this.front_right_mot_rpm = initObj.front_right_mot_rpm
      }
      else {
        this.front_right_mot_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_mot_rpm_valid')) {
        this.front_right_mot_rpm_valid = initObj.front_right_mot_rpm_valid
      }
      else {
        this.front_right_mot_rpm_valid = false;
      }
      if (initObj.hasOwnProperty('rear_left_mot_rpm')) {
        this.rear_left_mot_rpm = initObj.rear_left_mot_rpm
      }
      else {
        this.rear_left_mot_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('rear_left_mot_rpm_valid')) {
        this.rear_left_mot_rpm_valid = initObj.rear_left_mot_rpm_valid
      }
      else {
        this.rear_left_mot_rpm_valid = false;
      }
      if (initObj.hasOwnProperty('rear_right_mot_rpm')) {
        this.rear_right_mot_rpm = initObj.rear_right_mot_rpm
      }
      else {
        this.rear_right_mot_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('rear_right_mot_rpm_valid')) {
        this.rear_right_mot_rpm_valid = initObj.rear_right_mot_rpm_valid
      }
      else {
        this.rear_right_mot_rpm_valid = false;
      }
      if (initObj.hasOwnProperty('throttle_pedal_percent')) {
        this.throttle_pedal_percent = initObj.throttle_pedal_percent
      }
      else {
        this.throttle_pedal_percent = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_pedal_rate')) {
        this.throttle_pedal_rate = initObj.throttle_pedal_rate
      }
      else {
        this.throttle_pedal_rate = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_speed_average')) {
        this.vehicle_speed_average = initObj.vehicle_speed_average
      }
      else {
        this.vehicle_speed_average = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_speed_average_valid')) {
        this.vehicle_speed_average_valid = initObj.vehicle_speed_average_valid
      }
      else {
        this.vehicle_speed_average_valid = false;
      }
      if (initObj.hasOwnProperty('vehicle_mileage')) {
        this.vehicle_mileage = initObj.vehicle_mileage
      }
      else {
        this.vehicle_mileage = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_torque_delivery')) {
        this.throttle_torque_delivery = initObj.throttle_torque_delivery
      }
      else {
        this.throttle_torque_delivery = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_torque_delivery_valid')) {
        this.throttle_torque_delivery_valid = initObj.throttle_torque_delivery_valid
      }
      else {
        this.throttle_torque_delivery_valid = false;
      }
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = false;
      }
      if (initObj.hasOwnProperty('input_shaft_speed')) {
        this.input_shaft_speed = initObj.input_shaft_speed
      }
      else {
        this.input_shaft_speed = 0.0;
      }
      if (initObj.hasOwnProperty('output_shaft_speed')) {
        this.output_shaft_speed = initObj.output_shaft_speed
      }
      else {
        this.output_shaft_speed = 0.0;
      }
      if (initObj.hasOwnProperty('curr_transmission_gear')) {
        this.curr_transmission_gear = initObj.curr_transmission_gear
      }
      else {
        this.curr_transmission_gear = 0;
      }
      if (initObj.hasOwnProperty('curr_gear_ration')) {
        this.curr_gear_ration = initObj.curr_gear_ration
      }
      else {
        this.curr_gear_ration = 0.0;
      }
      if (initObj.hasOwnProperty('input_shaft_speed_valid')) {
        this.input_shaft_speed_valid = initObj.input_shaft_speed_valid
      }
      else {
        this.input_shaft_speed_valid = false;
      }
      if (initObj.hasOwnProperty('output_shaft_speed_valid')) {
        this.output_shaft_speed_valid = initObj.output_shaft_speed_valid
      }
      else {
        this.output_shaft_speed_valid = false;
      }
      if (initObj.hasOwnProperty('curr_transmission_gear_valid')) {
        this.curr_transmission_gear_valid = initObj.curr_transmission_gear_valid
      }
      else {
        this.curr_transmission_gear_valid = false;
      }
      if (initObj.hasOwnProperty('curr_gear_ration_valid')) {
        this.curr_gear_ration_valid = initObj.curr_gear_ration_valid
      }
      else {
        this.curr_gear_ration_valid = false;
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
    // Serializes a message object of type ThrottleInfoReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [front_left_mot_rpm]
    bufferOffset = _serializer.float32(obj.front_left_mot_rpm, buffer, bufferOffset);
    // Serialize message field [front_left_mot_rpm_valid]
    bufferOffset = _serializer.bool(obj.front_left_mot_rpm_valid, buffer, bufferOffset);
    // Serialize message field [front_right_mot_rpm]
    bufferOffset = _serializer.float32(obj.front_right_mot_rpm, buffer, bufferOffset);
    // Serialize message field [front_right_mot_rpm_valid]
    bufferOffset = _serializer.bool(obj.front_right_mot_rpm_valid, buffer, bufferOffset);
    // Serialize message field [rear_left_mot_rpm]
    bufferOffset = _serializer.float32(obj.rear_left_mot_rpm, buffer, bufferOffset);
    // Serialize message field [rear_left_mot_rpm_valid]
    bufferOffset = _serializer.bool(obj.rear_left_mot_rpm_valid, buffer, bufferOffset);
    // Serialize message field [rear_right_mot_rpm]
    bufferOffset = _serializer.float32(obj.rear_right_mot_rpm, buffer, bufferOffset);
    // Serialize message field [rear_right_mot_rpm_valid]
    bufferOffset = _serializer.bool(obj.rear_right_mot_rpm_valid, buffer, bufferOffset);
    // Serialize message field [throttle_pedal_percent]
    bufferOffset = _serializer.float32(obj.throttle_pedal_percent, buffer, bufferOffset);
    // Serialize message field [throttle_pedal_rate]
    bufferOffset = _serializer.float32(obj.throttle_pedal_rate, buffer, bufferOffset);
    // Serialize message field [vehicle_speed_average]
    bufferOffset = _serializer.float32(obj.vehicle_speed_average, buffer, bufferOffset);
    // Serialize message field [vehicle_speed_average_valid]
    bufferOffset = _serializer.bool(obj.vehicle_speed_average_valid, buffer, bufferOffset);
    // Serialize message field [vehicle_mileage]
    bufferOffset = _serializer.float32(obj.vehicle_mileage, buffer, bufferOffset);
    // Serialize message field [throttle_torque_delivery]
    bufferOffset = _serializer.float32(obj.throttle_torque_delivery, buffer, bufferOffset);
    // Serialize message field [throttle_torque_delivery_valid]
    bufferOffset = _serializer.bool(obj.throttle_torque_delivery_valid, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _serializer.bool(obj.pressure, buffer, bufferOffset);
    // Serialize message field [input_shaft_speed]
    bufferOffset = _serializer.float32(obj.input_shaft_speed, buffer, bufferOffset);
    // Serialize message field [output_shaft_speed]
    bufferOffset = _serializer.float32(obj.output_shaft_speed, buffer, bufferOffset);
    // Serialize message field [curr_transmission_gear]
    bufferOffset = _serializer.int8(obj.curr_transmission_gear, buffer, bufferOffset);
    // Serialize message field [curr_gear_ration]
    bufferOffset = _serializer.float32(obj.curr_gear_ration, buffer, bufferOffset);
    // Serialize message field [input_shaft_speed_valid]
    bufferOffset = _serializer.bool(obj.input_shaft_speed_valid, buffer, bufferOffset);
    // Serialize message field [output_shaft_speed_valid]
    bufferOffset = _serializer.bool(obj.output_shaft_speed_valid, buffer, bufferOffset);
    // Serialize message field [curr_transmission_gear_valid]
    bufferOffset = _serializer.bool(obj.curr_transmission_gear_valid, buffer, bufferOffset);
    // Serialize message field [curr_gear_ration_valid]
    bufferOffset = _serializer.bool(obj.curr_gear_ration_valid, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float32(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.float32(obj.reserved2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleInfoReportData
    let len;
    let data = new ThrottleInfoReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [front_left_mot_rpm]
    data.front_left_mot_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_left_mot_rpm_valid]
    data.front_left_mot_rpm_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_right_mot_rpm]
    data.front_right_mot_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_right_mot_rpm_valid]
    data.front_right_mot_rpm_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_left_mot_rpm]
    data.rear_left_mot_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_left_mot_rpm_valid]
    data.rear_left_mot_rpm_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rear_right_mot_rpm]
    data.rear_right_mot_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_right_mot_rpm_valid]
    data.rear_right_mot_rpm_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [throttle_pedal_percent]
    data.throttle_pedal_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_pedal_rate]
    data.throttle_pedal_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed_average]
    data.vehicle_speed_average = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed_average_valid]
    data.vehicle_speed_average_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_mileage]
    data.vehicle_mileage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_torque_delivery]
    data.throttle_torque_delivery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_torque_delivery_valid]
    data.throttle_torque_delivery_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [input_shaft_speed]
    data.input_shaft_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [output_shaft_speed]
    data.output_shaft_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curr_transmission_gear]
    data.curr_transmission_gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [curr_gear_ration]
    data.curr_gear_ration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [input_shaft_speed_valid]
    data.input_shaft_speed_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [output_shaft_speed_valid]
    data.output_shaft_speed_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [curr_transmission_gear_valid]
    data.curr_transmission_gear_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [curr_gear_ration_valid]
    data.curr_gear_ration_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ThrottleInfoReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '585fc9da6858b598f65e3db3cfbda26e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    float32 front_left_mot_rpm
    bool front_left_mot_rpm_valid
    float32 front_right_mot_rpm
    bool front_right_mot_rpm_valid
    float32 rear_left_mot_rpm
    bool rear_left_mot_rpm_valid
    float32 rear_right_mot_rpm
    bool rear_right_mot_rpm_valid
    float32 throttle_pedal_percent
    float32 throttle_pedal_rate
    float32 vehicle_speed_average
    bool vehicle_speed_average_valid
    float32 vehicle_mileage
    float32 throttle_torque_delivery
    bool throttle_torque_delivery_valid
    bool pressure
    float32 input_shaft_speed
    float32 output_shaft_speed
    int8 curr_transmission_gear
    float32 curr_gear_ration
    bool input_shaft_speed_valid
    bool output_shaft_speed_valid
    bool curr_transmission_gear_valid
    bool curr_gear_ration_valid
    float32 reserved1
    float32 reserved2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrottleInfoReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.front_left_mot_rpm !== undefined) {
      resolved.front_left_mot_rpm = msg.front_left_mot_rpm;
    }
    else {
      resolved.front_left_mot_rpm = 0.0
    }

    if (msg.front_left_mot_rpm_valid !== undefined) {
      resolved.front_left_mot_rpm_valid = msg.front_left_mot_rpm_valid;
    }
    else {
      resolved.front_left_mot_rpm_valid = false
    }

    if (msg.front_right_mot_rpm !== undefined) {
      resolved.front_right_mot_rpm = msg.front_right_mot_rpm;
    }
    else {
      resolved.front_right_mot_rpm = 0.0
    }

    if (msg.front_right_mot_rpm_valid !== undefined) {
      resolved.front_right_mot_rpm_valid = msg.front_right_mot_rpm_valid;
    }
    else {
      resolved.front_right_mot_rpm_valid = false
    }

    if (msg.rear_left_mot_rpm !== undefined) {
      resolved.rear_left_mot_rpm = msg.rear_left_mot_rpm;
    }
    else {
      resolved.rear_left_mot_rpm = 0.0
    }

    if (msg.rear_left_mot_rpm_valid !== undefined) {
      resolved.rear_left_mot_rpm_valid = msg.rear_left_mot_rpm_valid;
    }
    else {
      resolved.rear_left_mot_rpm_valid = false
    }

    if (msg.rear_right_mot_rpm !== undefined) {
      resolved.rear_right_mot_rpm = msg.rear_right_mot_rpm;
    }
    else {
      resolved.rear_right_mot_rpm = 0.0
    }

    if (msg.rear_right_mot_rpm_valid !== undefined) {
      resolved.rear_right_mot_rpm_valid = msg.rear_right_mot_rpm_valid;
    }
    else {
      resolved.rear_right_mot_rpm_valid = false
    }

    if (msg.throttle_pedal_percent !== undefined) {
      resolved.throttle_pedal_percent = msg.throttle_pedal_percent;
    }
    else {
      resolved.throttle_pedal_percent = 0.0
    }

    if (msg.throttle_pedal_rate !== undefined) {
      resolved.throttle_pedal_rate = msg.throttle_pedal_rate;
    }
    else {
      resolved.throttle_pedal_rate = 0.0
    }

    if (msg.vehicle_speed_average !== undefined) {
      resolved.vehicle_speed_average = msg.vehicle_speed_average;
    }
    else {
      resolved.vehicle_speed_average = 0.0
    }

    if (msg.vehicle_speed_average_valid !== undefined) {
      resolved.vehicle_speed_average_valid = msg.vehicle_speed_average_valid;
    }
    else {
      resolved.vehicle_speed_average_valid = false
    }

    if (msg.vehicle_mileage !== undefined) {
      resolved.vehicle_mileage = msg.vehicle_mileage;
    }
    else {
      resolved.vehicle_mileage = 0.0
    }

    if (msg.throttle_torque_delivery !== undefined) {
      resolved.throttle_torque_delivery = msg.throttle_torque_delivery;
    }
    else {
      resolved.throttle_torque_delivery = 0.0
    }

    if (msg.throttle_torque_delivery_valid !== undefined) {
      resolved.throttle_torque_delivery_valid = msg.throttle_torque_delivery_valid;
    }
    else {
      resolved.throttle_torque_delivery_valid = false
    }

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = false
    }

    if (msg.input_shaft_speed !== undefined) {
      resolved.input_shaft_speed = msg.input_shaft_speed;
    }
    else {
      resolved.input_shaft_speed = 0.0
    }

    if (msg.output_shaft_speed !== undefined) {
      resolved.output_shaft_speed = msg.output_shaft_speed;
    }
    else {
      resolved.output_shaft_speed = 0.0
    }

    if (msg.curr_transmission_gear !== undefined) {
      resolved.curr_transmission_gear = msg.curr_transmission_gear;
    }
    else {
      resolved.curr_transmission_gear = 0
    }

    if (msg.curr_gear_ration !== undefined) {
      resolved.curr_gear_ration = msg.curr_gear_ration;
    }
    else {
      resolved.curr_gear_ration = 0.0
    }

    if (msg.input_shaft_speed_valid !== undefined) {
      resolved.input_shaft_speed_valid = msg.input_shaft_speed_valid;
    }
    else {
      resolved.input_shaft_speed_valid = false
    }

    if (msg.output_shaft_speed_valid !== undefined) {
      resolved.output_shaft_speed_valid = msg.output_shaft_speed_valid;
    }
    else {
      resolved.output_shaft_speed_valid = false
    }

    if (msg.curr_transmission_gear_valid !== undefined) {
      resolved.curr_transmission_gear_valid = msg.curr_transmission_gear_valid;
    }
    else {
      resolved.curr_transmission_gear_valid = false
    }

    if (msg.curr_gear_ration_valid !== undefined) {
      resolved.curr_gear_ration_valid = msg.curr_gear_ration_valid;
    }
    else {
      resolved.curr_gear_ration_valid = false
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

module.exports = ThrottleInfoReportData;
