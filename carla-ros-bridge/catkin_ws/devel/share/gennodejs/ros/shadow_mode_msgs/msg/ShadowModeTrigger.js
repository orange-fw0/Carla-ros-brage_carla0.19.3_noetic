// Auto-generated. Do not edit!

// (in-package shadow_mode_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ShadowModeTriggerEvent = require('./ShadowModeTriggerEvent.js');
let ShadowTriggerMessage = require('./ShadowTriggerMessage.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ShadowModeTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trigger_event = null;
      this.trigger_message = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trigger_event')) {
        this.trigger_event = initObj.trigger_event
      }
      else {
        this.trigger_event = new ShadowModeTriggerEvent();
      }
      if (initObj.hasOwnProperty('trigger_message')) {
        this.trigger_message = initObj.trigger_message
      }
      else {
        this.trigger_message = new ShadowTriggerMessage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShadowModeTrigger
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trigger_event]
    bufferOffset = ShadowModeTriggerEvent.serialize(obj.trigger_event, buffer, bufferOffset);
    // Serialize message field [trigger_message]
    bufferOffset = ShadowTriggerMessage.serialize(obj.trigger_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShadowModeTrigger
    let len;
    let data = new ShadowModeTrigger(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trigger_event]
    data.trigger_event = ShadowModeTriggerEvent.deserialize(buffer, bufferOffset);
    // Deserialize message field [trigger_message]
    data.trigger_message = ShadowTriggerMessage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ShadowModeTriggerEvent.getMessageSize(object.trigger_event);
    length += ShadowTriggerMessage.getMessageSize(object.trigger_message);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shadow_mode_msgs/ShadowModeTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39938e94b07861882982a2fd8d678563';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    shadow_mode_msgs/ShadowModeTriggerEvent trigger_event
    shadow_mode_msgs/ShadowTriggerMessage trigger_message
    
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
    MSG: shadow_mode_msgs/ShadowModeTriggerEvent
    bool trigger_state
    string[] tags
    float64 road_curvature
    
    ================================================================================
    MSG: shadow_mode_msgs/ShadowTriggerMessage
    string collect_type
    string name
    float32 cool_down_limit
    shadow_mode_msgs/DetailConfig detail_config
    bool sticky
    string uuid
    string response_status
    string response_reason
    uint64 stamp
    shadow_mode_msgs/TriggerParam trigger_type
    uint8 before
    uint8 after
    shadow_mode_msgs/TrustParam trust_param
    string[] topics
    uint64[] stamps
    string[] tags
    bool start
    bool disable_dis
    shadow_mode_msgs/ActionType action_type
    
    ================================================================================
    MSG: shadow_mode_msgs/DetailConfig
    string[] mlog_list
    string[] need_maf_groups
    
    ================================================================================
    MSG: shadow_mode_msgs/TriggerParam
    uint8 EVENT = 0
    uint8 SINGLE_FRAME = 1
    uint8 RECORDING = 2
    uint8 trigger_value
    
    ================================================================================
    MSG: shadow_mode_msgs/TrustParam
    uint8 NONE = 0
    uint8 BEFORE = 1
    uint8 AFTER = 2
    uint8 trust_value
    
    ================================================================================
    MSG: shadow_mode_msgs/ActionType
    uint8 DEFAULT = 0
    uint8 CFDI_ONLY_FOREVER_LOG = 1
    uint8 DFDI_ONLY_REPORT_EAP = 128
    uint8 action_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShadowModeTrigger(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trigger_event !== undefined) {
      resolved.trigger_event = ShadowModeTriggerEvent.Resolve(msg.trigger_event)
    }
    else {
      resolved.trigger_event = new ShadowModeTriggerEvent()
    }

    if (msg.trigger_message !== undefined) {
      resolved.trigger_message = ShadowTriggerMessage.Resolve(msg.trigger_message)
    }
    else {
      resolved.trigger_message = new ShadowTriggerMessage()
    }

    return resolved;
    }
};

module.exports = ShadowModeTrigger;
