; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude Pillar.msg.html

(cl:defclass <Pillar> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (center_local
    :reader center_local
    :initarg :center_local
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (edge_points
    :reader edge_points
    :initarg :edge_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (edge_points_local
    :reader edge_points_local
    :initarg :edge_points_local
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (point_number
    :reader point_number
    :initarg :point_number
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (slide_distance
    :reader slide_distance
    :initarg :slide_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pillar (<Pillar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pillar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pillar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<Pillar> is deprecated: use submap_msgs-msg:Pillar instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <Pillar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:center-val is deprecated.  Use submap_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'center_local-val :lambda-list '(m))
(cl:defmethod center_local-val ((m <Pillar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:center_local-val is deprecated.  Use submap_msgs-msg:center_local instead.")
  (center_local m))

(cl:ensure-generic-function 'edge_points-val :lambda-list '(m))
(cl:defmethod edge_points-val ((m <Pillar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:edge_points-val is deprecated.  Use submap_msgs-msg:edge_points instead.")
  (edge_points m))

(cl:ensure-generic-function 'edge_points_local-val :lambda-list '(m))
(cl:defmethod edge_points_local-val ((m <Pillar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:edge_points_local-val is deprecated.  Use submap_msgs-msg:edge_points_local instead.")
  (edge_points_local m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Pillar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:id-val is deprecated.  Use submap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'point_number-val :lambda-list '(m))
(cl:defmethod point_number-val ((m <Pillar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:point_number-val is deprecated.  Use submap_msgs-msg:point_number instead.")
  (point_number m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Pillar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:score-val is deprecated.  Use submap_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'slide_distance-val :lambda-list '(m))
(cl:defmethod slide_distance-val ((m <Pillar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:slide_distance-val is deprecated.  Use submap_msgs-msg:slide_distance instead.")
  (slide_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pillar>) ostream)
  "Serializes a message object of type '<Pillar>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_local) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edge_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'edge_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edge_points_local))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'edge_points_local))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'point_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'point_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'point_number)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slide_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pillar>) istream)
  "Deserializes a message object of type '<Pillar>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_local) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edge_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edge_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edge_points_local) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edge_points_local)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'point_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'point_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'point_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'point_number)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slide_distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pillar>)))
  "Returns string type for a message object of type '<Pillar>"
  "submap_msgs/Pillar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pillar)))
  "Returns string type for a message object of type 'Pillar"
  "submap_msgs/Pillar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pillar>)))
  "Returns md5sum for a message object of type '<Pillar>"
  "618b7719eb1757eac91e139c9661a51a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pillar)))
  "Returns md5sum for a message object of type 'Pillar"
  "618b7719eb1757eac91e139c9661a51a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pillar>)))
  "Returns full string definition for message of type '<Pillar>"
  (cl:format cl:nil "geometry_msgs/Point center~%geometry_msgs/Point center_local~%geometry_msgs/Point[] edge_points~%geometry_msgs/Point[] edge_points_local~%uint32 id~%uint32 point_number~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pillar)))
  "Returns full string definition for message of type 'Pillar"
  (cl:format cl:nil "geometry_msgs/Point center~%geometry_msgs/Point center_local~%geometry_msgs/Point[] edge_points~%geometry_msgs/Point[] edge_points_local~%uint32 id~%uint32 point_number~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pillar>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_local))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edge_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edge_points_local) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pillar>))
  "Converts a ROS message object to a list"
  (cl:list 'Pillar
    (cl:cons ':center (center msg))
    (cl:cons ':center_local (center_local msg))
    (cl:cons ':edge_points (edge_points msg))
    (cl:cons ':edge_points_local (edge_points_local msg))
    (cl:cons ':id (id msg))
    (cl:cons ':point_number (point_number msg))
    (cl:cons ':score (score msg))
    (cl:cons ':slide_distance (slide_distance msg))
))
