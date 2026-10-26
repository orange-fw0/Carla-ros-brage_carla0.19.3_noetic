// Auto-generated. Do not edit!

// (in-package shadow_mode_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetailConfig = require('./DetailConfig.js');
let TriggerParam = require('./TriggerParam.js');
let TrustParam = require('./TrustParam.js');
let ActionType = require('./ActionType.js');

//-----------------------------------------------------------

class ShadowTriggerMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.collect_type = null;
      this.name = null;
      this.cool_down_limit = null;
      this.detail_config = null;
      this.sticky = null;
      this.uuid = null;
      this.response_status = null;
      this.response_reason = null;
      this.stamp = null;
      this.trigger_type = null;
      this.before = null;
      this.after = null;
      this.trust_param = null;
      this.topics = null;
      this.stamps = null;
      this.tags = null;
      this.start = null;
      this.disable_dis = null;
      this.action_type = null;
    }
    else {
      if (initObj.hasOwnProperty('collect_type')) {
        this.collect_type = initObj.collect_type
      }
      else {
        this.collect_type = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('cool_down_limit')) {
        this.cool_down_limit = initObj.cool_down_limit
      }
      else {
        this.cool_down_limit = 0.0;
      }
      if (initObj.hasOwnProperty('detail_config')) {
        this.detail_config = initObj.detail_config
      }
      else {
        this.detail_config = new DetailConfig();
      }
      if (initObj.hasOwnProperty('sticky')) {
        this.sticky = initObj.sticky
      }
      else {
        this.sticky = false;
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
      if (initObj.hasOwnProperty('response_status')) {
        this.response_status = initObj.response_status
      }
      else {
        this.response_status = '';
      }
      if (initObj.hasOwnProperty('response_reason')) {
        this.response_reason = initObj.response_reason
      }
      else {
        this.response_reason = '';
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = 0;
      }
      if (initObj.hasOwnProperty('trigger_type')) {
        this.trigger_type = initObj.trigger_type
      }
      else {
        this.trigger_type = new TriggerParam();
      }
      if (initObj.hasOwnProperty('before')) {
        this.before = initObj.before
      }
      else {
        this.before = 0;
      }
      if (initObj.hasOwnProperty('after')) {
        this.after = initObj.after
      }
      else {
        this.after = 0;
      }
      if (initObj.hasOwnProperty('trust_param')) {
        this.trust_param = initObj.trust_param
      }
      else {
        this.trust_param = new TrustParam();
      }
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = [];
      }
      if (initObj.hasOwnProperty('stamps')) {
        this.stamps = initObj.stamps
      }
      else {
        this.stamps = [];
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = false;
      }
      if (initObj.hasOwnProperty('disable_dis')) {
        this.disable_dis = initObj.disable_dis
      }
      else {
        this.disable_dis = false;
      }
      if (initObj.hasOwnProperty('action_type')) {
        this.action_type = initObj.action_type
      }
      else {
        this.action_type = new ActionType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShadowTriggerMessage
    // Serialize message field [collect_type]
    bufferOffset = _serializer.string(obj.collect_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [cool_down_limit]
    bufferOffset = _serializer.float32(obj.cool_down_limit, buffer, bufferOffset);
    // Serialize message field [detail_config]
    bufferOffset = DetailConfig.serialize(obj.detail_config, buffer, bufferOffset);
    // Serialize message field [sticky]
    bufferOffset = _serializer.bool(obj.sticky, buffer, bufferOffset);
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    // Serialize message field [response_status]
    bufferOffset = _serializer.string(obj.response_status, buffer, bufferOffset);
    // Serialize message field [response_reason]
    bufferOffset = _serializer.string(obj.response_reason, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.uint64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [trigger_type]
    bufferOffset = TriggerParam.serialize(obj.trigger_type, buffer, bufferOffset);
    // Serialize message field [before]
    bufferOffset = _serializer.uint8(obj.before, buffer, bufferOffset);
    // Serialize message field [after]
    bufferOffset = _serializer.uint8(obj.after, buffer, bufferOffset);
    // Serialize message field [trust_param]
    bufferOffset = TrustParam.serialize(obj.trust_param, buffer, bufferOffset);
    // Serialize message field [topics]
    bufferOffset = _arraySerializer.string(obj.topics, buffer, bufferOffset, null);
    // Serialize message field [stamps]
    bufferOffset = _arraySerializer.uint64(obj.stamps, buffer, bufferOffset, null);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    // Serialize message field [start]
    bufferOffset = _serializer.bool(obj.start, buffer, bufferOffset);
    // Serialize message field [disable_dis]
    bufferOffset = _serializer.bool(obj.disable_dis, buffer, bufferOffset);
    // Serialize message field [action_type]
    bufferOffset = ActionType.serialize(obj.action_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShadowTriggerMessage
    let len;
    let data = new ShadowTriggerMessage(null);
    // Deserialize message field [collect_type]
    data.collect_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cool_down_limit]
    data.cool_down_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [detail_config]
    data.detail_config = DetailConfig.deserialize(buffer, bufferOffset);
    // Deserialize message field [sticky]
    data.sticky = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [response_status]
    data.response_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [response_reason]
    data.response_reason = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [trigger_type]
    data.trigger_type = TriggerParam.deserialize(buffer, bufferOffset);
    // Deserialize message field [before]
    data.before = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [after]
    data.after = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [trust_param]
    data.trust_param = TrustParam.deserialize(buffer, bufferOffset);
    // Deserialize message field [topics]
    data.topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [stamps]
    data.stamps = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [start]
    data.start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_dis]
    data.disable_dis = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [action_type]
    data.action_type = ActionType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.collect_type);
    length += _getByteLength(object.name);
    length += DetailConfig.getMessageSize(object.detail_config);
    length += _getByteLength(object.uuid);
    length += _getByteLength(object.response_status);
    length += _getByteLength(object.response_reason);
    object.topics.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.stamps.length;
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'shadow_mode_msgs/ShadowTriggerMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30a5a3c8b246fad4e67dfeacf9aabd01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ShadowTriggerMessage(null);
    if (msg.collect_type !== undefined) {
      resolved.collect_type = msg.collect_type;
    }
    else {
      resolved.collect_type = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.cool_down_limit !== undefined) {
      resolved.cool_down_limit = msg.cool_down_limit;
    }
    else {
      resolved.cool_down_limit = 0.0
    }

    if (msg.detail_config !== undefined) {
      resolved.detail_config = DetailConfig.Resolve(msg.detail_config)
    }
    else {
      resolved.detail_config = new DetailConfig()
    }

    if (msg.sticky !== undefined) {
      resolved.sticky = msg.sticky;
    }
    else {
      resolved.sticky = false
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    if (msg.response_status !== undefined) {
      resolved.response_status = msg.response_status;
    }
    else {
      resolved.response_status = ''
    }

    if (msg.response_reason !== undefined) {
      resolved.response_reason = msg.response_reason;
    }
    else {
      resolved.response_reason = ''
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = 0
    }

    if (msg.trigger_type !== undefined) {
      resolved.trigger_type = TriggerParam.Resolve(msg.trigger_type)
    }
    else {
      resolved.trigger_type = new TriggerParam()
    }

    if (msg.before !== undefined) {
      resolved.before = msg.before;
    }
    else {
      resolved.before = 0
    }

    if (msg.after !== undefined) {
      resolved.after = msg.after;
    }
    else {
      resolved.after = 0
    }

    if (msg.trust_param !== undefined) {
      resolved.trust_param = TrustParam.Resolve(msg.trust_param)
    }
    else {
      resolved.trust_param = new TrustParam()
    }

    if (msg.topics !== undefined) {
      resolved.topics = msg.topics;
    }
    else {
      resolved.topics = []
    }

    if (msg.stamps !== undefined) {
      resolved.stamps = msg.stamps;
    }
    else {
      resolved.stamps = []
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = false
    }

    if (msg.disable_dis !== undefined) {
      resolved.disable_dis = msg.disable_dis;
    }
    else {
      resolved.disable_dis = false
    }

    if (msg.action_type !== undefined) {
      resolved.action_type = ActionType.Resolve(msg.action_type)
    }
    else {
      resolved.action_type = new ActionType()
    }

    return resolved;
    }
};

module.exports = ShadowTriggerMessage;
