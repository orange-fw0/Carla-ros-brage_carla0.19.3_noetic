; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PredictionNonIntersectionFeaturesArray.msg.html

(cl:defclass <PredictionNonIntersectionFeaturesArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (non_intersection_features_array
    :reader non_intersection_features_array
    :initarg :non_intersection_features_array
    :type (cl:vector momenta_msgs-msg:PredictionNonIntersectionFeatures)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:PredictionNonIntersectionFeatures :initial-element (cl:make-instance 'momenta_msgs-msg:PredictionNonIntersectionFeatures))))
)

(cl:defclass PredictionNonIntersectionFeaturesArray (<PredictionNonIntersectionFeaturesArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionNonIntersectionFeaturesArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionNonIntersectionFeaturesArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PredictionNonIntersectionFeaturesArray> is deprecated: use momenta_msgs-msg:PredictionNonIntersectionFeaturesArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PredictionNonIntersectionFeaturesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'non_intersection_features_array-val :lambda-list '(m))
(cl:defmethod non_intersection_features_array-val ((m <PredictionNonIntersectionFeaturesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:non_intersection_features_array-val is deprecated.  Use momenta_msgs-msg:non_intersection_features_array instead.")
  (non_intersection_features_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionNonIntersectionFeaturesArray>) ostream)
  "Serializes a message object of type '<PredictionNonIntersectionFeaturesArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'non_intersection_features_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'non_intersection_features_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionNonIntersectionFeaturesArray>) istream)
  "Deserializes a message object of type '<PredictionNonIntersectionFeaturesArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'non_intersection_features_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'non_intersection_features_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:PredictionNonIntersectionFeatures))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionNonIntersectionFeaturesArray>)))
  "Returns string type for a message object of type '<PredictionNonIntersectionFeaturesArray>"
  "momenta_msgs/PredictionNonIntersectionFeaturesArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionNonIntersectionFeaturesArray)))
  "Returns string type for a message object of type 'PredictionNonIntersectionFeaturesArray"
  "momenta_msgs/PredictionNonIntersectionFeaturesArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionNonIntersectionFeaturesArray>)))
  "Returns md5sum for a message object of type '<PredictionNonIntersectionFeaturesArray>"
  "447179f350de76a6185b1a5668d18ec7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionNonIntersectionFeaturesArray)))
  "Returns md5sum for a message object of type 'PredictionNonIntersectionFeaturesArray"
  "447179f350de76a6185b1a5668d18ec7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionNonIntersectionFeaturesArray>)))
  "Returns full string definition for message of type '<PredictionNonIntersectionFeaturesArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/PredictionNonIntersectionFeatures[] non_intersection_features_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionNonIntersectionFeatures~%std_msgs/Header header~%bool is_feature_invalid~%int32 id~%int32 type~%float32 x~%float32 y~%float32 s~%float32 r~%float32 yaw~%float32 diff_theta_car_lane~%float32 v~%float32 v_s~%float32 v_r~%float32 acc~%float32 acc_s~%float32 acc_r~%int32 lane_index~%float32 lane_width~%float32 distance_left_lane~%float32 distance_right_lane~%float32 distance_mid_lane~%float32 distance_left_road~%float32 distance_right_road~%float32 is_left_lane_solid~%float32 is_right_lane_solid~%float32 is_most_left_lane~%float32 is_most_right_lane~%momenta_msgs/PredictionAroundCarFeature[] around_car_feature~%float32 diff_prev_yaw~%float32 diff_prev_velocity~%float32 diff_prev_velocity_s~%float32 diff_prev_velocity_r~%float32 diff_prev_acc~%float32 diff_prev_acc_s~%float32 diff_prev_acc_r~%float32 diff_prev_distance_mid_lane~%float32 diff_prev_multi_yaw~%float32 diff_prev_multi_velocity~%float32 diff_prev_multi_velocity_s~%float32 diff_prev_multi_velocity_r~%float32 diff_prev_multi_acc~%float32 diff_prev_multi_acc_s~%float32 diff_prev_multi_acc_r~%float32 diff_prev_multi_distance_mid_lane~%float32 is_left_half_lane~%float32 is_right_half_lane~%float32 previous_intention~%~%================================================================================~%MSG: momenta_msgs/PredictionAroundCarFeature~%float32 relative_s~%float32 relative_r~%float32 relative_v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionNonIntersectionFeaturesArray)))
  "Returns full string definition for message of type 'PredictionNonIntersectionFeaturesArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/PredictionNonIntersectionFeatures[] non_intersection_features_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionNonIntersectionFeatures~%std_msgs/Header header~%bool is_feature_invalid~%int32 id~%int32 type~%float32 x~%float32 y~%float32 s~%float32 r~%float32 yaw~%float32 diff_theta_car_lane~%float32 v~%float32 v_s~%float32 v_r~%float32 acc~%float32 acc_s~%float32 acc_r~%int32 lane_index~%float32 lane_width~%float32 distance_left_lane~%float32 distance_right_lane~%float32 distance_mid_lane~%float32 distance_left_road~%float32 distance_right_road~%float32 is_left_lane_solid~%float32 is_right_lane_solid~%float32 is_most_left_lane~%float32 is_most_right_lane~%momenta_msgs/PredictionAroundCarFeature[] around_car_feature~%float32 diff_prev_yaw~%float32 diff_prev_velocity~%float32 diff_prev_velocity_s~%float32 diff_prev_velocity_r~%float32 diff_prev_acc~%float32 diff_prev_acc_s~%float32 diff_prev_acc_r~%float32 diff_prev_distance_mid_lane~%float32 diff_prev_multi_yaw~%float32 diff_prev_multi_velocity~%float32 diff_prev_multi_velocity_s~%float32 diff_prev_multi_velocity_r~%float32 diff_prev_multi_acc~%float32 diff_prev_multi_acc_s~%float32 diff_prev_multi_acc_r~%float32 diff_prev_multi_distance_mid_lane~%float32 is_left_half_lane~%float32 is_right_half_lane~%float32 previous_intention~%~%================================================================================~%MSG: momenta_msgs/PredictionAroundCarFeature~%float32 relative_s~%float32 relative_r~%float32 relative_v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionNonIntersectionFeaturesArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'non_intersection_features_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionNonIntersectionFeaturesArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionNonIntersectionFeaturesArray
    (cl:cons ':header (header msg))
    (cl:cons ':non_intersection_features_array (non_intersection_features_array msg))
))
