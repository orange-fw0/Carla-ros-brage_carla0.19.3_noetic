// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OMSMeta = require('./OMSMeta.js');
let OMSFacepProperty = require('./OMSFacepProperty.js');
let OMSBodyProperty = require('./OMSBodyProperty.js');
let OMSGestureProperty = require('./OMSGestureProperty.js');
let OMSObjectProperty = require('./OMSObjectProperty.js');
let OMSFusaResult = require('./OMSFusaResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OMS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.face_property = null;
      this.body_property = null;
      this.gesture_property = null;
      this.object_property = null;
      this.fusa = null;
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
        this.meta = new OMSMeta();
      }
      if (initObj.hasOwnProperty('face_property')) {
        this.face_property = initObj.face_property
      }
      else {
        this.face_property = new OMSFacepProperty();
      }
      if (initObj.hasOwnProperty('body_property')) {
        this.body_property = initObj.body_property
      }
      else {
        this.body_property = new OMSBodyProperty();
      }
      if (initObj.hasOwnProperty('gesture_property')) {
        this.gesture_property = initObj.gesture_property
      }
      else {
        this.gesture_property = new OMSGestureProperty();
      }
      if (initObj.hasOwnProperty('object_property')) {
        this.object_property = initObj.object_property
      }
      else {
        this.object_property = new OMSObjectProperty();
      }
      if (initObj.hasOwnProperty('fusa')) {
        this.fusa = initObj.fusa
      }
      else {
        this.fusa = new OMSFusaResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMS
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = OMSMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [face_property]
    bufferOffset = OMSFacepProperty.serialize(obj.face_property, buffer, bufferOffset);
    // Serialize message field [body_property]
    bufferOffset = OMSBodyProperty.serialize(obj.body_property, buffer, bufferOffset);
    // Serialize message field [gesture_property]
    bufferOffset = OMSGestureProperty.serialize(obj.gesture_property, buffer, bufferOffset);
    // Serialize message field [object_property]
    bufferOffset = OMSObjectProperty.serialize(obj.object_property, buffer, bufferOffset);
    // Serialize message field [fusa]
    bufferOffset = OMSFusaResult.serialize(obj.fusa, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMS
    let len;
    let data = new OMS(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = OMSMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [face_property]
    data.face_property = OMSFacepProperty.deserialize(buffer, bufferOffset);
    // Deserialize message field [body_property]
    data.body_property = OMSBodyProperty.deserialize(buffer, bufferOffset);
    // Deserialize message field [gesture_property]
    data.gesture_property = OMSGestureProperty.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_property]
    data.object_property = OMSObjectProperty.deserialize(buffer, bufferOffset);
    // Deserialize message field [fusa]
    data.fusa = OMSFusaResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += OMSMeta.getMessageSize(object.meta);
    length += OMSFacepProperty.getMessageSize(object.face_property);
    length += OMSBodyProperty.getMessageSize(object.body_property);
    length += OMSGestureProperty.getMessageSize(object.gesture_property);
    length += OMSObjectProperty.getMessageSize(object.object_property);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '780b97fabd55b8aa80ce4ba9f9b54824';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    oms_msgs/OMSMeta meta
    oms_msgs/OMSFacepProperty face_property
    oms_msgs/OMSBodyProperty body_property
    oms_msgs/OMSGestureProperty gesture_property
    oms_msgs/OMSObjectProperty object_property
    oms_msgs/OMSFusaResult fusa
    
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
    MSG: oms_msgs/OMSMeta
    uint8 FACE_RESULT_AVAILABLE = 1
    uint8 BODY_RESULT_AVAILABLE = 2
    uint8 GESTURE_RESULT_AVAILABLE = 4
    uint8 OBJECT_RESULT_AVAILABLE = 8
    uint8 available
    uint64 timestamp_us
    string frame_id
    
    ================================================================================
    MSG: oms_msgs/OMSFacepProperty
    oms_msgs/OMSFaceInfo[] face_infos
    
    ================================================================================
    MSG: oms_msgs/OMSFaceInfo
    uint8 seat_id
    dms_msgs/DMSFrameResult face_frame_info
    dms_msgs/DMSEventResult face_event_info
    
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
    
    ================================================================================
    MSG: dms_msgs/DMSEventResult
    dms_msgs/DMSEventInfo dms_event_info
    dms_msgs/DMSFidInfo dms_fid_info
    dms_msgs/DMSFidRegInfo dms_fid_reg_info
    dms_msgs/DMSFidRecogInfo dms_fid_recog_info
    dms_msgs/DMSFidDelInfo dms_fid_del_info
    dms_msgs/DMSFidUserListInfo dms_user_list_info
    dms_msgs/DMSFidStateMachineTypeEnum dms_fid_state_machine_type
    dms_msgs/DMSExtCalibrationResult ext_calibration_info
    
    ================================================================================
    MSG: dms_msgs/DMSEventInfo
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    dms_msgs/DMSEventTypeEnum event_type
    uint64 time_start
    uint64 time_end
    string event_desc
    string event_id
    
    ================================================================================
    MSG: dms_msgs/DMSEventTypeEnum
    uint8 DMS_EVENT_UNKNOWN = 0
    uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1
    uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2
    uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100
    uint8 DMS_EVENT_WARNING_YAWN = 101
    uint8 DMS_EVENT_WARNING_DRINK = 102
    uint8 DMS_EVENT_WARNING_PHONE_CALL = 103
    uint8 DMS_EVENT_WARNING_SMOKE = 104
    uint8 DMS_EVENT_WARNING_DROWSINESS = 105
    uint8 DMS_EVENT_DISTRACTION = 106
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111
    uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112
    uint8 DMS_EVENT_HEAD_SHAKE = 109
    uint8 DMS_EVENT_HEAD_NOD = 110
    uint8 DMS_EVENT_MUTE = 111
    uint8 DMS_EVENT_RESERVED = 112
    uint8 DMS_EVENT_RESERVED1 = 113
    uint8 DMS_EVENT_RESERVED2 = 114
    uint8 DMS_EVENT_RESERVED3 = 115
    uint8 DMS_EVENT_RESERVED4 = 116
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSFidInfo
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
    MSG: dms_msgs/DMSFidRegInfo
    uint8 REG_INFO_UN_AVAILABLE = 0
    uint8 REG_INFO_AVAILABLE = 1
    uint8 available
    string user_id
    uint64 register_timestamp_us
    uint64 register_cancel_timestamp_us
    dms_msgs/RegResponseTypeEnum reg_response
    dms_msgs/CancelResponseTypeEnum cancel_response
    dms_msgs/RegStatusTypeEnum reg_status
    dms_msgs/RegErrorTypeEnum reg_error
    
    ================================================================================
    MSG: dms_msgs/RegResponseTypeEnum
    uint8 RESPOND_FAIL = 0
    uint8 RESPOND_SUCCESS = 1
    uint8 RESERVED = 2
    uint8 RESERVED1 = 3
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/CancelResponseTypeEnum
    uint8 NO_ACTION = 0
    uint8 CANCEL_SUCCESS = 1
    uint8 CANCEL_FAIL = 2
    uint8 RESERVED = 3
    uint8 RESERVED1 = 4
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/RegStatusTypeEnum
    uint8 NO_ACTION = 0
    uint8 REGISTERING = 1
    uint8 REGISTER_SUCCESS = 2
    uint8 REGISTER_FAIL = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/RegErrorTypeEnum
    uint8 NO_ERROR = 0
    uint8 CAMERA_ABNORMAL = 1
    uint8 NO_FACE = 2
    uint8 LOW_FACE_QUALITY = 3
    uint8 FACE_NOT_ALIVE = 4
    uint8 LARGE_HEAD_POSE = 5
    uint8 ID_EXISTS = 6
    uint8 FACE_WRITTEN_FAIL = 7
    uint8 TIME_OUT = 8
    uint8 FACE_EXISTS = 9
    uint8 SYSTEM_ERROR = 10
    uint8 RESERVED = 11
    uint8 RESERVED1 = 12
    uint8 RESERVED2 = 13
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSFidRecogInfo
    uint8 REC_INFO_UN_AVAILABLE = 0
    uint8 REC_INFO_AVAILABLE = 1
    uint8 available
    string user_id
    uint64 recognize_timestamp_us
    uint64 recognize_cancel_timestamp_us
    dms_msgs/RecogResponseTypeEnum recog_response
    dms_msgs/CancelResponseTypeEnum cancel_response
    dms_msgs/RecogStatusTypeEnum recog_status
    dms_msgs/RecogErrorTypeEnum recog_error
    
    ================================================================================
    MSG: dms_msgs/RecogResponseTypeEnum
    uint8 RESPOND_FAIL = 0
    uint8 RESPOND_SUCCESS = 1
    uint8 RESERVED = 2
    uint8 RESERVED1 = 3
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/RecogStatusTypeEnum
    uint8 NO_ACTION = 0
    uint8 Recognizing = 1
    uint8 Recog_SUCCESS = 2
    uint8 Recog_FAIL = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/RecogErrorTypeEnum
    uint8 NO_ERROR = 0
    uint8 CAMERA_ABNORMAL = 1
    uint8 NO_FACE = 2
    uint8 LOW_FACE_QUALITY = 3
    uint8 FACE_NOT_ALIVE = 4
    uint8 USER_NOT_EXIST = 5
    uint8 TIME_OUT = 6
    uint8 EMPTY_USER_LIST = 7
    uint8 SYSTEM_ERROR = 8
    uint8 RESERVED = 9
    uint8 RESERVED1 = 10
    uint8 RESERVED2 = 11
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSFidDelInfo
    uint8 DEL_INFO_UN_AVAILABLE = 0
    uint8 DEL_INFO_AVAILABLE = 1
    uint8 available
    string user_id
    uint64 delete_timestamp_us
    dms_msgs/DelResponseTypeEnum del_response
    dms_msgs/DelStatusTypeEnum del_status
    dms_msgs/DelErrorTypeEnum del_error
    
    ================================================================================
    MSG: dms_msgs/DelResponseTypeEnum
    uint8 NO_ACTION = 0
    uint8 RESPOND_SUCCESS = 1
    uint8 RESPOND_FAIL = 2
    uint8 RESERVED = 3
    uint8 RESERVED1 = 4
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DelStatusTypeEnum
    uint8 DEL_FAIL = 0
    uint8 DELETING = 1
    uint8 DEL_SUCCESS = 2
    uint8 RESERVED = 3
    uint8 RESERVED1 = 4
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DelErrorTypeEnum
    uint8 NO_ERROR = 0
    uint8 NO_USER = 1
    uint8 TIME_OUT = 2
    uint8 SYSTEM_ERROR = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSFidUserListInfo
    uint8 USER_LIST_INFO_UN_AVAILABLE = 0
    uint8 USER_LIST_INFO_AVAILABLE = 1
    uint8 available
    dms_msgs/DMSFidUserInfo[] user_list
    dms_msgs/UserListSyncTypeEnum user_list_sync_type
    
    ================================================================================
    MSG: dms_msgs/DMSFidUserInfo
    string user_id
    string create_time
    
    ================================================================================
    MSG: dms_msgs/UserListSyncTypeEnum
    uint8 NO_ACTION = 0
    uint8 USER_LIST_SYNC_SUCCESS = 1
    uint8 USER_LIST_SYNC_FAIL = 2
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSFidStateMachineTypeEnum
    uint8 OFF = 0
    uint8 PASSIVE = 1
    uint8 STANDBY = 2
    uint8 REGISTRATION = 3
    uint8 RECOGNITION = 4
    uint8 DELETE = 5
    uint8 FAILURE = 6
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSExtCalibrationResult
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    float32[] translation_matrix
    float32[] rotation_matrix
    dms_msgs/DMSEventTypeEnum event_type
    
    ================================================================================
    MSG: oms_msgs/OMSBodyProperty
    oms_msgs/OMSRect2f[] det_roi
    oms_msgs/OMSBodyInfo[] body_infos
    oms_msgs/OMSSodStatus[] sod_status
    
    ================================================================================
    MSG: oms_msgs/OMSRect2f
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSBodyInfo
    uint8 seat_id
    oms_msgs/OMSBodyDetResult body_det_result
    oms_msgs/OMSSeatBeltStatus seatbelt_status
    oms_msgs/OMSAgeGroup age_cls_result
    oms_msgs/OMSBodyEventInfo body_event_info
    
    ================================================================================
    MSG: oms_msgs/OMSBodyDetResult
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f body_rect
    oms_msgs/OMSPoint2f[] body_keypoints
    
    ================================================================================
    MSG: oms_msgs/OMSPoint2f
    float32 x
    float32 y
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSSeatBeltStatus
    uint8 UNAVAILABLE = 0
    uint8 BUCKLE_UP = 1
    uint8 UNBUCKLE = 2
    uint8 UNCERTAIN = 3
    uint8 value
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSAgeGroup
    uint8 UNAVAILABLE = 0
    uint8 BABY = 1
    uint8 CHILD = 2
    uint8 YOUTH = 3
    uint8 OLD = 4
    uint8 UNCERTAIN = 5
    uint8 value
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSBodyEventInfo
    uint8 UNAVAILABLE = 0
    uint8 HAND_OUT_OF_WINDOW = 1
    uint8 BODY_LEAVING_THE_SEAT = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 RESERVED3 = 5
    uint8 RESERVED4 = 6
    uint8 RESERVED5 = 7
    uint8 UNCERTAIN = 8
    uint8 value
    float32 score
    uint64 start_time
    uint64 end_time
    
    ================================================================================
    MSG: oms_msgs/OMSSodStatus
    uint8 UNAVAILABLE = 0
    uint8 OCCUPIED = 1
    uint8 UNOCCUPIED = 2
    uint8 UNCERTAIN = 3
    uint8 value
    uint8 seat_id
    
    ================================================================================
    MSG: oms_msgs/OMSGestureProperty
    oms_msgs/OMSRect2f[] det_roi
    oms_msgs/OMSTargetHandInfo target_hand
    oms_msgs/OMSHandDetResult[] all_hands_det_results
    
    ================================================================================
    MSG: oms_msgs/OMSTargetHandInfo
    oms_msgs/OMSHandDetResult hand_det_result
    oms_msgs/OMSStaticGestureResult static_gesture_type
    oms_msgs/OMSDynamicGestureEvent dynamic_gesture_event
    
    ================================================================================
    MSG: oms_msgs/OMSHandDetResult
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f hand_rect
    oms_msgs/OMSPoint2f[] hand_keypoints
    
    ================================================================================
    MSG: oms_msgs/OMSStaticGestureResult
    uint8 UNAVAILABLE = 0
    uint8 STATIC_GESTURE_FIST = 1
    uint8 STATIC_GESTURE_ONE = 2
    uint8 STATIC_GESTURE_TWO = 3
    uint8 STATIC_GESTURE_THREE = 4
    uint8 STATIC_GESTURE_FOUR = 5
    uint8 STATIC_GESTURE_FIVE = 6
    uint8 STATIC_GESTURE_SIX = 7
    uint8 STATIC_GESTURE_SEVEN = 8
    uint8 STATIC_GESTURE_EIGHT = 9
    uint8 STATIC_GESTURE_NINE = 10
    uint8 STATIC_GESTURE_OK = 11
    uint8 STATIC_GESTURE_THUMB_UP = 12
    uint8 STATIC_GESTURE_THUMB_LEFT = 13
    uint8 STATIC_GESTURE_THUMB_RIGHT = 14
    uint8 STATIC_GESTURE_THUMB_DOWN = 15
    uint8 STATIC_GESTURE_FINGER_LEFT = 16
    uint8 STATIC_GESTURE_FINGER_RIGHT = 17
    uint8 STATIC_GESTURE_FINGER_UP = 18
    uint8 STATIC_GESTURE_RESERVED1 = 19
    uint8 STATIC_GESTURE_RESERVED2 = 20
    uint8 STATIC_GESTURE_RESERVED3 = 21
    uint8 STATIC_GESTURE_RESERVED4 = 22
    uint8 STATIC_GESTURE_RESERVED5 = 23
    uint8 STATIC_GESTURE_OTHER = 24
    uint8 UNCERTAIN = 25
    uint8 value
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSDynamicGestureEvent
    uint8 UNAVAILABLE = 0
    uint8 DYNAMIC_GESTURE_FINGER_LASER = 1
    uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2
    uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3
    uint8 DYNAMIC_GESTURE_PINCH = 4
    uint8 DYNAMIC_GESTURE_FIST = 5
    uint8 DYNAMIC_GESTURE_GRAB = 6
    uint8 DYNAMIC_GESTURE_PALM = 7
    uint8 DYNAMIC_GESTURE_OK = 8
    uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9
    uint8 DYNAMIC_GESTURE_THUMBUP = 10
    uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11
    uint8 DYNAMIC_GESTURE_RESERVED1 = 12
    uint8 DYNAMIC_GESTURE_RESERVED2 = 13
    uint8 DYNAMIC_GESTURE_RESERVED3 = 14
    uint8 DYNAMIC_GESTURE_RESERVED4 = 15
    uint8 DYNAMIC_GESTURE_RESERVED5 = 16
    uint8 UNCERTAIN = 17
    uint8 value
    float32 score
    uint64 start_time
    uint64 end_time
    
    ================================================================================
    MSG: oms_msgs/OMSObjectProperty
    oms_msgs/OMSRect2f[] det_roi
    oms_msgs/OMSObjectInfo[] object_infos
    
    ================================================================================
    MSG: oms_msgs/OMSObjectInfo
    uint8 seat_id
    oms_msgs/OMSObjectType object_type
    oms_msgs/OMSObjectDetResult object_rect
    
    ================================================================================
    MSG: oms_msgs/OMSObjectType
    uint8 UNAVAILABLE = 0
    uint8 COMPUTER = 1
    uint8 PAD = 2
    uint8 WALLET = 3
    uint8 BACKPACK = 4
    uint8 HANDBAG = 5
    uint8 PHONE = 6
    uint8 CHILD_SEAT_HARD = 7
    uint8 CHILD_SEAT_SOFT = 8
    uint8 CHILD_SEAT_BASKET = 9
    uint8 CHILD_SEAT_UNUSUAL = 10
    uint8 CAT = 11
    uint8 DOG = 12
    uint8 RESERVED1 = 13
    uint8 RESERVED2 = 14
    uint8 RESERVED3 = 15
    uint8 RESERVED4 = 16
    uint8 RESERVED5 = 17
    uint8 UNCERTAIN = 18
    uint8 value
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSObjectDetResult
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f object_rect
    
    ================================================================================
    MSG: oms_msgs/OMSFusaResult
    uint8 TOO_DARK_BRIGHT_AVAILABLE = 1
    uint8 OCCLUSION_AVAILABLE = 2
    uint8 GLASS_STATUS_AVAILABLE = 4
    uint8 TEARING_AVAILABLE = 8
    uint8 FREEZING_AVAILABLE = 16
    uint8 FPS_ABNORMAL_AVAILABLE = 32
    uint8 available
    oms_msgs/OMSCameraOcclusionTypeEnum too_dark_bright_status
    oms_msgs/OMSCameraOcclusionTypeEnum occlusion_status
    oms_msgs/OMSGlassStatusTypeEnum glass_status
    float32 occlusion_score
    bool frame_tearing
    bool frame_freezing
    bool frame_fps_abnormal
    
    ================================================================================
    MSG: oms_msgs/OMSCameraOcclusionTypeEnum
    uint8 OMS_CAMERA_NO_BLOCK = 0
    uint8 OMS_CAMERA_BLOCK = 1
    uint8 value
    
    ================================================================================
    MSG: oms_msgs/OMSGlassStatusTypeEnum
    uint8 OMS_GLASSES_UNKNOWN = 0
    uint8 OMS_GLASSES_IR_BLOCK_ON = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMS(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = OMSMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new OMSMeta()
    }

    if (msg.face_property !== undefined) {
      resolved.face_property = OMSFacepProperty.Resolve(msg.face_property)
    }
    else {
      resolved.face_property = new OMSFacepProperty()
    }

    if (msg.body_property !== undefined) {
      resolved.body_property = OMSBodyProperty.Resolve(msg.body_property)
    }
    else {
      resolved.body_property = new OMSBodyProperty()
    }

    if (msg.gesture_property !== undefined) {
      resolved.gesture_property = OMSGestureProperty.Resolve(msg.gesture_property)
    }
    else {
      resolved.gesture_property = new OMSGestureProperty()
    }

    if (msg.object_property !== undefined) {
      resolved.object_property = OMSObjectProperty.Resolve(msg.object_property)
    }
    else {
      resolved.object_property = new OMSObjectProperty()
    }

    if (msg.fusa !== undefined) {
      resolved.fusa = OMSFusaResult.Resolve(msg.fusa)
    }
    else {
      resolved.fusa = new OMSFusaResult()
    }

    return resolved;
    }
};

module.exports = OMS;
