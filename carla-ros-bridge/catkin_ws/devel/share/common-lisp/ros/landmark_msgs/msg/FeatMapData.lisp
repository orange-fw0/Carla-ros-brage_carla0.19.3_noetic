; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude FeatMapData.msg.html

(cl:defclass <FeatMapData> (roslisp-msg-protocol:ros-message)
  ((shape
    :reader shape
    :initarg :shape
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (map_scalar
    :reader map_scalar
    :initarg :map_scalar
    :type cl:float
    :initform 0.0)
   (x_range
    :reader x_range
    :initarg :x_range
    :type landmark_msgs-msg:FloatRange
    :initform (cl:make-instance 'landmark_msgs-msg:FloatRange))
   (y_range
    :reader y_range
    :initarg :y_range
    :type landmark_msgs-msg:FloatRange
    :initform (cl:make-instance 'landmark_msgs-msg:FloatRange))
   (cls_num
    :reader cls_num
    :initarg :cls_num
    :type cl:fixnum
    :initform 0)
   (cls_map
    :reader cls_map
    :initarg :cls_map
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (feat_map
    :reader feat_map
    :initarg :feat_map
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cls_range
    :reader cls_range
    :initarg :cls_range
    :type (cl:vector landmark_msgs-msg:FloatRange)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:FloatRange :initial-element (cl:make-instance 'landmark_msgs-msg:FloatRange)))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass FeatMapData (<FeatMapData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeatMapData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeatMapData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<FeatMapData> is deprecated: use landmark_msgs-msg:FeatMapData instead.")))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:shape-val is deprecated.  Use landmark_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'map_scalar-val :lambda-list '(m))
(cl:defmethod map_scalar-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:map_scalar-val is deprecated.  Use landmark_msgs-msg:map_scalar instead.")
  (map_scalar m))

(cl:ensure-generic-function 'x_range-val :lambda-list '(m))
(cl:defmethod x_range-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:x_range-val is deprecated.  Use landmark_msgs-msg:x_range instead.")
  (x_range m))

(cl:ensure-generic-function 'y_range-val :lambda-list '(m))
(cl:defmethod y_range-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:y_range-val is deprecated.  Use landmark_msgs-msg:y_range instead.")
  (y_range m))

(cl:ensure-generic-function 'cls_num-val :lambda-list '(m))
(cl:defmethod cls_num-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:cls_num-val is deprecated.  Use landmark_msgs-msg:cls_num instead.")
  (cls_num m))

(cl:ensure-generic-function 'cls_map-val :lambda-list '(m))
(cl:defmethod cls_map-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:cls_map-val is deprecated.  Use landmark_msgs-msg:cls_map instead.")
  (cls_map m))

(cl:ensure-generic-function 'feat_map-val :lambda-list '(m))
(cl:defmethod feat_map-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:feat_map-val is deprecated.  Use landmark_msgs-msg:feat_map instead.")
  (feat_map m))

(cl:ensure-generic-function 'cls_range-val :lambda-list '(m))
(cl:defmethod cls_range-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:cls_range-val is deprecated.  Use landmark_msgs-msg:cls_range instead.")
  (cls_range m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <FeatMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeatMapData>) ostream)
  "Serializes a message object of type '<FeatMapData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'shape))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_scalar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x_range) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y_range) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cls_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cls_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cls_map))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feat_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'feat_map))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cls_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cls_range))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeatMapData>) istream)
  "Deserializes a message object of type '<FeatMapData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'map_scalar) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x_range) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y_range) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cls_num) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cls_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cls_map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feat_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feat_map)))
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
  (cl:setf (cl:slot-value msg 'cls_range) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cls_range)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:FloatRange))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeatMapData>)))
  "Returns string type for a message object of type '<FeatMapData>"
  "landmark_msgs/FeatMapData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeatMapData)))
  "Returns string type for a message object of type 'FeatMapData"
  "landmark_msgs/FeatMapData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeatMapData>)))
  "Returns md5sum for a message object of type '<FeatMapData>"
  "64a274ab3be400fd28c99ce404b8f383")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeatMapData)))
  "Returns md5sum for a message object of type 'FeatMapData"
  "64a274ab3be400fd28c99ce404b8f383")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeatMapData>)))
  "Returns full string definition for message of type '<FeatMapData>"
  (cl:format cl:nil "int32[] shape~%float32 map_scalar~%landmark_msgs/FloatRange x_range~%landmark_msgs/FloatRange y_range~%int16 cls_num~%uint8[] cls_map~%float32[] feat_map~%landmark_msgs/FloatRange[] cls_range~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/FloatRange~%float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeatMapData)))
  "Returns full string definition for message of type 'FeatMapData"
  (cl:format cl:nil "int32[] shape~%float32 map_scalar~%landmark_msgs/FloatRange x_range~%landmark_msgs/FloatRange y_range~%int16 cls_num~%uint8[] cls_map~%float32[] feat_map~%landmark_msgs/FloatRange[] cls_range~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/FloatRange~%float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeatMapData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x_range))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y_range))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cls_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feat_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cls_range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeatMapData>))
  "Converts a ROS message object to a list"
  (cl:list 'FeatMapData
    (cl:cons ':shape (shape msg))
    (cl:cons ':map_scalar (map_scalar msg))
    (cl:cons ':x_range (x_range msg))
    (cl:cons ':y_range (y_range msg))
    (cl:cons ':cls_num (cls_num msg))
    (cl:cons ':cls_map (cls_map msg))
    (cl:cons ':feat_map (feat_map msg))
    (cl:cons ':cls_range (cls_range msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
