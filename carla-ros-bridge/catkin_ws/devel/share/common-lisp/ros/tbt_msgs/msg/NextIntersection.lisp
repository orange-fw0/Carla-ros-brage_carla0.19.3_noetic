; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude NextIntersection.msg.html

(cl:defclass <NextIntersection> (roslisp-msg-protocol:ros-message)
  ((number_of_lanes
    :reader number_of_lanes
    :initarg :number_of_lanes
    :type cl:fixnum
    :initform 0)
   (lane_guidance_list
    :reader lane_guidance_list
    :initarg :lane_guidance_list
    :type (cl:vector tbt_msgs-msg:LaneActionEnum)
   :initform (cl:make-array 0 :element-type 'tbt_msgs-msg:LaneActionEnum :initial-element (cl:make-instance 'tbt_msgs-msg:LaneActionEnum)))
   (highlight_lane_list
    :reader highlight_lane_list
    :initarg :highlight_lane_list
    :type (cl:vector tbt_msgs-msg:HighLightLaneEnum)
   :initform (cl:make-array 0 :element-type 'tbt_msgs-msg:HighLightLaneEnum :initial-element (cl:make-instance 'tbt_msgs-msg:HighLightLaneEnum)))
   (origin_highlight_lane_list
    :reader origin_highlight_lane_list
    :initarg :origin_highlight_lane_list
    :type (cl:vector tbt_msgs-msg:LaneActionEnum)
   :initform (cl:make-array 0 :element-type 'tbt_msgs-msg:LaneActionEnum :initial-element (cl:make-instance 'tbt_msgs-msg:LaneActionEnum))))
)

