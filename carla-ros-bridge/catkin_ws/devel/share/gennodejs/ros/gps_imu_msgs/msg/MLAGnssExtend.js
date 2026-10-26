// Auto-generated. Do not edit!

// (in-package gps_imu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MLAGnssExtend {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sv_num = null;
      this.sv_id = null;
      this.sv_elv = null;
      this.sv_az = null;
      this.sv_cno = null;
      this.std_pe = null;
      this.std_pn = null;
      this.std_pu = null;
      this.std_ve = null;
      this.std_vn = null;
      this.std_vu = null;
      this.dual_antenna_azimuth = null;
      this.pdop = null;
      this.vdop = null;
      this.fix_type = null;
      this.alt_msl = null;
    }
    else {
      if (initObj.hasOwnProperty('sv_num')) {
        this.sv_num = initObj.sv_num
      }
      else {
        this.sv_num = 0;
      }
      if (initObj.hasOwnProperty('sv_id')) {
        this.sv_id = initObj.sv_id
      }
      else {
        this.sv_id = [];
      }
      if (initObj.hasOwnProperty('sv_elv')) {
        this.sv_elv = initObj.sv_elv
      }
      else {
        this.sv_elv = [];
      }
      if (initObj.hasOwnProperty('sv_az')) {
        this.sv_az = initObj.sv_az
      }
      else {
        this.sv_az = [];
      }
      if (initObj.hasOwnProperty('sv_cno')) {
        this.sv_cno = initObj.sv_cno
      }
      else {
        this.sv_cno = [];
      }
      if (initObj.hasOwnProperty('std_pe')) {
        this.std_pe = initObj.std_pe
      }
      else {
        this.std_pe = 0.0;
      }
      if (initObj.hasOwnProperty('std_pn')) {
        this.std_pn = initObj.std_pn
      }
      else {
        this.std_pn = 0.0;
      }
      if (initObj.hasOwnProperty('std_pu')) {
        this.std_pu = initObj.std_pu
      }
      else {
        this.std_pu = 0.0;
      }
      if (initObj.hasOwnProperty('std_ve')) {
        this.std_ve = initObj.std_ve
      }
      else {
        this.std_ve = 0.0;
      }
      if (initObj.hasOwnProperty('std_vn')) {
        this.std_vn = initObj.std_vn
      }
      else {
        this.std_vn = 0.0;
      }
      if (initObj.hasOwnProperty('std_vu')) {
        this.std_vu = initObj.std_vu
      }
      else {
        this.std_vu = 0.0;
      }
      if (initObj.hasOwnProperty('dual_antenna_azimuth')) {
        this.dual_antenna_azimuth = initObj.dual_antenna_azimuth
      }
      else {
        this.dual_antenna_azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('pdop')) {
        this.pdop = initObj.pdop
      }
      else {
        this.pdop = 0.0;
      }
      if (initObj.hasOwnProperty('vdop')) {
        this.vdop = initObj.vdop
      }
      else {
        this.vdop = 0.0;
      }
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = 0;
      }
      if (initObj.hasOwnProperty('alt_msl')) {
        this.alt_msl = initObj.alt_msl
      }
      else {
        this.alt_msl = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAGnssExtend
    // Serialize message field [sv_num]
    bufferOffset = _serializer.int16(obj.sv_num, buffer, bufferOffset);
    // Serialize message field [sv_id]
    bufferOffset = _arraySerializer.int16(obj.sv_id, buffer, bufferOffset, null);
    // Serialize message field [sv_elv]
    bufferOffset = _arraySerializer.int16(obj.sv_elv, buffer, bufferOffset, null);
    // Serialize message field [sv_az]
    bufferOffset = _arraySerializer.int16(obj.sv_az, buffer, bufferOffset, null);
    // Serialize message field [sv_cno]
    bufferOffset = _arraySerializer.int16(obj.sv_cno, buffer, bufferOffset, null);
    // Serialize message field [std_pe]
    bufferOffset = _serializer.float64(obj.std_pe, buffer, bufferOffset);
    // Serialize message field [std_pn]
    bufferOffset = _serializer.float64(obj.std_pn, buffer, bufferOffset);
    // Serialize message field [std_pu]
    bufferOffset = _serializer.float64(obj.std_pu, buffer, bufferOffset);
    // Serialize message field [std_ve]
    bufferOffset = _serializer.float64(obj.std_ve, buffer, bufferOffset);
    // Serialize message field [std_vn]
    bufferOffset = _serializer.float64(obj.std_vn, buffer, bufferOffset);
    // Serialize message field [std_vu]
    bufferOffset = _serializer.float64(obj.std_vu, buffer, bufferOffset);
    // Serialize message field [dual_antenna_azimuth]
    bufferOffset = _serializer.float64(obj.dual_antenna_azimuth, buffer, bufferOffset);
    // Serialize message field [pdop]
    bufferOffset = _serializer.float64(obj.pdop, buffer, bufferOffset);
    // Serialize message field [vdop]
    bufferOffset = _serializer.float64(obj.vdop, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = _serializer.int8(obj.fix_type, buffer, bufferOffset);
    // Serialize message field [alt_msl]
    bufferOffset = _serializer.float64(obj.alt_msl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAGnssExtend
    let len;
    let data = new MLAGnssExtend(null);
    // Deserialize message field [sv_num]
    data.sv_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sv_id]
    data.sv_id = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [sv_elv]
    data.sv_elv = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [sv_az]
    data.sv_az = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [sv_cno]
    data.sv_cno = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [std_pe]
    data.std_pe = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_pn]
    data.std_pn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_pu]
    data.std_pu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_ve]
    data.std_ve = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_vn]
    data.std_vn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std_vu]
    data.std_vu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dual_antenna_azimuth]
    data.dual_antenna_azimuth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pdop]
    data.pdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vdop]
    data.vdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [alt_msl]
    data.alt_msl = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.sv_id.length;
    length += 2 * object.sv_elv.length;
    length += 2 * object.sv_az.length;
    length += 2 * object.sv_cno.length;
    return length + 99;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_imu_msgs/MLAGnssExtend';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf3d6e1b97ab50708c383964edf41b83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 sv_num
    int16[] sv_id
    int16[] sv_elv
    int16[] sv_az
    int16[] sv_cno
    float64 std_pe
    float64 std_pn
    float64 std_pu
    float64 std_ve
    float64 std_vn
    float64 std_vu
    float64 dual_antenna_azimuth
    float64 pdop
    float64 vdop
    int8 fix_type
    float64 alt_msl
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAGnssExtend(null);
    if (msg.sv_num !== undefined) {
      resolved.sv_num = msg.sv_num;
    }
    else {
      resolved.sv_num = 0
    }

    if (msg.sv_id !== undefined) {
      resolved.sv_id = msg.sv_id;
    }
    else {
      resolved.sv_id = []
    }

    if (msg.sv_elv !== undefined) {
      resolved.sv_elv = msg.sv_elv;
    }
    else {
      resolved.sv_elv = []
    }

    if (msg.sv_az !== undefined) {
      resolved.sv_az = msg.sv_az;
    }
    else {
      resolved.sv_az = []
    }

    if (msg.sv_cno !== undefined) {
      resolved.sv_cno = msg.sv_cno;
    }
    else {
      resolved.sv_cno = []
    }

    if (msg.std_pe !== undefined) {
      resolved.std_pe = msg.std_pe;
    }
    else {
      resolved.std_pe = 0.0
    }

    if (msg.std_pn !== undefined) {
      resolved.std_pn = msg.std_pn;
    }
    else {
      resolved.std_pn = 0.0
    }

    if (msg.std_pu !== undefined) {
      resolved.std_pu = msg.std_pu;
    }
    else {
      resolved.std_pu = 0.0
    }

    if (msg.std_ve !== undefined) {
      resolved.std_ve = msg.std_ve;
    }
    else {
      resolved.std_ve = 0.0
    }

    if (msg.std_vn !== undefined) {
      resolved.std_vn = msg.std_vn;
    }
    else {
      resolved.std_vn = 0.0
    }

    if (msg.std_vu !== undefined) {
      resolved.std_vu = msg.std_vu;
    }
    else {
      resolved.std_vu = 0.0
    }

    if (msg.dual_antenna_azimuth !== undefined) {
      resolved.dual_antenna_azimuth = msg.dual_antenna_azimuth;
    }
    else {
      resolved.dual_antenna_azimuth = 0.0
    }

    if (msg.pdop !== undefined) {
      resolved.pdop = msg.pdop;
    }
    else {
      resolved.pdop = 0.0
    }

    if (msg.vdop !== undefined) {
      resolved.vdop = msg.vdop;
    }
    else {
      resolved.vdop = 0.0
    }

    if (msg.fix_type !== undefined) {
      resolved.fix_type = msg.fix_type;
    }
    else {
      resolved.fix_type = 0
    }

    if (msg.alt_msl !== undefined) {
      resolved.alt_msl = msg.alt_msl;
    }
    else {
      resolved.alt_msl = 0.0
    }

    return resolved;
    }
};

module.exports = MLAGnssExtend;
