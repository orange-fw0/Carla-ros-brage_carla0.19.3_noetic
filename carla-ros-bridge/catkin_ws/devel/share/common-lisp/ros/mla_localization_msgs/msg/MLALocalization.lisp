; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLALocalization.msg.html

(cl:defclass <MLALocalization> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type mla_localization_msgs-msg:MLALocalizationMeta
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLALocalizationMeta))
   (position
    :reader position
    :initarg :position
    :type mla_localization_msgs-msg:MLAPosition
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosition))
   (velocity
    :reader velocity
    :initarg :velocity
    :type mla_localization_msgs-msg:MLAVelocity
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAVelocity))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type mla_localization_msgs-msg:MLAAngularVelocity
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAngularVelocity))
   (orientation
    :reader orientation
    :initarg :orientation
    :type mla_localization_msgs-msg:MLAOrientation
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAOrientation))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type mla_localization_msgs-msg:MLAAcceleration
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAcceleration))
   (position_std
    :reader position_std
    :initarg :position_std
    :type mla_localization_msgs-msg:MLAPositionStd
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPositionStd))
   (velocity_std
    :reader velocity_std
    :initarg :velocity_std
    :type mla_localization_msgs-msg:MLAVelocityStd
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAVelocityStd))
   (angular_velocity_std
    :reader angular_velocity_std
    :initarg :angular_velocity_std
    :type mla_localization_msgs-msg:MLAAngularVelocityStd
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAngularVelocityStd))
   (orientation_std
    :reader orientation_std
    :initarg :orientation_std
    :type mla_localization_msgs-msg:MLAOrientationStd
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAOrientationStd))
   (acceleration_std
    :reader acceleration_std
    :initarg :acceleration_std
    :type mla_localization_msgs-msg:MLAAccelerationStd
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAccelerationStd))
   (status
    :reader status
    :initarg :status
    :type mla_localization_msgs-msg:MLAStatus
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAStatus))
   (status_ddld
    :reader status_ddld
    :initarg :status_ddld
    :type mla_localization_msgs-msg:MLAStatus
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAStatus))
   (transform
    :reader transform
    :initarg :transform
    :type mla_localization_msgs-msg:MLATransform
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLATransform))
   (pose_detail
    :reader pose_detail
    :initarg :pose_detail
    :type mla_localization_msgs-msg:MLAPoseDetail
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPoseDetail))
   (road_lane_id_info
    :reader road_lane_id_info
    :initarg :road_lane_id_info
    :type mla_localization_msgs-msg:MLARoadLaneIdInfo
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLARoadLaneIdInfo))
   (link_offset_infos
    :reader link_offset_infos
    :initarg :link_offset_infos
    :type (cl:vector mla_localization_msgs-msg:MLALinkOffsetInfo)
   :initform (cl:make-array 0 :element-type 'mla_localization_msgs-msg:MLALinkOffsetInfo :initial-element (cl:make-instance 'mla_localization_msgs-msg:MLALinkOffsetInfo)))
   (reserved
    :reader reserved
    :initarg :reserved
    :type mla_localization_msgs-msg:MLAReserved
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAReserved)))
)

