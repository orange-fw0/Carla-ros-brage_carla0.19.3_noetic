// Auto-generated. Do not edit!

// (in-package mla_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLALocalizationMeta = require('./MLALocalizationMeta.js');
let MLAPosition = require('./MLAPosition.js');
let MLAVelocity = require('./MLAVelocity.js');
let MLAAngularVelocity = require('./MLAAngularVelocity.js');
let MLAOrientation = require('./MLAOrientation.js');
let MLAAcceleration = require('./MLAAcceleration.js');
let MLAPositionStd = require('./MLAPositionStd.js');
let MLAVelocityStd = require('./MLAVelocityStd.js');
let MLAAngularVelocityStd = require('./MLAAngularVelocityStd.js');
let MLAOrientationStd = require('./MLAOrientationStd.js');
let MLAAccelerationStd = require('./MLAAccelerationStd.js');
let MLAStatus = require('./MLAStatus.js');
let MLATransform = require('./MLATransform.js');
let MLAPoseDetail = require('./MLAPoseDetail.js');
let MLARoadLaneIdInfo = require('./MLARoadLaneIdInfo.js');
let MLALinkOffsetInfo = require('./MLALinkOffsetInfo.js');
let MLAReserved = require('./MLAReserved.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MLALocalization {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.position = null;
      this.velocity = null;
      this.angular_velocity = null;
      this.orientation = null;
      this.acceleration = null;
      this.position_std = null;
      this.velocity_std = null;
      this.angular_velocity_std = null;
      this.orientation_std = null;
      this.acceleration_std = null;
      this.status = null;
      this.status_ddld = null;
      this.transform = null;
      this.pose_detail = null;
      this.road_lane_id_info = null;
      this.link_offset_infos = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new MLALocalizationMeta();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new MLAPosition();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new MLAVelocity();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new MLAAngularVelocity();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new MLAOrientation();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new MLAAcceleration();
      }
      if (initObj.hasOwnProperty('position_std')) {
        this.position_std = initObj.position_std
      }
      else {
        this.position_std = new MLAPositionStd();
      }
      if (initObj.hasOwnProperty('velocity_std')) {
        this.velocity_std = initObj.velocity_std
      }
      else {
        this.velocity_std = new MLAVelocityStd();
      }
      if (initObj.hasOwnProperty('angular_velocity_std')) {
        this.angular_velocity_std = initObj.angular_velocity_std
      }
      else {
        this.angular_velocity_std = new MLAAngularVelocityStd();
      }
      if (initObj.hasOwnProperty('orientation_std')) {
        this.orientation_std = initObj.orientation_std
      }
      else {
        this.orientation_std = new MLAOrientationStd();
      }
      if (initObj.hasOwnProperty('acceleration_std')) {
        this.acceleration_std = initObj.acceleration_std
      }
      else {
        this.acceleration_std = new MLAAccelerationStd();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new MLAStatus();
      }
      if (initObj.hasOwnProperty('status_ddld')) {
        this.status_ddld = initObj.status_ddld
      }
      else {
        this.status_ddld = new MLAStatus();
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new MLATransform();
      }
      if (initObj.hasOwnProperty('pose_detail')) {
        this.pose_detail = initObj.pose_detail
      }
      else {
        this.pose_detail = new MLAPoseDetail();
      }
      if (initObj.hasOwnProperty('road_lane_id_info')) {
        this.road_lane_id_info = initObj.road_lane_id_info
      }
      else {
        this.road_lane_id_info = new MLARoadLaneIdInfo();
      }
      if (initObj.hasOwnProperty('link_offset_infos')) {
        this.link_offset_infos = initObj.link_offset_infos
      }
      else {
        this.link_offset_infos = [];
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = new MLAReserved();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLALocalization
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = MLALocalizationMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = MLAPosition.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = MLAVelocity.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = MLAAngularVelocity.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = MLAOrientation.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = MLAAcceleration.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [position_std]
    bufferOffset = MLAPositionStd.serialize(obj.position_std, buffer, bufferOffset);
    // Serialize message field [velocity_std]
    bufferOffset = MLAVelocityStd.serialize(obj.velocity_std, buffer, bufferOffset);
    // Serialize message field [angular_velocity_std]
    bufferOffset = MLAAngularVelocityStd.serialize(obj.angular_velocity_std, buffer, bufferOffset);
    // Serialize message field [orientation_std]
    bufferOffset = MLAOrientationStd.serialize(obj.orientation_std, buffer, bufferOffset);
    // Serialize message field [acceleration_std]
    bufferOffset = MLAAccelerationStd.serialize(obj.acceleration_std, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = MLAStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [status_ddld]
    bufferOffset = MLAStatus.serialize(obj.status_ddld, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = MLATransform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [pose_detail]
    bufferOffset = MLAPoseDetail.serialize(obj.pose_detail, buffer, bufferOffset);
    // Serialize message field [road_lane_id_info]
    bufferOffset = MLARoadLaneIdInfo.serialize(obj.road_lane_id_info, buffer, bufferOffset);
    // Serialize message field [link_offset_infos]
    // Serialize the length for message field [link_offset_infos]
    bufferOffset = _serializer.uint32(obj.link_offset_infos.length, buffer, bufferOffset);
    obj.link_offset_infos.forEach((val) => {
      bufferOffset = MLALinkOffsetInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved]
    bufferOffset = MLAReserved.serialize(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLALocalization
    let len;
    let data = new MLALocalization(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = MLALocalizationMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = MLAPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = MLAVelocity.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = MLAAngularVelocity.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = MLAOrientation.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = MLAAcceleration.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_std]
    data.position_std = MLAPositionStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_std]
    data.velocity_std = MLAVelocityStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_std]
    data.angular_velocity_std = MLAAngularVelocityStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_std]
    data.orientation_std = MLAOrientationStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_std]
    data.acceleration_std = MLAAccelerationStd.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = MLAStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [status_ddld]
    data.status_ddld = MLAStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = MLATransform.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_detail]
    data.pose_detail = MLAPoseDetail.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_lane_id_info]
    data.road_lane_id_info = MLARoadLaneIdInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [link_offset_infos]
    // Deserialize array length for message field [link_offset_infos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.link_offset_infos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.link_offset_infos[i] = MLALinkOffsetInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved]
    data.reserved = MLAReserved.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.link_offset_infos.forEach((val) => {
      length += MLALinkOffsetInfo.getMessageSize(val);
    });
    length += MLAReserved.getMessageSize(object.reserved);
    return length + 841;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mla_localization_msgs/MLALocalization';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60a9dfde75cc9220fd3b9a4368c09f9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    mla_localization_msgs/MLALocalizationMeta meta
    mla_localization_msgs/MLAPosition position
    mla_localization_msgs/MLAVelocity velocity
    mla_localization_msgs/MLAAngularVelocity angular_velocity
    mla_localization_msgs/MLAOrientation orientation
    mla_localization_msgs/MLAAcceleration acceleration
    mla_localization_msgs/MLAPositionStd position_std
    mla_localization_msgs/MLAVelocityStd velocity_std
    mla_localization_msgs/MLAAngularVelocityStd angular_velocity_std
    mla_localization_msgs/MLAOrientationStd orientation_std
    mla_localization_msgs/MLAAccelerationStd acceleration_std
    mla_localization_msgs/MLAStatus status
    mla_localization_msgs/MLAStatus status_ddld
    mla_localization_msgs/MLATransform transform
    mla_localization_msgs/MLAPoseDetail pose_detail
    mla_localization_msgs/MLARoadLaneIdInfo road_lane_id_info
    mla_localization_msgs/MLALinkOffsetInfo[] link_offset_infos
    mla_localization_msgs/MLAReserved reserved
    
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
    MSG: mla_localization_msgs/MLALocalizationMeta
    uint8 MLA_PARKING = 1
    uint8 MLA_PILOT = 2
    uint64 timestamp_us
    uint64 seq
    uint8 type
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosition
    uint8 MLA_POSITION_GLOBAL = 1
    uint8 MLA_POSITION_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAPosGlobal position_global
    mla_localization_msgs/MLAPosLocal position_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosGlobal
    float64 latitude
    float64 longitude
    float64 altitude
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosLocal
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelocity
    uint8 MLA_VEL_GLOBAL = 1
    uint8 MLA_VEL_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAVelGlobal velocity_global
    mla_localization_msgs/MLAVelLocal velocity_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelGlobal
    float64 ve
    float64 vn
    float64 vu
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelLocal
    float64 vx
    float64 vy
    float64 vz
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAngularVelocity
    uint8 MLA_ANGVEL_LOCAL = 1
    uint8 available
    mla_localization_msgs/MLAAngVelLocal angvelocity_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAngVelLocal
    float64 vx
    float64 vy
    float64 vz
    
    ================================================================================
    MSG: mla_localization_msgs/MLAOrientation
    uint8 MLA_EULER_GLOBAL = 1
    uint8 MLA_QUATERNION_GLOBAL = 2
    uint8 MLA_EULER_LOCAL = 4
    uint8 MLA_QUATERNION_LOCAL = 8
    uint8 available
    mla_localization_msgs/MLAEuler euler_global
    mla_localization_msgs/MLAQuaternion quaternion_global
    mla_localization_msgs/MLAEuler euler_local
    mla_localization_msgs/MLAQuaternion quaternion_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAEuler
    float64 roll
    float64 pitch
    float64 yaw
    
    ================================================================================
    MSG: mla_localization_msgs/MLAQuaternion
    float64 w
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAcceleration
    uint8 MLA_ACC_GLOBAL = 1
    uint8 MLA_ACC_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAAccGlobal acceleration_global
    mla_localization_msgs/MLAAccLocal acceleration_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccGlobal
    float64 ae
    float64 an
    float64 au
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccLocal
    float64 ax
    float64 ay
    float64 az
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPositionStd
    uint8 MLA_POS_STD_GLOBAL = 1
    uint8 MLA_POS_STD_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAPosStdGlobal pos_std_global
    mla_localization_msgs/MLAPosStdLocal pos_std_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosStdGlobal
    float64 std_pe
    float64 std_pn
    float64 std_pu
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosStdLocal
    float64 std_px
    float64 std_py
    float64 std_pz
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelocityStd
    uint8 MLA_VEL_STD_GLOBAL = 1
    uint8 MLA_VEL_STD_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAVelStdGlobal vel_std_global
    mla_localization_msgs/MLAVelStdLocal vel_std_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelStdGlobal
    float64 std_ve
    float64 std_vn
    float64 std_vu
    
    ================================================================================
    MSG: mla_localization_msgs/MLAVelStdLocal
    float64 std_vx
    float64 std_vy
    float64 std_vz
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAngularVelocityStd
    uint8 MLA_ANGVEL_STD_LOCAL = 1
    uint8 available
    mla_localization_msgs/MLAAngVelStdLocal angvel_std_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAngVelStdLocal
    float64 std_vx
    float64 std_vy
    float64 std_vz
    
    ================================================================================
    MSG: mla_localization_msgs/MLAOrientationStd
    uint8 MLA_ORI_STD_XYZ = 1
    uint8 available
    mla_localization_msgs/MLAOriStdXyz ori_std_xyz
    
    ================================================================================
    MSG: mla_localization_msgs/MLAOriStdXyz
    float64 std_faix
    float64 std_faiy
    float64 std_faiz
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccelerationStd
    uint8 MLA_ACC_STD_GLOBAL = 1
    uint8 MLA_ACC_STD_LOCAL = 2
    uint8 available
    mla_localization_msgs/MLAAccStdGlobal acc_std_global
    mla_localization_msgs/MLAAccStdLocal acc_std_local
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccStdGlobal
    float64 std_ae
    float64 std_an
    float64 std_au
    
    ================================================================================
    MSG: mla_localization_msgs/MLAAccStdLocal
    float64 std_ax
    float64 std_ay
    float64 std_az
    
    ================================================================================
    MSG: mla_localization_msgs/MLAStatus
    uint8 MLA_STATUS_INFO = 1
    uint8 available
    mla_localization_msgs/MLAStatusInfo status_info
    
    ================================================================================
    MSG: mla_localization_msgs/MLAStatusInfo
    uint8 quality
    uint64 common
    uint64 extended
    uint8 type
    
    ================================================================================
    MSG: mla_localization_msgs/MLATransform
    uint8 MLA_TRANSFORM_LLH_TO_BOOT = 1
    uint8 MLA_TRANSFORM_AVPMAP_TO_BOOT = 2
    uint8 MLA_TRANSFORM_EGOMOTION_TO_BOOT = 4
    uint8 available
    mla_localization_msgs/MLATransformInfo transform_llh_to_boot
    mla_localization_msgs/MLATransformInfo transform_avp_map_to_boot
    mla_localization_msgs/MLATransformInfo transform_ego_motion_to_boot
    
    ================================================================================
    MSG: mla_localization_msgs/MLATransformInfo
    mla_localization_msgs/MLAQuaternion transform_q
    mla_localization_msgs/MLAPosLocal transform_t
    mla_localization_msgs/MLAPosGlobal transform_center
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPoseDetail
    uint8 MLA_POSE_DETAIL_INFO = 1
    uint8 available
    mla_localization_msgs/MLAPoseDetailInfo pose_detail_info
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPoseDetailInfo
    uint8 MLA_ESTIMATION_UNKNOWN = 0
    uint8 MLA_ESTIMATION_PER_FRAME = 1
    uint8 MLA_ESTIMATION_WINDOW_OPT = 2
    uint8 MLA_ESTIMATION_DR = 3
    uint8 available
    bool is_keyframe
    bool has_scale
    uint8 pose_type
    
    ================================================================================
    MSG: mla_localization_msgs/MLARoadLaneIdInfo
    landmark_msgs/TrackId lane_id
    landmark_msgs/TrackId road_id
    uint32 offset
    uint16 road_class
    float64 floor_id
    uint16 status
    uint16 reserved
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: mla_localization_msgs/MLALinkOffsetInfo
    string source
    landmark_msgs/TrackId link_id
    uint32 offset
    uint16 status
    uint16 reserved
    
    ================================================================================
    MSG: mla_localization_msgs/MLAReserved
    uint8 MLA_RESERVED_DATA = 1
    uint8 available
    uint64[] reserved_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLALocalization(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = MLALocalizationMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new MLALocalizationMeta()
    }

    if (msg.position !== undefined) {
      resolved.position = MLAPosition.Resolve(msg.position)
    }
    else {
      resolved.position = new MLAPosition()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = MLAVelocity.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new MLAVelocity()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = MLAAngularVelocity.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new MLAAngularVelocity()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = MLAOrientation.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new MLAOrientation()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = MLAAcceleration.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new MLAAcceleration()
    }

    if (msg.position_std !== undefined) {
      resolved.position_std = MLAPositionStd.Resolve(msg.position_std)
    }
    else {
      resolved.position_std = new MLAPositionStd()
    }

    if (msg.velocity_std !== undefined) {
      resolved.velocity_std = MLAVelocityStd.Resolve(msg.velocity_std)
    }
    else {
      resolved.velocity_std = new MLAVelocityStd()
    }

    if (msg.angular_velocity_std !== undefined) {
      resolved.angular_velocity_std = MLAAngularVelocityStd.Resolve(msg.angular_velocity_std)
    }
    else {
      resolved.angular_velocity_std = new MLAAngularVelocityStd()
    }

    if (msg.orientation_std !== undefined) {
      resolved.orientation_std = MLAOrientationStd.Resolve(msg.orientation_std)
    }
    else {
      resolved.orientation_std = new MLAOrientationStd()
    }

    if (msg.acceleration_std !== undefined) {
      resolved.acceleration_std = MLAAccelerationStd.Resolve(msg.acceleration_std)
    }
    else {
      resolved.acceleration_std = new MLAAccelerationStd()
    }

    if (msg.status !== undefined) {
      resolved.status = MLAStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new MLAStatus()
    }

    if (msg.status_ddld !== undefined) {
      resolved.status_ddld = MLAStatus.Resolve(msg.status_ddld)
    }
    else {
      resolved.status_ddld = new MLAStatus()
    }

    if (msg.transform !== undefined) {
      resolved.transform = MLATransform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new MLATransform()
    }

    if (msg.pose_detail !== undefined) {
      resolved.pose_detail = MLAPoseDetail.Resolve(msg.pose_detail)
    }
    else {
      resolved.pose_detail = new MLAPoseDetail()
    }

    if (msg.road_lane_id_info !== undefined) {
      resolved.road_lane_id_info = MLARoadLaneIdInfo.Resolve(msg.road_lane_id_info)
    }
    else {
      resolved.road_lane_id_info = new MLARoadLaneIdInfo()
    }

    if (msg.link_offset_infos !== undefined) {
      resolved.link_offset_infos = new Array(msg.link_offset_infos.length);
      for (let i = 0; i < resolved.link_offset_infos.length; ++i) {
        resolved.link_offset_infos[i] = MLALinkOffsetInfo.Resolve(msg.link_offset_infos[i]);
      }
    }
    else {
      resolved.link_offset_infos = []
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = MLAReserved.Resolve(msg.reserved)
    }
    else {
      resolved.reserved = new MLAReserved()
    }

    return resolved;
    }
};

module.exports = MLALocalization;
