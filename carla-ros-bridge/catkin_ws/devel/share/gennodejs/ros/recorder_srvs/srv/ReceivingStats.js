// Auto-generated. Do not edit!

// (in-package recorder_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let recorder_msgs = _finder('recorder_msgs');

//-----------------------------------------------------------

class ReceivingStatsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latest = null;
    }
    else {
      if (initObj.hasOwnProperty('latest')) {
        this.latest = initObj.latest
      }
      else {
        this.latest = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReceivingStatsRequest
    // Serialize message field [latest]
    bufferOffset = _serializer.uint8(obj.latest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReceivingStatsRequest
    let len;
    let data = new ReceivingStatsRequest(null);
    // Deserialize message field [latest]
    data.latest = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/ReceivingStatsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26a0cfe8599481c8907a45326f0f319f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 latest
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReceivingStatsRequest(null);
    if (msg.latest !== undefined) {
      resolved.latest = msg.latest;
    }
    else {
      resolved.latest = 0
    }

    return resolved;
    }
};

class ReceivingStatsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.samples = null;
    }
    else {
      if (initObj.hasOwnProperty('samples')) {
        this.samples = initObj.samples
      }
      else {
        this.samples = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReceivingStatsResponse
    // Serialize message field [samples]
    // Serialize the length for message field [samples]
    bufferOffset = _serializer.uint32(obj.samples.length, buffer, bufferOffset);
    obj.samples.forEach((val) => {
      bufferOffset = recorder_msgs.msg.ReceivingSample.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReceivingStatsResponse
    let len;
    let data = new ReceivingStatsResponse(null);
    // Deserialize message field [samples]
    // Deserialize array length for message field [samples]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.samples = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.samples[i] = recorder_msgs.msg.ReceivingSample.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.samples.forEach((val) => {
      length += recorder_msgs.msg.ReceivingSample.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'recorder_srvs/ReceivingStatsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c5325b5db00c2d1a5c431cd51aff6f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    recorder_msgs/ReceivingSample[] samples
    
    
    ================================================================================
    MSG: recorder_msgs/ReceivingSample
    time stamp
    duration interval
    float64 data_rate
    string[] topics
    string[] data_types
    uint32[] msg_counts
    float32[] msg_rates
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReceivingStatsResponse(null);
    if (msg.samples !== undefined) {
      resolved.samples = new Array(msg.samples.length);
      for (let i = 0; i < resolved.samples.length; ++i) {
        resolved.samples[i] = recorder_msgs.msg.ReceivingSample.Resolve(msg.samples[i]);
      }
    }
    else {
      resolved.samples = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ReceivingStatsRequest,
  Response: ReceivingStatsResponse,
  md5sum() { return 'c0ccbe04b62819578e1282021bf46b5c'; },
  datatype() { return 'recorder_srvs/ReceivingStats'; }
};
