; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PredictionObjectArray.msg.html

(cl:defclass <PredictionObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object_prediction_array
    :reader object_prediction_array
    :initarg :object_prediction_array
    :type (cl:vector momenta_msgs-msg:PredictionObject)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:PredictionObject :initial-element (cl:make-instance 'momenta_msgs-msg:PredictionObject))))
)

(cl:defclass PredictionObjectArray (<PredictionObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PredictionObjectArray> is deprecated: use momenta_msgs-msg:PredictionObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PredictionObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object_prediction_array-val :lambda-list '(m))
(cl:defmethod object_prediction_array-val ((m <PredictionObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:object_prediction_array-val is deprecated.  Use momenta_msgs-msg:object_prediction_array instead.")
  (object_prediction_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionObjectArray>) ostream)
  "Serializes a message object of type '<PredictionObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_prediction_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_prediction_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionObjectArray>) istream)
  "Deserializes a message object of type '<PredictionObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_prediction_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_prediction_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:PredictionObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionObjectArray>)))
  "Returns string type for a message object of type '<PredictionObjectArray>"
  "momenta_msgs/PredictionObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionObjectArray)))
  "Returns string type for a message object of type 'PredictionObjectArray"
  "momenta_msgs/PredictionObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionObjectArray>)))
  "Returns md5sum for a message object of type '<PredictionObjectArray>"
  "15213f9d3c29a40f0c1d740e6ae88be1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionObjectArray)))
  "Returns md5sum for a message object of type 'PredictionObjectArray"
  "15213f9d3c29a40f0c1d740e6ae88be1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionObjectArray>)))
  "Returns full string definition for message of type '<PredictionObjectArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/PredictionObject[] object_prediction_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionObject~%uint32 id~%uint32 type~%float32 position_x~%float32 position_y~%float32 length~%float32 width~%float32 speed~%float32 yaw~%float32 velocity_x~%float32 velocity_y~%float32 acc~%float32 pos_x_sigma~%float32 pos_y_sigma~%float32 rel_position_x~%float32 rel_position_y~%float32 rel_speed_x~%float32 rel_speed_y~%float32 rel_theta~%string[] reserved~%momenta_msgs/PredictionTrajectory[] trajectory_array~%~%================================================================================~%MSG: momenta_msgs/PredictionTrajectory~%std_msgs/Header header~%float32 prob~%float32 prediction_interval~%uint16 num_of_points~%string intention~%string source~%string[] reserved~%float32 const_vel_prob~%float32 const_acc_prob~%float32 still_prob~%float32 coord_turn_prob~%momenta_msgs/PredictionTrajectoryPoint[] trajectory~%~%================================================================================~%MSG: momenta_msgs/PredictionTrajectoryPoint~%float32 x~%float32 y~%float32 yaw~%float32 theta~%float32 speed~%float32 prob~%float32 std_dev_x~%float32 std_dev_y~%float32 sigma_xy~%float32 std_dev_yaw~%float32 std_dev_speed~%float32 relative_ego_x~%float32 relative_ego_y~%float32 relative_ego_yaw~%float32 relative_ego_speed~%float32 relative_ego_std_dev_x~%float32 relative_ego_std_dev_y~%float32 relative_ego_std_dev_yaw~%float32 relative_ego_std_dev_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionObjectArray)))
  "Returns full string definition for message of type 'PredictionObjectArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/PredictionObject[] object_prediction_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionObject~%uint32 id~%uint32 type~%float32 position_x~%float32 position_y~%float32 length~%float32 width~%float32 speed~%float32 yaw~%float32 velocity_x~%float32 velocity_y~%float32 acc~%float32 pos_x_sigma~%float32 pos_y_sigma~%float32 rel_position_x~%float32 rel_position_y~%float32 rel_speed_x~%float32 rel_speed_y~%float32 rel_theta~%string[] reserved~%momenta_msgs/PredictionTrajectory[] trajectory_array~%~%================================================================================~%MSG: momenta_msgs/PredictionTrajectory~%std_msgs/Header header~%float32 prob~%float32 prediction_interval~%uint16 num_of_points~%string intention~%string source~%string[] reserved~%float32 const_vel_prob~%float32 const_acc_prob~%float32 still_prob~%float32 coord_turn_prob~%momenta_msgs/PredictionTrajectoryPoint[] trajectory~%~%================================================================================~%MSG: momenta_msgs/PredictionTrajectoryPoint~%float32 x~%float32 y~%float32 yaw~%float32 theta~%float32 speed~%float32 prob~%float32 std_dev_x~%float32 std_dev_y~%float32 sigma_xy~%float32 std_dev_yaw~%float32 std_dev_speed~%float32 relative_ego_x~%float32 relative_ego_y~%float32 relative_ego_yaw~%float32 relative_ego_speed~%float32 relative_ego_std_dev_x~%float32 relative_ego_std_dev_y~%float32 relative_ego_std_dev_yaw~%float32 relative_ego_std_dev_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_prediction_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':object_prediction_array (object_prediction_array msg))
))
