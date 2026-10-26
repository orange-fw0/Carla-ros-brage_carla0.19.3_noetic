// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DecisionReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_direction = null;
      this.light_status = null;
      this.light_pattern = null;
      this.dist2stopline = null;
      this.current_state = null;
      this.current_lane_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_direction')) {
        this.current_direction = initObj.current_direction
      }
      else {
        this.current_direction = 0;
      }
      if (initObj.hasOwnProperty('light_status')) {
        this.light_status = initObj.light_status
      }
      else {
        this.light_status = 0;
      }
      if (initObj.hasOwnProperty('light_pattern')) {
        this.light_pattern = initObj.light_pattern
      }
      else {
        this.light_pattern = 0;
      }
      if (initObj.hasOwnProperty('dist2stopline')) {
        this.dist2stopline = initObj.dist2stopline
      }
      else {
        this.dist2stopline = 0.0;
      }
      if (initObj.hasOwnProperty('current_state')) {
        this.current_state = initObj.current_state
      }
      else {
        this.current_state = '';
      }
      if (initObj.hasOwnProperty('current_lane_id')) {
        this.current_lane_id = initObj.current_lane_id
      }
      else {
        this.current_lane_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DecisionReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_direction]
    bufferOffset = _serializer.uint8(obj.current_direction, buffer, bufferOffset);
    // Serialize message field [light_status]
    bufferOffset = _serializer.uint8(obj.light_status, buffer, bufferOffset);
    // Serialize message field [light_pattern]
    bufferOffset = _serializer.uint8(obj.light_pattern, buffer, bufferOffset);
    // Serialize message field [dist2stopline]
    bufferOffset = _serializer.float64(obj.dist2stopline, buffer, bufferOffset);
    // Serialize message field [current_state]
    bufferOffset = _serializer.string(obj.current_state, buffer, bufferOffset);
    // Serialize message field [current_lane_id]
    bufferOffset = _serializer.string(obj.current_lane_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DecisionReport
    let len;
    let data = new DecisionReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_direction]
    data.current_direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [light_status]
    data.light_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [light_pattern]
    data.light_pattern = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dist2stopline]
    data.dist2stopline = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_state]
    data.current_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_lane_id]
    data.current_lane_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.current_state);
    length += _getByteLength(object.current_lane_id);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/DecisionReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4dd61aa0e0369ed7fe9d2ee06fc542c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint8 current_direction
    uint8 light_status
    uint8 light_pattern
    float64 dist2stopline
    string current_state
    string current_lane_id
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DecisionReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_direction !== undefined) {
      resolved.current_direction = msg.current_direction;
    }
    else {
      resolved.current_direction = 0
    }

    if (msg.light_status !== undefined) {
      resolved.light_status = msg.light_status;
    }
    else {
      resolved.light_status = 0
    }

    if (msg.light_pattern !== undefined) {
      resolved.light_pattern = msg.light_pattern;
    }
    else {
      resolved.light_pattern = 0
    }

    if (msg.dist2stopline !== undefined) {
      resolved.dist2stopline = msg.dist2stopline;
    }
    else {
      resolved.dist2stopline = 0.0
    }

    if (msg.current_state !== undefined) {
      resolved.current_state = msg.current_state;
    }
    else {
      resolved.current_state = ''
    }

    if (msg.current_lane_id !== undefined) {
      resolved.current_lane_id = msg.current_lane_id;
    }
    else {
      resolved.current_lane_id = ''
    }

    return resolved;
    }
};

module.exports = DecisionReport;
