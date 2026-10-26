// Auto-generated. Do not edit!

// (in-package hdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocalMapData = require('./LocalMapData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LocalMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.LocalMap_data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('LocalMap_data')) {
        this.LocalMap_data = initObj.LocalMap_data
      }
      else {
        this.LocalMap_data = new LocalMapData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalMap
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [LocalMap_data]
    bufferOffset = LocalMapData.serialize(obj.LocalMap_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalMap
    let len;
    let data = new LocalMap(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [LocalMap_data]
    data.LocalMap_data = LocalMapData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += LocalMapData.getMessageSize(object.LocalMap_data);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdmap_msgs/LocalMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e8ebd9a9d88b6add0f69bb000ededd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    hdmap_msgs/LocalMapData LocalMap_data
    
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
    MSG: hdmap_msgs/LocalMapData
    uint8 MDM = 1
    uint8 ANDM = 2
    uint8 MAP_MATCH_INFO = 4
    uint8 OTHER = 8
    uint8 ESR = 16
    uint8 available
    hdmap_msgs/LocalMapLayer mdm
    hdmap_msgs/LocalMapLayer andm
    hdmap_msgs/LocalMapLayer map_match_info
    hdmap_msgs/LocalMapLayer other
    hdmap_msgs/LocalMapLayer esr
    
    ================================================================================
    MSG: hdmap_msgs/LocalMapLayer
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalMap(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.LocalMap_data !== undefined) {
      resolved.LocalMap_data = LocalMapData.Resolve(msg.LocalMap_data)
    }
    else {
      resolved.LocalMap_data = new LocalMapData()
    }

    return resolved;
    }
};

module.exports = LocalMap;
