// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PlacCalibStatusEnum = require('./PlacCalibStatusEnum.js');
let PlacTotalErrorCodeEnum = require('./PlacTotalErrorCodeEnum.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlacCalibStatusReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.calib_status = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('calib_status')) {
        this.calib_status = initObj.calib_status
      }
      else {
        this.calib_status = new PlacCalibStatusEnum();
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new PlacTotalErrorCodeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlacCalibStatusReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [calib_status]
    bufferOffset = PlacCalibStatusEnum.serialize(obj.calib_status, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = PlacTotalErrorCodeEnum.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlacCalibStatusReport
    let len;
    let data = new PlacCalibStatusReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [calib_status]
    data.calib_status = PlacCalibStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = PlacTotalErrorCodeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/PlacCalibStatusReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0625ca16d445a3930c2b759a2df5d93d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    calib_interface_msgs/PlacCalibStatusEnum calib_status
    calib_interface_msgs/PlacTotalErrorCodeEnum error_code
    
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
    MSG: calib_interface_msgs/PlacCalibStatusEnum
    uint8 CALIB_STATUS_IDLE = 0
    uint8 CALIB_STATUS_RUNNING = 1
    uint8 CALIB_STATUS_SUCCESS = 2
    uint8 CALIB_STATUS_FAIL = 3
    uint8 value
    
    ================================================================================
    MSG: calib_interface_msgs/PlacTotalErrorCodeEnum
    uint8 CALIB_NORMAL = 0
    uint8 CALIB_INIT_ERROR = 1
    uint8 CALIB_FISHEYE_ERROR = 2
    uint8 CALIB_NORMAL_ERROR = 3
    uint8 CALIB_OPT_ERROR = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlacCalibStatusReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.calib_status !== undefined) {
      resolved.calib_status = PlacCalibStatusEnum.Resolve(msg.calib_status)
    }
    else {
      resolved.calib_status = new PlacCalibStatusEnum()
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = PlacTotalErrorCodeEnum.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new PlacTotalErrorCodeEnum()
    }

    return resolved;
    }
};

module.exports = PlacCalibStatusReport;
