// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSGazeRoiZonesTypeEnum = require('./DMSGazeRoiZonesTypeEnum.js');
let DMSEyesOnRoadTypeEnum = require('./DMSEyesOnRoadTypeEnum.js');
let DMSGazeRoiTypeEnum = require('./DMSGazeRoiTypeEnum.js');

//-----------------------------------------------------------

class DMSGazeRoiResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.gaze_roi_zone = null;
      this.gaze_roi_time = null;
      this.eyes_on_road_type = null;
      this.roi_type = null;
      this.reserved = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('gaze_roi_zone')) {
        this.gaze_roi_zone = initObj.gaze_roi_zone
      }
      else {
        this.gaze_roi_zone = new DMSGazeRoiZonesTypeEnum();
      }
      if (initObj.hasOwnProperty('gaze_roi_time')) {
        this.gaze_roi_time = initObj.gaze_roi_time
      }
      else {
        this.gaze_roi_time = 0.0;
      }
      if (initObj.hasOwnProperty('eyes_on_road_type')) {
        this.eyes_on_road_type = initObj.eyes_on_road_type
      }
      else {
        this.eyes_on_road_type = new DMSEyesOnRoadTypeEnum();
      }
      if (initObj.hasOwnProperty('roi_type')) {
        this.roi_type = initObj.roi_type
      }
      else {
        this.roi_type = new DMSGazeRoiTypeEnum();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0.0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSGazeRoiResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [gaze_roi_zone]
    bufferOffset = DMSGazeRoiZonesTypeEnum.serialize(obj.gaze_roi_zone, buffer, bufferOffset);
    // Serialize message field [gaze_roi_time]
    bufferOffset = _serializer.float32(obj.gaze_roi_time, buffer, bufferOffset);
    // Serialize message field [eyes_on_road_type]
    bufferOffset = DMSEyesOnRoadTypeEnum.serialize(obj.eyes_on_road_type, buffer, bufferOffset);
    // Serialize message field [roi_type]
    bufferOffset = DMSGazeRoiTypeEnum.serialize(obj.roi_type, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float32(obj.reserved1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSGazeRoiResult
    let len;
    let data = new DMSGazeRoiResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gaze_roi_zone]
    data.gaze_roi_zone = DMSGazeRoiZonesTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [gaze_roi_time]
    data.gaze_roi_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eyes_on_road_type]
    data.eyes_on_road_type = DMSEyesOnRoadTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [roi_type]
    data.roi_type = DMSGazeRoiTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSGazeRoiResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f463101a07001f5faac55cbf4856ddc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GAZE_ROI_ZONE_AVAILABLE = 1
    uint8 GAZE_ROI_TIME_AVAILABLE = 2
    uint8 EYES_ON_ROAD_TYPE_AVAILABLE = 4
    uint8 ROI_TYPE_AVAILABLE = 8
    uint8 RESERVED = 16
    uint8 RESERVED1 = 32
    uint8 available
    dms_msgs/DMSGazeRoiZonesTypeEnum gaze_roi_zone
    float32 gaze_roi_time
    dms_msgs/DMSEyesOnRoadTypeEnum eyes_on_road_type
    dms_msgs/DMSGazeRoiTypeEnum roi_type
    float32 reserved
    float32 reserved1
    
    ================================================================================
    MSG: dms_msgs/DMSGazeRoiZonesTypeEnum
    uint32 WINDSHIELDDRIVER = 1
    uint32 REARVIEWMIRROR = 2
    uint32 WINDSHIELDPASSENGER = 3
    uint32 RESERVED = 4
    uint32 DIM = 5
    uint32 IHU = 6
    uint32 WINDOWDRIVER = 7
    uint32 REARMIRRORLEFT = 8
    uint32 DOORDRIVER = 9
    uint32 WINDOWPASSENGER = 10
    uint32 REARMIRRORRIGHT = 11
    uint32 DOORDPASSENGER = 12
    uint32 FLOORDRIVER = 13
    uint32 FLOORPASSENGER = 14
    uint32 OTHER = 15
    uint32 RESERVED1 = 16
    uint32 RESERVED2 = 17
    uint32 RESERVED3 = 18
    uint32 STEERWHEELLE = 19
    uint32 STEERWHEELRI = 20
    uint32 RESERVED4 = 21
    uint32 RESERVED5 = 22
    uint32 RESERVED6 = 23
    uint32 RESERVED7 = 24
    uint32 RESERVED8 = 25
    uint32 value
    
    ================================================================================
    MSG: dms_msgs/DMSEyesOnRoadTypeEnum
    uint8 EYES_OFF_ROAD = 0
    uint8 EYES_ON_ROAD = 1
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSGazeRoiTypeEnum
    uint16 GAZE_CALCULATE_ROI = 2
    uint16 HEADPOSE_CALCULATE_ROI = 4
    uint16 RESERVED = 8
    uint16 RESERVED1 = 16
    uint16 RESERVED2 = 32
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSGazeRoiResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.gaze_roi_zone !== undefined) {
      resolved.gaze_roi_zone = DMSGazeRoiZonesTypeEnum.Resolve(msg.gaze_roi_zone)
    }
    else {
      resolved.gaze_roi_zone = new DMSGazeRoiZonesTypeEnum()
    }

    if (msg.gaze_roi_time !== undefined) {
      resolved.gaze_roi_time = msg.gaze_roi_time;
    }
    else {
      resolved.gaze_roi_time = 0.0
    }

    if (msg.eyes_on_road_type !== undefined) {
      resolved.eyes_on_road_type = DMSEyesOnRoadTypeEnum.Resolve(msg.eyes_on_road_type)
    }
    else {
      resolved.eyes_on_road_type = new DMSEyesOnRoadTypeEnum()
    }

    if (msg.roi_type !== undefined) {
      resolved.roi_type = DMSGazeRoiTypeEnum.Resolve(msg.roi_type)
    }
    else {
      resolved.roi_type = new DMSGazeRoiTypeEnum()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0.0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0.0
    }

    return resolved;
    }
};

// Constants for message
DMSGazeRoiResult.Constants = {
  GAZE_ROI_ZONE_AVAILABLE: 1,
  GAZE_ROI_TIME_AVAILABLE: 2,
  EYES_ON_ROAD_TYPE_AVAILABLE: 4,
  ROI_TYPE_AVAILABLE: 8,
  RESERVED: 16,
  RESERVED1: 32,
}

module.exports = DMSGazeRoiResult;
