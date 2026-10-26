; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightDecision.msg.html

(cl:defclass <TrafficLightDecision> (roslisp-msg-protocol:ros-message)
  ((pattern
    :reader pattern
    :initarg :pattern
    :type landmark_msgs-msg:TrafficLightPatternEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightPatternEnum))
   (status
    :reader status
    :initarg :status
    :type landmark_msgs-msg:TrafficLightStatusEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightStatusEnum))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (remaining
    :reader remaining
    :initarg :remaining
    :type cl:float
    :initform 0.0)
   (count_number
    :reader count_number
    :initarg :count_number
    :type cl:fixnum
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
    :initform "")
   (pos_feature
    :reader pos_feature
    :initarg :pos_feature
    :type landmark_msgs-msg:TrafficLightPositionFeature
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightPositionFeature))
   (physical_node_list
    :reader physical_node_list
    :initarg :physical_node_list
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0))
)

(cl:defclass TrafficLightDecision (<TrafficLightDecision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightDecision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightDecision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightDecision> is deprecated: use landmark_msgs-msg:TrafficLightDecision instead.")))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pattern-val is deprecated.  Use landmark_msgs-msg:pattern instead.")
  (pattern m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:status-val is deprecated.  Use landmark_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:duration-val is deprecated.  Use landmark_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'remaining-val :lambda-list '(m))
(cl:defmethod remaining-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:remaining-val is deprecated.  Use landmark_msgs-msg:remaining instead.")
  (remaining m))

(cl:ensure-generic-function 'count_number-val :lambda-list '(m))
(cl:defmethod count_number-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:count_number-val is deprecated.  Use landmark_msgs-msg:count_number instead.")
  (count_number m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'pos_feature-val :lambda-list '(m))
(cl:defmethod pos_feature-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pos_feature-val is deprecated.  Use landmark_msgs-msg:pos_feature instead.")
  (pos_feature m))

(cl:ensure-generic-function 'physical_node_list-val :lambda-list '(m))
(cl:defmethod physical_node_list-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:physical_node_list-val is deprecated.  Use landmark_msgs-msg:physical_node_list instead.")
  (physical_node_list m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TrafficLightDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightDecision>)))
    "Constants for message type '<TrafficLightDecision>"
  '((:PATTERN_VALID . 1)
    (:STATUS_VALID . 2)
    (:DURATION_VALID . 4)
    (:REMAINING_VALID . 8)
    (:COUNT_NUMBER_VALID . 16)
    (:SCORE_VALID . 32)
    (:RESERVED_INFO_VALID . 64)
    (:POS_FEATURE_VALID . 128)
    (:PHYSICAL_NODE_LIST_VALID . 256))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightDecision)))
    "Constants for message type 'TrafficLightDecision"
  '((:PATTERN_VALID . 1)
    (:STATUS_VALID . 2)
    (:DURATION_VALID . 4)
    (:REMAINING_VALID . 8)
    (:COUNT_NUMBER_VALID . 16)
    (:SCORE_VALID . 32)
    (:RESERVED_INFO_VALID . 64)
    (:POS_FEATURE_VALID . 128)
    (:PHYSICAL_NODE_LIST_VALID . 256))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightDecision>) ostream)
  "Serializes a message object of type '<TrafficLightDecision>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pattern) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remaining))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count_number)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_feature) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'physical_node_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'physical_node_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightDecision>) istream)
  "Deserializes a message object of type '<TrafficLightDecision>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pattern) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count_number)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_feature) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'physical_node_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'physical_node_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightDecision>)))
  "Returns string type for a message object of type '<TrafficLightDecision>"
  "landmark_msgs/TrafficLightDecision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightDecision)))
  "Returns string type for a message object of type 'TrafficLightDecision"
  "landmark_msgs/TrafficLightDecision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightDecision>)))
  "Returns md5sum for a message object of type '<TrafficLightDecision>"
  "61c701e5aee496088a1703b308041a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightDecision)))
  "Returns md5sum for a message object of type 'TrafficLightDecision"
  "61c701e5aee496088a1703b308041a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightDecision>)))
  "Returns full string definition for message of type '<TrafficLightDecision>"
  (cl:format cl:nil "uint32 PATTERN_VALID = 1~%uint32 STATUS_VALID = 2~%uint32 DURATION_VALID = 4~%uint32 REMAINING_VALID = 8~%uint32 COUNT_NUMBER_VALID = 16~%uint32 SCORE_VALID = 32~%uint32 RESERVED_INFO_VALID = 64~%uint32 POS_FEATURE_VALID = 128~%uint32 PHYSICAL_NODE_LIST_VALID = 256~%landmark_msgs/TrafficLightPatternEnum pattern~%landmark_msgs/TrafficLightStatusEnum status~%float32 duration~%float32 remaining~%uint8 count_number~%float32 score~%string reserved_info~%landmark_msgs/TrafficLightPositionFeature pos_feature~%landmark_msgs/TrackId[] physical_node_list~%uint32 available~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23~%uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24~%uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25~%uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 TRAFFIC_LIGHT_STATUS_ON = 13~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPositionFeature~%perception_interface_msgs/Point3f position~%float32 yaw~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightDecision)))
  "Returns full string definition for message of type 'TrafficLightDecision"
  (cl:format cl:nil "uint32 PATTERN_VALID = 1~%uint32 STATUS_VALID = 2~%uint32 DURATION_VALID = 4~%uint32 REMAINING_VALID = 8~%uint32 COUNT_NUMBER_VALID = 16~%uint32 SCORE_VALID = 32~%uint32 RESERVED_INFO_VALID = 64~%uint32 POS_FEATURE_VALID = 128~%uint32 PHYSICAL_NODE_LIST_VALID = 256~%landmark_msgs/TrafficLightPatternEnum pattern~%landmark_msgs/TrafficLightStatusEnum status~%float32 duration~%float32 remaining~%uint8 count_number~%float32 score~%string reserved_info~%landmark_msgs/TrafficLightPositionFeature pos_feature~%landmark_msgs/TrackId[] physical_node_list~%uint32 available~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23~%uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24~%uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25~%uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 TRAFFIC_LIGHT_STATUS_ON = 13~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPositionFeature~%perception_interface_msgs/Point3f position~%float32 yaw~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightDecision>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pattern))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4
     4
     1
     4
     4 (cl:length (cl:slot-value msg 'reserved_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_feature))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'physical_node_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightDecision>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightDecision
    (cl:cons ':pattern (pattern msg))
    (cl:cons ':status (status msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':remaining (remaining msg))
    (cl:cons ':count_number (count_number msg))
    (cl:cons ':score (score msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':pos_feature (pos_feature msg))
    (cl:cons ':physical_node_list (physical_node_list msg))
    (cl:cons ':available (available msg))
))
