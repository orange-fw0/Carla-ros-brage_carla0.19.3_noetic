; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude RoadAttribute.msg.html

(cl:defclass <RoadAttribute> (roslisp-msg-protocol:ros-message)
  ((speed_limits
    :reader speed_limits
    :initarg :speed_limits
    :type (cl:vector lane_navi_info_msgs-msg:SpeedLimit)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SpeedLimit :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SpeedLimit)))
   (experience_speed_limits
    :reader experience_speed_limits
    :initarg :experience_speed_limits
    :type (cl:vector lane_navi_info_msgs-msg:ExperienceSpeedLimit)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:ExperienceSpeedLimit :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:ExperienceSpeedLimit)))
   (curvatures
    :reader curvatures
    :initarg :curvatures
    :type (cl:vector lane_navi_info_msgs-msg:Curvature)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:Curvature :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:Curvature)))
   (slopes
    :reader slopes
    :initarg :slopes
    :type (cl:vector lane_navi_info_msgs-msg:Slope)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:Slope :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:Slope)))
   (special_situation
    :reader special_situation
    :initarg :special_situation
    :type (cl:vector landmark_msgs-msg:SpecialSituation)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:SpecialSituation :initial-element (cl:make-instance 'landmark_msgs-msg:SpecialSituation))))
)

(cl:defclass RoadAttribute (<RoadAttribute>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadAttribute>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadAttribute)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<RoadAttribute> is deprecated: use lane_navi_info_msgs-msg:RoadAttribute instead.")))

(cl:ensure-generic-function 'speed_limits-val :lambda-list '(m))
(cl:defmethod speed_limits-val ((m <RoadAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:speed_limits-val is deprecated.  Use lane_navi_info_msgs-msg:speed_limits instead.")
  (speed_limits m))

(cl:ensure-generic-function 'experience_speed_limits-val :lambda-list '(m))
(cl:defmethod experience_speed_limits-val ((m <RoadAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:experience_speed_limits-val is deprecated.  Use lane_navi_info_msgs-msg:experience_speed_limits instead.")
  (experience_speed_limits m))

(cl:ensure-generic-function 'curvatures-val :lambda-list '(m))
(cl:defmethod curvatures-val ((m <RoadAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:curvatures-val is deprecated.  Use lane_navi_info_msgs-msg:curvatures instead.")
  (curvatures m))

(cl:ensure-generic-function 'slopes-val :lambda-list '(m))
(cl:defmethod slopes-val ((m <RoadAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:slopes-val is deprecated.  Use lane_navi_info_msgs-msg:slopes instead.")
  (slopes m))

(cl:ensure-generic-function 'special_situation-val :lambda-list '(m))
(cl:defmethod special_situation-val ((m <RoadAttribute>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:special_situation-val is deprecated.  Use lane_navi_info_msgs-msg:special_situation instead.")
  (special_situation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadAttribute>) ostream)
  "Serializes a message object of type '<RoadAttribute>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'speed_limits))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'experience_speed_limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'experience_speed_limits))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'curvatures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'curvatures))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'slopes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'slopes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'special_situation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'special_situation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadAttribute>) istream)
  "Deserializes a message object of type '<RoadAttribute>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SpeedLimit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'experience_speed_limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'experience_speed_limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:ExperienceSpeedLimit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'curvatures) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'curvatures)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:Curvature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'slopes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'slopes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:Slope))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'special_situation) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'special_situation)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:SpecialSituation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadAttribute>)))
  "Returns string type for a message object of type '<RoadAttribute>"
  "lane_navi_info_msgs/RoadAttribute")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadAttribute)))
  "Returns string type for a message object of type 'RoadAttribute"
  "lane_navi_info_msgs/RoadAttribute")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadAttribute>)))
  "Returns md5sum for a message object of type '<RoadAttribute>"
  "1024dd2551dabd4ed614f34f10170ecb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadAttribute)))
  "Returns md5sum for a message object of type 'RoadAttribute"
  "1024dd2551dabd4ed614f34f10170ecb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadAttribute>)))
  "Returns full string definition for message of type '<RoadAttribute>"
  (cl:format cl:nil "lane_navi_info_msgs/SpeedLimit[] speed_limits~%lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits~%lane_navi_info_msgs/Curvature[] curvatures~%lane_navi_info_msgs/Slope[] slopes~%landmark_msgs/SpecialSituation[] special_situation~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/ExperienceSpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/Curvature~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/Slope~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: landmark_msgs/SpecialSituation~%uint32 UNKNOWN = 0~%uint32 TUNNEL_BEGIN = 1~%uint32 TUNNEL_END = 2~%uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3~%uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadAttribute)))
  "Returns full string definition for message of type 'RoadAttribute"
  (cl:format cl:nil "lane_navi_info_msgs/SpeedLimit[] speed_limits~%lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits~%lane_navi_info_msgs/Curvature[] curvatures~%lane_navi_info_msgs/Slope[] slopes~%landmark_msgs/SpecialSituation[] special_situation~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/ExperienceSpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/Curvature~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/Slope~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: landmark_msgs/SpecialSituation~%uint32 UNKNOWN = 0~%uint32 TUNNEL_BEGIN = 1~%uint32 TUNNEL_END = 2~%uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3~%uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadAttribute>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'experience_speed_limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'curvatures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'slopes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'special_situation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadAttribute>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadAttribute
    (cl:cons ':speed_limits (speed_limits msg))
    (cl:cons ':experience_speed_limits (experience_speed_limits msg))
    (cl:cons ':curvatures (curvatures msg))
    (cl:cons ':slopes (slopes msg))
    (cl:cons ':special_situation (special_situation msg))
))
