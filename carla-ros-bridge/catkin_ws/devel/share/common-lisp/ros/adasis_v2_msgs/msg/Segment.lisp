; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude Segment.msg.html

(cl:defclass <Segment> (roslisp-msg-protocol:ros-message)
  ((cyclic_counter
    :reader cyclic_counter
    :initarg :cyclic_counter
    :type cl:fixnum
    :initform 0)
   (is_retransmission
    :reader is_retransmission
    :initarg :is_retransmission
    :type cl:fixnum
    :initform 0)
   (path_index
    :reader path_index
    :initarg :path_index
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:fixnum
    :initform 0)
   (is_update
    :reader is_update
    :initarg :is_update
    :type cl:fixnum
    :initform 0)
   (functional_road_class
    :reader functional_road_class
    :initarg :functional_road_class
    :type cl:fixnum
    :initform 0)
   (form_of_way
    :reader form_of_way
    :initarg :form_of_way
    :type cl:fixnum
    :initform 0)
   (effective_speed_limit
    :reader effective_speed_limit
    :initarg :effective_speed_limit
    :type cl:fixnum
    :initform 0)
   (effective_speed_limit_type
    :reader effective_speed_limit_type
    :initarg :effective_speed_limit_type
    :type cl:fixnum
    :initform 0)
   (lanes_num_of_driving_dir
    :reader lanes_num_of_driving_dir
    :initarg :lanes_num_of_driving_dir
    :type cl:fixnum
    :initform 0)
   (lanes_num_of_opposite_dir
    :reader lanes_num_of_opposite_dir
    :initarg :lanes_num_of_opposite_dir
    :type cl:fixnum
    :initform 0)
   (tunnel
    :reader tunnel
    :initarg :tunnel
    :type cl:fixnum
    :initform 0)
   (bridge
    :reader bridge
    :initarg :bridge
    :type cl:fixnum
    :initform 0)
   (divided_road
    :reader divided_road
    :initarg :divided_road
    :type cl:fixnum
    :initform 0)
   (built_up_area
    :reader built_up_area
    :initarg :built_up_area
    :type cl:fixnum
    :initform 0)
   (complex_intersection
    :reader complex_intersection
    :initarg :complex_intersection
    :type cl:fixnum
    :initform 0)
   (relative_probability
    :reader relative_probability
    :initarg :relative_probability
    :type cl:fixnum
    :initform 0)
   (part_of_calculated_route
    :reader part_of_calculated_route
    :initarg :part_of_calculated_route
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Segment (<Segment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Segment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Segment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<Segment> is deprecated: use adasis_v2_msgs-msg:Segment instead.")))

(cl:ensure-generic-function 'cyclic_counter-val :lambda-list '(m))
(cl:defmethod cyclic_counter-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:cyclic_counter-val is deprecated.  Use adasis_v2_msgs-msg:cyclic_counter instead.")
  (cyclic_counter m))

(cl:ensure-generic-function 'is_retransmission-val :lambda-list '(m))
(cl:defmethod is_retransmission-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:is_retransmission-val is deprecated.  Use adasis_v2_msgs-msg:is_retransmission instead.")
  (is_retransmission m))

(cl:ensure-generic-function 'path_index-val :lambda-list '(m))
(cl:defmethod path_index-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:path_index-val is deprecated.  Use adasis_v2_msgs-msg:path_index instead.")
  (path_index m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:offset-val is deprecated.  Use adasis_v2_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'is_update-val :lambda-list '(m))
(cl:defmethod is_update-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:is_update-val is deprecated.  Use adasis_v2_msgs-msg:is_update instead.")
  (is_update m))

(cl:ensure-generic-function 'functional_road_class-val :lambda-list '(m))
(cl:defmethod functional_road_class-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:functional_road_class-val is deprecated.  Use adasis_v2_msgs-msg:functional_road_class instead.")
  (functional_road_class m))

(cl:ensure-generic-function 'form_of_way-val :lambda-list '(m))
(cl:defmethod form_of_way-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:form_of_way-val is deprecated.  Use adasis_v2_msgs-msg:form_of_way instead.")
  (form_of_way m))

(cl:ensure-generic-function 'effective_speed_limit-val :lambda-list '(m))
(cl:defmethod effective_speed_limit-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:effective_speed_limit-val is deprecated.  Use adasis_v2_msgs-msg:effective_speed_limit instead.")
  (effective_speed_limit m))

(cl:ensure-generic-function 'effective_speed_limit_type-val :lambda-list '(m))
(cl:defmethod effective_speed_limit_type-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:effective_speed_limit_type-val is deprecated.  Use adasis_v2_msgs-msg:effective_speed_limit_type instead.")
  (effective_speed_limit_type m))

(cl:ensure-generic-function 'lanes_num_of_driving_dir-val :lambda-list '(m))
(cl:defmethod lanes_num_of_driving_dir-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:lanes_num_of_driving_dir-val is deprecated.  Use adasis_v2_msgs-msg:lanes_num_of_driving_dir instead.")
  (lanes_num_of_driving_dir m))

(cl:ensure-generic-function 'lanes_num_of_opposite_dir-val :lambda-list '(m))
(cl:defmethod lanes_num_of_opposite_dir-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:lanes_num_of_opposite_dir-val is deprecated.  Use adasis_v2_msgs-msg:lanes_num_of_opposite_dir instead.")
  (lanes_num_of_opposite_dir m))

(cl:ensure-generic-function 'tunnel-val :lambda-list '(m))
(cl:defmethod tunnel-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:tunnel-val is deprecated.  Use adasis_v2_msgs-msg:tunnel instead.")
  (tunnel m))

(cl:ensure-generic-function 'bridge-val :lambda-list '(m))
(cl:defmethod bridge-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:bridge-val is deprecated.  Use adasis_v2_msgs-msg:bridge instead.")
  (bridge m))

(cl:ensure-generic-function 'divided_road-val :lambda-list '(m))
(cl:defmethod divided_road-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:divided_road-val is deprecated.  Use adasis_v2_msgs-msg:divided_road instead.")
  (divided_road m))

(cl:ensure-generic-function 'built_up_area-val :lambda-list '(m))
(cl:defmethod built_up_area-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:built_up_area-val is deprecated.  Use adasis_v2_msgs-msg:built_up_area instead.")
  (built_up_area m))

(cl:ensure-generic-function 'complex_intersection-val :lambda-list '(m))
(cl:defmethod complex_intersection-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:complex_intersection-val is deprecated.  Use adasis_v2_msgs-msg:complex_intersection instead.")
  (complex_intersection m))

(cl:ensure-generic-function 'relative_probability-val :lambda-list '(m))
(cl:defmethod relative_probability-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:relative_probability-val is deprecated.  Use adasis_v2_msgs-msg:relative_probability instead.")
  (relative_probability m))

(cl:ensure-generic-function 'part_of_calculated_route-val :lambda-list '(m))
(cl:defmethod part_of_calculated_route-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:part_of_calculated_route-val is deprecated.  Use adasis_v2_msgs-msg:part_of_calculated_route instead.")
  (part_of_calculated_route m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:reserved-val is deprecated.  Use adasis_v2_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Segment>) ostream)
  "Serializes a message object of type '<Segment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_retransmission)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_update)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'functional_road_class)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'form_of_way)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effective_speed_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effective_speed_limit_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanes_num_of_driving_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanes_num_of_opposite_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tunnel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bridge)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'divided_road)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'built_up_area)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'complex_intersection)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_probability)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'part_of_calculated_route)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Segment>) istream)
  "Deserializes a message object of type '<Segment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_retransmission)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_update)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'functional_road_class)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'form_of_way)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effective_speed_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effective_speed_limit_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanes_num_of_driving_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanes_num_of_opposite_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tunnel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bridge)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'divided_road)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'built_up_area)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'complex_intersection)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_probability)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'part_of_calculated_route)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Segment>)))
  "Returns string type for a message object of type '<Segment>"
  "adasis_v2_msgs/Segment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Segment)))
  "Returns string type for a message object of type 'Segment"
  "adasis_v2_msgs/Segment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Segment>)))
  "Returns md5sum for a message object of type '<Segment>"
  "721864ad7aba02e1ec6f73ff17a7fa8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Segment)))
  "Returns md5sum for a message object of type 'Segment"
  "721864ad7aba02e1ec6f73ff17a7fa8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Segment>)))
  "Returns full string definition for message of type '<Segment>"
  (cl:format cl:nil "uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 functional_road_class~%uint8 form_of_way~%uint8 effective_speed_limit~%uint8 effective_speed_limit_type~%uint8 lanes_num_of_driving_dir~%uint8 lanes_num_of_opposite_dir~%uint8 tunnel~%uint8 bridge~%uint8 divided_road~%uint8 built_up_area~%uint8 complex_intersection~%uint8 relative_probability~%uint8 part_of_calculated_route~%uint8 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Segment)))
  "Returns full string definition for message of type 'Segment"
  (cl:format cl:nil "uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 functional_road_class~%uint8 form_of_way~%uint8 effective_speed_limit~%uint8 effective_speed_limit_type~%uint8 lanes_num_of_driving_dir~%uint8 lanes_num_of_opposite_dir~%uint8 tunnel~%uint8 bridge~%uint8 divided_road~%uint8 built_up_area~%uint8 complex_intersection~%uint8 relative_probability~%uint8 part_of_calculated_route~%uint8 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Segment>))
  (cl:+ 0
     1
     1
     1
     2
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Segment>))
  "Converts a ROS message object to a list"
  (cl:list 'Segment
    (cl:cons ':cyclic_counter (cyclic_counter msg))
    (cl:cons ':is_retransmission (is_retransmission msg))
    (cl:cons ':path_index (path_index msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':is_update (is_update msg))
    (cl:cons ':functional_road_class (functional_road_class msg))
    (cl:cons ':form_of_way (form_of_way msg))
    (cl:cons ':effective_speed_limit (effective_speed_limit msg))
    (cl:cons ':effective_speed_limit_type (effective_speed_limit_type msg))
    (cl:cons ':lanes_num_of_driving_dir (lanes_num_of_driving_dir msg))
    (cl:cons ':lanes_num_of_opposite_dir (lanes_num_of_opposite_dir msg))
    (cl:cons ':tunnel (tunnel msg))
    (cl:cons ':bridge (bridge msg))
    (cl:cons ':divided_road (divided_road msg))
    (cl:cons ':built_up_area (built_up_area msg))
    (cl:cons ':complex_intersection (complex_intersection msg))
    (cl:cons ':relative_probability (relative_probability msg))
    (cl:cons ':part_of_calculated_route (part_of_calculated_route msg))
    (cl:cons ':reserved (reserved msg))
))
