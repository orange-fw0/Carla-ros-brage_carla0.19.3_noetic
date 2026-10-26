// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FusionPolygon = require('./FusionPolygon.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FusionPolygonArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object_array')) {
        this.object_array = initObj.object_array
      }
      else {
        this.object_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FusionPolygonArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object_array]
    // Serialize the length for message field [object_array]
    bufferOffset = _serializer.uint32(obj.object_array.length, buffer, bufferOffset);
    obj.object_array.forEach((val) => {
      bufferOffset = FusionPolygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FusionPolygonArray
    let len;
    let data = new FusionPolygonArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_array]
    // Deserialize array length for message field [object_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object_array[i] = FusionPolygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.object_array.forEach((val) => {
      length += FusionPolygon.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/FusionPolygonArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55c98a959c00351c4723f43fa3c146be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    momenta_msgs/FusionPolygon[] object_array
    
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
    MSG: momenta_msgs/FusionPolygon
    uint64 track_id
    uint32 type
    float32 const_vel_prob
    float32 const_acc_prob
    float32 still_prob
    float32 coord_turn_prob
    geometry_msgs/Point position
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 accelaration
    float32 theta
    float32 theta_sigma
    float32 omega
    float32 omega_sigma
    float32 d_omega
    float32 d_omega_sigma
    geometry_msgs/Vector3 sigma_position
    geometry_msgs/Vector3 sigma_velocity
    geometry_msgs/Point relative_position
    geometry_msgs/Vector3 relative_velocity
    geometry_msgs/Vector3 relative_accelaration
    float32 relative_theta
    float32 length
    float32 width
    float32 height
    geometry_msgs/Point[] polygon_bottom
    geometry_msgs/Point[] polygon_top
    
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
    const resolved = new FusionPolygonArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.object_array !== undefined) {
      resolved.object_array = new Array(msg.object_array.length);
      for (let i = 0; i < resolved.object_array.length; ++i) {
        resolved.object_array[i] = FusionPolygon.Resolve(msg.object_array[i]);
      }
    }
    else {
      resolved.object_array = []
    }

    return resolved;
    }
};

module.exports = FusionPolygonArray;
