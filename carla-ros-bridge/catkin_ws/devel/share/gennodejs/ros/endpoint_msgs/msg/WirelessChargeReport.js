// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StateReportMeta = require('./StateReportMeta.js');
let WirelessChargerReport = require('./WirelessChargerReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WirelessChargeReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.wireless_charger_report = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new StateReportMeta();
      }
      if (initObj.hasOwnProperty('wireless_charger_report')) {
        this.wireless_charger_report = initObj.wireless_charger_report
      }
      else {
        this.wireless_charger_report = new WirelessChargerReport();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WirelessChargeReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = StateReportMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [wireless_charger_report]
    bufferOffset = WirelessChargerReport.serialize(obj.wireless_charger_report, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WirelessChargeReport
    let len;
    let data = new WirelessChargeReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = StateReportMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [wireless_charger_report]
    data.wireless_charger_report = WirelessChargerReport.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += WirelessChargerReport.getMessageSize(object.wireless_charger_report);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WirelessChargeReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75487bab2d139a12659d9f3fa45cf258';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    endpoint_msgs/StateReportMeta meta
    endpoint_msgs/WirelessChargerReport wireless_charger_report
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: endpoint_msgs/StateReportMeta
    uint64 timestamp_us
    
    ================================================================================
    MSG: endpoint_msgs/WirelessChargerReport
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
    const resolved = new WirelessChargeReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = StateReportMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new StateReportMeta()
    }

    if (msg.wireless_charger_report !== undefined) {
      resolved.wireless_charger_report = WirelessChargerReport.Resolve(msg.wireless_charger_report)
    }
    else {
      resolved.wireless_charger_report = new WirelessChargerReport()
    }

    return resolved;
    }
};

module.exports = WirelessChargeReport;
