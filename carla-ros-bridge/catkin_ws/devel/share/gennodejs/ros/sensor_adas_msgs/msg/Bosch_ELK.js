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

class Bosch_ELK {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ELK_status = null;
      this.ELK_OT_Fault_Status_Flag = null;
      this.ELK_Take_Over_Req = null;
      this.Motor_Torque_Upper_Limit = null;
      this.Motor_Torque_Lower_Limit = null;
      this.ADAS_AngleReq_State = null;
      this.ADAS_AngleReq = null;
      this.reserved1 = null;
      this.reserved2 = null;
    }
    else {
      if (initObj.hasOwnProperty('ELK_status')) {
        this.ELK_status = initObj.ELK_status
      }
      else {
        this.ELK_status = 0;
      }
      if (initObj.hasOwnProperty('ELK_OT_Fault_Status_Flag')) {
        this.ELK_OT_Fault_Status_Flag = initObj.ELK_OT_Fault_Status_Flag
      }
      else {
        this.ELK_OT_Fault_Status_Flag = 0;
      }
      if (initObj.hasOwnProperty('ELK_Take_Over_Req')) {
        this.ELK_Take_Over_Req = initObj.ELK_Take_Over_Req
      }
      else {
        this.ELK_Take_Over_Req = 0;
      }
      if (initObj.hasOwnProperty('Motor_Torque_Upper_Limit')) {
        this.Motor_Torque_Upper_Limit = initObj.Motor_Torque_Upper_Limit
      }
      else {
        this.Motor_Torque_Upper_Limit = 0.0;
      }
      if (initObj.hasOwnProperty('Motor_Torque_Lower_Limit')) {
        this.Motor_Torque_Lower_Limit = initObj.Motor_Torque_Lower_Limit
      }
      else {
        this.Motor_Torque_Lower_Limit = 0.0;
      }
      if (initObj.hasOwnProperty('ADAS_AngleReq_State')) {
        this.ADAS_AngleReq_State = initObj.ADAS_AngleReq_State
      }
      else {
        this.ADAS_AngleReq_State = 0;
      }
      if (initObj.hasOwnProperty('ADAS_AngleReq')) {
        this.ADAS_AngleReq = initObj.ADAS_AngleReq
      }
      else {
        this.ADAS_AngleReq = 0.0;
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
    // Serializes a message object of type Bosch_ELK
    // Serialize message field [ELK_status]
    bufferOffset = _serializer.uint32(obj.ELK_status, buffer, bufferOffset);
    // Serialize message field [ELK_OT_Fault_Status_Flag]
    bufferOffset = _serializer.uint32(obj.ELK_OT_Fault_Status_Flag, buffer, bufferOffset);
    // Serialize message field [ELK_Take_Over_Req]
    bufferOffset = _serializer.uint32(obj.ELK_Take_Over_Req, buffer, bufferOffset);
    // Serialize message field [Motor_Torque_Upper_Limit]
    bufferOffset = _serializer.float32(obj.Motor_Torque_Upper_Limit, buffer, bufferOffset);
    // Serialize message field [Motor_Torque_Lower_Limit]
    bufferOffset = _serializer.float32(obj.Motor_Torque_Lower_Limit, buffer, bufferOffset);
    // Serialize message field [ADAS_AngleReq_State]
    bufferOffset = _serializer.uint32(obj.ADAS_AngleReq_State, buffer, bufferOffset);
    // Serialize message field [ADAS_AngleReq]
    bufferOffset = _serializer.float32(obj.ADAS_AngleReq, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float64(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.float64(obj.reserved2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bosch_ELK
    let len;
    let data = new Bosch_ELK(null);
    // Deserialize message field [ELK_status]
    data.ELK_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ELK_OT_Fault_Status_Flag]
    data.ELK_OT_Fault_Status_Flag = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ELK_Take_Over_Req]
    data.ELK_Take_Over_Req = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Motor_Torque_Upper_Limit]
    data.Motor_Torque_Upper_Limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Motor_Torque_Lower_Limit]
    data.Motor_Torque_Lower_Limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ADAS_AngleReq_State]
    data.ADAS_AngleReq_State = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ADAS_AngleReq]
    data.ADAS_AngleReq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_adas_msgs/Bosch_ELK';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e3e678302cc69d0e8cfe096a6587e61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Bosch_ELK(null);
    if (msg.ELK_status !== undefined) {
      resolved.ELK_status = msg.ELK_status;
    }
    else {
      resolved.ELK_status = 0
    }

    if (msg.ELK_OT_Fault_Status_Flag !== undefined) {
      resolved.ELK_OT_Fault_Status_Flag = msg.ELK_OT_Fault_Status_Flag;
    }
    else {
      resolved.ELK_OT_Fault_Status_Flag = 0
    }

    if (msg.ELK_Take_Over_Req !== undefined) {
      resolved.ELK_Take_Over_Req = msg.ELK_Take_Over_Req;
    }
    else {
      resolved.ELK_Take_Over_Req = 0
    }

    if (msg.Motor_Torque_Upper_Limit !== undefined) {
      resolved.Motor_Torque_Upper_Limit = msg.Motor_Torque_Upper_Limit;
    }
    else {
      resolved.Motor_Torque_Upper_Limit = 0.0
    }

    if (msg.Motor_Torque_Lower_Limit !== undefined) {
      resolved.Motor_Torque_Lower_Limit = msg.Motor_Torque_Lower_Limit;
    }
    else {
      resolved.Motor_Torque_Lower_Limit = 0.0
    }

    if (msg.ADAS_AngleReq_State !== undefined) {
      resolved.ADAS_AngleReq_State = msg.ADAS_AngleReq_State;
    }
    else {
      resolved.ADAS_AngleReq_State = 0
    }

    if (msg.ADAS_AngleReq !== undefined) {
      resolved.ADAS_AngleReq = msg.ADAS_AngleReq;
    }
    else {
      resolved.ADAS_AngleReq = 0.0
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
Bosch_ELK.Constants = {
  ANGLE_REQUEST_STATE_INHIBITED: 0,
  ANGLE_REQUEST_STATE_READY: 1,
  ANGLE_REQUEST_STATE_ACTIVE: 2,
  FAULT_STATUS_FLAG_NO_ERROR: 0,
  FAULT_STATUS_FLAG_ERROR: 1,
  ELK_TAKE_OVER_REQ_INACTIVE: 0,
  ELK_TAKE_OVER_REQ_WARN_RE: 1,
  ELK_TAKE_OVER_REQ_WARN_SL: 2,
  ELK_STATUS_OFF: 0,
  ELK_STATUS_PASSIVE: 1,
  ELK_STATUS_ACTIVE: 2,
  ELK_STATUS_FAILURE: 3,
}

module.exports = Bosch_ELK;
