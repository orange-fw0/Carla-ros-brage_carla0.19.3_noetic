// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ParkingOutInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.type = null;
      this.corners = null;
      this.apoa_yaw = null;
      this.apoa_enu = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('corners')) {
        this.corners = initObj.corners
      }
      else {
        this.corners = [];
      }
      if (initObj.hasOwnProperty('apoa_yaw')) {
        this.apoa_yaw = initObj.apoa_yaw
      }
      else {
        this.apoa_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('apoa_enu')) {
        this.apoa_enu = initObj.apoa_enu
      }
      else {
        this.apoa_enu = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingOutInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [corners]
    // Serialize the length for message field [corners]
    bufferOffset = _serializer.uint32(obj.corners.length, buffer, bufferOffset);
    obj.corners.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [apoa_yaw]
    bufferOffset = _serializer.float64(obj.apoa_yaw, buffer, bufferOffset);
    // Serialize message field [apoa_enu]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.apoa_enu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingOutInfo
    let len;
    let data = new ParkingOutInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [corners]
    // Deserialize array length for message field [corners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.corners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corners[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [apoa_yaw]
    data.apoa_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [apoa_enu]
    data.apoa_enu = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.type);
    length += 24 * object.corners.length;
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/ParkingOutInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c2a99e8375b17e279eee0726e77a6ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint16 id
    string type
    geometry_msgs/Point[] corners
    float64 apoa_yaw
    geometry_msgs/Point apoa_enu
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new ParkingOutInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.corners !== undefined) {
      resolved.corners = new Array(msg.corners.length);
      for (let i = 0; i < resolved.corners.length; ++i) {
        resolved.corners[i] = geometry_msgs.msg.Point.Resolve(msg.corners[i]);
      }
    }
    else {
      resolved.corners = []
    }

    if (msg.apoa_yaw !== undefined) {
      resolved.apoa_yaw = msg.apoa_yaw;
    }
    else {
      resolved.apoa_yaw = 0.0
    }

    if (msg.apoa_enu !== undefined) {
      resolved.apoa_enu = geometry_msgs.msg.Point.Resolve(msg.apoa_enu)
    }
    else {
      resolved.apoa_enu = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = ParkingOutInfo;
