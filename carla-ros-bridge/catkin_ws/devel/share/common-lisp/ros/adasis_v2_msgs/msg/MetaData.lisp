; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude MetaData.msg.html

(cl:defclass <MetaData> (roslisp-msg-protocol:ros-message)
  ((cyclic_counter
    :reader cyclic_counter
    :initarg :cyclic_counter
    :type cl:fixnum
    :initform 0)
   (country_code
    :reader country_code
    :initarg :country_code
    :type cl:fixnum
    :initform 0)
   (region_code
    :reader region_code
    :initarg :region_code
    :type cl:fixnum
    :initform 0)
   (driving_side
    :reader driving_side
    :initarg :driving_side
    :type cl:fixnum
    :initform 0)
   (speed_units
    :reader speed_units
    :initarg :speed_units
    :type cl:fixnum
    :initform 0)
   (major_protocol_ver
    :reader major_protocol_ver
    :initarg :major_protocol_ver
    :type cl:fixnum
    :initform 0)
   (minor_protocol_ver
    :reader minor_protocol_ver
    :initarg :minor_protocol_ver
    :type cl:fixnum
    :initform 0)
   (minor_protocol_sub_ver
    :reader minor_protocol_sub_ver
    :initarg :minor_protocol_sub_ver
    :type cl:fixnum
    :initform 0)
   (hardware_ver
    :reader hardware_ver
    :initarg :hardware_ver
    :type cl:fixnum
    :initform 0)
   (map_provider
    :reader map_provider
    :initarg :map_provider
    :type cl:fixnum
    :initform 0)
   (map_ver_year
    :reader map_ver_year
    :initarg :map_ver_year
    :type cl:fixnum
    :initform 0)
   (map_ver_year_quarter
    :reader map_ver_year_quarter
    :initarg :map_ver_year_quarter
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MetaData (<MetaData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MetaData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MetaData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<MetaData> is deprecated: use adasis_v2_msgs-msg:MetaData instead.")))

(cl:ensure-generic-function 'cyclic_counter-val :lambda-list '(m))
(cl:defmethod cyclic_counter-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:cyclic_counter-val is deprecated.  Use adasis_v2_msgs-msg:cyclic_counter instead.")
  (cyclic_counter m))

(cl:ensure-generic-function 'country_code-val :lambda-list '(m))
(cl:defmethod country_code-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:country_code-val is deprecated.  Use adasis_v2_msgs-msg:country_code instead.")
  (country_code m))

(cl:ensure-generic-function 'region_code-val :lambda-list '(m))
(cl:defmethod region_code-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:region_code-val is deprecated.  Use adasis_v2_msgs-msg:region_code instead.")
  (region_code m))

(cl:ensure-generic-function 'driving_side-val :lambda-list '(m))
(cl:defmethod driving_side-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:driving_side-val is deprecated.  Use adasis_v2_msgs-msg:driving_side instead.")
  (driving_side m))

(cl:ensure-generic-function 'speed_units-val :lambda-list '(m))
(cl:defmethod speed_units-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:speed_units-val is deprecated.  Use adasis_v2_msgs-msg:speed_units instead.")
  (speed_units m))

(cl:ensure-generic-function 'major_protocol_ver-val :lambda-list '(m))
(cl:defmethod major_protocol_ver-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:major_protocol_ver-val is deprecated.  Use adasis_v2_msgs-msg:major_protocol_ver instead.")
  (major_protocol_ver m))

(cl:ensure-generic-function 'minor_protocol_ver-val :lambda-list '(m))
(cl:defmethod minor_protocol_ver-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:minor_protocol_ver-val is deprecated.  Use adasis_v2_msgs-msg:minor_protocol_ver instead.")
  (minor_protocol_ver m))

(cl:ensure-generic-function 'minor_protocol_sub_ver-val :lambda-list '(m))
(cl:defmethod minor_protocol_sub_ver-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:minor_protocol_sub_ver-val is deprecated.  Use adasis_v2_msgs-msg:minor_protocol_sub_ver instead.")
  (minor_protocol_sub_ver m))

(cl:ensure-generic-function 'hardware_ver-val :lambda-list '(m))
(cl:defmethod hardware_ver-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:hardware_ver-val is deprecated.  Use adasis_v2_msgs-msg:hardware_ver instead.")
  (hardware_ver m))

(cl:ensure-generic-function 'map_provider-val :lambda-list '(m))
(cl:defmethod map_provider-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:map_provider-val is deprecated.  Use adasis_v2_msgs-msg:map_provider instead.")
  (map_provider m))

(cl:ensure-generic-function 'map_ver_year-val :lambda-list '(m))
(cl:defmethod map_ver_year-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:map_ver_year-val is deprecated.  Use adasis_v2_msgs-msg:map_ver_year instead.")
  (map_ver_year m))

(cl:ensure-generic-function 'map_ver_year_quarter-val :lambda-list '(m))
(cl:defmethod map_ver_year_quarter-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:map_ver_year_quarter-val is deprecated.  Use adasis_v2_msgs-msg:map_ver_year_quarter instead.")
  (map_ver_year_quarter m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <MetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:reserved-val is deprecated.  Use adasis_v2_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MetaData>) ostream)
  "Serializes a message object of type '<MetaData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'country_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'country_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'region_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'region_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'driving_side)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_units)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'major_protocol_ver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minor_protocol_ver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minor_protocol_sub_ver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hardware_ver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hardware_ver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_provider)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_ver_year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_ver_year_quarter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MetaData>) istream)
  "Deserializes a message object of type '<MetaData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'country_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'country_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'region_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'region_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'driving_side)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_units)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'major_protocol_ver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minor_protocol_ver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minor_protocol_sub_ver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hardware_ver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hardware_ver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_provider)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_ver_year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_ver_year_quarter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MetaData>)))
  "Returns string type for a message object of type '<MetaData>"
  "adasis_v2_msgs/MetaData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetaData)))
  "Returns string type for a message object of type 'MetaData"
  "adasis_v2_msgs/MetaData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MetaData>)))
  "Returns md5sum for a message object of type '<MetaData>"
  "5556fd004a3f00d8656d992fea6c2650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MetaData)))
  "Returns md5sum for a message object of type 'MetaData"
  "5556fd004a3f00d8656d992fea6c2650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MetaData>)))
  "Returns full string definition for message of type '<MetaData>"
  (cl:format cl:nil "uint8 cyclic_counter~%uint16 country_code~%uint16 region_code~%uint8 driving_side~%uint8 speed_units~%uint8 major_protocol_ver~%uint8 minor_protocol_ver~%uint8 minor_protocol_sub_ver~%uint16 hardware_ver~%uint8 map_provider~%uint8 map_ver_year~%uint8 map_ver_year_quarter~%uint8 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MetaData)))
  "Returns full string definition for message of type 'MetaData"
  (cl:format cl:nil "uint8 cyclic_counter~%uint16 country_code~%uint16 region_code~%uint8 driving_side~%uint8 speed_units~%uint8 major_protocol_ver~%uint8 minor_protocol_ver~%uint8 minor_protocol_sub_ver~%uint16 hardware_ver~%uint8 map_provider~%uint8 map_ver_year~%uint8 map_ver_year_quarter~%uint8 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MetaData>))
  (cl:+ 0
     1
     2
     2
     1
     1
     1
     1
     1
     2
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MetaData>))
  "Converts a ROS message object to a list"
  (cl:list 'MetaData
    (cl:cons ':cyclic_counter (cyclic_counter msg))
    (cl:cons ':country_code (country_code msg))
    (cl:cons ':region_code (region_code msg))
    (cl:cons ':driving_side (driving_side msg))
    (cl:cons ':speed_units (speed_units msg))
    (cl:cons ':major_protocol_ver (major_protocol_ver msg))
    (cl:cons ':minor_protocol_ver (minor_protocol_ver msg))
    (cl:cons ':minor_protocol_sub_ver (minor_protocol_sub_ver msg))
    (cl:cons ':hardware_ver (hardware_ver msg))
    (cl:cons ':map_provider (map_provider msg))
    (cl:cons ':map_ver_year (map_ver_year msg))
    (cl:cons ':map_ver_year_quarter (map_ver_year_quarter msg))
    (cl:cons ':reserved (reserved msg))
))
