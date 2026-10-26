// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSGenderTypeEnum = require('./DMSGenderTypeEnum.js');
let DMSFrameResult = require('./DMSFrameResult.js');

//-----------------------------------------------------------

class DMSFidInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.feature = null;
      this.usr_id = null;
      this.feature_size = null;
      this.fail_liveness = null;
      this.liveness_score = null;
      this.age = null;
      this.gender_type = null;
      this.frame_data = null;
      this.feature_confidence = null;
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
      if (initObj.hasOwnProperty('feature')) {
        this.feature = initObj.feature
      }
      else {
        this.feature = '';
      }
      if (initObj.hasOwnProperty('usr_id')) {
        this.usr_id = initObj.usr_id
      }
      else {
        this.usr_id = '';
      }
      if (initObj.hasOwnProperty('feature_size')) {
        this.feature_size = initObj.feature_size
      }
      else {
        this.feature_size = 0;
      }
      if (initObj.hasOwnProperty('fail_liveness')) {
        this.fail_liveness = initObj.fail_liveness
      }
      else {
        this.fail_liveness = 0;
      }
      if (initObj.hasOwnProperty('liveness_score')) {
        this.liveness_score = initObj.liveness_score
      }
      else {
        this.liveness_score = 0.0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('gender_type')) {
        this.gender_type = initObj.gender_type
      }
      else {
        this.gender_type = new DMSGenderTypeEnum();
      }
      if (initObj.hasOwnProperty('frame_data')) {
        this.frame_data = initObj.frame_data
      }
      else {
        this.frame_data = new DMSFrameResult();
      }
      if (initObj.hasOwnProperty('feature_confidence')) {
        this.feature_confidence = initObj.feature_confidence
      }
      else {
        this.feature_confidence = 0.0;
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
    // Serializes a message object of type DMSFidInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [feature]
    bufferOffset = _serializer.string(obj.feature, buffer, bufferOffset);
    // Serialize message field [usr_id]
    bufferOffset = _serializer.string(obj.usr_id, buffer, bufferOffset);
    // Serialize message field [feature_size]
    bufferOffset = _serializer.uint32(obj.feature_size, buffer, bufferOffset);
    // Serialize message field [fail_liveness]
    bufferOffset = _serializer.uint8(obj.fail_liveness, buffer, bufferOffset);
    // Serialize message field [liveness_score]
    bufferOffset = _serializer.float32(obj.liveness_score, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.int32(obj.age, buffer, bufferOffset);
    // Serialize message field [gender_type]
    bufferOffset = DMSGenderTypeEnum.serialize(obj.gender_type, buffer, bufferOffset);
    // Serialize message field [frame_data]
    bufferOffset = DMSFrameResult.serialize(obj.frame_data, buffer, bufferOffset);
    // Serialize message field [feature_confidence]
    bufferOffset = _serializer.float32(obj.feature_confidence, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float32(obj.reserved1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFidInfo
    let len;
    let data = new DMSFidInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [feature]
    data.feature = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [usr_id]
    data.usr_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [feature_size]
    data.feature_size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fail_liveness]
    data.fail_liveness = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [liveness_score]
    data.liveness_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gender_type]
    data.gender_type = DMSGenderTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_data]
    data.frame_data = DMSFrameResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [feature_confidence]
    data.feature_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.feature);
    length += _getByteLength(object.usr_id);
    length += DMSFrameResult.getMessageSize(object.frame_data);
    return length + 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFidInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f535b4b79f5daa260a2cec29397e4829';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FACEID_AVAILABLE = 1
    uint8 LIVENESS_AVAILABLE = 2
    uint8 AGE_AVAILABLE = 4
    uint8 GENDER_AVAILABLE = 8
    uint8 RESERVED = 16
    uint8 RESERVED1 = 32
    uint8 available
    string feature
    string usr_id
    uint32 feature_size
    uint8 fail_liveness
    float32 liveness_score
    int32 age
    dms_msgs/DMSGenderTypeEnum gender_type
    dms_msgs/DMSFrameResult frame_data
    float32 feature_confidence
    float32 reserved
    float32 reserved1
    
    ================================================================================
    MSG: dms_msgs/DMSGenderTypeEnum
    uint8 DMS_GENDER_MALE = 0
    uint8 DMS_GENDER_FEMALE = 1
    uint8 DMS_GENDER_OTHER = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSFrameResult
    dms_msgs/DMSGazeResult dms_gaze_result
    dms_msgs/DMSEyeResult dms_eye_result
    dms_msgs/DMSMouthResult dms_mouth_result
    dms_msgs/DMSKeypointsResult dms_keypoints_result
    dms_msgs/DMSHeadResult dms_head_result
    dms_msgs/DMSHeadPoseResult dms_headpose_result
    dms_msgs/DMSFacePositionResult dms_face_position_result
    dms_msgs/DMSFeatureResult dms_feature_result
    dms_msgs/DMSActionResult dms_actions_result
    dms_msgs/DMSAbnormalActionResult dms_abnormal_action_result
    dms_msgs/DMSOrientationResult dms_orientation_result
    dms_msgs/DMSDistractionResult dms_distraction_result
    dms_msgs/DMSDrowsinessResult dms_drowsiness_result
    dms_msgs/DMSGazeRoiResult dms_gaze_roi_result
    dms_msgs/DMSBasicSignalResult dms_basic_signal_result
    dms_msgs/DMSFaceQualityResult dms_face_quality_result
    dms_msgs/DMSEmotionResult emotion_result
    dms_msgs/DMSHealthInfoResult health_result
    dms_msgs/DMSUnresponsiveResult unresponsive_result
    dms_msgs/DMSFuncLimitedResult func_limited_result
    dms_msgs/DMSAttentionDriveResult driver_attention_result
    
    ================================================================================
    MSG: dms_msgs/DMSGazeResult
    uint8 GAZE_SCORE_AVAILABLE = 1
    uint8 GAZE_ORIENTATION_AVAILABLE = 2
    uint8 GAZE_ORIENTATION_WCS_AVAILABLE = 4
    uint8 available
    float32 gaze_left_score
    float32 gaze_right_score
    float32 gaze_center_score
    dms_msgs/DMSOrientation3f gaze_left
    dms_msgs/DMSOrientation3f gaze_right
    dms_msgs/DMSOrientation3f gaze_center
    dms_msgs/DMSOrientation3f gaze_left_wcs
    dms_msgs/DMSOrientation3f gaze_right_wcs
    dms_msgs/DMSOrientation3f gaze_center_wcs
    
    ================================================================================
    MSG: dms_msgs/DMSOrientation3f
    float32 pitch
    float32 yaw
    float32 roll
    
    ================================================================================
    MSG: dms_msgs/DMSEyeResult
    uint8 EYE_DISTANCE_AVAILABLE = 1
    uint8 EYE_EYELID_AVAILABLE = 2
    uint8 EYE_VECTOR_WCS_AVAILABLE = 4
    uint8 EYE_VECTOR_CCS_AVAILABLE = 8
    uint8 available
    float32 distance_left_eye
    float32 distance_right_eye
    float32 eyelid_left_score
    float32 eyelid_right_score
    dms_msgs/DMSEyelidStatusTypeEnum state_right_eye
    dms_msgs/DMSEyelidStatusTypeEnum state_left_eye
    dms_msgs/DMSEyeRelativeResult eye_relative_result
    dms_msgs/DMSVector3f vector_left_eye_wcs
    dms_msgs/DMSVector3f vector_right_eye_wcs
    dms_msgs/DMSVector3f vector_eye_center_wcs
    dms_msgs/DMSVector3f vector_left_eye_ccs
    dms_msgs/DMSVector3f vector_right_eye_ccs
    dms_msgs/DMSVector3f vector_eye_center_ccs
    
    ================================================================================
    MSG: dms_msgs/DMSEyelidStatusTypeEnum
    uint8 DMS_EYELID_STATE_OPEN = 0
    uint8 DMS_EYELID_STATE_CLOSED = 1
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSEyeRelativeResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 IS_EYE_BLINK_AVAILABLE = 2
    uint8 available
    float32 left_eye_relative_distance
    float32 right_eye_relative_distance
    bool is_left_eye_close
    bool is_right_eye_close
    float32 left_eye_close_time
    float32 right_eye_close_time
    float32 reserved
    bool is_eye_blink
    
    ================================================================================
    MSG: dms_msgs/DMSVector3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: dms_msgs/DMSMouthResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    float32 mouth_open_distance
    float32 mouth_open_width
    float32 mouth_open_distance_score
    float32 mouth_open_ratio
    
    ================================================================================
    MSG: dms_msgs/DMSKeypointsResult
    uint8 KEYPOINTS_2D_AVAILABLE = 1
    uint8 KEYPOINTS_3D_AVAILABLE = 2
    uint8 KEYPOINTS_3D_WCS_AVAILABLE = 4
    uint8 available
    float32 keypoint_score
    dms_msgs/DMSPoint2f[] keypoints
    dms_msgs/DMSPoint2f[] keypoints_left_eye
    dms_msgs/DMSPoint2f[] keypoints_right_eye
    dms_msgs/DMSPoint2f[] keypoints_pupil
    dms_msgs/DMSPoint3f[] keypoints3d
    dms_msgs/DMSPoint3f[] keypoints3d_wcs
    
    ================================================================================
    MSG: dms_msgs/DMSPoint2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: dms_msgs/DMSPoint3f
    float32 x
    float32 y
    float32 z
    
    ================================================================================
    MSG: dms_msgs/DMSHeadResult
    uint32 RECT_AVAILABLE = 1
    uint32 VECTOR_HEAD_AVAILABLE = 2
    uint32 VECTOR_HEAD_WCS_AVAILABLE = 4
    uint32 POSITION_HEAD_AVAILABLE = 8
    uint32 POSITION_HEAD_WCS_AVAILABLE = 16
    uint32 HEAD_AREA_AVAILABLE = 32
    uint32 HEAD_NUM_AVAILABLE = 64
    uint32 IS_HEAD_FAR_AVAILABLE = 128
    uint32 HEAD_NUM_DEBOUNCE_AVAILABLE = 256
    uint32 L2_HEAD_AREA_AVAILABLE = 512
    uint32 L2_HEAD_NUM_AVAILABLE = 1024
    uint32 L2_IS_HEAD_FAR_AVAILABLE = 2048
    uint32 L2_HEAD_NUM_DEBOUNCE_AVAILABLE = 4096
    uint32 L3_HEAD_AREA_AVAILABLE = 8192
    uint32 L3_HEAD_NUM_AVAILABLE = 16384
    uint32 L3_IS_HEAD_FAR_AVAILABLE = 32768
    uint32 L3_HEAD_NUM_DEBOUNCE_AVAILABLE = 65536
    uint32 available
    float32 rect_score
    dms_msgs/DMSRotateRect rect
    dms_msgs/DMSPoint2f[] head_rect
    dms_msgs/DMSVector3f vector_head
    dms_msgs/DMSVector3f vector_head_wcs
    dms_msgs/DMSPoint3f position_head
    dms_msgs/DMSPoint3f position_head_wcs
    float32[] head_rotation
    float32 head_area
    bool is_head_far
    uint16 head_num
    uint16 head_num_debounce
    float32 l2_head_area
    bool l2_is_head_far
    uint16 l2_head_num
    uint16 l2_head_num_debounce
    float32 l3_head_area
    bool l3_is_head_far
    uint16 l3_head_num
    uint16 l3_head_num_debounce
    
    ================================================================================
    MSG: dms_msgs/DMSRotateRect
    dms_msgs/DMSPoint2f center
    float32 width
    float32 height
    float32 angle
    
    ================================================================================
    MSG: dms_msgs/DMSHeadPoseResult
    uint8 HEADPOSE_AVAILABLE = 1
    uint8 HEADPOSE_WCS_AVAILABLE = 2
    uint8 HEAD_MOVEMENT_AVAILABLE = 4
    uint8 L2_HEAD_MOVEMENT_AVAILABLE = 8
    uint8 L3_HEAD_MOVEMENT_AVAILABLE = 16
    uint8 available
    float32 headpose_score
    dms_msgs/DMSOrientation3f headpose
    dms_msgs/DMSOrientation3f headpose_wcs
    bool is_head_movement
    bool l2_is_head_movement
    bool l3_is_head_movement
    
    ================================================================================
    MSG: dms_msgs/DMSFacePositionResult
    uint16 POSITION_EAR_CENTER_AVAILABLE = 1
    uint16 POSITION_LEFT_PUPIL_AVAILABLE = 2
    uint16 POSITION_RIGHT_PUPIL_AVAILABLE = 4
    uint16 POSITION_EAR_CENTER_WCS_AVAILABLE = 8
    uint16 POSITION_LEFT_PUPIL_WCS_AVAILABLE = 16
    uint16 POSITION_RIGHT_PUPIL_WCS_AVAILABLE = 32
    uint16 available
    dms_msgs/DMSPoint3f position_ear_center
    dms_msgs/DMSPoint3f position_left_pupil
    dms_msgs/DMSPoint3f position_right_pupil
    dms_msgs/DMSPoint3f position_ear_center_wcs
    dms_msgs/DMSPoint3f position_left_pupil_wcs
    dms_msgs/DMSPoint3f position_right_pupil_wcs
    
    ================================================================================
    MSG: dms_msgs/DMSFeatureResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    float32[] feature
    
    ================================================================================
    MSG: dms_msgs/DMSActionResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    dms_msgs/DMSFaceAction[] actions
    
    ================================================================================
    MSG: dms_msgs/DMSFaceAction
    string name
    float32 score
    
    ================================================================================
    MSG: dms_msgs/DMSAbnormalActionResult
    uint16 ABNORMAL_ACTION_TYPE_AVAILABLE = 1
    uint16 L2_ABNORMAL_ACTION_TYPE_AVAILABLE = 2
    uint16 L3_ABNORMAL_ACTION_TYPE_AVAILABLE = 4
    uint16 ACTIONS_AVAILABLE = 8
    uint16 L2_ACTIONS_AVAILABLE = 16
    uint16 L3_ACTIONS_AVAILABLE = 32
    uint16 RESERVED = 64
    uint16 available
    dms_msgs/DMSAbnormalActionTypeEnum abnormal_action_type
    dms_msgs/L2DMSAbnormalActionTypeEnum l2_abnormal_action_type
    dms_msgs/L3DMSAbnormalActionTypeEnum l3_abnormal_action_type
    dms_msgs/DMSActionResult[] actions
    dms_msgs/DMSActionResult[] l2_actions
    dms_msgs/DMSActionResult[] l3_actions
    string reserved
    
    ================================================================================
    MSG: dms_msgs/DMSAbnormalActionTypeEnum
    uint16 NORMAL = 1
    uint16 EYE_CLOSE = 2
    uint16 YAWN = 4
    uint16 DRINK = 8
    uint16 PHONE_CALL = 16
    uint16 SMOKE = 32
    uint16 EAT = 64
    uint16 PHONE_HAND = 128
    uint16 PHONE_EAR = 256
    uint16 RESERVED1 = 512
    uint16 RESERVED2 = 1024
    uint16 RESERVED3 = 2048
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSAbnormalActionTypeEnum
    uint16 NORMAL = 1
    uint16 EYE_CLOSE = 2
    uint16 YAWN = 4
    uint16 DRINK = 8
    uint16 PHONE_CALL = 16
    uint16 SMOKE = 32
    uint16 EAT = 64
    uint16 PHONE_HAND = 128
    uint16 PHONE_EAR = 256
    uint16 RESERVED1 = 512
    uint16 RESERVED2 = 1024
    uint16 RESERVED3 = 2048
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSAbnormalActionTypeEnum
    uint16 NORMAL = 1
    uint16 EYE_CLOSE = 2
    uint16 YAWN = 4
    uint16 DRINK = 8
    uint16 PHONE_CALL = 16
    uint16 SMOKE = 32
    uint16 EAT = 64
    uint16 PHONE_HAND = 128
    uint16 PHONE_EAR = 256
    uint16 RESERVED1 = 512
    uint16 RESERVED2 = 1024
    uint16 RESERVED3 = 2048
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSOrientationResult
    uint8 ORIENTATION_AVAILABLE = 1
    uint8 ORIENTATION_ORI_AVAILABLE = 2
    uint8 ORIENTATION_WCS_AVAILABLE = 4
    uint8 available
    float32 orientation_score
    dms_msgs/DMSOrientation3f orientation
    dms_msgs/DMSOrientation3f orientation_ori
    dms_msgs/DMSOrientation3f orientation_wcs
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionResult
    uint16 DISTRACTION_LITE_AVAILABLE = 1
    uint16 DISTRACTION_PRO_AVAILABLE = 2
    uint16 DISTRACTION_TYPE_AVAILABLE = 4
    uint16 DISTRACTION_LEVEL_AVAILABLE = 8
    uint16 DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 16
    uint16 DISTRACTION_REASON_TYPE_AVAILABLE = 32
    uint16 DISTRACTION_PRO_CORE_AVAILABLE = 64
    uint16 RESERVED = 128
    uint16 L3_DISTRACTION_LEVEL_AVAILABLE = 256
    uint16 L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 512
    uint16 L2_DISTRACTION_LEVEL_AVAILABLE = 1024
    uint16 L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 2048
    uint16 available
    int32 distraction_lite
    int32 distraction_pro
    dms_msgs/DMSDistractionTypeEnum distraction_type
    dms_msgs/DMSDistractionLevelTypeEnum distraction_level_type
    dms_msgs/DMSDistractionConfidenceTypeEnum distraction_confidence_level
    dms_msgs/DMSDistractionReasonTypeEnum distraction_reason_type
    dms_msgs/L2DMSDistractionLevelTypeEnum l2_distraction_level_type
    dms_msgs/L2DMSDistractionConfidenceTypeEnum l2_distraction_confidence_level
    dms_msgs/L3DMSDistractionLevelTypeEnum l3_distraction_level_type
    dms_msgs/L3DMSDistractionConfidenceTypeEnum l3_distraction_confidence_level
    int32 distraction_pro_core
    int32 reserved
    int32 distraction_sensitivity
    string dis_params
    int32 l2_distraction_sensitivity
    string l2_dis_params
    int32 l3_distraction_sensitivity
    string l3_dis_params
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionTypeEnum
    uint8 LONG_TERM_DISTRACTION = 0
    uint8 SHORT_TERM_DISTRACTION = 1
    uint8 HEADPOSE_ABNORMAL_DISTRACTION = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionLevelTypeEnum
    uint16 DISTRACTION_LEVEL_0 = 0
    uint16 DISTRACTION_LEVEL_1 = 1
    uint16 DISTRACTION_LEVEL_2 = 2
    uint16 DISTRACTION_LEVEL_3 = 3
    uint16 DISTRACTION_LEVEL_4 = 4
    uint16 DISTRACTION_LEVEL_5 = 5
    uint16 DISTRACTION_LEVEL_6 = 6
    uint16 DISTRACTION_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionConfidenceTypeEnum
    uint16 NOT_AVAILABLE_CONFIDENCE = 0
    uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
    uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
    uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
    uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
    uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
    uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
    uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSDistractionReasonTypeEnum
    uint16 HEADPOSE_TRIGER_DISTRACTION = 1
    uint16 GAZE_ROI_TRIGER_DISTRACTION = 2
    uint16 HEAD_ROI_TRIGER_DISTRACTION = 4
    uint16 RESERVED = 8
    uint16 RESERVED1 = 16
    uint16 RESERVED2 = 32
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSDistractionLevelTypeEnum
    uint16 DISTRACTION_LEVEL_0 = 0
    uint16 DISTRACTION_LEVEL_1 = 1
    uint16 DISTRACTION_LEVEL_2 = 2
    uint16 DISTRACTION_LEVEL_3 = 3
    uint16 DISTRACTION_LEVEL_4 = 4
    uint16 DISTRACTION_LEVEL_5 = 5
    uint16 DISTRACTION_LEVEL_6 = 6
    uint16 DISTRACTION_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSDistractionConfidenceTypeEnum
    uint16 NOT_AVAILABLE_CONFIDENCE = 0
    uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
    uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
    uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
    uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
    uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
    uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
    uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSDistractionLevelTypeEnum
    uint16 DISTRACTION_LEVEL_0 = 0
    uint16 DISTRACTION_LEVEL_1 = 1
    uint16 DISTRACTION_LEVEL_2 = 2
    uint16 DISTRACTION_LEVEL_3 = 3
    uint16 DISTRACTION_LEVEL_4 = 4
    uint16 DISTRACTION_LEVEL_5 = 5
    uint16 DISTRACTION_LEVEL_6 = 6
    uint16 DISTRACTION_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSDistractionConfidenceTypeEnum
    uint16 NOT_AVAILABLE_CONFIDENCE = 0
    uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
    uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
    uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
    uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
    uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
    uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
    uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSDrowsinessResult
    uint16 DROWSINESS_MODEL_SCORE_AVAILABLE = 1
    uint16 DROWSINESS_PRO_AVAILABLE = 2
    uint16 MODEL_BASED_DROWSINESS_PRO_AVAILABLE = 4
    uint16 RULE_BASED_DROWSINESS_PRO_AVAILABLE = 8
    uint16 DROWSINESS_LEVEL_TYPE_AVAILABLE = 16
    uint16 DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 32
    uint16 DROWSINESS_PRO_CORE_AVAILABLE = 64
    uint16 RESERVED = 128
    uint16 L3_DROWSINESS_LEVEL_TYPE_AVAILABLE = 256
    uint16 L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 512
    uint16 L2_DROWSINESS_LEVEL_TYPE_AVAILABLE = 1024
    uint16 L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 2048
    uint16 available
    float32[] drowsiness_model_score
    int32 drowsiness_pro
    int32 model_based_drowsiness_pro
    int32 rule_based_drowsiness_pro
    dms_msgs/DMSDrowsinessLevelTypeEnum drowsiness_level_type
    dms_msgs/DMSDrowsinessConfidenceTypeEnum drowsiness_confidence_level
    dms_msgs/L2DMSDrowsinessLevelTypeEnum l2_drowsiness_level_type
    dms_msgs/L2DMSDrowsinessConfidenceTypeEnum l2_drowsiness_confidence_level
    dms_msgs/L3DMSDrowsinessLevelTypeEnum l3_drowsiness_level_type
    dms_msgs/L3DMSDrowsinessConfidenceTypeEnum l3_drowsiness_confidence_level
    int32 drowsiness_pro_core
    float32 reserved
    int32 drowsiness_sensitivity
    string drows_params
    int32 l2_drowsiness_sensitivity
    string l2_drows_params
    int32 l3_drowsiness_sensitivity
    string l3_drows_params
    
    ================================================================================
    MSG: dms_msgs/DMSDrowsinessLevelTypeEnum
    uint16 DROWSINESS_LEVEL_0 = 0
    uint16 DROWSINESS_LEVEL_1 = 1
    uint16 DROWSINESS_LEVEL_2 = 2
    uint16 DROWSINESS_LEVEL_3 = 3
    uint16 DROWSINESS_LEVEL_4 = 4
    uint16 DROWSINESS_LEVEL_5 = 5
    uint16 DROWSINESS_LEVEL_6 = 6
    uint16 DROWSINESS_LEVEL_7 = 7
    uint16 DROWSINESS_LEVEL_8 = 8
    uint16 DROWSINESS_LEVEL_9 = 9
    uint16 DROWSINESS_LEVEL_10 = 10
    uint16 DROWSINESS_LEVEL_11 = 11
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSDrowsinessConfidenceTypeEnum
    uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
    uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
    uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
    uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
    uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
    uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
    uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
    uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
    uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
    uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSDrowsinessLevelTypeEnum
    uint16 DROWSINESS_LEVEL_0 = 0
    uint16 DROWSINESS_LEVEL_1 = 1
    uint16 DROWSINESS_LEVEL_2 = 2
    uint16 DROWSINESS_LEVEL_3 = 3
    uint16 DROWSINESS_LEVEL_4 = 4
    uint16 DROWSINESS_LEVEL_5 = 5
    uint16 DROWSINESS_LEVEL_6 = 6
    uint16 DROWSINESS_LEVEL_7 = 7
    uint16 DROWSINESS_LEVEL_8 = 8
    uint16 DROWSINESS_LEVEL_9 = 9
    uint16 DROWSINESS_LEVEL_10 = 10
    uint16 DROWSINESS_LEVEL_11 = 11
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSDrowsinessConfidenceTypeEnum
    uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
    uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
    uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
    uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
    uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
    uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
    uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
    uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
    uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
    uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSDrowsinessLevelTypeEnum
    uint16 DROWSINESS_LEVEL_0 = 0
    uint16 DROWSINESS_LEVEL_1 = 1
    uint16 DROWSINESS_LEVEL_2 = 2
    uint16 DROWSINESS_LEVEL_3 = 3
    uint16 DROWSINESS_LEVEL_4 = 4
    uint16 DROWSINESS_LEVEL_5 = 5
    uint16 DROWSINESS_LEVEL_6 = 6
    uint16 DROWSINESS_LEVEL_7 = 7
    uint16 DROWSINESS_LEVEL_8 = 8
    uint16 DROWSINESS_LEVEL_9 = 9
    uint16 DROWSINESS_LEVEL_10 = 10
    uint16 DROWSINESS_LEVEL_11 = 11
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSDrowsinessConfidenceTypeEnum
    uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
    uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
    uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
    uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
    uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
    uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
    uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
    uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
    uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
    uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
    uint16 value
    
    ================================================================================
    MSG: dms_msgs/DMSGazeRoiResult
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
    
    ================================================================================
    MSG: dms_msgs/DMSBasicSignalResult
    uint8 BASE_HEADPOSE_AVAILABLE = 1
    uint8 BASE_GAZE_AVAILABLE = 2
    uint8 RESERVED = 4
    uint8 RESERVED1 = 8
    uint8 available
    dms_msgs/DMSOrientation3f base_headpose
    dms_msgs/DMSOrientation3f base_gaze
    float32 reserved
    float32 reserved1
    
    ================================================================================
    MSG: dms_msgs/DMSFaceQualityResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    dms_msgs/DMSFaceQualityScoreResult quality
    
    ================================================================================
    MSG: dms_msgs/DMSFaceQualityScoreResult
    float32 light_forehead_prob
    float32 light_eye_prob
    float32 light_nose_prob
    float32 light_mouth_prob
    float32 faceshade_forehead_prob
    float32 faceshade_eye_prob
    float32 faceshade_nose_prob
    float32 faceshade_mouth_prob
    float32 eye_left_prob
    float32 eye_right_prob
    float32 iris_left_prob
    float32 iris_right_prob
    float32 infrared_block_prob
    int32 yaw_region
    int32 pitch_region
    
    ================================================================================
    MSG: dms_msgs/DMSEmotionResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 RESERVED = 2
    uint8 available
    dms_msgs/DMSEmotionTypeEnum emotion_type
    
    ================================================================================
    MSG: dms_msgs/DMSEmotionTypeEnum
    uint8 DMS_EXPRESSION_ANGRY = 0
    uint8 DMS_EXPRESSION_FEAR = 1
    uint8 DMS_EXPRESSION_HAPPY = 2
    uint8 DMS_EXPRESSION_SAD = 3
    uint8 DMS_EXPRESSION_SURPRISE = 4
    uint8 DMS_EXPRESSION_NEUTRAL = 5
    uint8 DMS_EXPRESSION_RESERVED = 6
    uint8 DMS_EXPRESSION_RESERVED1 = 7
    uint8 DMS_EXPRESSION_RESERVED2 = 8
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSHealthInfoResult
    dms_msgs/DMSHeartRate heart_rate_result
    dms_msgs/RespiratoryRate respiratory_rate
    
    ================================================================================
    MSG: dms_msgs/DMSHeartRate
    uint8 CURRENT_RATE_AVAILABLE = 1
    uint8 MAX_RATE_AVAILABLE = 2
    uint8 MIN_RATE_AVAILABLE = 4
    uint8 AVERAGE_RATE_AVAILABLE = 8
    uint8 HEART_RATE_VARIABILITY_AVAILABLE = 16
    uint8 RESERVED = 32
    uint8 available
    float32 current_rate
    float32 max_heart_rate
    float32 min_heart_rate
    float32 average_rate
    float32 heart_rate_variability
    float32 reserved
    
    ================================================================================
    MSG: dms_msgs/RespiratoryRate
    uint8 RESP_RATE_AVAILABLE = 1
    uint8 RESERVED = 2
    uint8 RESERVED1 = 4
    uint8 available
    float32 resp_rate
    float32 reserved
    float32 reserved1
    
    ================================================================================
    MSG: dms_msgs/DMSUnresponsiveResult
    uint8 UN_AVAILABLE = 0
    uint8 UNRESPONSIVE_TYPE_AVAILABLE = 1
    uint8 ROI_CAUSED_UNRESPONSIVE_AVAILABLE = 2
    uint8 DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE = 4
    uint8 RESERVED = 8
    uint8 available
    dms_msgs/DMSUnresponsiveTypeEnum unresponsive_type
    uint8 roi_caused_unresponsive
    uint8 drowsiness_caused_unresponsive
    uint8 reserved
    int32 unresponsive_sensitivity
    string unresponsive_params
    
    ================================================================================
    MSG: dms_msgs/DMSUnresponsiveTypeEnum
    uint8 NORMAL_DRIVE_STATE = 0
    uint8 UNRESPONSIVE_DRIVE_STATE = 1
    uint8 UNRESPONSIVE_DRIVE_RESERVERD_STATE = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSFuncLimitedResult
    uint8 UN_AVAILABLE = 0
    uint8 FUNCTION_LIMITED_TYPE_AVAILABLE = 1
    uint8 L2_FUNCTION_LIMITED_TYPE_AVAILABLE = 2
    uint8 L3_FUNCTION_LIMITED_TYPE_AVAILABLE = 4
    uint8 RESERVED = 8
    uint8 available
    dms_msgs/DMSFunctionLimitedTypeEnum function_limited_type
    dms_msgs/L2DMSFunctionLimitedTypeEnum l2_function_limited_type
    dms_msgs/L3DMSFunctionLimitedTypeEnum l3_function_limited_type
    uint8 reserved
    string func_limited_params
    
    ================================================================================
    MSG: dms_msgs/DMSFunctionLimitedTypeEnum
    uint8 DMS_NORMAL_FUNCTION_STATE = 0
    uint8 DMS_LIMITED_FUNCTION_STATE = 1
    uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSFunctionLimitedTypeEnum
    uint8 DMS_NORMAL_FUNCTION_STATE = 0
    uint8 DMS_LIMITED_FUNCTION_STATE = 1
    uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSFunctionLimitedTypeEnum
    uint8 DMS_NORMAL_FUNCTION_STATE = 0
    uint8 DMS_LIMITED_FUNCTION_STATE = 1
    uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSAttentionDriveResult
    uint8 ATTENTION_DRIVE_AVAILABLE = 1
    uint8 L2_ATTENTION_DRIVE_AVAILABLE = 2
    uint8 L3_ATTENTION_DRIVE_AVAILABLE = 4
    uint8 RESERVED_AVAILABLE = 8
    uint8 available
    dms_msgs/DMSAttentionDriveTypeEnum attention_drive_type
    dms_msgs/L2DMSAttentionDriveTypeEnum l2_attention_drive_type
    dms_msgs/L3DMSAttentionDriveTypeEnum l3_attention_drive_type
    string reserved
    int32 attention_sensitivity
    string attention_params
    
    ================================================================================
    MSG: dms_msgs/DMSAttentionDriveTypeEnum
    uint8 NOT_FOCUSE_ON_DRIVING = 0
    uint8 FOCUSE_ON_DRIVING = 1
    uint8 RESERVED = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/L2DMSAttentionDriveTypeEnum
    uint8 NOT_FOCUSE_ON_DRIVING = 0
    uint8 FOCUSE_ON_DRIVING = 1
    uint8 RESERVED = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/L3DMSAttentionDriveTypeEnum
    uint8 NOT_FOCUSE_ON_DRIVING = 0
    uint8 FOCUSE_ON_DRIVING = 1
    uint8 RESERVED = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFidInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.feature !== undefined) {
      resolved.feature = msg.feature;
    }
    else {
      resolved.feature = ''
    }

    if (msg.usr_id !== undefined) {
      resolved.usr_id = msg.usr_id;
    }
    else {
      resolved.usr_id = ''
    }

    if (msg.feature_size !== undefined) {
      resolved.feature_size = msg.feature_size;
    }
    else {
      resolved.feature_size = 0
    }

    if (msg.fail_liveness !== undefined) {
      resolved.fail_liveness = msg.fail_liveness;
    }
    else {
      resolved.fail_liveness = 0
    }

    if (msg.liveness_score !== undefined) {
      resolved.liveness_score = msg.liveness_score;
    }
    else {
      resolved.liveness_score = 0.0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.gender_type !== undefined) {
      resolved.gender_type = DMSGenderTypeEnum.Resolve(msg.gender_type)
    }
    else {
      resolved.gender_type = new DMSGenderTypeEnum()
    }

    if (msg.frame_data !== undefined) {
      resolved.frame_data = DMSFrameResult.Resolve(msg.frame_data)
    }
    else {
      resolved.frame_data = new DMSFrameResult()
    }

    if (msg.feature_confidence !== undefined) {
      resolved.feature_confidence = msg.feature_confidence;
    }
    else {
      resolved.feature_confidence = 0.0
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
DMSFidInfo.Constants = {
  FACEID_AVAILABLE: 1,
  LIVENESS_AVAILABLE: 2,
  AGE_AVAILABLE: 4,
  GENDER_AVAILABLE: 8,
  RESERVED: 16,
  RESERVED1: 32,
}

module.exports = DMSFidInfo;
