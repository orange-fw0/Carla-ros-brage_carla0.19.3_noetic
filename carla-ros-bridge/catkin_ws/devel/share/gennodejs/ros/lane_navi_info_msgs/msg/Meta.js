// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapType = require('./MapType.js');
let AdministrativeInfo = require('./AdministrativeInfo.js');
let AdministrativeWideDrivingRule = require('./AdministrativeWideDrivingRule.js');

//-----------------------------------------------------------

class Meta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.version = null;
      this.reserved_data = null;
      this.map_type = null;
      this.administrative_info = null;
      this.administrative_wide_driving_rule = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = '';
      }
      if (initObj.hasOwnProperty('reserved_data')) {
        this.reserved_data = initObj.reserved_data
      }
      else {
        this.reserved_data = '';
      }
      if (initObj.hasOwnProperty('map_type')) {
        this.map_type = initObj.map_type
      }
      else {
        this.map_type = new MapType();
      }
      if (initObj.hasOwnProperty('administrative_info')) {
        this.administrative_info = initObj.administrative_info
      }
      else {
        this.administrative_info = new AdministrativeInfo();
      }
      if (initObj.hasOwnProperty('administrative_wide_driving_rule')) {
        this.administrative_wide_driving_rule = initObj.administrative_wide_driving_rule
      }
      else {
        this.administrative_wide_driving_rule = new AdministrativeWideDrivingRule();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Meta
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.string(obj.version, buffer, bufferOffset);
    // Serialize message field [reserved_data]
    bufferOffset = _serializer.string(obj.reserved_data, buffer, bufferOffset);
    // Serialize message field [map_type]
    bufferOffset = MapType.serialize(obj.map_type, buffer, bufferOffset);
    // Serialize message field [administrative_info]
    bufferOffset = AdministrativeInfo.serialize(obj.administrative_info, buffer, bufferOffset);
    // Serialize message field [administrative_wide_driving_rule]
    bufferOffset = AdministrativeWideDrivingRule.serialize(obj.administrative_wide_driving_rule, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Meta
    let len;
    let data = new Meta(null);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reserved_data]
    data.reserved_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_type]
    data.map_type = MapType.deserialize(buffer, bufferOffset);
    // Deserialize message field [administrative_info]
    data.administrative_info = AdministrativeInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [administrative_wide_driving_rule]
    data.administrative_wide_driving_rule = AdministrativeWideDrivingRule.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source);
    length += _getByteLength(object.version);
    length += _getByteLength(object.reserved_data);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/Meta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '304013d29f82cbefc689634092a9193b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string source
    string version
    string reserved_data
    lane_navi_info_msgs/MapType map_type
    lane_navi_info_msgs/AdministrativeInfo administrative_info
    lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule
    
    ================================================================================
    MSG: lane_navi_info_msgs/MapType
    uint8 SD_PRO = 0
    uint8 SD_MAP = 1
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/AdministrativeInfo
    uint16 UNKNOWN = 0
    uint16 BELGIEN = 56
    uint16 BULGARIEN = 100
    uint16 DAENEMARK = 208
    uint16 DEUTSCHLAND = 276
    uint16 ESTLAND = 233
    uint16 FINNLAND = 246
    uint16 FRANKREICH = 250
    uint16 GRIECHENLAND = 300
    uint16 GROSSBRITANNIEN = 826
    uint16 IRLAND = 372
    uint16 ISLAND = 352
    uint16 ISRAEL = 376
    uint16 ITALIEN = 380
    uint16 KROATIEN = 191
    uint16 LETTLAND = 428
    uint16 LITAUEN = 440
    uint16 LUXEMBURG = 442
    uint16 MALTA = 470
    uint16 NIEDERLANDE = 528
    uint16 NORWEGEN = 578
    uint16 OESTERREICH = 40
    uint16 POLEN = 616
    uint16 PORTUGAL = 620
    uint16 RUMAENIEN = 642
    uint16 SCHWEDEN = 752
    uint16 SCHWEIZ = 756
    uint16 SLOWAKISCHE_REPUBLIK = 703
    uint16 SLOWENIEN = 705
    uint16 SPANIEN = 724
    uint16 TSCHECHISCHE_REPUBLIK = 203
    uint16 UNGARN = 348
    uint16 ZYPERN_EU_GEBIET = 196
    uint16 HONGKONG = 344
    uint16 MACAO = 446
    uint16 SINGAPUR = 702
    uint16 FRANZ_POLYNES = 258
    uint16 REP_NORDMAZEDONIEN = 807
    uint16 SERBIEN = 688
    uint16 TUERKEI = 792
    uint16 UKRAINE = 804
    uint16 WESTJORDANLAND = 275
    uint16 ZYPERN_NORD = 10001
    uint16 CHINA = 156
    uint16 JAPAN = 392
    uint16 USA = 840
    uint16 OTHERS = 9999
    uint16 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule
    uint8 UNKNOWN = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Meta(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = ''
    }

    if (msg.reserved_data !== undefined) {
      resolved.reserved_data = msg.reserved_data;
    }
    else {
      resolved.reserved_data = ''
    }

    if (msg.map_type !== undefined) {
      resolved.map_type = MapType.Resolve(msg.map_type)
    }
    else {
      resolved.map_type = new MapType()
    }

    if (msg.administrative_info !== undefined) {
      resolved.administrative_info = AdministrativeInfo.Resolve(msg.administrative_info)
    }
    else {
      resolved.administrative_info = new AdministrativeInfo()
    }

    if (msg.administrative_wide_driving_rule !== undefined) {
      resolved.administrative_wide_driving_rule = AdministrativeWideDrivingRule.Resolve(msg.administrative_wide_driving_rule)
    }
    else {
      resolved.administrative_wide_driving_rule = new AdministrativeWideDrivingRule()
    }

    return resolved;
    }
};

module.exports = Meta;
