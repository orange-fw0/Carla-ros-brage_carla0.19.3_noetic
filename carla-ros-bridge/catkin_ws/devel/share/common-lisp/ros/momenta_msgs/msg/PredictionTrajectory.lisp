; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PredictionTrajectory.msg.html

(cl:defclass <PredictionTrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (prob
    :reader prob
    :initarg :prob
    :type cl:float
    :initform 0.0)
   (prediction_interval
    :reader prediction_interval
    :initarg :prediction_interval
    :type cl:float
    :initform 0.0)
   (num_of_points
    :reader num_of_points
    :initarg :num_of_points
    :type cl:fixnum
    :initform 0)
   (intention
    :reader intention
    :initarg :intention
    :type cl:string
    :initform "")
   (source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (reserved
    :reader reserved
    :initarg :reserved
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (const_vel_prob
    :reader const_vel_prob
    :initarg :const_vel_prob
    :type cl:float
    :initform 0.0)
   (const_acc_prob
    :reader const_acc_prob
    :initarg :const_acc_prob
    :type cl:float
    :initform 0.0)
   (still_prob
    :reader still_prob
    :initarg :still_prob
    :type cl:float
    :initform 0.0)
   (coord_turn_prob
    :reader coord_turn_prob
    :initarg :coord_turn_prob
    :type cl:float
    :initform 0.0)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector momenta_msgs-msg:PredictionTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:PredictionTrajectoryPoint :initial-element (cl:make-instance 'momenta_msgs-msg:PredictionTrajectoryPoint))))
)

(cl:defclass PredictionTrajectory (<PredictionTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PredictionTrajectory> is deprecated: use momenta_msgs-msg:PredictionTrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:prob-val is deprecated.  Use momenta_msgs-msg:prob instead.")
  (prob m))

(cl:ensure-generic-function 'prediction_interval-val :lambda-list '(m))
(cl:defmethod prediction_interval-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:prediction_interval-val is deprecated.  Use momenta_msgs-msg:prediction_interval instead.")
  (prediction_interval m))

(cl:ensure-generic-function 'num_of_points-val :lambda-list '(m))
(cl:defmethod num_of_points-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:num_of_points-val is deprecated.  Use momenta_msgs-msg:num_of_points instead.")
  (num_of_points m))

(cl:ensure-generic-function 'intention-val :lambda-list '(m))
(cl:defmethod intention-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:intention-val is deprecated.  Use momenta_msgs-msg:intention instead.")
  (intention m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:source-val is deprecated.  Use momenta_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:reserved-val is deprecated.  Use momenta_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'const_vel_prob-val :lambda-list '(m))
(cl:defmethod const_vel_prob-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:const_vel_prob-val is deprecated.  Use momenta_msgs-msg:const_vel_prob instead.")
  (const_vel_prob m))

(cl:ensure-generic-function 'const_acc_prob-val :lambda-list '(m))
(cl:defmethod const_acc_prob-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:const_acc_prob-val is deprecated.  Use momenta_msgs-msg:const_acc_prob instead.")
  (const_acc_prob m))

(cl:ensure-generic-function 'still_prob-val :lambda-list '(m))
(cl:defmethod still_prob-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:still_prob-val is deprecated.  Use momenta_msgs-msg:still_prob instead.")
  (still_prob m))

(cl:ensure-generic-function 'coord_turn_prob-val :lambda-list '(m))
(cl:defmethod coord_turn_prob-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:coord_turn_prob-val is deprecated.  Use momenta_msgs-msg:coord_turn_prob instead.")
  (coord_turn_prob m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <PredictionTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:trajectory-val is deprecated.  Use momenta_msgs-msg:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionTrajectory>) ostream)
  "Serializes a message object of type '<PredictionTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prediction_interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_of_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_of_points)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'intention))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'intention))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'reserved))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'const_vel_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'const_acc_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'still_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'coord_turn_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionTrajectory>) istream)
  "Deserializes a message object of type '<PredictionTrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prediction_interval) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_of_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_of_points)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intention) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'intention) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'const_vel_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'const_acc_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'still_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'coord_turn_prob) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:PredictionTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionTrajectory>)))
  "Returns string type for a message object of type '<PredictionTrajectory>"
  "momenta_msgs/PredictionTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionTrajectory)))
  "Returns string type for a message object of type 'PredictionTrajectory"
  "momenta_msgs/PredictionTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionTrajectory>)))
  "Returns md5sum for a message object of type '<PredictionTrajectory>"
  "f6bca14c6fc79696f3f0073e9c34da17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionTrajectory)))
  "Returns md5sum for a message object of type 'PredictionTrajectory"
  "f6bca14c6fc79696f3f0073e9c34da17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionTrajectory>)))
  "Returns full string definition for message of type '<PredictionTrajectory>"
  (cl:format cl:nil "std_msgs/Header header~%float32 prob~%float32 prediction_interval~%uint16 num_of_points~%string intention~%string source~%string[] reserved~%float32 const_vel_prob~%float32 const_acc_prob~%float32 still_prob~%float32 coord_turn_prob~%momenta_msgs/PredictionTrajectoryPoint[] trajectory~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionTrajectoryPoint~%float32 x~%float32 y~%float32 yaw~%float32 theta~%float32 speed~%float32 prob~%float32 std_dev_x~%float32 std_dev_y~%float32 sigma_xy~%float32 std_dev_yaw~%float32 std_dev_speed~%float32 relative_ego_x~%float32 relative_ego_y~%float32 relative_ego_yaw~%float32 relative_ego_speed~%float32 relative_ego_std_dev_x~%float32 relative_ego_std_dev_y~%float32 relative_ego_std_dev_yaw~%float32 relative_ego_std_dev_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionTrajectory)))
  "Returns full string definition for message of type 'PredictionTrajectory"
  (cl:format cl:nil "std_msgs/Header header~%float32 prob~%float32 prediction_interval~%uint16 num_of_points~%string intention~%string source~%string[] reserved~%float32 const_vel_prob~%float32 const_acc_prob~%float32 still_prob~%float32 coord_turn_prob~%momenta_msgs/PredictionTrajectoryPoint[] trajectory~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionTrajectoryPoint~%float32 x~%float32 y~%float32 yaw~%float32 theta~%float32 speed~%float32 prob~%float32 std_dev_x~%float32 std_dev_y~%float32 sigma_xy~%float32 std_dev_yaw~%float32 std_dev_speed~%float32 relative_ego_x~%float32 relative_ego_y~%float32 relative_ego_yaw~%float32 relative_ego_speed~%float32 relative_ego_std_dev_x~%float32 relative_ego_std_dev_y~%float32 relative_ego_std_dev_yaw~%float32 relative_ego_std_dev_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     2
     4 (cl:length (cl:slot-value msg 'intention))
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionTrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':prob (prob msg))
    (cl:cons ':prediction_interval (prediction_interval msg))
    (cl:cons ':num_of_points (num_of_points msg))
    (cl:cons ':intention (intention msg))
    (cl:cons ':source (source msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':const_vel_prob (const_vel_prob msg))
    (cl:cons ':const_acc_prob (const_acc_prob msg))
    (cl:cons ':still_prob (still_prob msg))
    (cl:cons ':coord_turn_prob (coord_turn_prob msg))
    (cl:cons ':trajectory (trajectory msg))
))
