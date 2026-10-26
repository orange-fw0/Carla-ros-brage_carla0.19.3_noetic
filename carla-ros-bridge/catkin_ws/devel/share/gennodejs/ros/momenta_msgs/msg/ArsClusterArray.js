// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ArsCluster = require('./ArsCluster.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArsClusterArray {
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
    // Serializes a message object of type ArsClusterArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cluster_array]
    // Serialize the length for message field [cluster_array]
    bufferOffset = _serializer.uint32(obj.cluster_array.length, buffer, bufferOffset);
    obj.cluster_array.forEach((val) => {
      bufferOffset = ArsCluster.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArsClusterArray
    let len;
    let data = new ArsClusterArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_array]
    // Deserialize array length for message field [cluster_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster_array[i] = ArsCluster.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 64 * object.cluster_array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/ArsClusterArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58a0208e74952c88935dceb889251d7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/ArsCluster[] cluster_array
    
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
    MSG: momenta_msgs/ArsCluster
    uint16 detection_id
    geometry_msgs/Point position
    geometry_msgs/Vector3 velocity
    uint8 dyn_prop
    float32 rcs
    uint8 dislong_rms
    uint8 dislat_rms
    uint8 verllong_rms
    uint8 verllat_rms
    uint8 arellong_rms
    uint8 arellat_rms
    uint8 pdh0
    uint8 ambigstate
    uint8 invalidstate
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArsClusterArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cluster_array !== undefined) {
      resolved.cluster_array = new Array(msg.cluster_array.length);
      for (let i = 0; i < resolved.cluster_array.length; ++i) {
        resolved.cluster_array[i] = ArsCluster.Resolve(msg.cluster_array[i]);
      }
    }
    else {
      resolved.cluster_array = []
    }

    return resolved;
    }
};

module.exports = ArsClusterArray;
