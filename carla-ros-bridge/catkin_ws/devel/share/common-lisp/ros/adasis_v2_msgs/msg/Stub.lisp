; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude Stub.msg.html

(cl:defclass <Stub> (roslisp-msg-protocol:ros-message)
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
   (sub_path_index
    :reader sub_path_index
    :initarg :sub_path_index
    :type cl:fixnum
    :initform 0)
   (turn_angle
    :reader turn_angle
    :initarg :turn_angle
    :type cl:fixnum
    :initform 0)
   (relative_probability
    :reader relative_probability
    :initarg :relative_probability
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
   (complex_intersection
    :reader complex_intersection
    :initarg :complex_intersection
    :type cl:fixnum
    :initform 0)
   (right_of_way
    :reader right_of_way
    :initarg :right_of_way
    :type cl:fixnum
    :initform 0)
   (part_of_calculated_route
    :reader part_of_calculated_route
    :initarg :part_of_calculated_route
    :type cl:fixnum
    :initform 0)
   (is_last_stub_at_offset
    :reader is_last_stub_at_offset
    :initarg :is_last_stub_at_offset
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Stub (<Stub>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stub>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stub)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<Stub> is deprecated: use adasis_v2_msgs-msg:Stub instead.")))

(cl:ensure-generic-function 'cyclic_counter-val :lambda-list '(m))
(cl:defmethod cyclic_counter-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:cyclic_counter-val is deprecated.  Use adasis_v2_msgs-msg:cyclic_counter instead.")
  (cyclic_counter m))

(cl:ensure-generic-function 'is_retransmission-val :lambda-list '(m))
(cl:defmethod is_retransmission-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:is_retransmission-val is deprecated.  Use adasis_v2_msgs-msg:is_retransmission instead.")
  (is_retransmission m))

(cl:ensure-generic-function 'path_index-val :lambda-list '(m))
(cl:defmethod path_index-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:path_index-val is deprecated.  Use adasis_v2_msgs-msg:path_index instead.")
  (path_index m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:offset-val is deprecated.  Use adasis_v2_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'is_update-val :lambda-list '(m))
(cl:defmethod is_update-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:is_update-val is deprecated.  Use adasis_v2_msgs-msg:is_update instead.")
  (is_update m))

(cl:ensure-generic-function 'sub_path_index-val :lambda-list '(m))
(cl:defmethod sub_path_index-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:sub_path_index-val is deprecated.  Use adasis_v2_msgs-msg:sub_path_index instead.")
  (sub_path_index m))

(cl:ensure-generic-function 'turn_angle-val :lambda-list '(m))
(cl:defmethod turn_angle-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:turn_angle-val is deprecated.  Use adasis_v2_msgs-msg:turn_angle instead.")
  (turn_angle m))

(cl:ensure-generic-function 'relative_probability-val :lambda-list '(m))
(cl:defmethod relative_probability-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:relative_probability-val is deprecated.  Use adasis_v2_msgs-msg:relative_probability instead.")
  (relative_probability m))

(cl:ensure-generic-function 'functional_road_class-val :lambda-list '(m))
(cl:defmethod functional_road_class-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:functional_road_class-val is deprecated.  Use adasis_v2_msgs-msg:functional_road_class instead.")
  (functional_road_class m))

(cl:ensure-generic-function 'form_of_way-val :lambda-list '(m))
(cl:defmethod form_of_way-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:form_of_way-val is deprecated.  Use adasis_v2_msgs-msg:form_of_way instead.")
  (form_of_way m))

(cl:ensure-generic-function 'lanes_num_of_driving_dir-val :lambda-list '(m))
(cl:defmethod lanes_num_of_driving_dir-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:lanes_num_of_driving_dir-val is deprecated.  Use adasis_v2_msgs-msg:lanes_num_of_driving_dir instead.")
  (lanes_num_of_driving_dir m))

(cl:ensure-generic-function 'lanes_num_of_opposite_dir-val :lambda-list '(m))
(cl:defmethod lanes_num_of_opposite_dir-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:lanes_num_of_opposite_dir-val is deprecated.  Use adasis_v2_msgs-msg:lanes_num_of_opposite_dir instead.")
  (lanes_num_of_opposite_dir m))

(cl:ensure-generic-function 'complex_intersection-val :lambda-list '(m))
(cl:defmethod complex_intersection-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:complex_intersection-val is deprecated.  Use adasis_v2_msgs-msg:complex_intersection instead.")
  (complex_intersection m))

(cl:ensure-generic-function 'right_of_way-val :lambda-list '(m))
(cl:defmethod right_of_way-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:right_of_way-val is deprecated.  Use adasis_v2_msgs-msg:right_of_way instead.")
  (right_of_way m))

(cl:ensure-generic-function 'part_of_calculated_route-val :lambda-list '(m))
(cl:defmethod part_of_calculated_route-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:part_of_calculated_route-val is deprecated.  Use adasis_v2_msgs-msg:part_of_calculated_route instead.")
  (part_of_calculated_route m))

(cl:ensure-generic-function 'is_last_stub_at_offset-val :lambda-list '(m))
(cl:defmethod is_last_stub_at_offset-val ((m <Stub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:is_last_stub_at_offset-val is deprecated.  Use adasis_v2_msgs-msg:is_last_stub_at_offset instead.")
  (is_last_stub_at_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stub>) ostream)
  "Serializes a message object of type '<Stub>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_retransmission)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_update)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_path_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_probability)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'functional_road_class)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'form_of_way)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanes_num_of_driving_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanes_num_of_opposite_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'complex_intersection)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_of_way)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'part_of_calculated_route)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_last_stub_at_offset)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stub>) istream)
  "Deserializes a message object of type '<Stub>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_retransmission)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_update)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_path_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_probability)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'functional_road_class)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'form_of_way)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanes_num_of_driving_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanes_num_of_opposite_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'complex_intersection)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_of_way)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'part_of_calculated_route)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_last_stub_at_offset)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stub>)))
  "Returns string type for a message object of type '<Stub>"
  "adasis_v2_msgs/Stub")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stub)))
  "Returns string type for a message object of type 'Stub"
  "adasis_v2_msgs/Stub")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stub>)))
  "Returns md5sum for a message object of type '<Stub>"
  "1af69f6c8366879d6dab4dd7cbe1a298")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stub)))
  "Returns md5sum for a message object of type 'Stub"
  "1af69f6c8366879d6dab4dd7cbe1a298")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stub>)))
  "Returns full string definition for message of type '<Stub>"
  (cl:format cl:nil "uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 sub_path_index~%uint8 turn_angle~%uint8 relative_probability~%uint8 functional_road_class~%uint8 form_of_way~%uint8 lanes_num_of_driving_dir~%uint8 lanes_num_of_opposite_dir~%uint8 complex_intersection~%uint8 right_of_way~%uint8 part_of_calculated_route~%uint8 is_last_stub_at_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stub)))
  "Returns full string definition for message of type 'Stub"
  (cl:format cl:nil "uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 sub_path_index~%uint8 turn_angle~%uint8 relative_probability~%uint8 functional_road_class~%uint8 form_of_way~%uint8 lanes_num_of_driving_dir~%uint8 lanes_num_of_opposite_dir~%uint8 complex_intersection~%uint8 right_of_way~%uint8 part_of_calculated_route~%uint8 is_last_stub_at_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stub>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stub>))
  "Converts a ROS message object to a list"
  (cl:list 'Stub
    (cl:cons ':cyclic_counter (cyclic_counter msg))
    (cl:cons ':is_retransmission (is_retransmission msg))
    (cl:cons ':path_index (path_index msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':is_update (is_update msg))
    (cl:cons ':sub_path_index (sub_path_index msg))
    (cl:cons ':turn_angle (turn_angle msg))
    (cl:cons ':relative_probability (relative_probability msg))
    (cl:cons ':functional_road_class (functional_road_class msg))
    (cl:cons ':form_of_way (form_of_way msg))
    (cl:cons ':lanes_num_of_driving_dir (lanes_num_of_driving_dir msg))
    (cl:cons ':lanes_num_of_opposite_dir (lanes_num_of_opposite_dir msg))
    (cl:cons ':complex_intersection (complex_intersection msg))
    (cl:cons ':right_of_way (right_of_way msg))
    (cl:cons ':part_of_calculated_route (part_of_calculated_route msg))
    (cl:cons ':is_last_stub_at_offset (is_last_stub_at_offset msg))
))