(cl:defclass MLALocalization (<MLALocalization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLALocalization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLALocalization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLALocalization> is deprecated: use mla_localization_msgs-msg:MLALocalization instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:header-val is deprecated.  Use mla_localization_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:meta-val is deprecated.  Use mla_localization_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:position-val is deprecated.  Use mla_localization_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:velocity-val is deprecated.  Use mla_localization_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:angular_velocity-val is deprecated.  Use mla_localization_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:orientation-val is deprecated.  Use mla_localization_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:acceleration-val is deprecated.  Use mla_localization_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'position_std-val :lambda-list '(m))
(cl:defmethod position_std-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:position_std-val is deprecated.  Use mla_localization_msgs-msg:position_std instead.")
  (position_std m))

(cl:ensure-generic-function 'velocity_std-val :lambda-list '(m))
(cl:defmethod velocity_std-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:velocity_std-val is deprecated.  Use mla_localization_msgs-msg:velocity_std instead.")
  (velocity_std m))

(cl:ensure-generic-function 'angular_velocity_std-val :lambda-list '(m))
(cl:defmethod angular_velocity_std-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:angular_velocity_std-val is deprecated.  Use mla_localization_msgs-msg:angular_velocity_std instead.")
  (angular_velocity_std m))

(cl:ensure-generic-function 'orientation_std-val :lambda-list '(m))
(cl:defmethod orientation_std-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:orientation_std-val is deprecated.  Use mla_localization_msgs-msg:orientation_std instead.")
  (orientation_std m))

(cl:ensure-generic-function 'acceleration_std-val :lambda-list '(m))
(cl:defmethod acceleration_std-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:acceleration_std-val is deprecated.  Use mla_localization_msgs-msg:acceleration_std instead.")
  (acceleration_std m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:status-val is deprecated.  Use mla_localization_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'status_ddld-val :lambda-list '(m))
(cl:defmethod status_ddld-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:status_ddld-val is deprecated.  Use mla_localization_msgs-msg:status_ddld instead.")
  (status_ddld m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:transform-val is deprecated.  Use mla_localization_msgs-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'pose_detail-val :lambda-list '(m))
(cl:defmethod pose_detail-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:pose_detail-val is deprecated.  Use mla_localization_msgs-msg:pose_detail instead.")
  (pose_detail m))

(cl:ensure-generic-function 'road_lane_id_info-val :lambda-list '(m))
(cl:defmethod road_lane_id_info-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:road_lane_id_info-val is deprecated.  Use mla_localization_msgs-msg:road_lane_id_info instead.")
  (road_lane_id_info m))

(cl:ensure-generic-function 'link_offset_infos-val :lambda-list '(m))
(cl:defmethod link_offset_infos-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:link_offset_infos-val is deprecated.  Use mla_localization_msgs-msg:link_offset_infos instead.")
  (link_offset_infos m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <MLALocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:reserved-val is deprecated.  Use mla_localization_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLALocalization>) ostream)
  "Serializes a message object of type '<MLALocalization>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_std) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status_ddld) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_detail) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_lane_id_info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_offset_infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'link_offset_infos))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reserved) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLALocalization>) istream)
  "Deserializes a message object of type '<MLALocalization>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_std) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status_ddld) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_detail) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_lane_id_info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_offset_infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_offset_infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mla_localization_msgs-msg:MLALinkOffsetInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reserved) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLALocalization>)))
  "Returns string type for a message object of type '<MLALocalization>"
  "mla_localization_msgs/MLALocalization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLALocalization)))
  "Returns string type for a message object of type 'MLALocalization"
  "mla_localization_msgs/MLALocalization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLALocalization>)))
  "Returns md5sum for a message object of type '<MLALocalization>"
  "60a9dfde75cc9220fd3b9a4368c09f9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLALocalization)))
  "Returns md5sum for a message object of type 'MLALocalization"
  "60a9dfde75cc9220fd3b9a4368c09f9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLALocalization>)))
  "Returns full string definition for message of type '<MLALocalization>"
  (cl:format cl:nil "std_msgs/Header header~%mla_localization_msgs/MLALocalizationMeta meta~%mla_localization_msgs/MLAPosition position~%mla_localization_msgs/MLAVelocity velocity~%mla_localization_msgs/MLAAngularVelocity angular_velocity~%mla_localization_msgs/MLAOrientation orientation~%mla_localization_msgs/MLAAcceleration acceleration~%mla_localization_msgs/MLAPositionStd position_std~%mla_localization_msgs/MLAVelocityStd velocity_std~%mla_localization_msgs/MLAAngularVelocityStd angular_velocity_std~%mla_localization_msgs/MLAOrientationStd orientation_std~%mla_localization_msgs/MLAAccelerationStd acceleration_std~%mla_localization_msgs/MLAStatus status~%mla_localization_msgs/MLAStatus status_ddld~%mla_localization_msgs/MLATransform transform~%mla_localization_msgs/MLAPoseDetail pose_detail~%mla_localization_msgs/MLARoadLaneIdInfo road_lane_id_info~%mla_localization_msgs/MLALinkOffsetInfo[] link_offset_infos~%mla_localization_msgs/MLAReserved reserved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mla_localization_msgs/MLALocalizationMeta~%uint8 MLA_PARKING = 1~%uint8 MLA_PILOT = 2~%uint64 timestamp_us~%uint64 seq~%uint8 type~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosition~%uint8 MLA_POSITION_GLOBAL = 1~%uint8 MLA_POSITION_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAPosGlobal position_global~%mla_localization_msgs/MLAPosLocal position_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelocity~%uint8 MLA_VEL_GLOBAL = 1~%uint8 MLA_VEL_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAVelGlobal velocity_global~%mla_localization_msgs/MLAVelLocal velocity_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelGlobal~%float64 ve~%float64 vn~%float64 vu~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngularVelocity~%uint8 MLA_ANGVEL_LOCAL = 1~%uint8 available~%mla_localization_msgs/MLAAngVelLocal angvelocity_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%================================================================================~%MSG: mla_localization_msgs/MLAOrientation~%uint8 MLA_EULER_GLOBAL = 1~%uint8 MLA_QUATERNION_GLOBAL = 2~%uint8 MLA_EULER_LOCAL = 4~%uint8 MLA_QUATERNION_LOCAL = 8~%uint8 available~%mla_localization_msgs/MLAEuler euler_global~%mla_localization_msgs/MLAQuaternion quaternion_global~%mla_localization_msgs/MLAEuler euler_local~%mla_localization_msgs/MLAQuaternion quaternion_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAEuler~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: mla_localization_msgs/MLAQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAAcceleration~%uint8 MLA_ACC_GLOBAL = 1~%uint8 MLA_ACC_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAAccGlobal acceleration_global~%mla_localization_msgs/MLAAccLocal acceleration_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccGlobal~%float64 ae~%float64 an~%float64 au~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccLocal~%float64 ax~%float64 ay~%float64 az~%~%================================================================================~%MSG: mla_localization_msgs/MLAPositionStd~%uint8 MLA_POS_STD_GLOBAL = 1~%uint8 MLA_POS_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAPosStdGlobal pos_std_global~%mla_localization_msgs/MLAPosStdLocal pos_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosStdGlobal~%float64 std_pe~%float64 std_pn~%float64 std_pu~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosStdLocal~%float64 std_px~%float64 std_py~%float64 std_pz~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelocityStd~%uint8 MLA_VEL_STD_GLOBAL = 1~%uint8 MLA_VEL_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAVelStdGlobal vel_std_global~%mla_localization_msgs/MLAVelStdLocal vel_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelStdGlobal~%float64 std_ve~%float64 std_vn~%float64 std_vu~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngularVelocityStd~%uint8 MLA_ANGVEL_STD_LOCAL = 1~%uint8 available~%mla_localization_msgs/MLAAngVelStdLocal angvel_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%================================================================================~%MSG: mla_localization_msgs/MLAOrientationStd~%uint8 MLA_ORI_STD_XYZ = 1~%uint8 available~%mla_localization_msgs/MLAOriStdXyz ori_std_xyz~%~%================================================================================~%MSG: mla_localization_msgs/MLAOriStdXyz~%float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccelerationStd~%uint8 MLA_ACC_STD_GLOBAL = 1~%uint8 MLA_ACC_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAAccStdGlobal acc_std_global~%mla_localization_msgs/MLAAccStdLocal acc_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccStdGlobal~%float64 std_ae~%float64 std_an~%float64 std_au~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccStdLocal~%float64 std_ax~%float64 std_ay~%float64 std_az~%~%================================================================================~%MSG: mla_localization_msgs/MLAStatus~%uint8 MLA_STATUS_INFO = 1~%uint8 available~%mla_localization_msgs/MLAStatusInfo status_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAStatusInfo~%uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%~%================================================================================~%MSG: mla_localization_msgs/MLATransform~%uint8 MLA_TRANSFORM_LLH_TO_BOOT = 1~%uint8 MLA_TRANSFORM_AVPMAP_TO_BOOT = 2~%uint8 MLA_TRANSFORM_EGOMOTION_TO_BOOT = 4~%uint8 available~%mla_localization_msgs/MLATransformInfo transform_llh_to_boot~%mla_localization_msgs/MLATransformInfo transform_avp_map_to_boot~%mla_localization_msgs/MLATransformInfo transform_ego_motion_to_boot~%~%================================================================================~%MSG: mla_localization_msgs/MLATransformInfo~%mla_localization_msgs/MLAQuaternion transform_q~%mla_localization_msgs/MLAPosLocal transform_t~%mla_localization_msgs/MLAPosGlobal transform_center~%~%================================================================================~%MSG: mla_localization_msgs/MLAPoseDetail~%uint8 MLA_POSE_DETAIL_INFO = 1~%uint8 available~%mla_localization_msgs/MLAPoseDetailInfo pose_detail_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAPoseDetailInfo~%uint8 MLA_ESTIMATION_UNKNOWN = 0~%uint8 MLA_ESTIMATION_PER_FRAME = 1~%uint8 MLA_ESTIMATION_WINDOW_OPT = 2~%uint8 MLA_ESTIMATION_DR = 3~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%================================================================================~%MSG: mla_localization_msgs/MLARoadLaneIdInfo~%landmark_msgs/TrackId lane_id~%landmark_msgs/TrackId road_id~%uint32 offset~%uint16 road_class~%float64 floor_id~%uint16 status~%uint16 reserved~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: mla_localization_msgs/MLALinkOffsetInfo~%string source~%landmark_msgs/TrackId link_id~%uint32 offset~%uint16 status~%uint16 reserved~%~%================================================================================~%MSG: mla_localization_msgs/MLAReserved~%uint8 MLA_RESERVED_DATA = 1~%uint8 available~%uint64[] reserved_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLALocalization)))
  "Returns full string definition for message of type 'MLALocalization"
  (cl:format cl:nil "std_msgs/Header header~%mla_localization_msgs/MLALocalizationMeta meta~%mla_localization_msgs/MLAPosition position~%mla_localization_msgs/MLAVelocity velocity~%mla_localization_msgs/MLAAngularVelocity angular_velocity~%mla_localization_msgs/MLAOrientation orientation~%mla_localization_msgs/MLAAcceleration acceleration~%mla_localization_msgs/MLAPositionStd position_std~%mla_localization_msgs/MLAVelocityStd velocity_std~%mla_localization_msgs/MLAAngularVelocityStd angular_velocity_std~%mla_localization_msgs/MLAOrientationStd orientation_std~%mla_localization_msgs/MLAAccelerationStd acceleration_std~%mla_localization_msgs/MLAStatus status~%mla_localization_msgs/MLAStatus status_ddld~%mla_localization_msgs/MLATransform transform~%mla_localization_msgs/MLAPoseDetail pose_detail~%mla_localization_msgs/MLARoadLaneIdInfo road_lane_id_info~%mla_localization_msgs/MLALinkOffsetInfo[] link_offset_infos~%mla_localization_msgs/MLAReserved reserved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mla_localization_msgs/MLALocalizationMeta~%uint8 MLA_PARKING = 1~%uint8 MLA_PILOT = 2~%uint64 timestamp_us~%uint64 seq~%uint8 type~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosition~%uint8 MLA_POSITION_GLOBAL = 1~%uint8 MLA_POSITION_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAPosGlobal position_global~%mla_localization_msgs/MLAPosLocal position_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelocity~%uint8 MLA_VEL_GLOBAL = 1~%uint8 MLA_VEL_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAVelGlobal velocity_global~%mla_localization_msgs/MLAVelLocal velocity_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelGlobal~%float64 ve~%float64 vn~%float64 vu~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngularVelocity~%uint8 MLA_ANGVEL_LOCAL = 1~%uint8 available~%mla_localization_msgs/MLAAngVelLocal angvelocity_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%================================================================================~%MSG: mla_localization_msgs/MLAOrientation~%uint8 MLA_EULER_GLOBAL = 1~%uint8 MLA_QUATERNION_GLOBAL = 2~%uint8 MLA_EULER_LOCAL = 4~%uint8 MLA_QUATERNION_LOCAL = 8~%uint8 available~%mla_localization_msgs/MLAEuler euler_global~%mla_localization_msgs/MLAQuaternion quaternion_global~%mla_localization_msgs/MLAEuler euler_local~%mla_localization_msgs/MLAQuaternion quaternion_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAEuler~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: mla_localization_msgs/MLAQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mla_localization_msgs/MLAAcceleration~%uint8 MLA_ACC_GLOBAL = 1~%uint8 MLA_ACC_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAAccGlobal acceleration_global~%mla_localization_msgs/MLAAccLocal acceleration_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccGlobal~%float64 ae~%float64 an~%float64 au~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccLocal~%float64 ax~%float64 ay~%float64 az~%~%================================================================================~%MSG: mla_localization_msgs/MLAPositionStd~%uint8 MLA_POS_STD_GLOBAL = 1~%uint8 MLA_POS_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAPosStdGlobal pos_std_global~%mla_localization_msgs/MLAPosStdLocal pos_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosStdGlobal~%float64 std_pe~%float64 std_pn~%float64 std_pu~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosStdLocal~%float64 std_px~%float64 std_py~%float64 std_pz~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelocityStd~%uint8 MLA_VEL_STD_GLOBAL = 1~%uint8 MLA_VEL_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAVelStdGlobal vel_std_global~%mla_localization_msgs/MLAVelStdLocal vel_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelStdGlobal~%float64 std_ve~%float64 std_vn~%float64 std_vu~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngularVelocityStd~%uint8 MLA_ANGVEL_STD_LOCAL = 1~%uint8 available~%mla_localization_msgs/MLAAngVelStdLocal angvel_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%================================================================================~%MSG: mla_localization_msgs/MLAOrientationStd~%uint8 MLA_ORI_STD_XYZ = 1~%uint8 available~%mla_localization_msgs/MLAOriStdXyz ori_std_xyz~%~%================================================================================~%MSG: mla_localization_msgs/MLAOriStdXyz~%float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccelerationStd~%uint8 MLA_ACC_STD_GLOBAL = 1~%uint8 MLA_ACC_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAAccStdGlobal acc_std_global~%mla_localization_msgs/MLAAccStdLocal acc_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccStdGlobal~%float64 std_ae~%float64 std_an~%float64 std_au~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccStdLocal~%float64 std_ax~%float64 std_ay~%float64 std_az~%~%================================================================================~%MSG: mla_localization_msgs/MLAStatus~%uint8 MLA_STATUS_INFO = 1~%uint8 available~%mla_localization_msgs/MLAStatusInfo status_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAStatusInfo~%uint8 quality~%uint64 common~%uint64 extended~%uint8 type~%~%================================================================================~%MSG: mla_localization_msgs/MLATransform~%uint8 MLA_TRANSFORM_LLH_TO_BOOT = 1~%uint8 MLA_TRANSFORM_AVPMAP_TO_BOOT = 2~%uint8 MLA_TRANSFORM_EGOMOTION_TO_BOOT = 4~%uint8 available~%mla_localization_msgs/MLATransformInfo transform_llh_to_boot~%mla_localization_msgs/MLATransformInfo transform_avp_map_to_boot~%mla_localization_msgs/MLATransformInfo transform_ego_motion_to_boot~%~%================================================================================~%MSG: mla_localization_msgs/MLATransformInfo~%mla_localization_msgs/MLAQuaternion transform_q~%mla_localization_msgs/MLAPosLocal transform_t~%mla_localization_msgs/MLAPosGlobal transform_center~%~%================================================================================~%MSG: mla_localization_msgs/MLAPoseDetail~%uint8 MLA_POSE_DETAIL_INFO = 1~%uint8 available~%mla_localization_msgs/MLAPoseDetailInfo pose_detail_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAPoseDetailInfo~%uint8 MLA_ESTIMATION_UNKNOWN = 0~%uint8 MLA_ESTIMATION_PER_FRAME = 1~%uint8 MLA_ESTIMATION_WINDOW_OPT = 2~%uint8 MLA_ESTIMATION_DR = 3~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%================================================================================~%MSG: mla_localization_msgs/MLARoadLaneIdInfo~%landmark_msgs/TrackId lane_id~%landmark_msgs/TrackId road_id~%uint32 offset~%uint16 road_class~%float64 floor_id~%uint16 status~%uint16 reserved~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: mla_localization_msgs/MLALinkOffsetInfo~%string source~%landmark_msgs/TrackId link_id~%uint32 offset~%uint16 status~%uint16 reserved~%~%================================================================================~%MSG: mla_localization_msgs/MLAReserved~%uint8 MLA_RESERVED_DATA = 1~%uint8 available~%uint64[] reserved_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLALocalization>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_std))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status_ddld))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_detail))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_lane_id_info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_offset_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLALocalization>))
  "Converts a ROS message object to a list"
  (cl:list 'MLALocalization
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':position_std (position_std msg))
    (cl:cons ':velocity_std (velocity_std msg))
    (cl:cons ':angular_velocity_std (angular_velocity_std msg))
    (cl:cons ':orientation_std (orientation_std msg))
    (cl:cons ':acceleration_std (acceleration_std msg))
    (cl:cons ':status (status msg))
    (cl:cons ':status_ddld (status_ddld msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':pose_detail (pose_detail msg))
    (cl:cons ':road_lane_id_info (road_lane_id_info msg))
    (cl:cons ':link_offset_infos (link_offset_infos msg))
    (cl:cons ':reserved (reserved msg))
))
