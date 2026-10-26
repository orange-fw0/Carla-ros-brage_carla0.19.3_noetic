; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ParkingLotInfo.msg.html

(cl:defclass <ParkingLotInfo> (roslisp-msg-protocol:ros-message)
  ((dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type mla_localization_msgs-msg:MLAPosGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosGlobal))
   (parking_space_id
    :reader parking_space_id
    :initarg :parking_space_id
    :type cl:integer
    :initform 0)
   (parking_space_positions
    :reader parking_space_positions
    :initarg :parking_space_positions
    :type (cl:vector mla_localization_msgs-msg:MLAPosGlobal)
   :initform (cl:make-array 0 :element-type 'mla_localization_msgs-msg:MLAPosGlobal :initial-element (cl:make-instance 'mla_localization_msgs-msg:MLAPosGlobal)))
   (trace_start_position
    :reader trace_start_position
    :initarg :trace_start_position
    :type mla_localization_msgs-msg:MLAPosGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosGlobal))
   (trace_end_position
    :reader trace_end_position
    :initarg :trace_end_position
    :type mla_localization_msgs-msg:MLAPosGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosGlobal))
   (type
    :reader type
    :initarg :type
    :type system_manager_msgs-msg:ParkingLotTypeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:ParkingLotTypeEnum))
   (render_data
    :reader render_data
    :initarg :render_data
    :type cl:string
    :initform "")
   (address
    :reader address
    :initarg :address
    :type cl:string
    :initform "")
   (trajectory_length
    :reader trajectory_length
    :initarg :trajectory_length
    :type cl:integer
    :initform 0)
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (reversed
    :reader reversed
    :initarg :reversed
    :type cl:string
    :initform ""))
)

(cl:defclass ParkingLotInfo (<ParkingLotInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingLotInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingLotInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ParkingLotInfo> is deprecated: use system_manager_msgs-msg:ParkingLotInfo instead.")))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:dist-val is deprecated.  Use system_manager_msgs-msg:dist instead.")
  (dist m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:id-val is deprecated.  Use system_manager_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:name-val is deprecated.  Use system_manager_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:position-val is deprecated.  Use system_manager_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'parking_space_id-val :lambda-list '(m))
(cl:defmethod parking_space_id-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_space_id-val is deprecated.  Use system_manager_msgs-msg:parking_space_id instead.")
  (parking_space_id m))

(cl:ensure-generic-function 'parking_space_positions-val :lambda-list '(m))
(cl:defmethod parking_space_positions-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_space_positions-val is deprecated.  Use system_manager_msgs-msg:parking_space_positions instead.")
  (parking_space_positions m))

(cl:ensure-generic-function 'trace_start_position-val :lambda-list '(m))
(cl:defmethod trace_start_position-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:trace_start_position-val is deprecated.  Use system_manager_msgs-msg:trace_start_position instead.")
  (trace_start_position m))

(cl:ensure-generic-function 'trace_end_position-val :lambda-list '(m))
(cl:defmethod trace_end_position-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:trace_end_position-val is deprecated.  Use system_manager_msgs-msg:trace_end_position instead.")
  (trace_end_position m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:type-val is deprecated.  Use system_manager_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'render_data-val :lambda-list '(m))
(cl:defmethod render_data-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:render_data-val is deprecated.  Use system_manager_msgs-msg:render_data instead.")
  (render_data m))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:address-val is deprecated.  Use system_manager_msgs-msg:address instead.")
  (address m))

(cl:ensure-generic-function 'trajectory_length-val :lambda-list '(m))
(cl:defmethod trajectory_length-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:trajectory_length-val is deprecated.  Use system_manager_msgs-msg:trajectory_length instead.")
  (trajectory_length m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:label-val is deprecated.  Use system_manager_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'reversed-val :lambda-list '(m))
(cl:defmethod reversed-val ((m <ParkingLotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:reversed-val is deprecated.  Use system_manager_msgs-msg:reversed instead.")
  (reversed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingLotInfo>) ostream)
  "Serializes a message object of type '<ParkingLotInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_space_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_space_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_space_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_space_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_space_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_space_positions))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trace_start_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trace_end_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'render_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'render_data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trajectory_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trajectory_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trajectory_length)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reversed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reversed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingLotInfo>) istream)
  "Deserializes a message object of type '<ParkingLotInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_space_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_space_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parking_space_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parking_space_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_space_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_space_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mla_localization_msgs-msg:MLAPosGlobal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trace_start_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trace_end_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'render_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'render_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trajectory_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trajectory_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trajectory_length)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reversed) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reversed) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingLotInfo>)))
  "Returns string type for a message object of type '<ParkingLotInfo>"
  "system_manager_msgs/ParkingLotInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingLotInfo)))
  "Returns string type for a message object of type 'ParkingLotInfo"
  "system_manager_msgs/ParkingLotInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingLotInfo>)))
  "Returns md5sum for a message object of type '<ParkingLotInfo>"
  "3186515e4fbc521479112dbf39c899bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingLotInfo)))
  "Returns md5sum for a message object of type 'ParkingLotInfo"
  "3186515e4fbc521479112dbf39c899bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingLotInfo>)))
  "Returns full string definition for message of type '<ParkingLotInfo>"
  (cl:format cl:nil "float32 dist~%uint32 id~%string name~%mla_localization_msgs/MLAPosGlobal position~%uint32 parking_space_id~%mla_localization_msgs/MLAPosGlobal[] parking_space_positions~%mla_localization_msgs/MLAPosGlobal trace_start_position~%mla_localization_msgs/MLAPosGlobal trace_end_position~%system_manager_msgs/ParkingLotTypeEnum type~%string render_data~%string address~%uint32 trajectory_length~%string label~%string reversed~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: system_manager_msgs/ParkingLotTypeEnum~%uint8 PNP = 0~%uint8 LPNP = 1~%uint8 BOTH = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingLotInfo)))
  "Returns full string definition for message of type 'ParkingLotInfo"
  (cl:format cl:nil "float32 dist~%uint32 id~%string name~%mla_localization_msgs/MLAPosGlobal position~%uint32 parking_space_id~%mla_localization_msgs/MLAPosGlobal[] parking_space_positions~%mla_localization_msgs/MLAPosGlobal trace_start_position~%mla_localization_msgs/MLAPosGlobal trace_end_position~%system_manager_msgs/ParkingLotTypeEnum type~%string render_data~%string address~%uint32 trajectory_length~%string label~%string reversed~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: system_manager_msgs/ParkingLotTypeEnum~%uint8 PNP = 0~%uint8 LPNP = 1~%uint8 BOTH = 2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingLotInfo>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_space_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trace_start_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trace_end_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'render_data))
     4 (cl:length (cl:slot-value msg 'address))
     4
     4 (cl:length (cl:slot-value msg 'label))
     4 (cl:length (cl:slot-value msg 'reversed))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingLotInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingLotInfo
    (cl:cons ':dist (dist msg))
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':position (position msg))
    (cl:cons ':parking_space_id (parking_space_id msg))
    (cl:cons ':parking_space_positions (parking_space_positions msg))
    (cl:cons ':trace_start_position (trace_start_position msg))
    (cl:cons ':trace_end_position (trace_end_position msg))
    (cl:cons ':type (type msg))
    (cl:cons ':render_data (render_data msg))
    (cl:cons ':address (address msg))
    (cl:cons ':trajectory_length (trajectory_length msg))
    (cl:cons ':label (label msg))
    (cl:cons ':reversed (reversed msg))
))
