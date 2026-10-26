; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PredictionJunctionFeaturesArray.msg.html

(cl:defclass <PredictionJunctionFeaturesArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (junction_features_array
    :reader junction_features_array
    :initarg :junction_features_array
    :type (cl:vector momenta_msgs-msg:PredictionJunctionFeatures)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:PredictionJunctionFeatures :initial-element (cl:make-instance 'momenta_msgs-msg:PredictionJunctionFeatures))))
)

(cl:defclass PredictionJunctionFeaturesArray (<PredictionJunctionFeaturesArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionJunctionFeaturesArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionJunctionFeaturesArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PredictionJunctionFeaturesArray> is deprecated: use momenta_msgs-msg:PredictionJunctionFeaturesArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PredictionJunctionFeaturesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'junction_features_array-val :lambda-list '(m))
(cl:defmethod junction_features_array-val ((m <PredictionJunctionFeaturesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:junction_features_array-val is deprecated.  Use momenta_msgs-msg:junction_features_array instead.")
  (junction_features_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionJunctionFeaturesArray>) ostream)
  "Serializes a message object of type '<PredictionJunctionFeaturesArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'junction_features_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'junction_features_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionJunctionFeaturesArray>) istream)
  "Deserializes a message object of type '<PredictionJunctionFeaturesArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'junction_features_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'junction_features_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:PredictionJunctionFeatures))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionJunctionFeaturesArray>)))
  "Returns string type for a message object of type '<PredictionJunctionFeaturesArray>"
  "momenta_msgs/PredictionJunctionFeaturesArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionJunctionFeaturesArray)))
  "Returns string type for a message object of type 'PredictionJunctionFeaturesArray"
  "momenta_msgs/PredictionJunctionFeaturesArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionJunctionFeaturesArray>)))
  "Returns md5sum for a message object of type '<PredictionJunctionFeaturesArray>"
  "45a61059944be3063e9d9cfbb6781d0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionJunctionFeaturesArray)))
  "Returns md5sum for a message object of type 'PredictionJunctionFeaturesArray"
  "45a61059944be3063e9d9cfbb6781d0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionJunctionFeaturesArray>)))
  "Returns full string definition for message of type '<PredictionJunctionFeaturesArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/PredictionJunctionFeatures[] junction_features_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionJunctionFeatures~%std_msgs/Header header~%bool is_feature_invalid~%int32 id~%int32 type~%float32 x~%float32 y~%float32 yaw~%float32 diff_theta_car_lane~%float32 v~%float32 v_x~%float32 v_y~%float32 acc~%float32 acc_x~%float32 acc_y~%float32 diff_previous_yaw~%float32 diff_latest_yaw~%float32 diff_previous_x~%float32 diff_previous_y~%float32 diff_latest_x~%float32 diff_latest_y~%float32 diff_previous_v_x~%float32 diff_previous_v_y~%float32 diff_latest_v_x~%float32 diff_latest_v_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionJunctionFeaturesArray)))
  "Returns full string definition for message of type 'PredictionJunctionFeaturesArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/PredictionJunctionFeatures[] junction_features_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionJunctionFeatures~%std_msgs/Header header~%bool is_feature_invalid~%int32 id~%int32 type~%float32 x~%float32 y~%float32 yaw~%float32 diff_theta_car_lane~%float32 v~%float32 v_x~%float32 v_y~%float32 acc~%float32 acc_x~%float32 acc_y~%float32 diff_previous_yaw~%float32 diff_latest_yaw~%float32 diff_previous_x~%float32 diff_previous_y~%float32 diff_latest_x~%float32 diff_latest_y~%float32 diff_previous_v_x~%float32 diff_previous_v_y~%float32 diff_latest_v_x~%float32 diff_latest_v_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionJunctionFeaturesArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'junction_features_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionJunctionFeaturesArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionJunctionFeaturesArray
    (cl:cons ':header (header msg))
    (cl:cons ':junction_features_array (junction_features_array msg))
))
