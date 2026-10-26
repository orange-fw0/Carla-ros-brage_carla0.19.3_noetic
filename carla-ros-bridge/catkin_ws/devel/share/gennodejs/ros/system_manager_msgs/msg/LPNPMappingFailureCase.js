// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LPNPMappingFailureCase {
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
    // Serializes a message object of type LPNPMappingFailureCase
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LPNPMappingFailureCase
    let len;
    let data = new LPNPMappingFailureCase(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/LPNPMappingFailureCase';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6614f737e73d75f58b4b32dc54559ef4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FAILURE_UNDEFINED_CASE = 0
    uint8 FAILUER_BACK_UP_AT_THE_BEGINNING = 1
    uint8 FAILURE_TOO_SHORT_TRAVERL_DISTANCE = 2
    uint8 FAILURE_TOO_LONG_BACK_UP_DISTANCE = 3
    uint8 FAILURE_STEEP_SLOP = 4
    uint8 FAILURE_HEAD_IN_PARKING = 5
    uint8 FAILURE_NOT_PARKED_IN_PARKING_SLOT = 6
    uint8 FAILURE_ROUTE_REPEAT = 7
    uint8 FAILURE_LACK_ELEMENT = 8
    uint8 FAILURE_SILENT_MAPPING_TOO_LONG = 9
    uint8 FAILURE_USER_MAPPING_TOO_LONG = 10
    uint8 FAILURE_USER_MAPPING_TIME_TOO_LONG = 11
    uint8 FAILURE_TRAJ_SEG_LENGTH_TOO_LONG = 12
    uint8 FAILURE_VERIFY_MAP_TIME_TOO_LONG = 13
    uint8 FAILURE_BAD_REFERENCE_POINT = 14
    uint8 FAILURE_DB_WRITE_ERROR = 15
    uint8 FAILURE_SILENTMAPPING_LACK_SLOPE = 16
    uint8 FAILURE_TRAJECTORY_SMOOTH_ERROR = 17
    uint8 FAILURE_ROAD_POINT_LESS = 18
    uint8 FAILURE_TRAJECTORY_TURN_AROUND = 19
    uint8 FAILURE_ABORT_MAPPING = 20
    uint8 FAILURE_MODULE_PAUSE = 21
    uint8 FAILURE_NOT_SAVE_FOR_TOO_LONG = 22
    uint8 FAILURE_SPAMAP_ALLOC = 100
    uint8 FAILURE_SPAMAP_NON_CREATED = 101
    uint8 FAILURE_SPAMAP_NULL_PARAM = 102
    uint8 FAILURE_SPAMAP_NOT_SUPPORTED = 103
    uint8 FAILURE_SPAMAP_UNSUPPROT_CMD = 104
    uint8 FAILURE_SPAMAP_CAMEAR_NUM = 105
    uint8 FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL = 106
    uint8 FAILURE_SPAMAP_STITCH_IMG_IS_NULL = 107
    uint8 FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL = 108
    uint8 FAILURE_SPAMAP_REJECTED = 109
    uint8 FAILURE_SPAMAP_NO_MAP_INFO_FOUND = 110
    uint8 FAILURE_SPAMAP_INTERNAL = 111
    uint8 FAILURE_SPAMAP_UNKNOWN = 112
    uint8 FAILURE_SPAMAP_CHANGED = 113
    uint8 FAILURE_SPAMAP_LOAD_CAMERA_PARAMS = 114
    uint8 FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG = 115
    uint8 FAILURE_SPAMAP_INVALID_CONFIG = 116
    uint8 FAILURE_SPAMAP_INIT_EGO = 117
    uint8 FAILURE_SPAMAP_EGO_LOST = 118
    uint8 FAILURE_SPAMAP_CREATE_SPAMAPPER = 119
    uint8 FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER = 120
    uint8 FAILURE_SPAMAP_INVALID_POI_TYPE = 121
    uint8 FAILURE_SPAMAP_INVALID_SPA_HANDLE = 122
    uint8 FAILURE_SPAMAP_SAVE_MAP = 123
    uint8 FAILURE_SPAMAP_INVALID_MAP = 124
    uint8 FAILURE_SPAMAP_UNVERIFIED = 125
    uint8 FAILURE_SPAMAP_VERIFY_FAILED = 126
    uint8 FAILURE_SPAMAP_LOAD_PARAM = 127
    uint8 FAILURE_SPAMAP_INVALID_CAMERA = 128
    uint8 FAILURE_SPAMAP_INVERSE_STAMP_WHEEL = 129
    uint8 FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER = 130
    uint8 FAILURE_SPAMAP_UNSUPPORTED_TASK = 131
    uint8 FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE = 132
    uint8 FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE = 133
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LPNPMappingFailureCase(null);
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
LPNPMappingFailureCase.Constants = {
  FAILURE_UNDEFINED_CASE: 0,
  FAILUER_BACK_UP_AT_THE_BEGINNING: 1,
  FAILURE_TOO_SHORT_TRAVERL_DISTANCE: 2,
  FAILURE_TOO_LONG_BACK_UP_DISTANCE: 3,
  FAILURE_STEEP_SLOP: 4,
  FAILURE_HEAD_IN_PARKING: 5,
  FAILURE_NOT_PARKED_IN_PARKING_SLOT: 6,
  FAILURE_ROUTE_REPEAT: 7,
  FAILURE_LACK_ELEMENT: 8,
  FAILURE_SILENT_MAPPING_TOO_LONG: 9,
  FAILURE_USER_MAPPING_TOO_LONG: 10,
  FAILURE_USER_MAPPING_TIME_TOO_LONG: 11,
  FAILURE_TRAJ_SEG_LENGTH_TOO_LONG: 12,
  FAILURE_VERIFY_MAP_TIME_TOO_LONG: 13,
  FAILURE_BAD_REFERENCE_POINT: 14,
  FAILURE_DB_WRITE_ERROR: 15,
  FAILURE_SILENTMAPPING_LACK_SLOPE: 16,
  FAILURE_TRAJECTORY_SMOOTH_ERROR: 17,
  FAILURE_ROAD_POINT_LESS: 18,
  FAILURE_TRAJECTORY_TURN_AROUND: 19,
  FAILURE_ABORT_MAPPING: 20,
  FAILURE_MODULE_PAUSE: 21,
  FAILURE_NOT_SAVE_FOR_TOO_LONG: 22,
  FAILURE_SPAMAP_ALLOC: 100,
  FAILURE_SPAMAP_NON_CREATED: 101,
  FAILURE_SPAMAP_NULL_PARAM: 102,
  FAILURE_SPAMAP_NOT_SUPPORTED: 103,
  FAILURE_SPAMAP_UNSUPPROT_CMD: 104,
  FAILURE_SPAMAP_CAMEAR_NUM: 105,
  FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL: 106,
  FAILURE_SPAMAP_STITCH_IMG_IS_NULL: 107,
  FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL: 108,
  FAILURE_SPAMAP_REJECTED: 109,
  FAILURE_SPAMAP_NO_MAP_INFO_FOUND: 110,
  FAILURE_SPAMAP_INTERNAL: 111,
  FAILURE_SPAMAP_UNKNOWN: 112,
  FAILURE_SPAMAP_CHANGED: 113,
  FAILURE_SPAMAP_LOAD_CAMERA_PARAMS: 114,
  FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG: 115,
  FAILURE_SPAMAP_INVALID_CONFIG: 116,
  FAILURE_SPAMAP_INIT_EGO: 117,
  FAILURE_SPAMAP_EGO_LOST: 118,
  FAILURE_SPAMAP_CREATE_SPAMAPPER: 119,
  FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER: 120,
  FAILURE_SPAMAP_INVALID_POI_TYPE: 121,
  FAILURE_SPAMAP_INVALID_SPA_HANDLE: 122,
  FAILURE_SPAMAP_SAVE_MAP: 123,
  FAILURE_SPAMAP_INVALID_MAP: 124,
  FAILURE_SPAMAP_UNVERIFIED: 125,
  FAILURE_SPAMAP_VERIFY_FAILED: 126,
  FAILURE_SPAMAP_LOAD_PARAM: 127,
  FAILURE_SPAMAP_INVALID_CAMERA: 128,
  FAILURE_SPAMAP_INVERSE_STAMP_WHEEL: 129,
  FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER: 130,
  FAILURE_SPAMAP_UNSUPPORTED_TASK: 131,
  FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE: 132,
  FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE: 133,
}

module.exports = LPNPMappingFailureCase;
