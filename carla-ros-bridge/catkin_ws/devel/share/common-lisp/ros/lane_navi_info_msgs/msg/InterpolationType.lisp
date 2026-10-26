; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude InterpolationType.msg.html

(cl:defclass <InterpolationType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (addition_values
    :reader addition_values
    :initarg :addition_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (params
    :reader params
    :initarg :params
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass InterpolationType (<InterpolationType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterpolationType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterpolationType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<InterpolationType> is deprecated: use lane_navi_info_msgs-msg:InterpolationType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <InterpolationType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'addition_values-val :lambda-list '(m))
(cl:defmethod addition_values-val ((m <InterpolationType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:addition_values-val is deprecated.  Use lane_navi_info_msgs-msg:addition_values instead.")
  (addition_values m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <InterpolationType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:params-val is deprecated.  Use lane_navi_info_msgs-msg:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InterpolationType>)))
    "Constants for message type '<InterpolationType>"
  '((:UNKNOWN . 0)
    (:STEP . 1)
    (:LINEAR . 2)
    (:GENERAL . 3)
    (:OHTERS . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InterpolationType)))
    "Constants for message type 'InterpolationType"
  '((:UNKNOWN . 0)
    (:STEP . 1)
    (:LINEAR . 2)
    (:GENERAL . 3)
    (:OHTERS . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterpolationType>) ostream)
  "Serializes a message object of type '<InterpolationType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'addition_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'addition_values))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterpolationType>) istream)
  "Deserializes a message object of type '<InterpolationType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'addition_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'addition_values)))
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
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterpolationType>)))
  "Returns string type for a message object of type '<InterpolationType>"
  "lane_navi_info_msgs/InterpolationType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterpolationType)))
  "Returns string type for a message object of type 'InterpolationType"
  "lane_navi_info_msgs/InterpolationType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterpolationType>)))
  "Returns md5sum for a message object of type '<InterpolationType>"
  "982ed9650ff59d021b6cb1ccc2662eda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterpolationType)))
  "Returns md5sum for a message object of type 'InterpolationType"
  "982ed9650ff59d021b6cb1ccc2662eda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterpolationType>)))
  "Returns full string definition for message of type '<InterpolationType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterpolationType)))
  "Returns full string definition for message of type 'InterpolationType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterpolationType>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'addition_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterpolationType>))
  "Converts a ROS message object to a list"
  (cl:list 'InterpolationType
    (cl:cons ':type (type msg))
    (cl:cons ':addition_values (addition_values msg))
    (cl:cons ':params (params msg))
))
