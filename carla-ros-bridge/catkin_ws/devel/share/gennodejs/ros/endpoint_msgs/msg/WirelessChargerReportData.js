// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WrlsChrgWifiSts = require('./WrlsChrgWifiSts.js');
let WrlsChrgDetResult = require('./WrlsChrgDetResult.js');

//-----------------------------------------------------------

class WirelessChargerReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.link_state = null;
      this.detected_state = null;
      this.is_offset_x_vaild = null;
      this.is_offset_y_vaild = null;
      this.is_yaw_valid = null;
      this.offset_x = null;
      this.offset_y = null;
      this.yaw = null;
      this.rltv_pos_of_charge_board_x = null;
      this.rltv_pos_of_charge_board_y = null;
      this.charge_board_size_x = null;
      this.charge_board_size_y = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('link_state')) {
        this.link_state = initObj.link_state
      }
      else {
        this.link_state = new WrlsChrgWifiSts();
      }
      if (initObj.hasOwnProperty('detected_state')) {
        this.detected_state = initObj.detected_state
      }
      else {
        this.detected_state = new WrlsChrgDetResult();
      }
      if (initObj.hasOwnProperty('is_offset_x_vaild')) {
        this.is_offset_x_vaild = initObj.is_offset_x_vaild
      }
      else {
        this.is_offset_x_vaild = false;
      }
      if (initObj.hasOwnProperty('is_offset_y_vaild')) {
        this.is_offset_y_vaild = initObj.is_offset_y_vaild
      }
      else {
        this.is_offset_y_vaild = false;
      }
      if (initObj.hasOwnProperty('is_yaw_valid')) {
        this.is_yaw_valid = initObj.is_yaw_valid
      }
      else {
        this.is_yaw_valid = false;
      }
      if (initObj.hasOwnProperty('offset_x')) {
        this.offset_x = initObj.offset_x
      }
      else {
        this.offset_x = 0;
      }
      if (initObj.hasOwnProperty('offset_y')) {
        this.offset_y = initObj.offset_y
      }
      else {
        this.offset_y = 0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('rltv_pos_of_charge_board_x')) {
        this.rltv_pos_of_charge_board_x = initObj.rltv_pos_of_charge_board_x
      }
      else {
        this.rltv_pos_of_charge_board_x = 0;
      }
      if (initObj.hasOwnProperty('rltv_pos_of_charge_board_y')) {
        this.rltv_pos_of_charge_board_y = initObj.rltv_pos_of_charge_board_y
      }
      else {
        this.rltv_pos_of_charge_board_y = 0;
      }
      if (initObj.hasOwnProperty('charge_board_size_x')) {
        this.charge_board_size_x = initObj.charge_board_size_x
      }
      else {
        this.charge_board_size_x = 0;
      }
      if (initObj.hasOwnProperty('charge_board_size_y')) {
        this.charge_board_size_y = initObj.charge_board_size_y
      }
      else {
        this.charge_board_size_y = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WirelessChargerReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [link_state]
    bufferOffset = WrlsChrgWifiSts.serialize(obj.link_state, buffer, bufferOffset);
    // Serialize message field [detected_state]
    bufferOffset = WrlsChrgDetResult.serialize(obj.detected_state, buffer, bufferOffset);
    // Serialize message field [is_offset_x_vaild]
    bufferOffset = _serializer.bool(obj.is_offset_x_vaild, buffer, bufferOffset);
    // Serialize message field [is_offset_y_vaild]
    bufferOffset = _serializer.bool(obj.is_offset_y_vaild, buffer, bufferOffset);
    // Serialize message field [is_yaw_valid]
    bufferOffset = _serializer.bool(obj.is_yaw_valid, buffer, bufferOffset);
    // Serialize message field [offset_x]
    bufferOffset = _serializer.int32(obj.offset_x, buffer, bufferOffset);
    // Serialize message field [offset_y]
    bufferOffset = _serializer.int32(obj.offset_y, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [rltv_pos_of_charge_board_x]
    bufferOffset = _serializer.int32(obj.rltv_pos_of_charge_board_x, buffer, bufferOffset);
    // Serialize message field [rltv_pos_of_charge_board_y]
    bufferOffset = _serializer.int32(obj.rltv_pos_of_charge_board_y, buffer, bufferOffset);
    // Serialize message field [charge_board_size_x]
    bufferOffset = _serializer.int32(obj.charge_board_size_x, buffer, bufferOffset);
    // Serialize message field [charge_board_size_y]
    bufferOffset = _serializer.int32(obj.charge_board_size_y, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WirelessChargerReportData
    let len;
    let data = new WirelessChargerReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [link_state]
    data.link_state = WrlsChrgWifiSts.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_state]
    data.detected_state = WrlsChrgDetResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_offset_x_vaild]
    data.is_offset_x_vaild = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_offset_y_vaild]
    data.is_offset_y_vaild = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_yaw_valid]
    data.is_yaw_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offset_x]
    data.offset_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [offset_y]
    data.offset_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rltv_pos_of_charge_board_x]
    data.rltv_pos_of_charge_board_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rltv_pos_of_charge_board_y]
    data.rltv_pos_of_charge_board_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charge_board_size_x]
    data.charge_board_size_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charge_board_size_y]
    data.charge_board_size_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WirelessChargerReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8dbebe4cb8ec743a217e9c33001c217';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    endpoint_msgs/WrlsChrgWifiSts link_state
    endpoint_msgs/WrlsChrgDetResult detected_state
    bool is_offset_x_vaild
    bool is_offset_y_vaild
    bool is_yaw_valid
    int32 offset_x
    int32 offset_y
    float32 yaw
    int32 rltv_pos_of_charge_board_x
    int32 rltv_pos_of_charge_board_y
    int32 charge_board_size_x
    int32 charge_board_size_y
    string reserved
    
    ================================================================================
    MSG: endpoint_msgs/WrlsChrgWifiSts
    uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0
    uint8 WIRELESS_CHARGER_WIFI_ON = 1
    uint8 WIRELESS_CHARGER_WIFI_OFF = 2
    uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3
    uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/WrlsChrgDetResult
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
    const resolved = new WirelessChargerReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.link_state !== undefined) {
      resolved.link_state = WrlsChrgWifiSts.Resolve(msg.link_state)
    }
    else {
      resolved.link_state = new WrlsChrgWifiSts()
    }

    if (msg.detected_state !== undefined) {
      resolved.detected_state = WrlsChrgDetResult.Resolve(msg.detected_state)
    }
    else {
      resolved.detected_state = new WrlsChrgDetResult()
    }

    if (msg.is_offset_x_vaild !== undefined) {
      resolved.is_offset_x_vaild = msg.is_offset_x_vaild;
    }
    else {
      resolved.is_offset_x_vaild = false
    }

    if (msg.is_offset_y_vaild !== undefined) {
      resolved.is_offset_y_vaild = msg.is_offset_y_vaild;
    }
    else {
      resolved.is_offset_y_vaild = false
    }

    if (msg.is_yaw_valid !== undefined) {
      resolved.is_yaw_valid = msg.is_yaw_valid;
    }
    else {
      resolved.is_yaw_valid = false
    }

    if (msg.offset_x !== undefined) {
      resolved.offset_x = msg.offset_x;
    }
    else {
      resolved.offset_x = 0
    }

    if (msg.offset_y !== undefined) {
      resolved.offset_y = msg.offset_y;
    }
    else {
      resolved.offset_y = 0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.rltv_pos_of_charge_board_x !== undefined) {
      resolved.rltv_pos_of_charge_board_x = msg.rltv_pos_of_charge_board_x;
    }
    else {
      resolved.rltv_pos_of_charge_board_x = 0
    }

    if (msg.rltv_pos_of_charge_board_y !== undefined) {
      resolved.rltv_pos_of_charge_board_y = msg.rltv_pos_of_charge_board_y;
    }
    else {
      resolved.rltv_pos_of_charge_board_y = 0
    }

    if (msg.charge_board_size_x !== undefined) {
      resolved.charge_board_size_x = msg.charge_board_size_x;
    }
    else {
      resolved.charge_board_size_x = 0
    }

    if (msg.charge_board_size_y !== undefined) {
      resolved.charge_board_size_y = msg.charge_board_size_y;
    }
    else {
      resolved.charge_board_size_y = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = WirelessChargerReportData;
