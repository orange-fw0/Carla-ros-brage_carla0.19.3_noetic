; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneBoundary.msg.html

(cl:defclass <LaneBoundary> (roslisp-msg-protocol:ros-message)
  ((existence
    :reader existence
    :initarg :existence
    :type cl:boolean
    :initform cl:nil)
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector worldmodel_msgs-msg:LaneBoundarySegment)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LaneBoundarySegment :initial-element (cl:make-instance 'worldmodel_msgs-msg:LaneBoundarySegment)))
   (polyline
    :reader polyline
    :initarg :polyline
    :type worldmodel_msgs-msg:LaneBoundaryPolyline
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundaryPolyline))
   (points
    :reader points
    :initarg :points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass LaneBoundary (<LaneBoundary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneBoundary> is deprecated: use worldmodel_msgs-msg:LaneBoundary instead.")))

(cl:ensure-generic-function 'existence-val :lambda-list '(m))
(cl:defmethod existence-val ((m <LaneBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:existence-val is deprecated.  Use worldmodel_msgs-msg:existence instead.")
  (existence m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <LaneBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:segments-val is deprecated.  Use worldmodel_msgs-msg:segments instead.")
  (segments m))

(cl:ensure-generic-function 'polyline-val :lambda-list '(m))
(cl:defmethod polyline-val ((m <LaneBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:polyline-val is deprecated.  Use worldmodel_msgs-msg:polyline instead.")
  (polyline m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <LaneBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:points-val is deprecated.  Use worldmodel_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <LaneBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:reserved-val is deprecated.  Use worldmodel_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundary>) ostream)
  "Serializes a message object of type '<LaneBoundary>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'existence) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polyline) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundary>) istream)
  "Deserializes a message object of type '<LaneBoundary>"
    (cl:setf (cl:slot-value msg 'existence) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LaneBoundarySegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polyline) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundary>)))
  "Returns string type for a message object of type '<LaneBoundary>"
  "worldmodel_msgs/LaneBoundary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundary)))
  "Returns string type for a message object of type 'LaneBoundary"
  "worldmodel_msgs/LaneBoundary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundary>)))
  "Returns md5sum for a message object of type '<LaneBoundary>"
  "489d9596a5fcbfec300adeb37414f4fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundary)))
  "Returns md5sum for a message object of type 'LaneBoundary"
  "489d9596a5fcbfec300adeb37414f4fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundary>)))
  "Returns full string definition for message of type '<LaneBoundary>"
  (cl:format cl:nil "bool existence~%worldmodel_msgs/LaneBoundarySegment[] segments~%worldmodel_msgs/LaneBoundaryPolyline polyline~%perception_interface_msgs/Point3f[] points~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundarySegment~%float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryPolyline~%uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundary)))
  "Returns full string definition for message of type 'LaneBoundary"
  (cl:format cl:nil "bool existence~%worldmodel_msgs/LaneBoundarySegment[] segments~%worldmodel_msgs/LaneBoundaryPolyline polyline~%perception_interface_msgs/Point3f[] points~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundarySegment~%float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryPolyline~%uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundary>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polyline))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundary>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundary
    (cl:cons ':existence (existence msg))
    (cl:cons ':segments (segments msg))
    (cl:cons ':polyline (polyline msg))
    (cl:cons ':points (points msg))
    (cl:cons ':reserved (reserved msg))
))
