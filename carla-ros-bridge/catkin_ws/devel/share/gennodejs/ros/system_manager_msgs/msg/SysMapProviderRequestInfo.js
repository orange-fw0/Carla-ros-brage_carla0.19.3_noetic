// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParkingLotTypeEnum = require('./ParkingLotTypeEnum.js');
let ParkingQueryModeEnum = require('./ParkingQueryModeEnum.js');
let MapContentToUpdate = require('./MapContentToUpdate.js');
let mla_localization_msgs = _finder('mla_localization_msgs');

//-----------------------------------------------------------

class SysMapProviderRequestInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.radius_range = null;
      this.type = null;
      this.parking_lot_id = null;
      this.target_partition_id_list = null;
      this.query_mode = null;
      this.time_threshold_for_deleting = null;
      this.amout_for_deleting = null;
      this.map_content = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new mla_localization_msgs.msg.MLAPosGlobal();
      }
      if (initObj.hasOwnProperty('radius_range')) {
        this.radius_range = initObj.radius_range
      }
      else {
        this.radius_range = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ParkingLotTypeEnum();
      }
      if (initObj.hasOwnProperty('parking_lot_id')) {
        this.parking_lot_id = initObj.parking_lot_id
      }
      else {
        this.parking_lot_id = 0;
      }
      if (initObj.hasOwnProperty('target_partition_id_list')) {
        this.target_partition_id_list = initObj.target_partition_id_list
      }
      else {
        this.target_partition_id_list = [];
      }
      if (initObj.hasOwnProperty('query_mode')) {
        this.query_mode = initObj.query_mode
      }
      else {
        this.query_mode = new ParkingQueryModeEnum();
      }
      if (initObj.hasOwnProperty('time_threshold_for_deleting')) {
        this.time_threshold_for_deleting = initObj.time_threshold_for_deleting
      }
      else {
        this.time_threshold_for_deleting = 0;
      }
      if (initObj.hasOwnProperty('amout_for_deleting')) {
        this.amout_for_deleting = initObj.amout_for_deleting
      }
      else {
        this.amout_for_deleting = 0;
      }
      if (initObj.hasOwnProperty('map_content')) {
        this.map_content = initObj.map_content
      }
      else {
        this.map_content = new MapContentToUpdate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysMapProviderRequestInfo
    // Serialize message field [position]
    bufferOffset = mla_localization_msgs.msg.MLAPosGlobal.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [radius_range]
    bufferOffset = _serializer.uint32(obj.radius_range, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = ParkingLotTypeEnum.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [parking_lot_id]
    bufferOffset = _serializer.uint32(obj.parking_lot_id, buffer, bufferOffset);
    // Serialize message field [target_partition_id_list]
    bufferOffset = _arraySerializer.uint32(obj.target_partition_id_list, buffer, bufferOffset, null);
    // Serialize message field [query_mode]
    bufferOffset = ParkingQueryModeEnum.serialize(obj.query_mode, buffer, bufferOffset);
    // Serialize message field [time_threshold_for_deleting]
    bufferOffset = _serializer.uint64(obj.time_threshold_for_deleting, buffer, bufferOffset);
    // Serialize message field [amout_for_deleting]
    bufferOffset = _serializer.uint32(obj.amout_for_deleting, buffer, bufferOffset);
    // Serialize message field [map_content]
    bufferOffset = MapContentToUpdate.serialize(obj.map_content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysMapProviderRequestInfo
    let len;
    let data = new SysMapProviderRequestInfo(null);
    // Deserialize message field [position]
    data.position = mla_localization_msgs.msg.MLAPosGlobal.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius_range]
    data.radius_range = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = ParkingLotTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_lot_id]
    data.parking_lot_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [target_partition_id_list]
    data.target_partition_id_list = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [query_mode]
    data.query_mode = ParkingQueryModeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_threshold_for_deleting]
    data.time_threshold_for_deleting = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [amout_for_deleting]
    data.amout_for_deleting = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [map_content]
    data.map_content = MapContentToUpdate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.target_partition_id_list.length;
    length += MapContentToUpdate.getMessageSize(object.map_content);
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysMapProviderRequestInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bac8b403ecdb89398cc2d9976f87bc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mla_localization_msgs/MLAPosGlobal position
    uint32 radius_range
    system_manager_msgs/ParkingLotTypeEnum type
    uint32 parking_lot_id
    uint32[] target_partition_id_list
    system_manager_msgs/ParkingQueryModeEnum query_mode
    uint64 time_threshold_for_deleting
    uint32 amout_for_deleting
    system_manager_msgs/MapContentToUpdate map_content
    
    ================================================================================
    MSG: mla_localization_msgs/MLAPosGlobal
    float64 latitude
    float64 longitude
    float64 altitude
    
    ================================================================================
    MSG: system_manager_msgs/ParkingLotTypeEnum
    uint8 PNP = 0
    uint8 LPNP = 1
    uint8 BOTH = 2
    uint8 type
    
    ================================================================================
    MSG: system_manager_msgs/ParkingQueryModeEnum
    uint8 BY_RANGE = 0
    uint8 BY_LAST_USAGE = 1
    uint8 BY_LATEST_BUILD = 2
    uint8 BY_SPECIFIC_ID = 3
    uint8 mode
    
    ================================================================================
    MSG: system_manager_msgs/MapContentToUpdate
    string name
    string address
    string label
    string parking_space_id
    string parking_type
    string reversed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysMapProviderRequestInfo(null);
    if (msg.position !== undefined) {
      resolved.position = mla_localization_msgs.msg.MLAPosGlobal.Resolve(msg.position)
    }
    else {
      resolved.position = new mla_localization_msgs.msg.MLAPosGlobal()
    }

    if (msg.radius_range !== undefined) {
      resolved.radius_range = msg.radius_range;
    }
    else {
      resolved.radius_range = 0
    }

    if (msg.type !== undefined) {
      resolved.type = ParkingLotTypeEnum.Resolve(msg.type)
    }
    else {
      resolved.type = new ParkingLotTypeEnum()
    }

    if (msg.parking_lot_id !== undefined) {
      resolved.parking_lot_id = msg.parking_lot_id;
    }
    else {
      resolved.parking_lot_id = 0
    }

    if (msg.target_partition_id_list !== undefined) {
      resolved.target_partition_id_list = msg.target_partition_id_list;
    }
    else {
      resolved.target_partition_id_list = []
    }

    if (msg.query_mode !== undefined) {
      resolved.query_mode = ParkingQueryModeEnum.Resolve(msg.query_mode)
    }
    else {
      resolved.query_mode = new ParkingQueryModeEnum()
    }

    if (msg.time_threshold_for_deleting !== undefined) {
      resolved.time_threshold_for_deleting = msg.time_threshold_for_deleting;
    }
    else {
      resolved.time_threshold_for_deleting = 0
    }

    if (msg.amout_for_deleting !== undefined) {
      resolved.amout_for_deleting = msg.amout_for_deleting;
    }
    else {
      resolved.amout_for_deleting = 0
    }

    if (msg.map_content !== undefined) {
      resolved.map_content = MapContentToUpdate.Resolve(msg.map_content)
    }
    else {
      resolved.map_content = new MapContentToUpdate()
    }

    return resolved;
    }
};

module.exports = SysMapProviderRequestInfo;
