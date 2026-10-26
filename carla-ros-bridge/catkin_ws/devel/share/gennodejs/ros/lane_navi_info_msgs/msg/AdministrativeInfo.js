// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AdministrativeInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdministrativeInfo
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdministrativeInfo
    let len;
    let data = new AdministrativeInfo(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/AdministrativeInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b29a22a8f3d78b6b547a14bce88f94fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdministrativeInfo(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
AdministrativeInfo.Constants = {
  UNKNOWN: 0,
  BELGIEN: 56,
  BULGARIEN: 100,
  DAENEMARK: 208,
  DEUTSCHLAND: 276,
  ESTLAND: 233,
  FINNLAND: 246,
  FRANKREICH: 250,
  GRIECHENLAND: 300,
  GROSSBRITANNIEN: 826,
  IRLAND: 372,
  ISLAND: 352,
  ISRAEL: 376,
  ITALIEN: 380,
  KROATIEN: 191,
  LETTLAND: 428,
  LITAUEN: 440,
  LUXEMBURG: 442,
  MALTA: 470,
  NIEDERLANDE: 528,
  NORWEGEN: 578,
  OESTERREICH: 40,
  POLEN: 616,
  PORTUGAL: 620,
  RUMAENIEN: 642,
  SCHWEDEN: 752,
  SCHWEIZ: 756,
  SLOWAKISCHE_REPUBLIK: 703,
  SLOWENIEN: 705,
  SPANIEN: 724,
  TSCHECHISCHE_REPUBLIK: 203,
  UNGARN: 348,
  ZYPERN_EU_GEBIET: 196,
  HONGKONG: 344,
  MACAO: 446,
  SINGAPUR: 702,
  FRANZ_POLYNES: 258,
  REP_NORDMAZEDONIEN: 807,
  SERBIEN: 688,
  TUERKEI: 792,
  UKRAINE: 804,
  WESTJORDANLAND: 275,
  ZYPERN_NORD: 10001,
  CHINA: 156,
  JAPAN: 392,
  USA: 840,
  OTHERS: 9999,
}

module.exports = AdministrativeInfo;
