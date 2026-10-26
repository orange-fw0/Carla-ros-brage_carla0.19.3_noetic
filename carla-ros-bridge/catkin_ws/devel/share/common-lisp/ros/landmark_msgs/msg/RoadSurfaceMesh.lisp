; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadSurfaceMesh.msg.html

(cl:defclass <RoadSurfaceMesh> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (score_map
    :reader score_map
    :initarg :score_map
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (bev_h
    :reader bev_h
    :initarg :bev_h
    :type cl:fixnum
    :initform 0)
   (bev_w
    :reader bev_w
    :initarg :bev_w
    :type cl:fixnum
    :initform 0)
   (x_bound_min
    :reader x_bound_min
    :initarg :x_bound_min
    :type cl:float
    :initform 0.0)
   (x_bound_max
    :reader x_bound_max
    :initarg :x_bound_max
    :type cl:float
    :initform 0.0)
   (y_bound_min
    :reader y_bound_min
    :initarg :y_bound_min
    :type cl:float
    :initform 0.0)
   (y_bound_max
    :reader y_bound_max
    :initarg :y_bound_max
    :type cl:float
    :initform 0.0)
   (meter_per_pixel_x
    :reader meter_per_pixel_x
    :initarg :meter_per_pixel_x
    :type cl:float
    :initform 0.0)
   (meter_per_pixel_y
    :reader meter_per_pixel_y
    :initarg :meter_per_pixel_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoadSurfaceMesh (<RoadSurfaceMesh>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadSurfaceMesh>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadSurfaceMesh)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadSurfaceMesh> is deprecated: use landmark_msgs-msg:RoadSurfaceMesh instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score_map-val :lambda-list '(m))
(cl:defmethod score_map-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score_map-val is deprecated.  Use landmark_msgs-msg:score_map instead.")
  (score_map m))

(cl:ensure-generic-function 'bev_h-val :lambda-list '(m))
(cl:defmethod bev_h-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:bev_h-val is deprecated.  Use landmark_msgs-msg:bev_h instead.")
  (bev_h m))

(cl:ensure-generic-function 'bev_w-val :lambda-list '(m))
(cl:defmethod bev_w-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:bev_w-val is deprecated.  Use landmark_msgs-msg:bev_w instead.")
  (bev_w m))

(cl:ensure-generic-function 'x_bound_min-val :lambda-list '(m))
(cl:defmethod x_bound_min-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:x_bound_min-val is deprecated.  Use landmark_msgs-msg:x_bound_min instead.")
  (x_bound_min m))

(cl:ensure-generic-function 'x_bound_max-val :lambda-list '(m))
(cl:defmethod x_bound_max-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:x_bound_max-val is deprecated.  Use landmark_msgs-msg:x_bound_max instead.")
  (x_bound_max m))

(cl:ensure-generic-function 'y_bound_min-val :lambda-list '(m))
(cl:defmethod y_bound_min-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:y_bound_min-val is deprecated.  Use landmark_msgs-msg:y_bound_min instead.")
  (y_bound_min m))

(cl:ensure-generic-function 'y_bound_max-val :lambda-list '(m))
(cl:defmethod y_bound_max-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:y_bound_max-val is deprecated.  Use landmark_msgs-msg:y_bound_max instead.")
  (y_bound_max m))

(cl:ensure-generic-function 'meter_per_pixel_x-val :lambda-list '(m))
(cl:defmethod meter_per_pixel_x-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:meter_per_pixel_x-val is deprecated.  Use landmark_msgs-msg:meter_per_pixel_x instead.")
  (meter_per_pixel_x m))

(cl:ensure-generic-function 'meter_per_pixel_y-val :lambda-list '(m))
(cl:defmethod meter_per_pixel_y-val ((m <RoadSurfaceMesh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:meter_per_pixel_y-val is deprecated.  Use landmark_msgs-msg:meter_per_pixel_y instead.")
  (meter_per_pixel_y m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadSurfaceMesh>)))
    "Constants for message type '<RoadSurfaceMesh>"
  '((:SCORE_MAP_VALID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadSurfaceMesh)))
    "Constants for message type 'RoadSurfaceMesh"
  '((:SCORE_MAP_VALID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadSurfaceMesh>) ostream)
  "Serializes a message object of type '<RoadSurfaceMesh>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'score_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'score_map))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bev_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bev_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bev_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bev_w)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_bound_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_bound_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_bound_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_bound_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'meter_per_pixel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'meter_per_pixel_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadSurfaceMesh>) istream)
  "Deserializes a message object of type '<RoadSurfaceMesh>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'score_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'score_map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bev_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bev_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bev_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bev_w)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_bound_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_bound_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_bound_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_bound_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'meter_per_pixel_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'meter_per_pixel_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadSurfaceMesh>)))
  "Returns string type for a message object of type '<RoadSurfaceMesh>"
  "landmark_msgs/RoadSurfaceMesh")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadSurfaceMesh)))
  "Returns string type for a message object of type 'RoadSurfaceMesh"
  "landmark_msgs/RoadSurfaceMesh")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadSurfaceMesh>)))
  "Returns md5sum for a message object of type '<RoadSurfaceMesh>"
  "434e68323d7f85a51e6378c55a1151ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadSurfaceMesh)))
  "Returns md5sum for a message object of type 'RoadSurfaceMesh"
  "434e68323d7f85a51e6378c55a1151ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadSurfaceMesh>)))
  "Returns full string definition for message of type '<RoadSurfaceMesh>"
  (cl:format cl:nil "uint8 SCORE_MAP_VALID = 1~%uint8 available~%uint8[] score_map~%uint16 bev_h~%uint16 bev_w~%float32 x_bound_min~%float32 x_bound_max~%float32 y_bound_min~%float32 y_bound_max~%float32 meter_per_pixel_x~%float32 meter_per_pixel_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadSurfaceMesh)))
  "Returns full string definition for message of type 'RoadSurfaceMesh"
  (cl:format cl:nil "uint8 SCORE_MAP_VALID = 1~%uint8 available~%uint8[] score_map~%uint16 bev_h~%uint16 bev_w~%float32 x_bound_min~%float32 x_bound_max~%float32 y_bound_min~%float32 y_bound_max~%float32 meter_per_pixel_x~%float32 meter_per_pixel_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadSurfaceMesh>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'score_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     2
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadSurfaceMesh>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadSurfaceMesh
    (cl:cons ':available (available msg))
    (cl:cons ':score_map (score_map msg))
    (cl:cons ':bev_h (bev_h msg))
    (cl:cons ':bev_w (bev_w msg))
    (cl:cons ':x_bound_min (x_bound_min msg))
    (cl:cons ':x_bound_max (x_bound_max msg))
    (cl:cons ':y_bound_min (y_bound_min msg))
    (cl:cons ':y_bound_max (y_bound_max msg))
    (cl:cons ':meter_per_pixel_x (meter_per_pixel_x msg))
    (cl:cons ':meter_per_pixel_y (meter_per_pixel_y msg))
))
