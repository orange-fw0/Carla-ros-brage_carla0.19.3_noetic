; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude EnvironmentData.msg.html

(cl:defclass <EnvironmentData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector planning_msgs-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Obstacle :initial-element (cl:make-instance 'planning_msgs-msg:Obstacle)))
   (obstacle_boxes
    :reader obstacle_boxes
    :initarg :obstacle_boxes
    :type (cl:vector planning_msgs-msg:Box2d)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Box2d :initial-element (cl:make-instance 'planning_msgs-msg:Box2d)))
   (obstacle_lines
    :reader obstacle_lines
    :initarg :obstacle_lines
    :type (cl:vector planning_msgs-msg:Line)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Line :initial-element (cl:make-instance 'planning_msgs-msg:Line)))
   (lines
    :reader lines
    :initarg :lines
    :type (cl:vector planning_msgs-msg:Line)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Line :initial-element (cl:make-instance 'planning_msgs-msg:Line)))
   (points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (step_points
    :reader step_points
    :initarg :step_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass EnvironmentData (<EnvironmentData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnvironmentData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnvironmentData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<EnvironmentData> is deprecated: use planning_msgs-msg:EnvironmentData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <EnvironmentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <EnvironmentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:obstacles-val is deprecated.  Use planning_msgs-msg:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'obstacle_boxes-val :lambda-list '(m))
(cl:defmethod obstacle_boxes-val ((m <EnvironmentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:obstacle_boxes-val is deprecated.  Use planning_msgs-msg:obstacle_boxes instead.")
  (obstacle_boxes m))

(cl:ensure-generic-function 'obstacle_lines-val :lambda-list '(m))
(cl:defmethod obstacle_lines-val ((m <EnvironmentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:obstacle_lines-val is deprecated.  Use planning_msgs-msg:obstacle_lines instead.")
  (obstacle_lines m))

(cl:ensure-generic-function 'lines-val :lambda-list '(m))
(cl:defmethod lines-val ((m <EnvironmentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lines-val is deprecated.  Use planning_msgs-msg:lines instead.")
  (lines m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <EnvironmentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:points-val is deprecated.  Use planning_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'step_points-val :lambda-list '(m))
(cl:defmethod step_points-val ((m <EnvironmentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:step_points-val is deprecated.  Use planning_msgs-msg:step_points instead.")
  (step_points m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EnvironmentData>)))
    "Constants for message type '<EnvironmentData>"
  '((:OBSTACLES . 1)
    (:OBSTACLE_BOXES . 2)
    (:OBSTACLE_LINES . 4)
    (:LINES . 8)
    (:POINTS . 16)
    (:STEP_POINTS . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EnvironmentData)))
    "Constants for message type 'EnvironmentData"
  '((:OBSTACLES . 1)
    (:OBSTACLE_BOXES . 2)
    (:OBSTACLE_LINES . 4)
    (:LINES . 8)
    (:POINTS . 16)
    (:STEP_POINTS . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnvironmentData>) ostream)
  "Serializes a message object of type '<EnvironmentData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_boxes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_lines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_lines))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lines))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'step_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'step_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnvironmentData>) istream)
  "Deserializes a message object of type '<EnvironmentData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Box2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_lines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_lines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Line))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Line))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
  (cl:setf (cl:slot-value msg 'step_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'step_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnvironmentData>)))
  "Returns string type for a message object of type '<EnvironmentData>"
  "planning_msgs/EnvironmentData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnvironmentData)))
  "Returns string type for a message object of type 'EnvironmentData"
  "planning_msgs/EnvironmentData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnvironmentData>)))
  "Returns md5sum for a message object of type '<EnvironmentData>"
  "efab7c926f4af3e159778971cdc7a6b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnvironmentData)))
  "Returns md5sum for a message object of type 'EnvironmentData"
  "efab7c926f4af3e159778971cdc7a6b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnvironmentData>)))
  "Returns full string definition for message of type '<EnvironmentData>"
  (cl:format cl:nil "uint8 OBSTACLES = 1~%uint8 OBSTACLE_BOXES = 2~%uint8 OBSTACLE_LINES = 4~%uint8 LINES = 8~%uint8 POINTS = 16~%uint8 STEP_POINTS = 32~%uint8 available~%planning_msgs/Obstacle[] obstacles~%planning_msgs/Box2d[] obstacle_boxes~%planning_msgs/Line[] obstacle_lines~%planning_msgs/Line[] lines~%geometry_msgs/Point[] points~%geometry_msgs/Point[] step_points~%~%================================================================================~%MSG: planning_msgs/Obstacle~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 POLYLINE = 4~%uint8 POINT = 8~%uint8 available~%planning_msgs/ObstacleTypeEnum obstacle_type~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%planning_msgs/Polyline2f polyline~%geometry_msgs/Point32 point~%~%================================================================================~%MSG: planning_msgs/ObstacleTypeEnum~%uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Polyline2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Box2d~%geometry_msgs/Point center~%float64 heading~%float64 length~%float64 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/Line~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnvironmentData)))
  "Returns full string definition for message of type 'EnvironmentData"
  (cl:format cl:nil "uint8 OBSTACLES = 1~%uint8 OBSTACLE_BOXES = 2~%uint8 OBSTACLE_LINES = 4~%uint8 LINES = 8~%uint8 POINTS = 16~%uint8 STEP_POINTS = 32~%uint8 available~%planning_msgs/Obstacle[] obstacles~%planning_msgs/Box2d[] obstacle_boxes~%planning_msgs/Line[] obstacle_lines~%planning_msgs/Line[] lines~%geometry_msgs/Point[] points~%geometry_msgs/Point[] step_points~%~%================================================================================~%MSG: planning_msgs/Obstacle~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 POLYLINE = 4~%uint8 POINT = 8~%uint8 available~%planning_msgs/ObstacleTypeEnum obstacle_type~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%planning_msgs/Polyline2f polyline~%geometry_msgs/Point32 point~%~%================================================================================~%MSG: planning_msgs/ObstacleTypeEnum~%uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Polyline2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Box2d~%geometry_msgs/Point center~%float64 heading~%float64 length~%float64 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/Line~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnvironmentData>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_lines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'step_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnvironmentData>))
  "Converts a ROS message object to a list"
  (cl:list 'EnvironmentData
    (cl:cons ':available (available msg))
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':obstacle_boxes (obstacle_boxes msg))
    (cl:cons ':obstacle_lines (obstacle_lines msg))
    (cl:cons ':lines (lines msg))
    (cl:cons ':points (points msg))
    (cl:cons ':step_points (step_points msg))
))