(cl:defclass NextIntersection (<NextIntersection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NextIntersection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NextIntersection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<NextIntersection> is deprecated: use tbt_msgs-msg:NextIntersection instead.")))

(cl:ensure-generic-function 'number_of_lanes-val :lambda-list '(m))
(cl:defmethod number_of_lanes-val ((m <NextIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:number_of_lanes-val is deprecated.  Use tbt_msgs-msg:number_of_lanes instead.")
  (number_of_lanes m))

(cl:ensure-generic-function 'lane_guidance_list-val :lambda-list '(m))
(cl:defmethod lane_guidance_list-val ((m <NextIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:lane_guidance_list-val is deprecated.  Use tbt_msgs-msg:lane_guidance_list instead.")
  (lane_guidance_list m))

(cl:ensure-generic-function 'highlight_lane_list-val :lambda-list '(m))
(cl:defmethod highlight_lane_list-val ((m <NextIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:highlight_lane_list-val is deprecated.  Use tbt_msgs-msg:highlight_lane_list instead.")
  (highlight_lane_list m))

(cl:ensure-generic-function 'origin_highlight_lane_list-val :lambda-list '(m))
(cl:defmethod origin_highlight_lane_list-val ((m <NextIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:origin_highlight_lane_list-val is deprecated.  Use tbt_msgs-msg:origin_highlight_lane_list instead.")
  (origin_highlight_lane_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NextIntersection>) ostream)
  "Serializes a message object of type '<NextIntersection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_lanes)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_guidance_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_guidance_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'highlight_lane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'highlight_lane_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'origin_highlight_lane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'origin_highlight_lane_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NextIntersection>) istream)
  "Deserializes a message object of type '<NextIntersection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_lanes)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_guidance_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_guidance_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tbt_msgs-msg:LaneActionEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'highlight_lane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'highlight_lane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tbt_msgs-msg:HighLightLaneEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'origin_highlight_lane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'origin_highlight_lane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tbt_msgs-msg:LaneActionEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NextIntersection>)))
  "Returns string type for a message object of type '<NextIntersection>"
  "tbt_msgs/NextIntersection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NextIntersection)))
  "Returns string type for a message object of type 'NextIntersection"
  "tbt_msgs/NextIntersection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NextIntersection>)))
  "Returns md5sum for a message object of type '<NextIntersection>"
  "c95d39f1ec7f9b601f421cba98365cc5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NextIntersection)))
  "Returns md5sum for a message object of type 'NextIntersection"
  "c95d39f1ec7f9b601f421cba98365cc5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NextIntersection>)))
  "Returns full string definition for message of type '<NextIntersection>"
  (cl:format cl:nil "uint8 number_of_lanes~%tbt_msgs/LaneActionEnum[] lane_guidance_list~%tbt_msgs/HighLightLaneEnum[] highlight_lane_list~%tbt_msgs/LaneActionEnum[] origin_highlight_lane_list~%~%================================================================================~%MSG: tbt_msgs/LaneActionEnum~%uint8 LaneActionAhead = 0~%uint8 LaneActionLeft = 1~%uint8 LaneActionAheadLeft = 2~%uint8 LaneActionRight = 3~%uint8 LaneActionAheadRight = 4~%uint8 LaneActionLUTurn = 5~%uint8 LaneActionLeftRigh = 6~%uint8 LaneActionAheadLeftRight = 7~%uint8 LaneActionRUTurn = 8~%uint8 LaneActionAheadLUTurn = 9~%uint8 LaneActionAheadRUTurn = 10~%uint8 LaneActionLeftLUTurn = 11~%uint8 LaneActionRightRUTurn = 12~%uint8 LaneActionLeftInAhead = 13~%uint8 LaneActionLeftLUTurnLEx = 14~%uint8 LaneActionReserved = 15~%uint8 LaneActionAheadLeftLUTurn = 16~%uint8 LaneActionRightLUTurn = 17~%uint8 LaneActionLeftRightLUTurn = 18~%uint8 LaneActionAheadRightLUTurn = 19~%uint8 LaneActionLeftRUTurn = 20~%uint8 LaneActionBus = 21~%uint8 LaneActionEmpty = 22~%uint8 LaneActionVariable = 23~%uint8 LaneActionNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/HighLightLaneEnum~%uint8 Default = 0~%uint8 HighLight = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NextIntersection)))
  "Returns full string definition for message of type 'NextIntersection"
  (cl:format cl:nil "uint8 number_of_lanes~%tbt_msgs/LaneActionEnum[] lane_guidance_list~%tbt_msgs/HighLightLaneEnum[] highlight_lane_list~%tbt_msgs/LaneActionEnum[] origin_highlight_lane_list~%~%================================================================================~%MSG: tbt_msgs/LaneActionEnum~%uint8 LaneActionAhead = 0~%uint8 LaneActionLeft = 1~%uint8 LaneActionAheadLeft = 2~%uint8 LaneActionRight = 3~%uint8 LaneActionAheadRight = 4~%uint8 LaneActionLUTurn = 5~%uint8 LaneActionLeftRigh = 6~%uint8 LaneActionAheadLeftRight = 7~%uint8 LaneActionRUTurn = 8~%uint8 LaneActionAheadLUTurn = 9~%uint8 LaneActionAheadRUTurn = 10~%uint8 LaneActionLeftLUTurn = 11~%uint8 LaneActionRightRUTurn = 12~%uint8 LaneActionLeftInAhead = 13~%uint8 LaneActionLeftLUTurnLEx = 14~%uint8 LaneActionReserved = 15~%uint8 LaneActionAheadLeftLUTurn = 16~%uint8 LaneActionRightLUTurn = 17~%uint8 LaneActionLeftRightLUTurn = 18~%uint8 LaneActionAheadRightLUTurn = 19~%uint8 LaneActionLeftRUTurn = 20~%uint8 LaneActionBus = 21~%uint8 LaneActionEmpty = 22~%uint8 LaneActionVariable = 23~%uint8 LaneActionNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/HighLightLaneEnum~%uint8 Default = 0~%uint8 HighLight = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NextIntersection>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_guidance_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'highlight_lane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'origin_highlight_lane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NextIntersection>))
  "Converts a ROS message object to a list"
  (cl:list 'NextIntersection
    (cl:cons ':number_of_lanes (number_of_lanes msg))
    (cl:cons ':lane_guidance_list (lane_guidance_list msg))
    (cl:cons ':highlight_lane_list (highlight_lane_list msg))
    (cl:cons ':origin_highlight_lane_list (origin_highlight_lane_list msg))
))
