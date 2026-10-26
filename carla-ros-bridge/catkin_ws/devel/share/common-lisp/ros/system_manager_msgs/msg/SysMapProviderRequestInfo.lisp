; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysMapProviderRequestInfo.msg.html

(cl:defclass <SysMapProviderRequestInfo> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type mla_localization_msgs-msg:MLAPosGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosGlobal))
   (radius_range
    :reader radius_range
    :initarg :radius_range
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type system_manager_msgs-msg:ParkingLotTypeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:ParkingLotTypeEnum))
   (parking_lot_id
    :reader parking_lot_id
    :initarg :parking_lot_id
    :type cl:integer
    :initform 0)
   (target_partition_id_list
    :reader target_partition_id_list
    :initarg :target_partition_id_list
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (query_mode
    :reader query_mode
    :initarg :query_mode
    :type system_manager_msgs-msg:ParkingQueryModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:ParkingQueryModeEnum))
   (time_threshold_for_deleting
    :reader time_threshold_for_deleting
    :initarg :time_threshold_for_deleting
    :type cl:integer
    :initform 0)
   (amout_for_deleting
    :reader amout_for_deleting
    :initarg :amout_for_deleting
    :type cl:integer
    :initform 0)
   (map_content
    :reader map_content
    :initarg :map_content
    :type system_manager_msgs-msg:MapContentToUpdate
    :initform (cl:make-instance 'system_manager_msgs-msg:MapContentToUpdate)))
)

(cl:defclass SysMapProviderRequestInfo (<SysMapProviderRequestInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysMapProviderRequestInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysMapProviderRequestInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysMapProviderRequestInfo> is deprecated: use system_manager_msgs-msg:SysMapProviderRequestInfo instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:position-val is deprecated.  Use system_manager_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'radius_range-val :lambda-list '(m))
(cl:defmethod radius_range-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:radius_range-val is deprecated.  Use system_manager_msgs-msg:radius_range instead.")
  (radius_range m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:type-val is deprecated.  Use system_manager_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'parking_lot_id-val :lambda-list '(m))
(cl:defmethod parking_lot_id-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_lot_id-val is deprecated.  Use system_manager_msgs-msg:parking_lot_id instead.")
  (parking_lot_id m))

(cl:ensure-generic-function 'target_partition_id_list-val :lambda-list '(m))
(cl:defmethod target_partition_id_list-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:target_partition_id_list-val is deprecated.  Use system_manager_msgs-msg:target_partition_id_list instead.")
  (target_partition_id_list m))

(cl:ensure-generic-function 'query_mode-val :lambda-list '(m))
(cl:defmethod query_mode-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:query_mode-val is deprecated.  Use system_manager_msgs-msg:query_mode instead.")
  (query_mode m))

(cl:ensure-generic-function 'time_threshold_for_deleting-val :lambda-list '(m))
(cl:defmethod time_threshold_for_deleting-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:time_threshold_for_deleting-val is deprecated.  Use system_manager_msgs-msg:time_threshold_for_deleting instead.")
  (time_threshold_for_deleting m))

(cl:ensure-generic-function 'amout_for_deleting-val :lambda-list '(m))
(cl:defmethod amout_for_deleting-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:amout_for_deleting-val is deprecated.  Use system_manager_msgs-msg:amout_for_deleting instead.")
  (amout_for_deleting m))

(cl:ensure-generic-function 'map_content-val :lambda-list '(m))
(cl:defmethod map_content-val ((m <SysMapProviderRequestInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:map_content-val is deprecated.  Use system_manager_msgs-msg:map_content instead.")
  (map_content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysMapProviderRequestInfo>) ostream)
  "Serializes a message object of type '<SysMapProviderRequestInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radius_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radius_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radius_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radius_range)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_lot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_lot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_lot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_lot_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_partition_id_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'target_partition_id_list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'query_mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_threshold_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_threshold_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_threshold_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_threshold_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_threshold_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_threshold_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_threshold_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_threshold_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'amout_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'amout_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'amout_for_deleting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'amout_for_deleting)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_content) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysMapProviderRequestInfo>) istream)
  "Deserializes a message object of type '<SysMapProviderRequestInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radius_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radius_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radius_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radius_range)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_lot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_lot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_lot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_lot_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_partition_id_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_partition_id_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'query_mode) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_threshold_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_threshold_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_threshold_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_threshold_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_threshold_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_threshold_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_threshold_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_threshold_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'amout_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'amout_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'amout_for_deleting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'amout_for_deleting)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_content) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysMapProviderRequestInfo>)))
  "Returns string type for a message object of type '<SysMapProviderRequestInfo>"
  "system_manager_msgs/SysMapProviderRequestInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysMapProviderRequestInfo)))
  "Returns string type for a message object of type 'SysMapProviderRequestInfo"
  "system_manager_msgs/SysMapProviderRequestInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysMapProviderRequestInfo>)))
  "Returns md5sum for a message object of type '<SysMapProviderRequestInfo>"
  "9bac8b403ecdb89398cc2d9976f87bc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysMapProviderRequestInfo)))
  "Returns md5sum for a message object of type 'SysMapProviderRequestInfo"
  "9bac8b403ecdb89398cc2d9976f87bc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysMapProviderRequestInfo>)))
  "Returns full string definition for message of type '<SysMapProviderRequestInfo>"
  (cl:format cl:nil "mla_localization_msgs/MLAPosGlobal position~%uint32 radius_range~%system_manager_msgs/ParkingLotTypeEnum type~%uint32 parking_lot_id~%uint32[] target_partition_id_list~%system_manager_msgs/ParkingQueryModeEnum query_mode~%uint64 time_threshold_for_deleting~%uint32 amout_for_deleting~%system_manager_msgs/MapContentToUpdate map_content~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: system_manager_msgs/ParkingLotTypeEnum~%uint8 PNP = 0~%uint8 LPNP = 1~%uint8 BOTH = 2~%uint8 type~%~%================================================================================~%MSG: system_manager_msgs/ParkingQueryModeEnum~%uint8 BY_RANGE = 0~%uint8 BY_LAST_USAGE = 1~%uint8 BY_LATEST_BUILD = 2~%uint8 BY_SPECIFIC_ID = 3~%uint8 mode~%~%================================================================================~%MSG: system_manager_msgs/MapContentToUpdate~%string name~%string address~%string label~%string parking_space_id~%string parking_type~%string reversed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysMapProviderRequestInfo)))
  "Returns full string definition for message of type 'SysMapProviderRequestInfo"
  (cl:format cl:nil "mla_localization_msgs/MLAPosGlobal position~%uint32 radius_range~%system_manager_msgs/ParkingLotTypeEnum type~%uint32 parking_lot_id~%uint32[] target_partition_id_list~%system_manager_msgs/ParkingQueryModeEnum query_mode~%uint64 time_threshold_for_deleting~%uint32 amout_for_deleting~%system_manager_msgs/MapContentToUpdate map_content~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: system_manager_msgs/ParkingLotTypeEnum~%uint8 PNP = 0~%uint8 LPNP = 1~%uint8 BOTH = 2~%uint8 type~%~%================================================================================~%MSG: system_manager_msgs/ParkingQueryModeEnum~%uint8 BY_RANGE = 0~%uint8 BY_LAST_USAGE = 1~%uint8 BY_LATEST_BUILD = 2~%uint8 BY_SPECIFIC_ID = 3~%uint8 mode~%~%================================================================================~%MSG: system_manager_msgs/MapContentToUpdate~%string name~%string address~%string label~%string parking_space_id~%string parking_type~%string reversed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysMapProviderRequestInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_partition_id_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'query_mode))
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysMapProviderRequestInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SysMapProviderRequestInfo
    (cl:cons ':position (position msg))
    (cl:cons ':radius_range (radius_range msg))
    (cl:cons ':type (type msg))
    (cl:cons ':parking_lot_id (parking_lot_id msg))
    (cl:cons ':target_partition_id_list (target_partition_id_list msg))
    (cl:cons ':query_mode (query_mode msg))
    (cl:cons ':time_threshold_for_deleting (time_threshold_for_deleting msg))
    (cl:cons ':amout_for_deleting (amout_for_deleting msg))
    (cl:cons ':map_content (map_content msg))
))
