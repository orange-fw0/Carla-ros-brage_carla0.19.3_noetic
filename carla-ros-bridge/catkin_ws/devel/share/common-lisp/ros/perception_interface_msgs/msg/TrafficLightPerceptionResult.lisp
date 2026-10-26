; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightPerceptionResult.msg.html

(cl:defclass <TrafficLightPerceptionResult> (roslisp-msg-protocol:ros-message)
  ((cross_id
    :reader cross_id
    :initarg :cross_id
    :type cl:integer
    :initform 0)
   (in_fov
    :reader in_fov
    :initarg :in_fov
    :type perception_interface_msgs-msg:TrafficLightInFov
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficLightInFov))
   (traffic_light_roi
    :reader traffic_light_roi
    :initarg :traffic_light_roi
    :type (cl:vector perception_interface_msgs-msg:TrafficLightROI)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:TrafficLightROI :initial-element (cl:make-instance 'perception_interface_msgs-msg:TrafficLightROI)))
   (traffic_light_single_frame
    :reader traffic_light_single_frame
    :initarg :traffic_light_single_frame
    :type (cl:vector perception_interface_msgs-msg:TrafficLightSingleFrame)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:TrafficLightSingleFrame :initial-element (cl:make-instance 'perception_interface_msgs-msg:TrafficLightSingleFrame)))
   (traffic_light_multi_frame
    :reader traffic_light_multi_frame
    :initarg :traffic_light_multi_frame
    :type (cl:vector perception_interface_msgs-msg:TrafficLightMultiFrame)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:TrafficLightMultiFrame :initial-element (cl:make-instance 'perception_interface_msgs-msg:TrafficLightMultiFrame)))
   (traffic_light_decision
    :reader traffic_light_decision
    :initarg :traffic_light_decision
    :type (cl:vector perception_interface_msgs-msg:TrafficLightDecision)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:TrafficLightDecision :initial-element (cl:make-instance 'perception_interface_msgs-msg:TrafficLightDecision)))
   (hdmap_traffic_light_information
    :reader hdmap_traffic_light_information
    :initarg :hdmap_traffic_light_information
    :type perception_interface_msgs-msg:HDMapTafficLightInformation
    :initform (cl:make-instance 'perception_interface_msgs-msg:HDMapTafficLightInformation))
   (physical_traffic_light_single_frame
    :reader physical_traffic_light_single_frame
    :initarg :physical_traffic_light_single_frame
    :type (cl:vector perception_interface_msgs-msg:PhysicalTrafficLightSingleFrame)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:PhysicalTrafficLightSingleFrame :initial-element (cl:make-instance 'perception_interface_msgs-msg:PhysicalTrafficLightSingleFrame)))
   (physical_traffic_light_multi_frame
    :reader physical_traffic_light_multi_frame
    :initarg :physical_traffic_light_multi_frame
    :type (cl:vector perception_interface_msgs-msg:PhysicalTrafficLightMultiFrame)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:PhysicalTrafficLightMultiFrame :initial-element (cl:make-instance 'perception_interface_msgs-msg:PhysicalTrafficLightMultiFrame))))
)

(cl:defclass TrafficLightPerceptionResult (<TrafficLightPerceptionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightPerceptionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightPerceptionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightPerceptionResult> is deprecated: use perception_interface_msgs-msg:TrafficLightPerceptionResult instead.")))

(cl:ensure-generic-function 'cross_id-val :lambda-list '(m))
(cl:defmethod cross_id-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:cross_id-val is deprecated.  Use perception_interface_msgs-msg:cross_id instead.")
  (cross_id m))

(cl:ensure-generic-function 'in_fov-val :lambda-list '(m))
(cl:defmethod in_fov-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:in_fov-val is deprecated.  Use perception_interface_msgs-msg:in_fov instead.")
  (in_fov m))

(cl:ensure-generic-function 'traffic_light_roi-val :lambda-list '(m))
(cl:defmethod traffic_light_roi-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:traffic_light_roi-val is deprecated.  Use perception_interface_msgs-msg:traffic_light_roi instead.")
  (traffic_light_roi m))

(cl:ensure-generic-function 'traffic_light_single_frame-val :lambda-list '(m))
(cl:defmethod traffic_light_single_frame-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:traffic_light_single_frame-val is deprecated.  Use perception_interface_msgs-msg:traffic_light_single_frame instead.")
  (traffic_light_single_frame m))

(cl:ensure-generic-function 'traffic_light_multi_frame-val :lambda-list '(m))
(cl:defmethod traffic_light_multi_frame-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:traffic_light_multi_frame-val is deprecated.  Use perception_interface_msgs-msg:traffic_light_multi_frame instead.")
  (traffic_light_multi_frame m))

(cl:ensure-generic-function 'traffic_light_decision-val :lambda-list '(m))
(cl:defmethod traffic_light_decision-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:traffic_light_decision-val is deprecated.  Use perception_interface_msgs-msg:traffic_light_decision instead.")
  (traffic_light_decision m))

(cl:ensure-generic-function 'hdmap_traffic_light_information-val :lambda-list '(m))
(cl:defmethod hdmap_traffic_light_information-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:hdmap_traffic_light_information-val is deprecated.  Use perception_interface_msgs-msg:hdmap_traffic_light_information instead.")
  (hdmap_traffic_light_information m))

(cl:ensure-generic-function 'physical_traffic_light_single_frame-val :lambda-list '(m))
(cl:defmethod physical_traffic_light_single_frame-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:physical_traffic_light_single_frame-val is deprecated.  Use perception_interface_msgs-msg:physical_traffic_light_single_frame instead.")
  (physical_traffic_light_single_frame m))

(cl:ensure-generic-function 'physical_traffic_light_multi_frame-val :lambda-list '(m))
(cl:defmethod physical_traffic_light_multi_frame-val ((m <TrafficLightPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:physical_traffic_light_multi_frame-val is deprecated.  Use perception_interface_msgs-msg:physical_traffic_light_multi_frame instead.")
  (physical_traffic_light_multi_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightPerceptionResult>) ostream)
  "Serializes a message object of type '<TrafficLightPerceptionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cross_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cross_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cross_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cross_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'cross_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'cross_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'cross_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'cross_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'in_fov) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_roi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_roi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_single_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_single_frame))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_multi_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_multi_frame))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_decision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_decision))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hdmap_traffic_light_information) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'physical_traffic_light_single_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'physical_traffic_light_single_frame))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'physical_traffic_light_multi_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'physical_traffic_light_multi_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightPerceptionResult>) istream)
  "Deserializes a message object of type '<TrafficLightPerceptionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cross_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cross_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cross_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cross_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'cross_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'cross_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'cross_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'cross_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'in_fov) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_roi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_roi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:TrafficLightROI))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_single_frame) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_single_frame)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:TrafficLightSingleFrame))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_multi_frame) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_multi_frame)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:TrafficLightMultiFrame))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_decision) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_decision)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:TrafficLightDecision))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hdmap_traffic_light_information) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'physical_traffic_light_single_frame) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'physical_traffic_light_single_frame)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:PhysicalTrafficLightSingleFrame))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'physical_traffic_light_multi_frame) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'physical_traffic_light_multi_frame)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:PhysicalTrafficLightMultiFrame))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightPerceptionResult>)))
  "Returns string type for a message object of type '<TrafficLightPerceptionResult>"
  "perception_interface_msgs/TrafficLightPerceptionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightPerceptionResult)))
  "Returns string type for a message object of type 'TrafficLightPerceptionResult"
  "perception_interface_msgs/TrafficLightPerceptionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightPerceptionResult>)))
  "Returns md5sum for a message object of type '<TrafficLightPerceptionResult>"
  "06bac2504e379afdf9b0c9e8de2bb35f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightPerceptionResult)))
  "Returns md5sum for a message object of type 'TrafficLightPerceptionResult"
  "06bac2504e379afdf9b0c9e8de2bb35f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightPerceptionResult>)))
  "Returns full string definition for message of type '<TrafficLightPerceptionResult>"
  (cl:format cl:nil "uint64 cross_id~%perception_interface_msgs/TrafficLightInFov in_fov~%perception_interface_msgs/TrafficLightROI[] traffic_light_roi~%perception_interface_msgs/TrafficLightSingleFrame[] traffic_light_single_frame~%perception_interface_msgs/TrafficLightMultiFrame[] traffic_light_multi_frame~%perception_interface_msgs/TrafficLightDecision[] traffic_light_decision~%perception_interface_msgs/HDMapTafficLightInformation hdmap_traffic_light_information~%perception_interface_msgs/PhysicalTrafficLightSingleFrame[] physical_traffic_light_single_frame~%perception_interface_msgs/PhysicalTrafficLightMultiFrame[] physical_traffic_light_multi_frame~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightInFov~%uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1~%uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2~%uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4~%uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8~%uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightROI~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/Rect4f roi~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightSingleFrame~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightTypeEnum type~%perception_interface_msgs/Rect4f bounding_box_2d~%float32[] features~%int32 track_id~%perception_interface_msgs/TrafficLightPatternEnum[] pattern~%perception_interface_msgs/TrafficLightStatusEnum[] status~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%perception_interface_msgs/TrafficLightNumberEnum[] number~%float32[] glim_type_scores~%float32[] pattern_scores~%float32[] status_scores~%float32[] onoff_scores~%float32[] number_scores~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightOnOffEnum~%uint8 TRAFFIC_LIGHT_ONOFF_ON = 0~%uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1~%uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2~%uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightNumberEnum~%uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0~%uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1~%uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2~%uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3~%uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4~%uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5~%uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6~%uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7~%uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8~%uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9~%uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10~%uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11~%uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12~%uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3f~%float32 length~%float32 height~%float32 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightAssociatedInfo~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint32 track_id~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightMultiFrame~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/TrafficLightTypeEnum type~%int32 track_id~%perception_interface_msgs/TrafficLightPatternEnum[] pattern~%perception_interface_msgs/TrafficLightStatusEnum[] status~%float32[] pattern_score~%float32[] status_score~%float32 duration~%float32 remaining~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightDecision~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/TrafficLightPatternEnum pattern~%perception_interface_msgs/TrafficLightStatusEnum status~%float32 duration~%float32 remaining~%uint8 count_number~%float32 score~%string reserved_info~%perception_interface_msgs/TrafficLightPositionFeature pos_feature~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPositionFeature~%perception_interface_msgs/Point3f position~%float32 yaw~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTafficLightInformation~%bool valid~%bool in_intersection~%perception_interface_msgs/HDMapIntersection[] hdmap_intersecions~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersection~%perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line~%perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersectionStopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLightGroup~%uint64 track_id~%perception_interface_msgs/HDMapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/PhysicalTrafficLightSingleFrame~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightGroupEnum group_type~%perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type~%perception_interface_msgs/TrafficLightGroupPropertyEnum group_property~%uint8 bulb_num~%perception_interface_msgs/PhysicalTrafficLightBulb[] bulb~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%float32[] group_type_scores~%float32[] shape_scores~%float32[] onoff_scores~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupEnum~%uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0~%uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1~%uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupShapeEnum~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupPropertyEnum~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/PhysicalTrafficLightBulb~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightTypeEnum type~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightPatternEnum[] pattern~%perception_interface_msgs/TrafficLightStatusEnum[] status~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%perception_interface_msgs/TrafficLightNumberEnum[] number~%float32[] glim_type_scores~%float32[] pattern_scores~%float32[] status_scores~%float32[] onoff_scores~%float32[] number_scores~%uint8 bulb_id~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/PhysicalTrafficLightMultiFrame~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightGroupEnum group_type~%perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type~%perception_interface_msgs/TrafficLightGroupPropertyEnum group_property~%uint8 bulb_num~%perception_interface_msgs/PhysicalTrafficLightBulb[] bulb~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%float32[] group_type_scores~%float32[] shape_scores~%float32[] onoff_scores~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightPerceptionResult)))
  "Returns full string definition for message of type 'TrafficLightPerceptionResult"
  (cl:format cl:nil "uint64 cross_id~%perception_interface_msgs/TrafficLightInFov in_fov~%perception_interface_msgs/TrafficLightROI[] traffic_light_roi~%perception_interface_msgs/TrafficLightSingleFrame[] traffic_light_single_frame~%perception_interface_msgs/TrafficLightMultiFrame[] traffic_light_multi_frame~%perception_interface_msgs/TrafficLightDecision[] traffic_light_decision~%perception_interface_msgs/HDMapTafficLightInformation hdmap_traffic_light_information~%perception_interface_msgs/PhysicalTrafficLightSingleFrame[] physical_traffic_light_single_frame~%perception_interface_msgs/PhysicalTrafficLightMultiFrame[] physical_traffic_light_multi_frame~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightInFov~%uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1~%uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2~%uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4~%uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8~%uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightROI~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/Rect4f roi~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightSingleFrame~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightTypeEnum type~%perception_interface_msgs/Rect4f bounding_box_2d~%float32[] features~%int32 track_id~%perception_interface_msgs/TrafficLightPatternEnum[] pattern~%perception_interface_msgs/TrafficLightStatusEnum[] status~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%perception_interface_msgs/TrafficLightNumberEnum[] number~%float32[] glim_type_scores~%float32[] pattern_scores~%float32[] status_scores~%float32[] onoff_scores~%float32[] number_scores~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightOnOffEnum~%uint8 TRAFFIC_LIGHT_ONOFF_ON = 0~%uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1~%uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2~%uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightNumberEnum~%uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0~%uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1~%uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2~%uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3~%uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4~%uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5~%uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6~%uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7~%uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8~%uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9~%uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10~%uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11~%uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12~%uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3f~%float32 length~%float32 height~%float32 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightAssociatedInfo~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint32 track_id~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightMultiFrame~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/TrafficLightTypeEnum type~%int32 track_id~%perception_interface_msgs/TrafficLightPatternEnum[] pattern~%perception_interface_msgs/TrafficLightStatusEnum[] status~%float32[] pattern_score~%float32[] status_score~%float32 duration~%float32 remaining~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightDecision~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/TrafficLightPatternEnum pattern~%perception_interface_msgs/TrafficLightStatusEnum status~%float32 duration~%float32 remaining~%uint8 count_number~%float32 score~%string reserved_info~%perception_interface_msgs/TrafficLightPositionFeature pos_feature~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPositionFeature~%perception_interface_msgs/Point3f position~%float32 yaw~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTafficLightInformation~%bool valid~%bool in_intersection~%perception_interface_msgs/HDMapIntersection[] hdmap_intersecions~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersection~%perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line~%perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersectionStopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLightGroup~%uint64 track_id~%perception_interface_msgs/HDMapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/PhysicalTrafficLightSingleFrame~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightGroupEnum group_type~%perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type~%perception_interface_msgs/TrafficLightGroupPropertyEnum group_property~%uint8 bulb_num~%perception_interface_msgs/PhysicalTrafficLightBulb[] bulb~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%float32[] group_type_scores~%float32[] shape_scores~%float32[] onoff_scores~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupEnum~%uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0~%uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1~%uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupShapeEnum~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightGroupPropertyEnum~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/PhysicalTrafficLightBulb~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightTypeEnum type~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightPatternEnum[] pattern~%perception_interface_msgs/TrafficLightStatusEnum[] status~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%perception_interface_msgs/TrafficLightNumberEnum[] number~%float32[] glim_type_scores~%float32[] pattern_scores~%float32[] status_scores~%float32[] onoff_scores~%float32[] number_scores~%uint8 bulb_id~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/PhysicalTrafficLightMultiFrame~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficLightGroupEnum group_type~%perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type~%perception_interface_msgs/TrafficLightGroupPropertyEnum group_property~%uint8 bulb_num~%perception_interface_msgs/PhysicalTrafficLightBulb[] bulb~%perception_interface_msgs/Rect4f bounding_box_2d~%int32 track_id~%perception_interface_msgs/TrafficLightOnOffEnum[] onoff~%float32[] group_type_scores~%float32[] shape_scores~%float32[] onoff_scores~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f location_bv~%float32 heading_theta_bv~%perception_interface_msgs/Vector2f velocity_bv~%perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightPerceptionResult>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'in_fov))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_roi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_single_frame) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_multi_frame) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_decision) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hdmap_traffic_light_information))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'physical_traffic_light_single_frame) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'physical_traffic_light_multi_frame) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightPerceptionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightPerceptionResult
    (cl:cons ':cross_id (cross_id msg))
    (cl:cons ':in_fov (in_fov msg))
    (cl:cons ':traffic_light_roi (traffic_light_roi msg))
    (cl:cons ':traffic_light_single_frame (traffic_light_single_frame msg))
    (cl:cons ':traffic_light_multi_frame (traffic_light_multi_frame msg))
    (cl:cons ':traffic_light_decision (traffic_light_decision msg))
    (cl:cons ':hdmap_traffic_light_information (hdmap_traffic_light_information msg))
    (cl:cons ':physical_traffic_light_single_frame (physical_traffic_light_single_frame msg))
    (cl:cons ':physical_traffic_light_multi_frame (physical_traffic_light_multi_frame msg))
))
