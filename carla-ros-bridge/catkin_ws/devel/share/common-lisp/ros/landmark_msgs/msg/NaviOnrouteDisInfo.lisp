; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude NaviOnrouteDisInfo.msg.html

(cl:defclass <NaviOnrouteDisInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (dist_to_onroute
    :reader dist_to_onroute
    :initarg :dist_to_onroute
    :type cl:float
    :initform 0.0)
   (on_route_dis_clses
    :reader on_route_dis_clses
    :initarg :on_route_dis_clses
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (cls_num
    :reader cls_num
    :initarg :cls_num
    :type cl:fixnum
    :initform 0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass NaviOnrouteDisInfo (<NaviOnrouteDisInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviOnrouteDisInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviOnrouteDisInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<NaviOnrouteDisInfo> is deprecated: use landmark_msgs-msg:NaviOnrouteDisInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <NaviOnrouteDisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'dist_to_onroute-val :lambda-list '(m))
(cl:defmethod dist_to_onroute-val ((m <NaviOnrouteDisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:dist_to_onroute-val is deprecated.  Use landmark_msgs-msg:dist_to_onroute instead.")
  (dist_to_onroute m))

(cl:ensure-generic-function 'on_route_dis_clses-val :lambda-list '(m))
(cl:defmethod on_route_dis_clses-val ((m <NaviOnrouteDisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:on_route_dis_clses-val is deprecated.  Use landmark_msgs-msg:on_route_dis_clses instead.")
  (on_route_dis_clses m))

(cl:ensure-generic-function 'cls_num-val :lambda-list '(m))
(cl:defmethod cls_num-val ((m <NaviOnrouteDisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:cls_num-val is deprecated.  Use landmark_msgs-msg:cls_num instead.")
  (cls_num m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <NaviOnrouteDisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviOnrouteDisInfo>) ostream)
  "Serializes a message object of type '<NaviOnrouteDisInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_to_onroute))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'on_route_dis_clses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'on_route_dis_clses))
  (cl:let* ((signed (cl:slot-value msg 'cls_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviOnrouteDisInfo>) istream)
  "Deserializes a message object of type '<NaviOnrouteDisInfo>"
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_to_onroute) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'on_route_dis_clses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'on_route_dis_clses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cls_num) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviOnrouteDisInfo>)))
  "Returns string type for a message object of type '<NaviOnrouteDisInfo>"
  "landmark_msgs/NaviOnrouteDisInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviOnrouteDisInfo)))
  "Returns string type for a message object of type 'NaviOnrouteDisInfo"
  "landmark_msgs/NaviOnrouteDisInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviOnrouteDisInfo>)))
  "Returns md5sum for a message object of type '<NaviOnrouteDisInfo>"
  "6f4f8afc5e0f728eb89876e0d282d0be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviOnrouteDisInfo)))
  "Returns md5sum for a message object of type 'NaviOnrouteDisInfo"
  "6f4f8afc5e0f728eb89876e0d282d0be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviOnrouteDisInfo>)))
  "Returns full string definition for message of type '<NaviOnrouteDisInfo>"
  (cl:format cl:nil "bool available~%float32 dist_to_onroute~%int16[] on_route_dis_clses~%int16 cls_num~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviOnrouteDisInfo)))
  "Returns full string definition for message of type 'NaviOnrouteDisInfo"
  (cl:format cl:nil "bool available~%float32 dist_to_onroute~%int16[] on_route_dis_clses~%int16 cls_num~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviOnrouteDisInfo>))
  (cl:+ 0
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'on_route_dis_clses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     2
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviOnrouteDisInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviOnrouteDisInfo
    (cl:cons ':available (available msg))
    (cl:cons ':dist_to_onroute (dist_to_onroute msg))
    (cl:cons ':on_route_dis_clses (on_route_dis_clses msg))
    (cl:cons ':cls_num (cls_num msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
