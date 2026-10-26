// Auto-generated. Do not edit!

// (in-package sensor_adas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Bosch_ELK = require('./Bosch_ELK.js');

//-----------------------------------------------------------

class ELKResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.bosch_elk = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('bosch_elk')) {
        this.bosch_elk = initObj.bosch_elk
      }
      else {
        this.bosch_elk = new Bosch_ELK();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ELKResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [bosch_elk]
    bufferOffset = Bosch_ELK.serialize(obj.bosch_elk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ELKResult
    let len;
    let data = new ELKResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bosch_elk]
    data.bosch_elk = Bosch_ELK.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_adas_msgs/ELKResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a990389f43a98288cd054b20f59f468';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BOSCH_ELK_DATA_TYPE = 1
    uint8 available
    sensor_adas_msgs/Bosch_ELK bosch_elk
    
    ================================================================================
    MSG: sensor_adas_msgs/Bosch_ELK
    uint8 ANGLE_REQUEST_STATE_INHIBITED = 0
    uint8 ANGLE_REQUEST_STATE_READY = 1
    uint8 ANGLE_REQUEST_STATE_ACTIVE = 2
    uint8 FAULT_STATUS_FLAG_NO_ERROR = 0
    uint8 FAULT_STATUS_FLAG_ERROR = 1
    uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0
    uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1
    uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2
    uint8 ELK_STATUS_OFF = 0
    uint8 ELK_STATUS_PASSIVE = 1
    uint8 ELK_STATUS_ACTIVE = 2
    uint8 ELK_STATUS_FAILURE = 3
    uint32 ELK_status
    uint32 ELK_OT_Fault_Status_Flag
    uint32 ELK_Take_Over_Req
    float32 Motor_Torque_Upper_Limit
    float32 Motor_Torque_Lower_Limit
    uint32 ADAS_AngleReq_State
    float32 ADAS_AngleReq
    float64 reserved1
    float64 reserved2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ELKResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.bosch_elk !== undefined) {
      resolved.bosch_elk = Bosch_ELK.Resolve(msg.bosch_elk)
    }
    else {
      resolved.bosch_elk = new Bosch_ELK()
    }

    return resolved;
    }
};

// Constants for message
ELKResult.Constants = {
  BOSCH_ELK_DATA_TYPE: 1,
}

module.exports = ELKResult;
