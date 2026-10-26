; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssParkSlotData.msg.html

(cl:defclass <UssParkSlotData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (meta
    :reader meta
    :initarg :meta
    :type sensor_interface_msgs-msg:UltrasonicResultMeta
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicResultMeta))
   (parkslot_id
    :reader parkslot_id
    :initarg :parkslot_id
    :type cl:integer
    :initform 0)
   (parking_slot_type
    :reader parking_slot_type
    :initarg :parking_slot_type
    :type sensor_interface_msgs-msg:UltrasonicPaingslotType
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicPaingslotType))
   (border_type_data
    :reader border_type_data
    :initarg :border_type_data
    :type (cl:vector sensor_interface_msgs-msg:BordertType)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:BordertType :initial-element (cl:make-instance 'sensor_interface_msgs-msg:BordertType)))
   (veh_obj1_x
    :reader veh_obj1_x
    :initarg :veh_obj1_x
    :type cl:float
    :initform 0.0)
   (veh_obj1_y
    :reader veh_obj1_y
    :initarg :veh_obj1_y
    :type cl:float
    :initform 0.0)
   (veh_obj2_x
    :reader veh_obj2_x
    :initarg :veh_obj2_x
    :type cl:float
    :initform 0.0)
   (veh_obj2_y
    :reader veh_obj2_y
    :initarg :veh_obj2_y
    :type cl:float
    :initform 0.0)
   (veh_obj3_x
    :reader veh_obj3_x
    :initarg :veh_obj3_x
    :type cl:float
    :initform 0.0)
   (veh_obj3_y
    :reader veh_obj3_y
    :initarg :veh_obj3_y
    :type cl:float
    :initform 0.0)
   (veh_obj4_x
    :reader veh_obj4_x
    :initarg :veh_obj4_x
    :type cl:float
    :initform 0.0)
   (veh_obj4_y
    :reader veh_obj4_y
    :initarg :veh_obj4_y
    :type cl:float
    :initform 0.0)
   (parkslot_prob
    :reader parkslot_prob
    :initarg :parkslot_prob
    :type cl:float
    :initform 0.0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass UssParkSlotData (<UssParkSlotData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssParkSlotData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssParkSlotData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssParkSlotData> is deprecated: use sensor_interface_msgs-msg:UssParkSlotData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:available-val is deprecated.  Use sensor_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'parkslot_id-val :lambda-list '(m))
(cl:defmethod parkslot_id-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:parkslot_id-val is deprecated.  Use sensor_interface_msgs-msg:parkslot_id instead.")
  (parkslot_id m))

(cl:ensure-generic-function 'parking_slot_type-val :lambda-list '(m))
(cl:defmethod parking_slot_type-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:parking_slot_type-val is deprecated.  Use sensor_interface_msgs-msg:parking_slot_type instead.")
  (parking_slot_type m))

(cl:ensure-generic-function 'border_type_data-val :lambda-list '(m))
(cl:defmethod border_type_data-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:border_type_data-val is deprecated.  Use sensor_interface_msgs-msg:border_type_data instead.")
  (border_type_data m))

(cl:ensure-generic-function 'veh_obj1_x-val :lambda-list '(m))
(cl:defmethod veh_obj1_x-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:veh_obj1_x-val is deprecated.  Use sensor_interface_msgs-msg:veh_obj1_x instead.")
  (veh_obj1_x m))

(cl:ensure-generic-function 'veh_obj1_y-val :lambda-list '(m))
(cl:defmethod veh_obj1_y-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:veh_obj1_y-val is deprecated.  Use sensor_interface_msgs-msg:veh_obj1_y instead.")
  (veh_obj1_y m))

(cl:ensure-generic-function 'veh_obj2_x-val :lambda-list '(m))
(cl:defmethod veh_obj2_x-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:veh_obj2_x-val is deprecated.  Use sensor_interface_msgs-msg:veh_obj2_x instead.")
  (veh_obj2_x m))

(cl:ensure-generic-function 'veh_obj2_y-val :lambda-list '(m))
(cl:defmethod veh_obj2_y-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:veh_obj2_y-val is deprecated.  Use sensor_interface_msgs-msg:veh_obj2_y instead.")
  (veh_obj2_y m))

(cl:ensure-generic-function 'veh_obj3_x-val :lambda-list '(m))
(cl:defmethod veh_obj3_x-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:veh_obj3_x-val is deprecated.  Use sensor_interface_msgs-msg:veh_obj3_x instead.")
  (veh_obj3_x m))

(cl:ensure-generic-function 'veh_obj3_y-val :lambda-list '(m))
(cl:defmethod veh_obj3_y-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:veh_obj3_y-val is deprecated.  Use sensor_interface_msgs-msg:veh_obj3_y instead.")
  (veh_obj3_y m))

(cl:ensure-generic-function 'veh_obj4_x-val :lambda-list '(m))
(cl:defmethod veh_obj4_x-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:veh_obj4_x-val is deprecated.  Use sensor_interface_msgs-msg:veh_obj4_x instead.")
  (veh_obj4_x m))

(cl:ensure-generic-function 'veh_obj4_y-val :lambda-list '(m))
(cl:defmethod veh_obj4_y-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:veh_obj4_y-val is deprecated.  Use sensor_interface_msgs-msg:veh_obj4_y instead.")
  (veh_obj4_y m))

(cl:ensure-generic-function 'parkslot_prob-val :lambda-list '(m))
(cl:defmethod parkslot_prob-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:parkslot_prob-val is deprecated.  Use sensor_interface_msgs-msg:parkslot_prob instead.")
  (parkslot_prob m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <UssParkSlotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved_info-val is deprecated.  Use sensor_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssParkSlotData>) ostream)
  "Serializes a message object of type '<UssParkSlotData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parkslot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parkslot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parkslot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parkslot_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_slot_type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'border_type_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'border_type_data))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_obj1_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_obj1_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_obj2_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_obj2_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_obj3_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_obj3_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_obj4_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'veh_obj4_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'parkslot_prob))))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssParkSlotData>) istream)
  "Deserializes a message object of type '<UssParkSlotData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parkslot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parkslot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parkslot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parkslot_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_slot_type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'border_type_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'border_type_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:BordertType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_obj1_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_obj1_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_obj2_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_obj2_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_obj3_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_obj3_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_obj4_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_obj4_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'parkslot_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssParkSlotData>)))
  "Returns string type for a message object of type '<UssParkSlotData>"
  "sensor_interface_msgs/UssParkSlotData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssParkSlotData)))
  "Returns string type for a message object of type 'UssParkSlotData"
  "sensor_interface_msgs/UssParkSlotData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssParkSlotData>)))
  "Returns md5sum for a message object of type '<UssParkSlotData>"
  "0b8a657208389ec0925a2e4f916d0058")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssParkSlotData)))
  "Returns md5sum for a message object of type 'UssParkSlotData"
  "0b8a657208389ec0925a2e4f916d0058")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssParkSlotData>)))
  "Returns full string definition for message of type '<UssParkSlotData>"
  (cl:format cl:nil "uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%uint32 parkslot_id~%sensor_interface_msgs/UltrasonicPaingslotType parking_slot_type~%sensor_interface_msgs/BordertType[] border_type_data~%float32 veh_obj1_x~%float32 veh_obj1_y~%float32 veh_obj2_x~%float32 veh_obj2_y~%float32 veh_obj3_x~%float32 veh_obj3_y~%float32 veh_obj4_x~%float32 veh_obj4_y~%float32 parkslot_prob~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicPaingslotType~%uint8 PSC_SLOT_PARALLE_LE = 0~%uint8 PSC_SLOT_PARALLE_RI = 1~%uint8 PSC_SLOT_CROSS_LE = 2~%uint8 PSC_SLOT_CROSS_RI = 3~%uint8 PSC_SLOT_OBLIQUE_LE = 4~%uint8 PSC_SLOT_OBLIQUE_RI = 5~%uint8 PSC_COMMON_SLOT_LE = 6~%uint8 PSC_COMMON_SLOT_RI = 7~%uint8 POC_SLOT_PARALLE_LE = 8~%uint8 POC_SLOT_PARALLE_RI = 9~%uint8 POC_SLOT_CROSS_LE = 10~%uint8 POC_SLOT_CROSS_RI = 11~%uint8 POC_COMMON_SLOT_LE = 12~%uint8 POC_COMMON_SLOT_RI = 13~%uint8 RESERVED_INFO1 = 14~%uint8 RESERVED_INFO2 = 15~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/BordertType~%uint8 HAT_USLOT_NON_CURB = 0~%uint8 HAT_USLOT_EXIST_CURB = 1~%uint8 UNKNOWN = 2~%uint8 RESERVED_INFO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssParkSlotData)))
  "Returns full string definition for message of type 'UssParkSlotData"
  (cl:format cl:nil "uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%uint32 parkslot_id~%sensor_interface_msgs/UltrasonicPaingslotType parking_slot_type~%sensor_interface_msgs/BordertType[] border_type_data~%float32 veh_obj1_x~%float32 veh_obj1_y~%float32 veh_obj2_x~%float32 veh_obj2_y~%float32 veh_obj3_x~%float32 veh_obj3_y~%float32 veh_obj4_x~%float32 veh_obj4_y~%float32 parkslot_prob~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicPaingslotType~%uint8 PSC_SLOT_PARALLE_LE = 0~%uint8 PSC_SLOT_PARALLE_RI = 1~%uint8 PSC_SLOT_CROSS_LE = 2~%uint8 PSC_SLOT_CROSS_RI = 3~%uint8 PSC_SLOT_OBLIQUE_LE = 4~%uint8 PSC_SLOT_OBLIQUE_RI = 5~%uint8 PSC_COMMON_SLOT_LE = 6~%uint8 PSC_COMMON_SLOT_RI = 7~%uint8 POC_SLOT_PARALLE_LE = 8~%uint8 POC_SLOT_PARALLE_RI = 9~%uint8 POC_SLOT_CROSS_LE = 10~%uint8 POC_SLOT_CROSS_RI = 11~%uint8 POC_COMMON_SLOT_LE = 12~%uint8 POC_COMMON_SLOT_RI = 13~%uint8 RESERVED_INFO1 = 14~%uint8 RESERVED_INFO2 = 15~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/BordertType~%uint8 HAT_USLOT_NON_CURB = 0~%uint8 HAT_USLOT_EXIST_CURB = 1~%uint8 UNKNOWN = 2~%uint8 RESERVED_INFO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssParkSlotData>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_slot_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'border_type_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssParkSlotData>))
  "Converts a ROS message object to a list"
  (cl:list 'UssParkSlotData
    (cl:cons ':available (available msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':parkslot_id (parkslot_id msg))
    (cl:cons ':parking_slot_type (parking_slot_type msg))
    (cl:cons ':border_type_data (border_type_data msg))
    (cl:cons ':veh_obj1_x (veh_obj1_x msg))
    (cl:cons ':veh_obj1_y (veh_obj1_y msg))
    (cl:cons ':veh_obj2_x (veh_obj2_x msg))
    (cl:cons ':veh_obj2_y (veh_obj2_y msg))
    (cl:cons ':veh_obj3_x (veh_obj3_x msg))
    (cl:cons ':veh_obj3_y (veh_obj3_y msg))
    (cl:cons ':veh_obj4_x (veh_obj4_x msg))
    (cl:cons ':veh_obj4_y (veh_obj4_y msg))
    (cl:cons ':parkslot_prob (parkslot_prob msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
