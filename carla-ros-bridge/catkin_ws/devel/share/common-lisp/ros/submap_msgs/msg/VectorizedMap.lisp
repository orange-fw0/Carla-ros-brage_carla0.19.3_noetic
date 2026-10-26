; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude VectorizedMap.msg.html

(cl:defclass <VectorizedMap> (roslisp-msg-protocol:ros-message)
  ((vector_elements
    :reader vector_elements
    :initarg :vector_elements
    :type (cl:vector submap_msgs-msg:VectorElement)
   :initform (cl:make-array 0 :element-type 'submap_msgs-msg:VectorElement :initial-element (cl:make-instance 'submap_msgs-msg:VectorElement))))
)

(cl:defclass VectorizedMap (<VectorizedMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VectorizedMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VectorizedMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<VectorizedMap> is deprecated: use submap_msgs-msg:VectorizedMap instead.")))

(cl:ensure-generic-function 'vector_elements-val :lambda-list '(m))
(cl:defmethod vector_elements-val ((m <VectorizedMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:vector_elements-val is deprecated.  Use submap_msgs-msg:vector_elements instead.")
  (vector_elements m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VectorizedMap>) ostream)
  "Serializes a message object of type '<VectorizedMap>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vector_elements))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vector_elements))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VectorizedMap>) istream)
  "Deserializes a message object of type '<VectorizedMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vector_elements) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vector_elements)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'submap_msgs-msg:VectorElement))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VectorizedMap>)))
  "Returns string type for a message object of type '<VectorizedMap>"
  "submap_msgs/VectorizedMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VectorizedMap)))
  "Returns string type for a message object of type 'VectorizedMap"
  "submap_msgs/VectorizedMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VectorizedMap>)))
  "Returns md5sum for a message object of type '<VectorizedMap>"
  "cebbb1eb1cb447459666f4ba1adc3a54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VectorizedMap)))
  "Returns md5sum for a message object of type 'VectorizedMap"
  "cebbb1eb1cb447459666f4ba1adc3a54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VectorizedMap>)))
  "Returns full string definition for message of type '<VectorizedMap>"
  (cl:format cl:nil "submap_msgs/VectorElement[] vector_elements~%~%================================================================================~%MSG: submap_msgs/VectorElement~%uint32 id~%submap_msgs/VectorElementTypeEnum type~%float32 score~%float32 slide_distance~%geometry_msgs/Point center~%geometry_msgs/Point center_point~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/VectorElementTypeEnum~%uint8 UNKNOWN = 0~%uint8 GATE = 1~%uint8 ARROW = 2~%uint8 STOP_LINE = 3~%uint8 DASH_LINE = 4~%uint8 SPEED_BUMP = 5~%uint8 ZWBRA_LINE = 6~%uint8 DDLD_ROAD_BOUNDARY = 7~%uint8 DDLD_LANE_BOUNDARY = 8~%uint8 DDLD_STOP_LINE = 9~%uint8 DDLD_CROSS_WALK = 10~%uint8 DDLD_ROAD_MARK = 11~%uint8 DDLD_TRAFFIC_SIGN = 12~%uint8 DDLD_TRAFFIC_LIGHT = 13~%uint8 value~%float32 score~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VectorizedMap)))
  "Returns full string definition for message of type 'VectorizedMap"
  (cl:format cl:nil "submap_msgs/VectorElement[] vector_elements~%~%================================================================================~%MSG: submap_msgs/VectorElement~%uint32 id~%submap_msgs/VectorElementTypeEnum type~%float32 score~%float32 slide_distance~%geometry_msgs/Point center~%geometry_msgs/Point center_point~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/VectorElementTypeEnum~%uint8 UNKNOWN = 0~%uint8 GATE = 1~%uint8 ARROW = 2~%uint8 STOP_LINE = 3~%uint8 DASH_LINE = 4~%uint8 SPEED_BUMP = 5~%uint8 ZWBRA_LINE = 6~%uint8 DDLD_ROAD_BOUNDARY = 7~%uint8 DDLD_LANE_BOUNDARY = 8~%uint8 DDLD_STOP_LINE = 9~%uint8 DDLD_CROSS_WALK = 10~%uint8 DDLD_ROAD_MARK = 11~%uint8 DDLD_TRAFFIC_SIGN = 12~%uint8 DDLD_TRAFFIC_LIGHT = 13~%uint8 value~%float32 score~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VectorizedMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vector_elements) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VectorizedMap>))
  "Converts a ROS message object to a list"
  (cl:list 'VectorizedMap
    (cl:cons ':vector_elements (vector_elements msg))
))
