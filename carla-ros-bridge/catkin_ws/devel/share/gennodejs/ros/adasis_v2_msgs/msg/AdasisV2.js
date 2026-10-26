// Auto-generated. Do not edit!

// (in-package adasis_v2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('./Position.js');
let Segment = require('./Segment.js');
let Stub = require('./Stub.js');
let ProfileShort = require('./ProfileShort.js');
let ProfileLong = require('./ProfileLong.js');
let MetaData = require('./MetaData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AdasisV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.position = null;
      this.segment = null;
      this.stub = null;
      this.profile_short = null;
      this.profile_long = null;
      this.meta_data = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Position();
      }
      if (initObj.hasOwnProperty('segment')) {
        this.segment = initObj.segment
      }
      else {
        this.segment = new Segment();
      }
      if (initObj.hasOwnProperty('stub')) {
        this.stub = initObj.stub
      }
      else {
        this.stub = new Stub();
      }
      if (initObj.hasOwnProperty('profile_short')) {
        this.profile_short = initObj.profile_short
      }
      else {
        this.profile_short = new ProfileShort();
      }
      if (initObj.hasOwnProperty('profile_long')) {
        this.profile_long = initObj.profile_long
      }
      else {
        this.profile_long = new ProfileLong();
      }
      if (initObj.hasOwnProperty('meta_data')) {
        this.meta_data = initObj.meta_data
      }
      else {
        this.meta_data = new MetaData();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdasisV2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Position.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [segment]
    bufferOffset = Segment.serialize(obj.segment, buffer, bufferOffset);
    // Serialize message field [stub]
    bufferOffset = Stub.serialize(obj.stub, buffer, bufferOffset);
    // Serialize message field [profile_short]
    bufferOffset = ProfileShort.serialize(obj.profile_short, buffer, bufferOffset);
    // Serialize message field [profile_long]
    bufferOffset = ProfileLong.serialize(obj.profile_long, buffer, bufferOffset);
    // Serialize message field [meta_data]
    bufferOffset = MetaData.serialize(obj.meta_data, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdasisV2
    let len;
    let data = new AdasisV2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [segment]
    data.segment = Segment.deserialize(buffer, bufferOffset);
    // Deserialize message field [stub]
    data.stub = Stub.deserialize(buffer, bufferOffset);
    // Deserialize message field [profile_short]
    data.profile_short = ProfileShort.deserialize(buffer, bufferOffset);
    // Deserialize message field [profile_long]
    data.profile_long = ProfileLong.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta_data]
    data.meta_data = MetaData.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.reserved);
    return length + 98;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/AdasisV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adfa24684ffc911539ff33c84b7ab4dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    adasis_v2_msgs/Position position
    adasis_v2_msgs/Segment segment
    adasis_v2_msgs/Stub stub
    adasis_v2_msgs/ProfileShort profile_short
    adasis_v2_msgs/ProfileLong profile_long
    adasis_v2_msgs/MetaData meta_data
    string reserved
    
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
    MSG: adasis_v2_msgs/Position
    uint8 cyclic_counter
    uint8 path_index
    uint16 offset
    uint8 position_index
    uint16 position_age
    uint8 position_probability
    uint16 speed
    uint8 relative_heading
    uint8 position_confidence
    uint8 current_lane
    uint8 reserved
    
    ================================================================================
    MSG: adasis_v2_msgs/Segment
    uint8 cyclic_counter
    uint8 is_retransmission
    uint8 path_index
    uint16 offset
    uint8 is_update
    uint8 functional_road_class
    uint8 form_of_way
    uint8 effective_speed_limit
    uint8 effective_speed_limit_type
    uint8 lanes_num_of_driving_dir
    uint8 lanes_num_of_opposite_dir
    uint8 tunnel
    uint8 bridge
    uint8 divided_road
    uint8 built_up_area
    uint8 complex_intersection
    uint8 relative_probability
    uint8 part_of_calculated_route
    uint8 reserved
    
    ================================================================================
    MSG: adasis_v2_msgs/Stub
    uint8 cyclic_counter
    uint8 is_retransmission
    uint8 path_index
    uint16 offset
    uint8 is_update
    uint8 sub_path_index
    uint8 turn_angle
    uint8 relative_probability
    uint8 functional_road_class
    uint8 form_of_way
    uint8 lanes_num_of_driving_dir
    uint8 lanes_num_of_opposite_dir
    uint8 complex_intersection
    uint8 right_of_way
    uint8 part_of_calculated_route
    uint8 is_last_stub_at_offset
    
    ================================================================================
    MSG: adasis_v2_msgs/ProfileShort
    uint8 cyclic_counter
    uint8 is_retransmission
    uint8 path_index
    uint16 offset
    uint8 is_update
    uint8 profile_type
    uint8 is_control_point
    uint16 value_0
    uint16 distance_1
    uint16 value_1
    uint8 accuracy
    
    ================================================================================
    MSG: adasis_v2_msgs/ProfileLong
    uint8 cyclic_counter
    uint8 is_retransmission
    uint8 path_index
    uint16 offset
    uint8 is_update
    uint8 profile_type
    uint8 is_control_point
    uint32 value
    
    ================================================================================
    MSG: adasis_v2_msgs/MetaData
    uint8 cyclic_counter
    uint16 country_code
    uint16 region_code
    uint8 driving_side
    uint8 speed_units
    uint8 major_protocol_ver
    uint8 minor_protocol_ver
    uint8 minor_protocol_sub_ver
    uint16 hardware_ver
    uint8 map_provider
    uint8 map_ver_year
    uint8 map_ver_year_quarter
    uint8 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdasisV2(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position !== undefined) {
      resolved.position = Position.Resolve(msg.position)
    }
    else {
      resolved.position = new Position()
    }

    if (msg.segment !== undefined) {
      resolved.segment = Segment.Resolve(msg.segment)
    }
    else {
      resolved.segment = new Segment()
    }

    if (msg.stub !== undefined) {
      resolved.stub = Stub.Resolve(msg.stub)
    }
    else {
      resolved.stub = new Stub()
    }

    if (msg.profile_short !== undefined) {
      resolved.profile_short = ProfileShort.Resolve(msg.profile_short)
    }
    else {
      resolved.profile_short = new ProfileShort()
    }

    if (msg.profile_long !== undefined) {
      resolved.profile_long = ProfileLong.Resolve(msg.profile_long)
    }
    else {
      resolved.profile_long = new ProfileLong()
    }

    if (msg.meta_data !== undefined) {
      resolved.meta_data = MetaData.Resolve(msg.meta_data)
    }
    else {
      resolved.meta_data = new MetaData()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = AdasisV2;
