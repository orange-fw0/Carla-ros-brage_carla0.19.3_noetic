// Auto-generated. Do not edit!

// (in-package framework_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FleetDiskStatus = require('./FleetDiskStatus.js');
let ExportDetails = require('./ExportDetails.js');
let CacheBagDetails = require('./CacheBagDetails.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FleetStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fleet_disk_status = null;
      this.export_details = null;
      this.cache_bag_details = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fleet_disk_status')) {
        this.fleet_disk_status = initObj.fleet_disk_status
      }
      else {
        this.fleet_disk_status = new FleetDiskStatus();
      }
      if (initObj.hasOwnProperty('export_details')) {
        this.export_details = initObj.export_details
      }
      else {
        this.export_details = new ExportDetails();
      }
      if (initObj.hasOwnProperty('cache_bag_details')) {
        this.cache_bag_details = initObj.cache_bag_details
      }
      else {
        this.cache_bag_details = new CacheBagDetails();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FleetStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fleet_disk_status]
    bufferOffset = FleetDiskStatus.serialize(obj.fleet_disk_status, buffer, bufferOffset);
    // Serialize message field [export_details]
    bufferOffset = ExportDetails.serialize(obj.export_details, buffer, bufferOffset);
    // Serialize message field [cache_bag_details]
    bufferOffset = CacheBagDetails.serialize(obj.cache_bag_details, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FleetStatus
    let len;
    let data = new FleetStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fleet_disk_status]
    data.fleet_disk_status = FleetDiskStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [export_details]
    data.export_details = ExportDetails.deserialize(buffer, bufferOffset);
    // Deserialize message field [cache_bag_details]
    data.cache_bag_details = CacheBagDetails.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += FleetDiskStatus.getMessageSize(object.fleet_disk_status);
    length += ExportDetails.getMessageSize(object.export_details);
    length += CacheBagDetails.getMessageSize(object.cache_bag_details);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'framework_status_msgs/FleetStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d50c1407059df10a4dc1e78bb2a7438';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    framework_status_msgs/FleetDiskStatus fleet_disk_status
    framework_status_msgs/ExportDetails export_details
    framework_status_msgs/CacheBagDetails cache_bag_details
    
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
    MSG: framework_status_msgs/FleetDiskStatus
    uint8 FLEET_DISK_STATUS_DATA = 1
    uint8 available
    framework_status_msgs/FleetDiskStatusData fleet_disk_status_data
    
    ================================================================================
    MSG: framework_status_msgs/FleetDiskStatusData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    uint64 timestamp_us
    framework_status_msgs/SingleDiskStatus[] single_disk_list
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/SingleDiskStatus
    string sn
    string disk_type
    string status
    uint64 space_size
    uint64 space_used
    string driver
    string speed
    int64 availability
    string reserved_info
    
    ================================================================================
    MSG: framework_status_msgs/ExportDetails
    uint8 EXPORT_DETAILS_DATA = 1
    uint8 available
    framework_status_msgs/ExportDetailsData export_details_data
    
    ================================================================================
    MSG: framework_status_msgs/ExportDetailsData
    uint8 NORM = 0
    uint8 WARNING = 1
    uint8 ERROR = 2
    uint8 health_status
    uint64 timestamp_us
    string reserved_info
    string message
    
    ================================================================================
    MSG: framework_status_msgs/CacheBagDetails
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
    const resolved = new FleetStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fleet_disk_status !== undefined) {
      resolved.fleet_disk_status = FleetDiskStatus.Resolve(msg.fleet_disk_status)
    }
    else {
      resolved.fleet_disk_status = new FleetDiskStatus()
    }

    if (msg.export_details !== undefined) {
      resolved.export_details = ExportDetails.Resolve(msg.export_details)
    }
    else {
      resolved.export_details = new ExportDetails()
    }

    if (msg.cache_bag_details !== undefined) {
      resolved.cache_bag_details = CacheBagDetails.Resolve(msg.cache_bag_details)
    }
    else {
      resolved.cache_bag_details = new CacheBagDetails()
    }

    return resolved;
    }
};

module.exports = FleetStatus;
