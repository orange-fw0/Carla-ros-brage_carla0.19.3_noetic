// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SrrCluster = require('./SrrCluster.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SrrClusterArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cluster_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cluster_array')) {
        this.cluster_array = initObj.cluster_array
      }
      else {
        this.cluster_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SrrClusterArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cluster_array]
    // Serialize the length for message field [cluster_array]
    bufferOffset = _serializer.uint32(obj.cluster_array.length, buffer, bufferOffset);
    obj.cluster_array.forEach((val) => {
      bufferOffset = SrrCluster.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SrrClusterArray
    let len;
    let data = new SrrClusterArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_array]
    // Deserialize array length for message field [cluster_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster_array[i] = SrrCluster.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 19 * object.cluster_array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/SrrClusterArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6377e8197ae0222a5e3216e336c703aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/SrrCluster[] cluster_array
    
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
    MSG: momenta_msgs/SrrCluster
    uint16 detection_id
    float32 range
    float32 azimuth
    float32 vrel
    uint8 dyn_prop
    float32 rcs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SrrClusterArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cluster_array !== undefined) {
      resolved.cluster_array = new Array(msg.cluster_array.length);
      for (let i = 0; i < resolved.cluster_array.length; ++i) {
        resolved.cluster_array[i] = SrrCluster.Resolve(msg.cluster_array[i]);
      }
    }
    else {
      resolved.cluster_array = []
    }

    return resolved;
    }
};

module.exports = SrrClusterArray;
