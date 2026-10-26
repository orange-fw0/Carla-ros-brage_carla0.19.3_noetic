// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSStatusTypeEnum = require('./DMSStatusTypeEnum.js');
let DMSStateMachineTypeEnum = require('./DMSStateMachineTypeEnum.js');

//-----------------------------------------------------------

class DMSSDKStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.dms_status_type = null;
      this.state_machine_type = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('dms_status_type')) {
        this.dms_status_type = initObj.dms_status_type
      }
      else {
        this.dms_status_type = new DMSStatusTypeEnum();
      }
      if (initObj.hasOwnProperty('state_machine_type')) {
        this.state_machine_type = initObj.state_machine_type
      }
      else {
        this.state_machine_type = new DMSStateMachineTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSSDKStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [dms_status_type]
    bufferOffset = DMSStatusTypeEnum.serialize(obj.dms_status_type, buffer, bufferOffset);
    // Serialize message field [state_machine_type]
    bufferOffset = DMSStateMachineTypeEnum.serialize(obj.state_machine_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSSDKStatus
    let len;
    let data = new DMSSDKStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dms_status_type]
    data.dms_status_type = DMSStatusTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_machine_type]
    data.state_machine_type = DMSStateMachineTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSSDKStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6a155afbed13237c0c62973a59fc68b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SDK_STATUS_AVAILABLE = 1
    uint8 STATE_MACHINE_AVAILABLE = 2
    uint8 available
    dms_msgs/DMSStatusTypeEnum dms_status_type
    dms_msgs/DMSStateMachineTypeEnum state_machine_type
    
    ================================================================================
    MSG: dms_msgs/DMSStatusTypeEnum
    uint8 UNKNOWN = 0
    uint8 INITIALIZING = 1
    uint8 INTERNAL_FAULT = 2
    uint8 EXTERNAL_FAULT = 3
    uint8 INVALID_ENVIRONMENT = 4
    uint8 AUTHENTICATION_FAIL = 5
    uint8 INITIALIZ_OK = 6
    uint8 INITIALIZ_FAIL = 7
    uint8 RUNNING_OK = 8
    uint8 RUNNING_FAIL = 9
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSStateMachineTypeEnum
    uint8 OFF = 0
    uint8 STANDBY = 1
    uint8 ACTIVE = 2
    uint8 FAILURE = 3
    uint8 UNKNOWN = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSSDKStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.dms_status_type !== undefined) {
      resolved.dms_status_type = DMSStatusTypeEnum.Resolve(msg.dms_status_type)
    }
    else {
      resolved.dms_status_type = new DMSStatusTypeEnum()
    }

    if (msg.state_machine_type !== undefined) {
      resolved.state_machine_type = DMSStateMachineTypeEnum.Resolve(msg.state_machine_type)
    }
    else {
      resolved.state_machine_type = new DMSStateMachineTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
DMSSDKStatus.Constants = {
  SDK_STATUS_AVAILABLE: 1,
  STATE_MACHINE_AVAILABLE: 2,
}

module.exports = DMSSDKStatus;
