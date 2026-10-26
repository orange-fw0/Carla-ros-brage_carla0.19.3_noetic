; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightSingleFrame2dInfo.msg.html

(cl:defclass <TrafficLightSingleFrame2dInfo> (roslisp-msg-protocol:ros-message)
  ((track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (camera_source
    :reader camera_source
    :initarg :camera_source
    :type landmark_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'landmark_msgs-msg:CameraSourceEnum))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type landmark_msgs-msg:CameraModelEnum
    :initform (cl:make-instance 'landmark_msgs-msg:CameraModelEnum))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (bounding_box_2d
    :reader bounding_box_2d
    :initarg :bounding_box_2d
    :type perception_interface_msgs-msg:Rect4f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Rect4f))
   (onoff
    :reader onoff
    :initarg :onoff
    :type (cl:vector perception_interface_msgs-msg:TrafficLightOnOffEnum)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:TrafficLightOnOffEnum :initial-element (cl:make-instance 'perception_interface_msgs-msg:TrafficLightOnOffEnum)))
   (group_type_scores
    :reader group_type_scores
    :initarg :group_type_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (shape_scores
    :reader shape_scores
    :initarg :shape_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (onoff_scores
    :reader onoff_scores
    :initarg :onoff_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (count_number
    :reader count_number
    :initarg :count_number
    :type cl:fixnum
    :initform 0)
   (bbox_type
    :reader bbox_type
    :initarg :bbox_type
    :type landmark_msgs-msg:TrafficLightBBoxTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightBBoxTypeEnum))
   (pattern
    :reader pattern
    :initarg :pattern
    :type (cl:vector landmark_msgs-msg:TrafficLightPatternEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficLightPatternEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficLightPatternEnum)))
   (status
    :reader status
    :initarg :status
    :type (cl:vector landmark_msgs-msg:TrafficLightStatusEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficLightStatusEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficLightStatusEnum)))
   (pattern_scores
    :reader pattern_scores
    :initarg :pattern_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (status_scores
    :reader status_scores
    :initarg :status_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (location_bv
    :reader location_bv
    :initarg :location_bv
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (heading_theta_bv
    :reader heading_theta_bv
    :initarg :heading_theta_bv
    :type cl:float
    :initform 0.0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform "")
   (available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0))
)

(cl:defclass TrafficLightSingleFrame2dInfo (<TrafficLightSingleFrame2dInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightSingleFrame2dInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightSingleFrame2dInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightSingleFrame2dInfo> is deprecated: use landmark_msgs-msg:TrafficLightSingleFrame2dInfo instead.")))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:camera_source-val is deprecated.  Use landmark_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:camera_model-val is deprecated.  Use landmark_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'bounding_box_2d-val :lambda-list '(m))
(cl:defmethod bounding_box_2d-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:bounding_box_2d-val is deprecated.  Use landmark_msgs-msg:bounding_box_2d instead.")
  (bounding_box_2d m))

(cl:ensure-generic-function 'onoff-val :lambda-list '(m))
(cl:defmethod onoff-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:onoff-val is deprecated.  Use landmark_msgs-msg:onoff instead.")
  (onoff m))

(cl:ensure-generic-function 'group_type_scores-val :lambda-list '(m))
(cl:defmethod group_type_scores-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:group_type_scores-val is deprecated.  Use landmark_msgs-msg:group_type_scores instead.")
  (group_type_scores m))

(cl:ensure-generic-function 'shape_scores-val :lambda-list '(m))
(cl:defmethod shape_scores-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:shape_scores-val is deprecated.  Use landmark_msgs-msg:shape_scores instead.")
  (shape_scores m))

(cl:ensure-generic-function 'onoff_scores-val :lambda-list '(m))
(cl:defmethod onoff_scores-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:onoff_scores-val is deprecated.  Use landmark_msgs-msg:onoff_scores instead.")
  (onoff_scores m))

(cl:ensure-generic-function 'count_number-val :lambda-list '(m))
(cl:defmethod count_number-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:count_number-val is deprecated.  Use landmark_msgs-msg:count_number instead.")
  (count_number m))

(cl:ensure-generic-function 'bbox_type-val :lambda-list '(m))
(cl:defmethod bbox_type-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:bbox_type-val is deprecated.  Use landmark_msgs-msg:bbox_type instead.")
  (bbox_type m))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pattern-val is deprecated.  Use landmark_msgs-msg:pattern instead.")
  (pattern m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:status-val is deprecated.  Use landmark_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'pattern_scores-val :lambda-list '(m))
(cl:defmethod pattern_scores-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pattern_scores-val is deprecated.  Use landmark_msgs-msg:pattern_scores instead.")
  (pattern_scores m))

(cl:ensure-generic-function 'status_scores-val :lambda-list '(m))
(cl:defmethod status_scores-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:status_scores-val is deprecated.  Use landmark_msgs-msg:status_scores instead.")
  (status_scores m))

(cl:ensure-generic-function 'location_bv-val :lambda-list '(m))
(cl:defmethod location_bv-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:location_bv-val is deprecated.  Use landmark_msgs-msg:location_bv instead.")
  (location_bv m))

(cl:ensure-generic-function 'heading_theta_bv-val :lambda-list '(m))
(cl:defmethod heading_theta_bv-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:heading_theta_bv-val is deprecated.  Use landmark_msgs-msg:heading_theta_bv instead.")
  (heading_theta_bv m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TrafficLightSingleFrame2dInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightSingleFrame2dInfo>)))
    "Constants for message type '<TrafficLightSingleFrame2dInfo>"
  '((:CAMERA_SOURCE_VALID . 1)
    (:CAMERA_MODEL_VALID . 2)
    (:SCORE_VALID . 4)
    (:BOUNDING_BOX_2D_VALID . 8)
    (:ONOFF_VALID . 16)
    (:GROUP_TYPE_SCORES_VALID . 32)
    (:SHAPE_SCORES_VALID . 64)
    (:ONOFF_SCORES_VALID . 128)
    (:COUNT_NUMBER_VALID . 256)
    (:BBOX_TYPE_VALID . 512)
    (:PATTERN_VALID . 1024)
    (:STATUS_VALID . 2048)
    (:PATTERN_SCORES_VALID . 4096)
    (:STATUS_SCORES_VALID . 8192)
    (:LOCATION_BV_VALID . 16384)
    (:HEADING_THETA_BV_VALID . 32768))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightSingleFrame2dInfo)))
    "Constants for message type 'TrafficLightSingleFrame2dInfo"
  '((:CAMERA_SOURCE_VALID . 1)
    (:CAMERA_MODEL_VALID . 2)
    (:SCORE_VALID . 4)
    (:BOUNDING_BOX_2D_VALID . 8)
    (:ONOFF_VALID . 16)
    (:GROUP_TYPE_SCORES_VALID . 32)
    (:SHAPE_SCORES_VALID . 64)
    (:ONOFF_SCORES_VALID . 128)
    (:COUNT_NUMBER_VALID . 256)
    (:BBOX_TYPE_VALID . 512)
    (:PATTERN_VALID . 1024)
    (:STATUS_VALID . 2048)
    (:PATTERN_SCORES_VALID . 4096)
    (:STATUS_SCORES_VALID . 8192)
    (:LOCATION_BV_VALID . 16384)
    (:HEADING_THETA_BV_VALID . 32768))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightSingleFrame2dInfo>) ostream)
  "Serializes a message object of type '<TrafficLightSingleFrame2dInfo>"
  (cl:let* ((signed (cl:slot-value msg 'track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_2d) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'onoff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'onoff))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'group_type_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'group_type_scores))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shape_scores))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'onoff_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'onoff_scores))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count_number)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox_type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pattern))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pattern))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pattern_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pattern_scores))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'status_scores))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location_bv) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_theta_bv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightSingleFrame2dInfo>) istream)
  "Deserializes a message object of type '<TrafficLightSingleFrame2dInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_2d) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'onoff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'onoff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:TrafficLightOnOffEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'group_type_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'group_type_scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'onoff_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'onoff_scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count_number)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox_type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pattern) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pattern)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficLightPatternEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficLightStatusEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pattern_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pattern_scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status_scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location_bv) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_theta_bv) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightSingleFrame2dInfo>)))
  "Returns string type for a message object of type '<TrafficLightSingleFrame2dInfo>"
  "landmark_msgs/TrafficLightSingleFrame2dInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightSingleFrame2dInfo)))
  "Returns string type for a message object of type 'TrafficLightSingleFrame2dInfo"
  "landmark_msgs/TrafficLightSingleFrame2dInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightSingleFrame2dInfo>)))
  "Returns md5sum for a message object of type '<TrafficLightSingleFrame2dInfo>"
  "727176a124a0bae60e7ec4b77f231a36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightSingleFrame2dInfo)))
  "Returns md5sum for a message object of type 'TrafficLightSingleFrame2dInfo"
  "727176a124a0bae60e7ec4b77f231a36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightSingleFrame2dInfo>)))
  "Returns full string definition for message of type '<TrafficLightSingleFrame2dInfo>"
  (cl:format cl:nil "uint32 CAMERA_SOURCE_VALID = 1~%uint32 CAMERA_MODEL_VALID = 2~%uint32 SCORE_VALID = 4~%uint32 BOUNDING_BOX_2D_VALID = 8~%uint32 ONOFF_VALID = 16~%uint32 GROUP_TYPE_SCORES_VALID = 32~%uint32 SHAPE_SCORES_VALID = 64~%uint32 ONOFF_SCORES_VALID = 128~%uint32 COUNT_NUMBER_VALID = 256~%uint32 BBOX_TYPE_VALID = 512~%uint32 PATTERN_VALID = 1024~%uint32 STATUS_VALID = 2048~%uint32 PATTERN_SCORES_VALID = 4096~%uint32 STATUS_SCORES_VALID = 8192~%uint32 LOCATION_BV_VALID = 16384~%uint32 HEADING_THETA_BV_VALID = 32768~%int32 track_id~%landmark_msgs/CameraSourceEnum camera_source~%landmark_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/Rect4f bounding_box_2d~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%float32[] group_type_scores~%float32[] shape_scores~%float32[] onoff_scores~%uint8 count_number~%landmark_msgs/TrafficLightBBoxTypeEnum bbox_type~%landmark_msgs/TrafficLightPatternEnum[] pattern~%landmark_msgs/TrafficLightStatusEnum[] status~%float32[] pattern_scores~%float32[] status_scores~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%string reserved_info~%uint32 available~%~%================================================================================~%MSG: landmark_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightOnOffEnum~%uint8 TRAFFIC_LIGHT_ONOFF_ON = 0~%uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1~%uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2~%uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightBBoxTypeEnum~%uint8 LIGHT_GROUP = 0~%uint8 LIGHT_BULB = 1~%uint8 LIGHT_TYPE_GLIM_HALO = 2~%uint8 LIGHT_TYPE_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23~%uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24~%uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25~%uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 TRAFFIC_LIGHT_STATUS_ON = 13~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightSingleFrame2dInfo)))
  "Returns full string definition for message of type 'TrafficLightSingleFrame2dInfo"
  (cl:format cl:nil "uint32 CAMERA_SOURCE_VALID = 1~%uint32 CAMERA_MODEL_VALID = 2~%uint32 SCORE_VALID = 4~%uint32 BOUNDING_BOX_2D_VALID = 8~%uint32 ONOFF_VALID = 16~%uint32 GROUP_TYPE_SCORES_VALID = 32~%uint32 SHAPE_SCORES_VALID = 64~%uint32 ONOFF_SCORES_VALID = 128~%uint32 COUNT_NUMBER_VALID = 256~%uint32 BBOX_TYPE_VALID = 512~%uint32 PATTERN_VALID = 1024~%uint32 STATUS_VALID = 2048~%uint32 PATTERN_SCORES_VALID = 4096~%uint32 STATUS_SCORES_VALID = 8192~%uint32 LOCATION_BV_VALID = 16384~%uint32 HEADING_THETA_BV_VALID = 32768~%int32 track_id~%landmark_msgs/CameraSourceEnum camera_source~%landmark_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/Rect4f bounding_box_2d~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%float32[] group_type_scores~%float32[] shape_scores~%float32[] onoff_scores~%uint8 count_number~%landmark_msgs/TrafficLightBBoxTypeEnum bbox_type~%landmark_msgs/TrafficLightPatternEnum[] pattern~%landmark_msgs/TrafficLightStatusEnum[] status~%float32[] pattern_scores~%float32[] status_scores~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%string reserved_info~%uint32 available~%~%================================================================================~%MSG: landmark_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightOnOffEnum~%uint8 TRAFFIC_LIGHT_ONOFF_ON = 0~%uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1~%uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2~%uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightBBoxTypeEnum~%uint8 LIGHT_GROUP = 0~%uint8 LIGHT_BULB = 1~%uint8 LIGHT_TYPE_GLIM_HALO = 2~%uint8 LIGHT_TYPE_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23~%uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24~%uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25~%uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 TRAFFIC_LIGHT_STATUS_ON = 13~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightSingleFrame2dInfo>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_2d))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'onoff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'group_type_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'onoff_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pattern) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pattern_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location_bv))
     4
     4 (cl:length (cl:slot-value msg 'reserved_info))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightSingleFrame2dInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightSingleFrame2dInfo
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':score (score msg))
    (cl:cons ':bounding_box_2d (bounding_box_2d msg))
    (cl:cons ':onoff (onoff msg))
    (cl:cons ':group_type_scores (group_type_scores msg))
    (cl:cons ':shape_scores (shape_scores msg))
    (cl:cons ':onoff_scores (onoff_scores msg))
    (cl:cons ':count_number (count_number msg))
    (cl:cons ':bbox_type (bbox_type msg))
    (cl:cons ':pattern (pattern msg))
    (cl:cons ':status (status msg))
    (cl:cons ':pattern_scores (pattern_scores msg))
    (cl:cons ':status_scores (status_scores msg))
    (cl:cons ':location_bv (location_bv msg))
    (cl:cons ':heading_theta_bv (heading_theta_bv msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':available (available msg))
))
