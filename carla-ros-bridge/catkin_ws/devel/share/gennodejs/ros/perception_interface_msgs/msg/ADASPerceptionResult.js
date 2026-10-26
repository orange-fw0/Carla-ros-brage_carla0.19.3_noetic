// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ADASPerceptionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ihc_highbeam_on = null;
      this.ihc_highbeam_score = null;
    }
    else {
      if (initObj.hasOwnProperty('ihc_highbeam_on')) {
        this.ihc_highbeam_on = initObj.ihc_highbeam_on
      }
      else {
        this.ihc_highbeam_on = 0;
      }
      if (initObj.hasOwnProperty('ihc_highbeam_score')) {
        this.ihc_highbeam_score = initObj.ihc_highbeam_score
      }
      else {
        this.ihc_highbeam_score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADASPerceptionResult
    // Serialize message field [ihc_highbeam_on]
    bufferOffset = _serializer.uint8(obj.ihc_highbeam_on, buffer, bufferOffset);
    // Serialize message field [ihc_highbeam_score]
    bufferOffset = _serializer.float64(obj.ihc_highbeam_score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADASPerceptionResult
    let len;
    let data = new ADASPerceptionResult(null);
    // Deserialize message field [ihc_highbeam_on]
    data.ihc_highbeam_on = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ihc_highbeam_score]
    data.ihc_highbeam_score = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/ADASPerceptionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ea7c411056d18089ffdfaee098216c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ihc_highbeam_on
    float64 ihc_highbeam_score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADASPerceptionResult(null);
    if (msg.ihc_highbeam_on !== undefined) {
      resolved.ihc_highbeam_on = msg.ihc_highbeam_on;
    }
    else {
      resolved.ihc_highbeam_on = 0
    }

    if (msg.ihc_highbeam_score !== undefined) {
      resolved.ihc_highbeam_score = msg.ihc_highbeam_score;
    }
    else {
      resolved.ihc_highbeam_score = 0.0
    }

    return resolved;
    }
};

module.exports = ADASPerceptionResult;
