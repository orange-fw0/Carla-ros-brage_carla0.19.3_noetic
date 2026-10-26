; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PredictionNonIntersectionFeatures.msg.html

(cl:defclass <PredictionNonIntersectionFeatures> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_feature_invalid
    :reader is_feature_invalid
    :initarg :is_feature_invalid
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (diff_theta_car_lane
    :reader diff_theta_car_lane
    :initarg :diff_theta_car_lane
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (v_s
    :reader v_s
    :initarg :v_s
    :type cl:float
    :initform 0.0)
   (v_r
    :reader v_r
    :initarg :v_r
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0)
   (acc_s
    :reader acc_s
    :initarg :acc_s
    :type cl:float
    :initform 0.0)
   (acc_r
    :reader acc_r
    :initarg :acc_r
    :type cl:float
    :initform 0.0)
   (lane_index
    :reader lane_index
    :initarg :lane_index
    :type cl:integer
    :initform 0)
   (lane_width
    :reader lane_width
    :initarg :lane_width
    :type cl:float
    :initform 0.0)
   (distance_left_lane
    :reader distance_left_lane
    :initarg :distance_left_lane
    :type cl:float
    :initform 0.0)
   (distance_right_lane
    :reader distance_right_lane
    :initarg :distance_right_lane
    :type cl:float
    :initform 0.0)
   (distance_mid_lane
    :reader distance_mid_lane
    :initarg :distance_mid_lane
    :type cl:float
    :initform 0.0)
   (distance_left_road
    :reader distance_left_road
    :initarg :distance_left_road
    :type cl:float
    :initform 0.0)
   (distance_right_road
    :reader distance_right_road
    :initarg :distance_right_road
    :type cl:float
    :initform 0.0)
   (is_left_lane_solid
    :reader is_left_lane_solid
    :initarg :is_left_lane_solid
    :type cl:float
    :initform 0.0)
   (is_right_lane_solid
    :reader is_right_lane_solid
    :initarg :is_right_lane_solid
    :type cl:float
    :initform 0.0)
   (is_most_left_lane
    :reader is_most_left_lane
    :initarg :is_most_left_lane
    :type cl:float
    :initform 0.0)
   (is_most_right_lane
    :reader is_most_right_lane
    :initarg :is_most_right_lane
    :type cl:float
    :initform 0.0)
   (around_car_feature
    :reader around_car_feature
    :initarg :around_car_feature
    :type (cl:vector momenta_msgs-msg:PredictionAroundCarFeature)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:PredictionAroundCarFeature :initial-element (cl:make-instance 'momenta_msgs-msg:PredictionAroundCarFeature)))
   (diff_prev_yaw
    :reader diff_prev_yaw
    :initarg :diff_prev_yaw
    :type cl:float
    :initform 0.0)
   (diff_prev_velocity
    :reader diff_prev_velocity
    :initarg :diff_prev_velocity
    :type cl:float
    :initform 0.0)
   (diff_prev_velocity_s
    :reader diff_prev_velocity_s
    :initarg :diff_prev_velocity_s
    :type cl:float
    :initform 0.0)
   (diff_prev_velocity_r
    :reader diff_prev_velocity_r
    :initarg :diff_prev_velocity_r
    :type cl:float
    :initform 0.0)
   (diff_prev_acc
    :reader diff_prev_acc
    :initarg :diff_prev_acc
    :type cl:float
    :initform 0.0)
   (diff_prev_acc_s
    :reader diff_prev_acc_s
    :initarg :diff_prev_acc_s
    :type cl:float
    :initform 0.0)
   (diff_prev_acc_r
    :reader diff_prev_acc_r
    :initarg :diff_prev_acc_r
    :type cl:float
    :initform 0.0)
   (diff_prev_distance_mid_lane
    :reader diff_prev_distance_mid_lane
    :initarg :diff_prev_distance_mid_lane
    :type cl:float
    :initform 0.0)
   (diff_prev_multi_yaw
    :reader diff_prev_multi_yaw
    :initarg :diff_prev_multi_yaw
    :type cl:float
    :initform 0.0)
   (diff_prev_multi_velocity
    :reader diff_prev_multi_velocity
    :initarg :diff_prev_multi_velocity
    :type cl:float
    :initform 0.0)
   (diff_prev_multi_velocity_s
    :reader diff_prev_multi_velocity_s
    :initarg :diff_prev_multi_velocity_s
    :type cl:float
    :initform 0.0)
   (diff_prev_multi_velocity_r
    :reader diff_prev_multi_velocity_r
    :initarg :diff_prev_multi_velocity_r
    :type cl:float
    :initform 0.0)
   (diff_prev_multi_acc
    :reader diff_prev_multi_acc
    :initarg :diff_prev_multi_acc
    :type cl:float
    :initform 0.0)
   (diff_prev_multi_acc_s
    :reader diff_prev_multi_acc_s
    :initarg :diff_prev_multi_acc_s
    :type cl:float
    :initform 0.0)
   (diff_prev_multi_acc_r
    :reader diff_prev_multi_acc_r
    :initarg :diff_prev_multi_acc_r
    :type cl:float
    :initform 0.0)
   (diff_prev_multi_distance_mid_lane
    :reader diff_prev_multi_distance_mid_lane
    :initarg :diff_prev_multi_distance_mid_lane
    :type cl:float
    :initform 0.0)
   (is_left_half_lane
    :reader is_left_half_lane
    :initarg :is_left_half_lane
    :type cl:float
    :initform 0.0)
   (is_right_half_lane
    :reader is_right_half_lane
    :initarg :is_right_half_lane
    :type cl:float
    :initform 0.0)
   (previous_intention
    :reader previous_intention
    :initarg :previous_intention
    :type cl:float
    :initform 0.0))
)

(cl:defclass PredictionNonIntersectionFeatures (<PredictionNonIntersectionFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionNonIntersectionFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionNonIntersectionFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PredictionNonIntersectionFeatures> is deprecated: use momenta_msgs-msg:PredictionNonIntersectionFeatures instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_feature_invalid-val :lambda-list '(m))
(cl:defmethod is_feature_invalid-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_feature_invalid-val is deprecated.  Use momenta_msgs-msg:is_feature_invalid instead.")
  (is_feature_invalid m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:id-val is deprecated.  Use momenta_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:type-val is deprecated.  Use momenta_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:x-val is deprecated.  Use momenta_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:y-val is deprecated.  Use momenta_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:s-val is deprecated.  Use momenta_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:r-val is deprecated.  Use momenta_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:yaw-val is deprecated.  Use momenta_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'diff_theta_car_lane-val :lambda-list '(m))
(cl:defmethod diff_theta_car_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_theta_car_lane-val is deprecated.  Use momenta_msgs-msg:diff_theta_car_lane instead.")
  (diff_theta_car_lane m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:v-val is deprecated.  Use momenta_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'v_s-val :lambda-list '(m))
(cl:defmethod v_s-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:v_s-val is deprecated.  Use momenta_msgs-msg:v_s instead.")
  (v_s m))

(cl:ensure-generic-function 'v_r-val :lambda-list '(m))
(cl:defmethod v_r-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:v_r-val is deprecated.  Use momenta_msgs-msg:v_r instead.")
  (v_r m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:acc-val is deprecated.  Use momenta_msgs-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'acc_s-val :lambda-list '(m))
(cl:defmethod acc_s-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:acc_s-val is deprecated.  Use momenta_msgs-msg:acc_s instead.")
  (acc_s m))

(cl:ensure-generic-function 'acc_r-val :lambda-list '(m))
(cl:defmethod acc_r-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:acc_r-val is deprecated.  Use momenta_msgs-msg:acc_r instead.")
  (acc_r m))

(cl:ensure-generic-function 'lane_index-val :lambda-list '(m))
(cl:defmethod lane_index-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_index-val is deprecated.  Use momenta_msgs-msg:lane_index instead.")
  (lane_index m))

(cl:ensure-generic-function 'lane_width-val :lambda-list '(m))
(cl:defmethod lane_width-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_width-val is deprecated.  Use momenta_msgs-msg:lane_width instead.")
  (lane_width m))

(cl:ensure-generic-function 'distance_left_lane-val :lambda-list '(m))
(cl:defmethod distance_left_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_left_lane-val is deprecated.  Use momenta_msgs-msg:distance_left_lane instead.")
  (distance_left_lane m))

(cl:ensure-generic-function 'distance_right_lane-val :lambda-list '(m))
(cl:defmethod distance_right_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_right_lane-val is deprecated.  Use momenta_msgs-msg:distance_right_lane instead.")
  (distance_right_lane m))

(cl:ensure-generic-function 'distance_mid_lane-val :lambda-list '(m))
(cl:defmethod distance_mid_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_mid_lane-val is deprecated.  Use momenta_msgs-msg:distance_mid_lane instead.")
  (distance_mid_lane m))

(cl:ensure-generic-function 'distance_left_road-val :lambda-list '(m))
(cl:defmethod distance_left_road-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_left_road-val is deprecated.  Use momenta_msgs-msg:distance_left_road instead.")
  (distance_left_road m))

(cl:ensure-generic-function 'distance_right_road-val :lambda-list '(m))
(cl:defmethod distance_right_road-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_right_road-val is deprecated.  Use momenta_msgs-msg:distance_right_road instead.")
  (distance_right_road m))

(cl:ensure-generic-function 'is_left_lane_solid-val :lambda-list '(m))
(cl:defmethod is_left_lane_solid-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_left_lane_solid-val is deprecated.  Use momenta_msgs-msg:is_left_lane_solid instead.")
  (is_left_lane_solid m))

(cl:ensure-generic-function 'is_right_lane_solid-val :lambda-list '(m))
(cl:defmethod is_right_lane_solid-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_right_lane_solid-val is deprecated.  Use momenta_msgs-msg:is_right_lane_solid instead.")
  (is_right_lane_solid m))

(cl:ensure-generic-function 'is_most_left_lane-val :lambda-list '(m))
(cl:defmethod is_most_left_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_most_left_lane-val is deprecated.  Use momenta_msgs-msg:is_most_left_lane instead.")
  (is_most_left_lane m))

(cl:ensure-generic-function 'is_most_right_lane-val :lambda-list '(m))
(cl:defmethod is_most_right_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_most_right_lane-val is deprecated.  Use momenta_msgs-msg:is_most_right_lane instead.")
  (is_most_right_lane m))

(cl:ensure-generic-function 'around_car_feature-val :lambda-list '(m))
(cl:defmethod around_car_feature-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:around_car_feature-val is deprecated.  Use momenta_msgs-msg:around_car_feature instead.")
  (around_car_feature m))

(cl:ensure-generic-function 'diff_prev_yaw-val :lambda-list '(m))
(cl:defmethod diff_prev_yaw-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_yaw-val is deprecated.  Use momenta_msgs-msg:diff_prev_yaw instead.")
  (diff_prev_yaw m))

(cl:ensure-generic-function 'diff_prev_velocity-val :lambda-list '(m))
(cl:defmethod diff_prev_velocity-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_velocity-val is deprecated.  Use momenta_msgs-msg:diff_prev_velocity instead.")
  (diff_prev_velocity m))

(cl:ensure-generic-function 'diff_prev_velocity_s-val :lambda-list '(m))
(cl:defmethod diff_prev_velocity_s-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_velocity_s-val is deprecated.  Use momenta_msgs-msg:diff_prev_velocity_s instead.")
  (diff_prev_velocity_s m))

(cl:ensure-generic-function 'diff_prev_velocity_r-val :lambda-list '(m))
(cl:defmethod diff_prev_velocity_r-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_velocity_r-val is deprecated.  Use momenta_msgs-msg:diff_prev_velocity_r instead.")
  (diff_prev_velocity_r m))

(cl:ensure-generic-function 'diff_prev_acc-val :lambda-list '(m))
(cl:defmethod diff_prev_acc-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_acc-val is deprecated.  Use momenta_msgs-msg:diff_prev_acc instead.")
  (diff_prev_acc m))

(cl:ensure-generic-function 'diff_prev_acc_s-val :lambda-list '(m))
(cl:defmethod diff_prev_acc_s-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_acc_s-val is deprecated.  Use momenta_msgs-msg:diff_prev_acc_s instead.")
  (diff_prev_acc_s m))

(cl:ensure-generic-function 'diff_prev_acc_r-val :lambda-list '(m))
(cl:defmethod diff_prev_acc_r-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_acc_r-val is deprecated.  Use momenta_msgs-msg:diff_prev_acc_r instead.")
  (diff_prev_acc_r m))

(cl:ensure-generic-function 'diff_prev_distance_mid_lane-val :lambda-list '(m))
(cl:defmethod diff_prev_distance_mid_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_distance_mid_lane-val is deprecated.  Use momenta_msgs-msg:diff_prev_distance_mid_lane instead.")
  (diff_prev_distance_mid_lane m))

(cl:ensure-generic-function 'diff_prev_multi_yaw-val :lambda-list '(m))
(cl:defmethod diff_prev_multi_yaw-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_multi_yaw-val is deprecated.  Use momenta_msgs-msg:diff_prev_multi_yaw instead.")
  (diff_prev_multi_yaw m))

(cl:ensure-generic-function 'diff_prev_multi_velocity-val :lambda-list '(m))
(cl:defmethod diff_prev_multi_velocity-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_multi_velocity-val is deprecated.  Use momenta_msgs-msg:diff_prev_multi_velocity instead.")
  (diff_prev_multi_velocity m))

(cl:ensure-generic-function 'diff_prev_multi_velocity_s-val :lambda-list '(m))
(cl:defmethod diff_prev_multi_velocity_s-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_multi_velocity_s-val is deprecated.  Use momenta_msgs-msg:diff_prev_multi_velocity_s instead.")
  (diff_prev_multi_velocity_s m))

(cl:ensure-generic-function 'diff_prev_multi_velocity_r-val :lambda-list '(m))
(cl:defmethod diff_prev_multi_velocity_r-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_multi_velocity_r-val is deprecated.  Use momenta_msgs-msg:diff_prev_multi_velocity_r instead.")
  (diff_prev_multi_velocity_r m))

(cl:ensure-generic-function 'diff_prev_multi_acc-val :lambda-list '(m))
(cl:defmethod diff_prev_multi_acc-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_multi_acc-val is deprecated.  Use momenta_msgs-msg:diff_prev_multi_acc instead.")
  (diff_prev_multi_acc m))

(cl:ensure-generic-function 'diff_prev_multi_acc_s-val :lambda-list '(m))
(cl:defmethod diff_prev_multi_acc_s-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_multi_acc_s-val is deprecated.  Use momenta_msgs-msg:diff_prev_multi_acc_s instead.")
  (diff_prev_multi_acc_s m))

(cl:ensure-generic-function 'diff_prev_multi_acc_r-val :lambda-list '(m))
(cl:defmethod diff_prev_multi_acc_r-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_multi_acc_r-val is deprecated.  Use momenta_msgs-msg:diff_prev_multi_acc_r instead.")
  (diff_prev_multi_acc_r m))

(cl:ensure-generic-function 'diff_prev_multi_distance_mid_lane-val :lambda-list '(m))
(cl:defmethod diff_prev_multi_distance_mid_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:diff_prev_multi_distance_mid_lane-val is deprecated.  Use momenta_msgs-msg:diff_prev_multi_distance_mid_lane instead.")
  (diff_prev_multi_distance_mid_lane m))

(cl:ensure-generic-function 'is_left_half_lane-val :lambda-list '(m))
(cl:defmethod is_left_half_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_left_half_lane-val is deprecated.  Use momenta_msgs-msg:is_left_half_lane instead.")
  (is_left_half_lane m))

(cl:ensure-generic-function 'is_right_half_lane-val :lambda-list '(m))
(cl:defmethod is_right_half_lane-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_right_half_lane-val is deprecated.  Use momenta_msgs-msg:is_right_half_lane instead.")
  (is_right_half_lane m))

(cl:ensure-generic-function 'previous_intention-val :lambda-list '(m))
(cl:defmethod previous_intention-val ((m <PredictionNonIntersectionFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:previous_intention-val is deprecated.  Use momenta_msgs-msg:previous_intention instead.")
  (previous_intention m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionNonIntersectionFeatures>) ostream)
  "Serializes a message object of type '<PredictionNonIntersectionFeatures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_feature_invalid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_theta_car_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lane_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_left_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_right_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_mid_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_left_road))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_right_road))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'is_left_lane_solid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'is_right_lane_solid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'is_most_left_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'is_most_right_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'around_car_feature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'around_car_feature))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_velocity_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_velocity_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_acc_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_acc_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_distance_mid_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_multi_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_multi_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_multi_velocity_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_multi_velocity_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_multi_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_multi_acc_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_multi_acc_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_prev_multi_distance_mid_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'is_left_half_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'is_right_half_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'previous_intention))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionNonIntersectionFeatures>) istream)
  "Deserializes a message object of type '<PredictionNonIntersectionFeatures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_feature_invalid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_theta_car_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_left_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_right_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_mid_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_left_road) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_right_road) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_left_lane_solid) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_right_lane_solid) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_most_left_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_most_right_lane) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'around_car_feature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'around_car_feature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:PredictionAroundCarFeature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_velocity_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_velocity_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_acc_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_acc_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_distance_mid_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_multi_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_multi_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_multi_velocity_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_multi_velocity_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_multi_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_multi_acc_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_multi_acc_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_prev_multi_distance_mid_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_left_half_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_right_half_lane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'previous_intention) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionNonIntersectionFeatures>)))
  "Returns string type for a message object of type '<PredictionNonIntersectionFeatures>"
  "momenta_msgs/PredictionNonIntersectionFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionNonIntersectionFeatures)))
  "Returns string type for a message object of type 'PredictionNonIntersectionFeatures"
  "momenta_msgs/PredictionNonIntersectionFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionNonIntersectionFeatures>)))
  "Returns md5sum for a message object of type '<PredictionNonIntersectionFeatures>"
  "374e23c9d77289d0e02b99d5dd2492a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionNonIntersectionFeatures)))
  "Returns md5sum for a message object of type 'PredictionNonIntersectionFeatures"
  "374e23c9d77289d0e02b99d5dd2492a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionNonIntersectionFeatures>)))
  "Returns full string definition for message of type '<PredictionNonIntersectionFeatures>"
  (cl:format cl:nil "std_msgs/Header header~%bool is_feature_invalid~%int32 id~%int32 type~%float32 x~%float32 y~%float32 s~%float32 r~%float32 yaw~%float32 diff_theta_car_lane~%float32 v~%float32 v_s~%float32 v_r~%float32 acc~%float32 acc_s~%float32 acc_r~%int32 lane_index~%float32 lane_width~%float32 distance_left_lane~%float32 distance_right_lane~%float32 distance_mid_lane~%float32 distance_left_road~%float32 distance_right_road~%float32 is_left_lane_solid~%float32 is_right_lane_solid~%float32 is_most_left_lane~%float32 is_most_right_lane~%momenta_msgs/PredictionAroundCarFeature[] around_car_feature~%float32 diff_prev_yaw~%float32 diff_prev_velocity~%float32 diff_prev_velocity_s~%float32 diff_prev_velocity_r~%float32 diff_prev_acc~%float32 diff_prev_acc_s~%float32 diff_prev_acc_r~%float32 diff_prev_distance_mid_lane~%float32 diff_prev_multi_yaw~%float32 diff_prev_multi_velocity~%float32 diff_prev_multi_velocity_s~%float32 diff_prev_multi_velocity_r~%float32 diff_prev_multi_acc~%float32 diff_prev_multi_acc_s~%float32 diff_prev_multi_acc_r~%float32 diff_prev_multi_distance_mid_lane~%float32 is_left_half_lane~%float32 is_right_half_lane~%float32 previous_intention~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionAroundCarFeature~%float32 relative_s~%float32 relative_r~%float32 relative_v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionNonIntersectionFeatures)))
  "Returns full string definition for message of type 'PredictionNonIntersectionFeatures"
  (cl:format cl:nil "std_msgs/Header header~%bool is_feature_invalid~%int32 id~%int32 type~%float32 x~%float32 y~%float32 s~%float32 r~%float32 yaw~%float32 diff_theta_car_lane~%float32 v~%float32 v_s~%float32 v_r~%float32 acc~%float32 acc_s~%float32 acc_r~%int32 lane_index~%float32 lane_width~%float32 distance_left_lane~%float32 distance_right_lane~%float32 distance_mid_lane~%float32 distance_left_road~%float32 distance_right_road~%float32 is_left_lane_solid~%float32 is_right_lane_solid~%float32 is_most_left_lane~%float32 is_most_right_lane~%momenta_msgs/PredictionAroundCarFeature[] around_car_feature~%float32 diff_prev_yaw~%float32 diff_prev_velocity~%float32 diff_prev_velocity_s~%float32 diff_prev_velocity_r~%float32 diff_prev_acc~%float32 diff_prev_acc_s~%float32 diff_prev_acc_r~%float32 diff_prev_distance_mid_lane~%float32 diff_prev_multi_yaw~%float32 diff_prev_multi_velocity~%float32 diff_prev_multi_velocity_s~%float32 diff_prev_multi_velocity_r~%float32 diff_prev_multi_acc~%float32 diff_prev_multi_acc_s~%float32 diff_prev_multi_acc_r~%float32 diff_prev_multi_distance_mid_lane~%float32 is_left_half_lane~%float32 is_right_half_lane~%float32 previous_intention~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/PredictionAroundCarFeature~%float32 relative_s~%float32 relative_r~%float32 relative_v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionNonIntersectionFeatures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'around_car_feature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionNonIntersectionFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionNonIntersectionFeatures
    (cl:cons ':header (header msg))
    (cl:cons ':is_feature_invalid (is_feature_invalid msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':s (s msg))
    (cl:cons ':r (r msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':diff_theta_car_lane (diff_theta_car_lane msg))
    (cl:cons ':v (v msg))
    (cl:cons ':v_s (v_s msg))
    (cl:cons ':v_r (v_r msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':acc_s (acc_s msg))
    (cl:cons ':acc_r (acc_r msg))
    (cl:cons ':lane_index (lane_index msg))
    (cl:cons ':lane_width (lane_width msg))
    (cl:cons ':distance_left_lane (distance_left_lane msg))
    (cl:cons ':distance_right_lane (distance_right_lane msg))
    (cl:cons ':distance_mid_lane (distance_mid_lane msg))
    (cl:cons ':distance_left_road (distance_left_road msg))
    (cl:cons ':distance_right_road (distance_right_road msg))
    (cl:cons ':is_left_lane_solid (is_left_lane_solid msg))
    (cl:cons ':is_right_lane_solid (is_right_lane_solid msg))
    (cl:cons ':is_most_left_lane (is_most_left_lane msg))
    (cl:cons ':is_most_right_lane (is_most_right_lane msg))
    (cl:cons ':around_car_feature (around_car_feature msg))
    (cl:cons ':diff_prev_yaw (diff_prev_yaw msg))
    (cl:cons ':diff_prev_velocity (diff_prev_velocity msg))
    (cl:cons ':diff_prev_velocity_s (diff_prev_velocity_s msg))
    (cl:cons ':diff_prev_velocity_r (diff_prev_velocity_r msg))
    (cl:cons ':diff_prev_acc (diff_prev_acc msg))
    (cl:cons ':diff_prev_acc_s (diff_prev_acc_s msg))
    (cl:cons ':diff_prev_acc_r (diff_prev_acc_r msg))
    (cl:cons ':diff_prev_distance_mid_lane (diff_prev_distance_mid_lane msg))
    (cl:cons ':diff_prev_multi_yaw (diff_prev_multi_yaw msg))
    (cl:cons ':diff_prev_multi_velocity (diff_prev_multi_velocity msg))
    (cl:cons ':diff_prev_multi_velocity_s (diff_prev_multi_velocity_s msg))
    (cl:cons ':diff_prev_multi_velocity_r (diff_prev_multi_velocity_r msg))
    (cl:cons ':diff_prev_multi_acc (diff_prev_multi_acc msg))
    (cl:cons ':diff_prev_multi_acc_s (diff_prev_multi_acc_s msg))
    (cl:cons ':diff_prev_multi_acc_r (diff_prev_multi_acc_r msg))
    (cl:cons ':diff_prev_multi_distance_mid_lane (diff_prev_multi_distance_mid_lane msg))
    (cl:cons ':is_left_half_lane (is_left_half_lane msg))
    (cl:cons ':is_right_half_lane (is_right_half_lane msg))
    (cl:cons ':previous_intention (previous_intention msg))
))
