// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CacheBagDetailsData = require('./CacheBagDetailsData.js');

//-----------------------------------------------------------

class CacheBagDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.cache_bag_details_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('cache_bag_details_data')) {
        this.cache_bag_details_data = initObj.cache_bag_details_data
      }
      else {
        this.cache_bag_details_data = new CacheBagDetailsData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CacheBagDetails
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [cache_bag_details_data]
    bufferOffset = CacheBagDetailsData.serialize(obj.cache_bag_details_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CacheBagDetails
    let len;
    let data = new CacheBagDetails(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cache_bag_details_data]
    data.cache_bag_details_data = CacheBagDetailsData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CacheBagDetailsData.getMessageSize(object.cache_bag_details_data);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/CacheBagDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9780b9d0a0eb7520548474d4ff86975';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CACHE_BAG_DETAILS_DATA = 1
    uint8 available
    framework_status_msgs/CacheBagDetailsData cache_bag_details_data
    
    ================================================================================
    MSG: framework_status_msgs/CacheBagDetailsData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    uint64 timestamp_us
    string reserved_info
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CacheBagDetails(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.cache_bag_details_data !== undefined) {
      resolved.cache_bag_details_data = CacheBagDetailsData.Resolve(msg.cache_bag_details_data)
    }
    else {
      resolved.cache_bag_details_data = new CacheBagDetailsData()
    }

    return resolved;
    }
};

// Constants for message
CacheBagDetails.Constants = {
  CACHE_BAG_DETAILS_DATA: 1,
}

module.exports = CacheBagDetails;
