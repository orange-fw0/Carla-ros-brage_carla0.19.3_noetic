; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude VectorElement.msg.html

(cl:defclass <VectorElement> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type submap_msgs-msg:VectorElementTypeEnum
    :initform (cl:make-instance 'submap_msgs-msg:VectorElementTypeEnum))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (slide_distance
    :reader slide_distance
    :initarg :slide_distance
    :type cl:float
    :initform 0.0)
   (center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (center_point
    :reader center_point
    :initarg :center_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (points_local
    :reader points_local
    :initarg :points_local
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass VectorElement (<VectorElement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VectorElement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VectorElement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<VectorElement> is deprecated: use submap_msgs-msg:VectorElement instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <VectorElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:id-val is deprecated.  Use submap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <VectorElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:type-val is deprecated.  Use submap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <VectorElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:score-val is deprecated.  Use submap_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'slide_distance-val :lambda-list '(m))
(cl:defmethod slide_distance-val ((m <VectorElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:slide_distance-val is deprecated.  Use submap_msgs-msg:slide_distance instead.")
  (slide_distance m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <VectorElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:center-val is deprecated.  Use submap_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'center_point-val :lambda-list '(m))
(cl:defmethod center_point-val ((m <VectorElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:center_point-val is deprecated.  Use submap_msgs-msg:center_point instead.")
  (center_point m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <VectorElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:points-val is deprecated.  Use submap_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'points_local-val :lambda-list '(m))
(cl:defmethod points_local-val ((m <VectorElement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:points_local-val is deprecated.  Use submap_msgs-msg:points_local instead.")
  (points_local m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VectorElement>) ostream)
  "Serializes a message object of type '<VectorElement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_point) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_local))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_local))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VectorElement>) istream)
  "Deserializes a message object of type '<VectorElement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_point) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_local) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_local)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VectorElement>)))
  "Returns string type for a message object of type '<VectorElement>"
  "submap_msgs/VectorElement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VectorElement)))
  "Returns string type for a message object of type 'VectorElement"
  "submap_msgs/VectorElement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VectorElement>)))
  "Returns md5sum for a message object of type '<VectorElement>"
  "4266346c59e853813e442fbfa7cdd405")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VectorElement)))
  "Returns md5sum for a message object of type 'VectorElement"
  "4266346c59e853813e442fbfa7cdd405")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VectorElement>)))
  "Returns full string definition for message of type '<VectorElement>"
  (cl:format cl:nil "uint32 id~%submap_msgs/VectorElementTypeEnum type~%float32 score~%float32 slide_distance~%geometry_msgs/Point center~%geometry_msgs/Point center_point~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/VectorElementTypeEnum~%uint8 UNKNOWN = 0~%uint8 GATE = 1~%uint8 ARROW = 2~%uint8 STOP_LINE = 3~%uint8 DASH_LINE = 4~%uint8 SPEED_BUMP = 5~%uint8 ZWBRA_LINE = 6~%uint8 DDLD_ROAD_BOUNDARY = 7~%uint8 DDLD_LANE_BOUNDARY = 8~%uint8 DDLD_STOP_LINE = 9~%uint8 DDLD_CROSS_WALK = 10~%uint8 DDLD_ROAD_MARK = 11~%uint8 DDLD_TRAFFIC_SIGN = 12~%uint8 DDLD_TRAFFIC_LIGHT = 13~%uint8 value~%float32 score~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VectorElement)))
  "Returns full string definition for message of type 'VectorElement"
  (cl:format cl:nil "uint32 id~%submap_msgs/VectorElementTypeEnum type~%float32 score~%float32 slide_distance~%geometry_msgs/Point center~%geometry_msgs/Point center_point~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/VectorElementTypeEnum~%uint8 UNKNOWN = 0~%uint8 GATE = 1~%uint8 ARROW = 2~%uint8 STOP_LINE = 3~%uint8 DASH_LINE = 4~%uint8 SPEED_BUMP = 5~%uint8 ZWBRA_LINE = 6~%uint8 DDLD_ROAD_BOUNDARY = 7~%uint8 DDLD_LANE_BOUNDARY = 8~%uint8 DDLD_STOP_LINE = 9~%uint8 DDLD_CROSS_WALK = 10~%uint8 DDLD_ROAD_MARK = 11~%uint8 DDLD_TRAFFIC_SIGN = 12~%uint8 DDLD_TRAFFIC_LIGHT = 13~%uint8 value~%float32 score~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VectorElement>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_local) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VectorElement>))
  "Converts a ROS message object to a list"
  (cl:list 'VectorElement
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':score (score msg))
    (cl:cons ':slide_distance (slide_distance msg))
    (cl:cons ':center (center msg))
    (cl:cons ':center_point (center_point msg))
    (cl:cons ':points (points msg))
    (cl:cons ':points_local (points_local msg))
))
