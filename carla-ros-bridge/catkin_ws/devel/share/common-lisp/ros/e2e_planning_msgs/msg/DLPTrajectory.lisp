; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPTrajectory.msg.html

(cl:defclass <DLPTrajectory> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector e2e_planning_msgs-msg:DLPTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'e2e_planning_msgs-msg:DLPTrajectoryPoint :initial-element (cl:make-instance 'e2e_planning_msgs-msg:DLPTrajectoryPoint)))
   (type
    :reader type
    :initarg :type
    :type e2e_planning_msgs-msg:DLPTrajectoryTypeEnum
    :initform (cl:make-instance 'e2e_planning_msgs-msg:DLPTrajectoryTypeEnum))
   (anchor_type
    :reader anchor_type
    :initarg :anchor_type
    :type cl:fixnum
    :initform 0)
   (anchor_id
    :reader anchor_id
    :initarg :anchor_id
    :type cl:integer
    :initform 0)
   (goal_point
    :reader goal_point
    :initarg :goal_point
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (multi_modality_id
    :reader multi_modality_id
    :initarg :multi_modality_id
    :type cl:fixnum
    :initform 0)
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
    :initform 0)
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass DLPTrajectory (<DLPTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPTrajectory> is deprecated: use e2e_planning_msgs-msg:DLPTrajectory instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:points-val is deprecated.  Use e2e_planning_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:type-val is deprecated.  Use e2e_planning_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'anchor_type-val :lambda-list '(m))
(cl:defmethod anchor_type-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:anchor_type-val is deprecated.  Use e2e_planning_msgs-msg:anchor_type instead.")
  (anchor_type m))

(cl:ensure-generic-function 'anchor_id-val :lambda-list '(m))
(cl:defmethod anchor_id-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:anchor_id-val is deprecated.  Use e2e_planning_msgs-msg:anchor_id instead.")
  (anchor_id m))

(cl:ensure-generic-function 'goal_point-val :lambda-list '(m))
(cl:defmethod goal_point-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:goal_point-val is deprecated.  Use e2e_planning_msgs-msg:goal_point instead.")
  (goal_point m))

(cl:ensure-generic-function 'multi_modality_id-val :lambda-list '(m))
(cl:defmethod multi_modality_id-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:multi_modality_id-val is deprecated.  Use e2e_planning_msgs-msg:multi_modality_id instead.")
  (multi_modality_id m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:object_id-val is deprecated.  Use e2e_planning_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:timestamp_us-val is deprecated.  Use e2e_planning_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:score-val is deprecated.  Use e2e_planning_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <DLPTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:reserved_info-val is deprecated.  Use e2e_planning_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPTrajectory>) ostream)
  "Serializes a message object of type '<DLPTrajectory>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'anchor_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'anchor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'anchor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'anchor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'anchor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'anchor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'anchor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'anchor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'anchor_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multi_modality_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPTrajectory>) istream)
  "Deserializes a message object of type '<DLPTrajectory>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'e2e_planning_msgs-msg:DLPTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'anchor_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'anchor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'anchor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'anchor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'anchor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'anchor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'anchor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'anchor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'anchor_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_point) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multi_modality_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPTrajectory>)))
  "Returns string type for a message object of type '<DLPTrajectory>"
  "e2e_planning_msgs/DLPTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPTrajectory)))
  "Returns string type for a message object of type 'DLPTrajectory"
  "e2e_planning_msgs/DLPTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPTrajectory>)))
  "Returns md5sum for a message object of type '<DLPTrajectory>"
  "b9bda110d1211e623befd2437bb3db8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPTrajectory)))
  "Returns md5sum for a message object of type 'DLPTrajectory"
  "b9bda110d1211e623befd2437bb3db8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPTrajectory>)))
  "Returns full string definition for message of type '<DLPTrajectory>"
  (cl:format cl:nil "e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPTrajectory)))
  "Returns full string definition for message of type 'DLPTrajectory"
  (cl:format cl:nil "e2e_planning_msgs/DLPTrajectoryPoint[] points~%e2e_planning_msgs/DLPTrajectoryTypeEnum type~%uint8 anchor_type~%uint64 anchor_id~%perception_interface_msgs/Point3d goal_point~%uint8 multi_modality_id~%uint64 object_id~%uint64 timestamp_us~%float64 score~%string reserved_info~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryPoint~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum~%uint8 DLP_TRAJECTORY_CRUISE = 0~%uint8 DLP_TRAJECTORY_LANE_CHANGE = 1~%uint8 DLP_TRAJECTORY_REF_PATH = 2~%uint8 DLP_TRAJECTORY_PREDICTION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPTrajectory>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_point))
     1
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPTrajectory
    (cl:cons ':points (points msg))
    (cl:cons ':type (type msg))
    (cl:cons ':anchor_type (anchor_type msg))
    (cl:cons ':anchor_id (anchor_id msg))
    (cl:cons ':goal_point (goal_point msg))
    (cl:cons ':multi_modality_id (multi_modality_id msg))
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':score (score msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
