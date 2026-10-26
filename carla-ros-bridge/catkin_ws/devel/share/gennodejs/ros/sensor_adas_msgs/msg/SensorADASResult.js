// Auto-generated. Do not edit!

// (in-package sensor_adas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AdasMeta = require('./AdasMeta.js');
let TSRResult = require('./TSRResult.js');
let ELKResult = require('./ELKResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SensorADASResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.tsr = null;
      this.elk = null;
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
        this.meta = new AdasMeta();
      }
      if (initObj.hasOwnProperty('tsr')) {
        this.tsr = initObj.tsr
      }
      else {
        this.tsr = new TSRResult();
      }
      if (initObj.hasOwnProperty('elk')) {
        this.elk = initObj.elk
      }
      else {
        this.elk = new ELKResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorADASResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = AdasMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [tsr]
    bufferOffset = TSRResult.serialize(obj.tsr, buffer, bufferOffset);
    // Serialize message field [elk]
    bufferOffset = ELKResult.serialize(obj.elk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorADASResult
    let len;
    let data = new SensorADASResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = AdasMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [tsr]
    data.tsr = TSRResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [elk]
    data.elk = ELKResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 106;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_adas_msgs/SensorADASResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eeed6a209c20260d9024144bb40d0bd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    sensor_adas_msgs/AdasMeta meta
    sensor_adas_msgs/TSRResult tsr
    sensor_adas_msgs/ELKResult elk
    
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
    MSG: sensor_adas_msgs/AdasMeta
    uint64 sensor_timestamp_us
    uint64 pipeline_start_timestamp_us
    uint64 pipeline_finish_timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: sensor_adas_msgs/TSRResult
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
    
    ================================================================================
    MSG: sensor_adas_msgs/ELKResult
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
    const resolved = new SensorADASResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = AdasMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new AdasMeta()
    }

    if (msg.tsr !== undefined) {
      resolved.tsr = TSRResult.Resolve(msg.tsr)
    }
    else {
      resolved.tsr = new TSRResult()
    }

    if (msg.elk !== undefined) {
      resolved.elk = ELKResult.Resolve(msg.elk)
    }
    else {
      resolved.elk = new ELKResult()
    }

    return resolved;
    }
};

module.exports = SensorADASResult;
