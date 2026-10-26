// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WirelessChargerReportData = require('./WirelessChargerReportData.js');

//-----------------------------------------------------------

class WirelessChargerReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wireless_charger_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wireless_charger_report_data')) {
        this.wireless_charger_report_data = initObj.wireless_charger_report_data
      }
      else {
        this.wireless_charger_report_data = new WirelessChargerReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WirelessChargerReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wireless_charger_report_data]
    bufferOffset = WirelessChargerReportData.serialize(obj.wireless_charger_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WirelessChargerReport
    let len;
    let data = new WirelessChargerReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wireless_charger_report_data]
    data.wireless_charger_report_data = WirelessChargerReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WirelessChargerReportData.getMessageSize(object.wireless_charger_report_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WirelessChargerReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fbf0f4864be339be147d278f9483fd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WIRELESS_CHARGER_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WirelessChargerReportData wireless_charger_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WirelessChargerReportData
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
    const resolved = new WirelessChargerReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wireless_charger_report_data !== undefined) {
      resolved.wireless_charger_report_data = WirelessChargerReportData.Resolve(msg.wireless_charger_report_data)
    }
    else {
      resolved.wireless_charger_report_data = new WirelessChargerReportData()
    }

    return resolved;
    }
};

// Constants for message
WirelessChargerReport.Constants = {
  WIRELESS_CHARGER_REPORT_DATA: 1,
}

module.exports = WirelessChargerReport;
