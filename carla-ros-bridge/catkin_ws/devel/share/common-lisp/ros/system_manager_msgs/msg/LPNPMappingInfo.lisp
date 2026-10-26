; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LPNPMappingInfo.msg.html

(cl:defclass <LPNPMappingInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (summary
    :reader summary
    :initarg :summary
    :type cl:string
    :initform "")
   (path_verify_rate
    :reader path_verify_rate
    :initarg :path_verify_rate
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type system_manager_msgs-msg:LPNPMappingStatusEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:LPNPMappingStatusEnum))
   (failure_case
    :reader failure_case
    :initarg :failure_case
    :type system_manager_msgs-msg:LPNPMappingFailureCase
    :initform (cl:make-instance 'system_manager_msgs-msg:LPNPMappingFailureCase))
   (parking_space_building_way
    :reader parking_space_building_way
    :initarg :parking_space_building_way
    :type system_manager_msgs-msg:LPNPMappingParkingSpaceBuildingWayEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:LPNPMappingParkingSpaceBuildingWayEnum))
   (learning_distance
    :reader learning_distance
    :initarg :learning_distance
    :type cl:float
    :initform 0.0)
   (total_distance
    :reader total_distance
    :initarg :total_distance
    :type cl:float
    :initform 0.0)
   (speed_bump_num
    :reader speed_bump_num
    :initarg :speed_bump_num
    :type cl:integer
    :initform 0)
   (slope_num
    :reader slope_num
    :initarg :slope_num
    :type cl:integer
    :initform 0)
   (parking_slot_num
    :reader parking_slot_num
    :initarg :parking_slot_num
    :type cl:integer
    :initform 0)
   (current_map_id
    :reader current_map_id
    :initarg :current_map_id
    :type cl:integer
    :initform 0)
   (floor_id
    :reader floor_id
    :initarg :floor_id
    :type cl:float
    :initform 0.0)
   (in_parking_space
    :reader in_parking_space
    :initarg :in_parking_space
    :type cl:boolean
    :initform cl:nil)
   (live_map
    :reader live_map
    :initarg :live_map
    :type (cl:vector system_manager_msgs-msg:LiveLPNPMap)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:LiveLPNPMap :initial-element (cl:make-instance 'system_manager_msgs-msg:LiveLPNPMap)))
   (increment_offset
    :reader increment_offset
    :initarg :increment_offset
    :type system_manager_msgs-msg:LPNPMapIncrementOffset
    :initform (cl:make-instance 'system_manager_msgs-msg:LPNPMapIncrementOffset)))
)

(cl:defclass LPNPMappingInfo (<LPNPMappingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LPNPMappingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LPNPMappingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LPNPMappingInfo> is deprecated: use system_manager_msgs-msg:LPNPMappingInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'summary-val :lambda-list '(m))
(cl:defmethod summary-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:summary-val is deprecated.  Use system_manager_msgs-msg:summary instead.")
  (summary m))

(cl:ensure-generic-function 'path_verify_rate-val :lambda-list '(m))
(cl:defmethod path_verify_rate-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:path_verify_rate-val is deprecated.  Use system_manager_msgs-msg:path_verify_rate instead.")
  (path_verify_rate m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:status-val is deprecated.  Use system_manager_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'failure_case-val :lambda-list '(m))
(cl:defmethod failure_case-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:failure_case-val is deprecated.  Use system_manager_msgs-msg:failure_case instead.")
  (failure_case m))

(cl:ensure-generic-function 'parking_space_building_way-val :lambda-list '(m))
(cl:defmethod parking_space_building_way-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_space_building_way-val is deprecated.  Use system_manager_msgs-msg:parking_space_building_way instead.")
  (parking_space_building_way m))

(cl:ensure-generic-function 'learning_distance-val :lambda-list '(m))
(cl:defmethod learning_distance-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:learning_distance-val is deprecated.  Use system_manager_msgs-msg:learning_distance instead.")
  (learning_distance m))

(cl:ensure-generic-function 'total_distance-val :lambda-list '(m))
(cl:defmethod total_distance-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:total_distance-val is deprecated.  Use system_manager_msgs-msg:total_distance instead.")
  (total_distance m))

(cl:ensure-generic-function 'speed_bump_num-val :lambda-list '(m))
(cl:defmethod speed_bump_num-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:speed_bump_num-val is deprecated.  Use system_manager_msgs-msg:speed_bump_num instead.")
  (speed_bump_num m))

(cl:ensure-generic-function 'slope_num-val :lambda-list '(m))
(cl:defmethod slope_num-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:slope_num-val is deprecated.  Use system_manager_msgs-msg:slope_num instead.")
  (slope_num m))

(cl:ensure-generic-function 'parking_slot_num-val :lambda-list '(m))
(cl:defmethod parking_slot_num-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_slot_num-val is deprecated.  Use system_manager_msgs-msg:parking_slot_num instead.")
  (parking_slot_num m))

(cl:ensure-generic-function 'current_map_id-val :lambda-list '(m))
(cl:defmethod current_map_id-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:current_map_id-val is deprecated.  Use system_manager_msgs-msg:current_map_id instead.")
  (current_map_id m))

(cl:ensure-generic-function 'floor_id-val :lambda-list '(m))
(cl:defmethod floor_id-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:floor_id-val is deprecated.  Use system_manager_msgs-msg:floor_id instead.")
  (floor_id m))

(cl:ensure-generic-function 'in_parking_space-val :lambda-list '(m))
(cl:defmethod in_parking_space-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:in_parking_space-val is deprecated.  Use system_manager_msgs-msg:in_parking_space instead.")
  (in_parking_space m))

(cl:ensure-generic-function 'live_map-val :lambda-list '(m))
(cl:defmethod live_map-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:live_map-val is deprecated.  Use system_manager_msgs-msg:live_map instead.")
  (live_map m))

(cl:ensure-generic-function 'increment_offset-val :lambda-list '(m))
(cl:defmethod increment_offset-val ((m <LPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:increment_offset-val is deprecated.  Use system_manager_msgs-msg:increment_offset instead.")
  (increment_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LPNPMappingInfo>) ostream)
  "Serializes a message object of type '<LPNPMappingInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'summary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'summary))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_verify_rate)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'failure_case) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_space_building_way) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'learning_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_bump_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_bump_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed_bump_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed_bump_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'slope_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'slope_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'slope_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'slope_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_slot_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_slot_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_slot_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_slot_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_map_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_map_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_map_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_map_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'floor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_parking_space) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'live_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'live_map))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'increment_offset) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LPNPMappingInfo>) istream)
  "Deserializes a message object of type '<LPNPMappingInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'summary) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'summary) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_verify_rate)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'failure_case) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_space_building_way) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'learning_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_bump_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_bump_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed_bump_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed_bump_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'slope_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'slope_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'slope_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'slope_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_slot_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_slot_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_slot_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_slot_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_map_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_map_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_map_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_map_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'floor_id) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'in_parking_space) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'live_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'live_map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:LiveLPNPMap))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'increment_offset) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LPNPMappingInfo>)))
  "Returns string type for a message object of type '<LPNPMappingInfo>"
  "system_manager_msgs/LPNPMappingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LPNPMappingInfo)))
  "Returns string type for a message object of type 'LPNPMappingInfo"
  "system_manager_msgs/LPNPMappingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LPNPMappingInfo>)))
  "Returns md5sum for a message object of type '<LPNPMappingInfo>"
  "3d7cd29b15e32952abc2a80060bc25d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LPNPMappingInfo)))
  "Returns md5sum for a message object of type 'LPNPMappingInfo"
  "3d7cd29b15e32952abc2a80060bc25d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LPNPMappingInfo>)))
  "Returns full string definition for message of type '<LPNPMappingInfo>"
  (cl:format cl:nil "std_msgs/Header header~%string summary~%uint8 path_verify_rate~%system_manager_msgs/LPNPMappingStatusEnum status~%system_manager_msgs/LPNPMappingFailureCase failure_case~%system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum parking_space_building_way~%float32 learning_distance~%float32 total_distance~%uint32 speed_bump_num~%uint32 slope_num~%uint32 parking_slot_num~%uint32 current_map_id~%float64 floor_id~%bool in_parking_space~%system_manager_msgs/LiveLPNPMap[] live_map~%system_manager_msgs/LPNPMapIncrementOffset increment_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/LPNPMappingStatusEnum~%uint8 SUCCESS = 0~%uint8 MAPPING = 1~%uint8 SAVING_MAP = 2~%uint8 FAILURE = 3~%uint8 MAPPING_IN = 4~%uint8 MAPPING_OUT = 5~%uint8 WAITING_TO_SAVE = 6~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LPNPMappingFailureCase~%uint8 FAILURE_UNDEFINED_CASE = 0~%uint8 FAILUER_BACK_UP_AT_THE_BEGINNING = 1~%uint8 FAILURE_TOO_SHORT_TRAVERL_DISTANCE = 2~%uint8 FAILURE_TOO_LONG_BACK_UP_DISTANCE = 3~%uint8 FAILURE_STEEP_SLOP = 4~%uint8 FAILURE_HEAD_IN_PARKING = 5~%uint8 FAILURE_NOT_PARKED_IN_PARKING_SLOT = 6~%uint8 FAILURE_ROUTE_REPEAT = 7~%uint8 FAILURE_LACK_ELEMENT = 8~%uint8 FAILURE_SILENT_MAPPING_TOO_LONG = 9~%uint8 FAILURE_USER_MAPPING_TOO_LONG = 10~%uint8 FAILURE_USER_MAPPING_TIME_TOO_LONG = 11~%uint8 FAILURE_TRAJ_SEG_LENGTH_TOO_LONG = 12~%uint8 FAILURE_VERIFY_MAP_TIME_TOO_LONG = 13~%uint8 FAILURE_BAD_REFERENCE_POINT = 14~%uint8 FAILURE_DB_WRITE_ERROR = 15~%uint8 FAILURE_SILENTMAPPING_LACK_SLOPE = 16~%uint8 FAILURE_TRAJECTORY_SMOOTH_ERROR = 17~%uint8 FAILURE_ROAD_POINT_LESS = 18~%uint8 FAILURE_TRAJECTORY_TURN_AROUND = 19~%uint8 FAILURE_ABORT_MAPPING = 20~%uint8 FAILURE_MODULE_PAUSE = 21~%uint8 FAILURE_NOT_SAVE_FOR_TOO_LONG = 22~%uint8 FAILURE_SPAMAP_ALLOC = 100~%uint8 FAILURE_SPAMAP_NON_CREATED = 101~%uint8 FAILURE_SPAMAP_NULL_PARAM = 102~%uint8 FAILURE_SPAMAP_NOT_SUPPORTED = 103~%uint8 FAILURE_SPAMAP_UNSUPPROT_CMD = 104~%uint8 FAILURE_SPAMAP_CAMEAR_NUM = 105~%uint8 FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL = 106~%uint8 FAILURE_SPAMAP_STITCH_IMG_IS_NULL = 107~%uint8 FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL = 108~%uint8 FAILURE_SPAMAP_REJECTED = 109~%uint8 FAILURE_SPAMAP_NO_MAP_INFO_FOUND = 110~%uint8 FAILURE_SPAMAP_INTERNAL = 111~%uint8 FAILURE_SPAMAP_UNKNOWN = 112~%uint8 FAILURE_SPAMAP_CHANGED = 113~%uint8 FAILURE_SPAMAP_LOAD_CAMERA_PARAMS = 114~%uint8 FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG = 115~%uint8 FAILURE_SPAMAP_INVALID_CONFIG = 116~%uint8 FAILURE_SPAMAP_INIT_EGO = 117~%uint8 FAILURE_SPAMAP_EGO_LOST = 118~%uint8 FAILURE_SPAMAP_CREATE_SPAMAPPER = 119~%uint8 FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER = 120~%uint8 FAILURE_SPAMAP_INVALID_POI_TYPE = 121~%uint8 FAILURE_SPAMAP_INVALID_SPA_HANDLE = 122~%uint8 FAILURE_SPAMAP_SAVE_MAP = 123~%uint8 FAILURE_SPAMAP_INVALID_MAP = 124~%uint8 FAILURE_SPAMAP_UNVERIFIED = 125~%uint8 FAILURE_SPAMAP_VERIFY_FAILED = 126~%uint8 FAILURE_SPAMAP_LOAD_PARAM = 127~%uint8 FAILURE_SPAMAP_INVALID_CAMERA = 128~%uint8 FAILURE_SPAMAP_INVERSE_STAMP_WHEEL = 129~%uint8 FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER = 130~%uint8 FAILURE_SPAMAP_UNSUPPORTED_TASK = 131~%uint8 FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE = 132~%uint8 FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE = 133~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum~%uint8 UNKNOWN = 0~%uint8 PERCEIVED_BELOW = 1~%uint8 USER_SELECTED = 2~%uint8 NO_TARGET_SLOT = 3~%uint8 VIRTUAL = 4~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LiveLPNPMap~%system_manager_msgs/ParkingSpaceInfo[] psd_map~%system_manager_msgs/PointsPosition[] speed_bumps~%system_manager_msgs/PointsPosition[] pillars~%system_manager_msgs/PointsPosition[] walls~%system_manager_msgs/PointsPosition[] intersections~%system_manager_msgs/PointsPosition[] parking_gates~%system_manager_msgs/LiveLPNPMapRoadPoint[] trajectory_points~%uint32 road_id~%system_manager_msgs/RoadTypeEnum road_type~%geometry_msgs/TransformStamped transform~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceInfo~%uint64 id~%uint8 code~%system_manager_msgs/ParkingSpaceStatusEnum status~%system_manager_msgs/ParkingSpaceTypeEnum type~%mla_localization_msgs/MLAPosLocal[] corners~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceStatusEnum~%uint8 NO_INFORMATION = 0~%uint8 PARKING_SPACE_VACANT = 1~%uint8 PARKING_SPACE_OCCUPIED = 2~%uint8 PARKING_SPACE_HIGHLIGHT = 3~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceTypeEnum~%uint8 UNKNOWN = 0~%uint8 PARKING_SPACE_WITH_CHARGING = 1~%uint8 value~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: system_manager_msgs/PointsPosition~%mla_localization_msgs/MLAPosLocal[] points~%~%================================================================================~%MSG: system_manager_msgs/LiveLPNPMapRoadPoint~%float64 x~%float64 y~%float64 z~%float64 width~%~%================================================================================~%MSG: system_manager_msgs/RoadTypeEnum~%uint8 UNKNOWN = 0~%uint8 LEVEL = 1~%uint8 DOWNHILL = 2~%uint8 UPHILL = 3~%uint8 GROUND_PARKING = 4~%uint8 PUBLIC_ROAD = 5~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: system_manager_msgs/LPNPMapIncrementOffset~%int32 parking_slot~%int32 speed_bump~%int32 trajectory_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LPNPMappingInfo)))
  "Returns full string definition for message of type 'LPNPMappingInfo"
  (cl:format cl:nil "std_msgs/Header header~%string summary~%uint8 path_verify_rate~%system_manager_msgs/LPNPMappingStatusEnum status~%system_manager_msgs/LPNPMappingFailureCase failure_case~%system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum parking_space_building_way~%float32 learning_distance~%float32 total_distance~%uint32 speed_bump_num~%uint32 slope_num~%uint32 parking_slot_num~%uint32 current_map_id~%float64 floor_id~%bool in_parking_space~%system_manager_msgs/LiveLPNPMap[] live_map~%system_manager_msgs/LPNPMapIncrementOffset increment_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/LPNPMappingStatusEnum~%uint8 SUCCESS = 0~%uint8 MAPPING = 1~%uint8 SAVING_MAP = 2~%uint8 FAILURE = 3~%uint8 MAPPING_IN = 4~%uint8 MAPPING_OUT = 5~%uint8 WAITING_TO_SAVE = 6~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LPNPMappingFailureCase~%uint8 FAILURE_UNDEFINED_CASE = 0~%uint8 FAILUER_BACK_UP_AT_THE_BEGINNING = 1~%uint8 FAILURE_TOO_SHORT_TRAVERL_DISTANCE = 2~%uint8 FAILURE_TOO_LONG_BACK_UP_DISTANCE = 3~%uint8 FAILURE_STEEP_SLOP = 4~%uint8 FAILURE_HEAD_IN_PARKING = 5~%uint8 FAILURE_NOT_PARKED_IN_PARKING_SLOT = 6~%uint8 FAILURE_ROUTE_REPEAT = 7~%uint8 FAILURE_LACK_ELEMENT = 8~%uint8 FAILURE_SILENT_MAPPING_TOO_LONG = 9~%uint8 FAILURE_USER_MAPPING_TOO_LONG = 10~%uint8 FAILURE_USER_MAPPING_TIME_TOO_LONG = 11~%uint8 FAILURE_TRAJ_SEG_LENGTH_TOO_LONG = 12~%uint8 FAILURE_VERIFY_MAP_TIME_TOO_LONG = 13~%uint8 FAILURE_BAD_REFERENCE_POINT = 14~%uint8 FAILURE_DB_WRITE_ERROR = 15~%uint8 FAILURE_SILENTMAPPING_LACK_SLOPE = 16~%uint8 FAILURE_TRAJECTORY_SMOOTH_ERROR = 17~%uint8 FAILURE_ROAD_POINT_LESS = 18~%uint8 FAILURE_TRAJECTORY_TURN_AROUND = 19~%uint8 FAILURE_ABORT_MAPPING = 20~%uint8 FAILURE_MODULE_PAUSE = 21~%uint8 FAILURE_NOT_SAVE_FOR_TOO_LONG = 22~%uint8 FAILURE_SPAMAP_ALLOC = 100~%uint8 FAILURE_SPAMAP_NON_CREATED = 101~%uint8 FAILURE_SPAMAP_NULL_PARAM = 102~%uint8 FAILURE_SPAMAP_NOT_SUPPORTED = 103~%uint8 FAILURE_SPAMAP_UNSUPPROT_CMD = 104~%uint8 FAILURE_SPAMAP_CAMEAR_NUM = 105~%uint8 FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL = 106~%uint8 FAILURE_SPAMAP_STITCH_IMG_IS_NULL = 107~%uint8 FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL = 108~%uint8 FAILURE_SPAMAP_REJECTED = 109~%uint8 FAILURE_SPAMAP_NO_MAP_INFO_FOUND = 110~%uint8 FAILURE_SPAMAP_INTERNAL = 111~%uint8 FAILURE_SPAMAP_UNKNOWN = 112~%uint8 FAILURE_SPAMAP_CHANGED = 113~%uint8 FAILURE_SPAMAP_LOAD_CAMERA_PARAMS = 114~%uint8 FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG = 115~%uint8 FAILURE_SPAMAP_INVALID_CONFIG = 116~%uint8 FAILURE_SPAMAP_INIT_EGO = 117~%uint8 FAILURE_SPAMAP_EGO_LOST = 118~%uint8 FAILURE_SPAMAP_CREATE_SPAMAPPER = 119~%uint8 FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER = 120~%uint8 FAILURE_SPAMAP_INVALID_POI_TYPE = 121~%uint8 FAILURE_SPAMAP_INVALID_SPA_HANDLE = 122~%uint8 FAILURE_SPAMAP_SAVE_MAP = 123~%uint8 FAILURE_SPAMAP_INVALID_MAP = 124~%uint8 FAILURE_SPAMAP_UNVERIFIED = 125~%uint8 FAILURE_SPAMAP_VERIFY_FAILED = 126~%uint8 FAILURE_SPAMAP_LOAD_PARAM = 127~%uint8 FAILURE_SPAMAP_INVALID_CAMERA = 128~%uint8 FAILURE_SPAMAP_INVERSE_STAMP_WHEEL = 129~%uint8 FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER = 130~%uint8 FAILURE_SPAMAP_UNSUPPORTED_TASK = 131~%uint8 FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE = 132~%uint8 FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE = 133~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum~%uint8 UNKNOWN = 0~%uint8 PERCEIVED_BELOW = 1~%uint8 USER_SELECTED = 2~%uint8 NO_TARGET_SLOT = 3~%uint8 VIRTUAL = 4~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LiveLPNPMap~%system_manager_msgs/ParkingSpaceInfo[] psd_map~%system_manager_msgs/PointsPosition[] speed_bumps~%system_manager_msgs/PointsPosition[] pillars~%system_manager_msgs/PointsPosition[] walls~%system_manager_msgs/PointsPosition[] intersections~%system_manager_msgs/PointsPosition[] parking_gates~%system_manager_msgs/LiveLPNPMapRoadPoint[] trajectory_points~%uint32 road_id~%system_manager_msgs/RoadTypeEnum road_type~%geometry_msgs/TransformStamped transform~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceInfo~%uint64 id~%uint8 code~%system_manager_msgs/ParkingSpaceStatusEnum status~%system_manager_msgs/ParkingSpaceTypeEnum type~%mla_localization_msgs/MLAPosLocal[] corners~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceStatusEnum~%uint8 NO_INFORMATION = 0~%uint8 PARKING_SPACE_VACANT = 1~%uint8 PARKING_SPACE_OCCUPIED = 2~%uint8 PARKING_SPACE_HIGHLIGHT = 3~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceTypeEnum~%uint8 UNKNOWN = 0~%uint8 PARKING_SPACE_WITH_CHARGING = 1~%uint8 value~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: system_manager_msgs/PointsPosition~%mla_localization_msgs/MLAPosLocal[] points~%~%================================================================================~%MSG: system_manager_msgs/LiveLPNPMapRoadPoint~%float64 x~%float64 y~%float64 z~%float64 width~%~%================================================================================~%MSG: system_manager_msgs/RoadTypeEnum~%uint8 UNKNOWN = 0~%uint8 LEVEL = 1~%uint8 DOWNHILL = 2~%uint8 UPHILL = 3~%uint8 GROUND_PARKING = 4~%uint8 PUBLIC_ROAD = 5~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: system_manager_msgs/LPNPMapIncrementOffset~%int32 parking_slot~%int32 speed_bump~%int32 trajectory_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LPNPMappingInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'summary))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'failure_case))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_space_building_way))
     4
     4
     4
     4
     4
     4
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'live_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'increment_offset))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LPNPMappingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LPNPMappingInfo
    (cl:cons ':header (header msg))
    (cl:cons ':summary (summary msg))
    (cl:cons ':path_verify_rate (path_verify_rate msg))
    (cl:cons ':status (status msg))
    (cl:cons ':failure_case (failure_case msg))
    (cl:cons ':parking_space_building_way (parking_space_building_way msg))
    (cl:cons ':learning_distance (learning_distance msg))
    (cl:cons ':total_distance (total_distance msg))
    (cl:cons ':speed_bump_num (speed_bump_num msg))
    (cl:cons ':slope_num (slope_num msg))
    (cl:cons ':parking_slot_num (parking_slot_num msg))
    (cl:cons ':current_map_id (current_map_id msg))
    (cl:cons ':floor_id (floor_id msg))
    (cl:cons ':in_parking_space (in_parking_space msg))
    (cl:cons ':live_map (live_map msg))
    (cl:cons ':increment_offset (increment_offset msg))
))
