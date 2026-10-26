; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDArrowMarking.msg.html

(cl:defclass <SDArrowMarking> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SDArrowMarking (<SDArrowMarking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDArrowMarking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDArrowMarking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDArrowMarking> is deprecated: use lane_navi_info_msgs-msg:SDArrowMarking instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SDArrowMarking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SDArrowMarking>)))
    "Constants for message type '<SDArrowMarking>"
  '((:ARROWMARKING_STRAIGHT . 0)
    (:ARROWMARKING_LEFT . 1)
    (:ARROWMARKING_STRAIGHT_LEFT . 2)
    (:ARROWMARKING_RIGHT . 3)
    (:ARROWMARKING_STRAIGHT_RIGHT . 4)
    (:ARROWMARKING_LEFT_UTURN . 5)
    (:ARROWMARKING_LEFT_RIGHT . 6)
    (:ARROWMARKING_LEFT_RIGHT_STRAIGHT . 7)
    (:ARROWMARKING_RIGHT_UTURN . 8)
    (:ARROWMARKING_STRAIGHT_LEFT_UTURN . 9)
    (:ARROWMARKING_STRAIGHT_RIGHT_UTURN . 10)
    (:ARROWMARKING_LEFT_LEFT_UTURN . 11)
    (:ARROWMARKING_RIGHT_RIGHT_UTURN . 12)
    (:ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN . 16)
    (:ARROWMARKING_RIGHT_LEFT_UTURN . 17)
    (:ARROWMARKING_LEFT_RIGHT_LEFT_UTURN . 18)
    (:ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN . 19)
    (:ARROWMARKING_LEFT_RIGHT_UTURN . 20)
    (:ARROWMARKING_UNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SDArrowMarking)))
    "Constants for message type 'SDArrowMarking"
  '((:ARROWMARKING_STRAIGHT . 0)
    (:ARROWMARKING_LEFT . 1)
    (:ARROWMARKING_STRAIGHT_LEFT . 2)
    (:ARROWMARKING_RIGHT . 3)
    (:ARROWMARKING_STRAIGHT_RIGHT . 4)
    (:ARROWMARKING_LEFT_UTURN . 5)
    (:ARROWMARKING_LEFT_RIGHT . 6)
    (:ARROWMARKING_LEFT_RIGHT_STRAIGHT . 7)
    (:ARROWMARKING_RIGHT_UTURN . 8)
    (:ARROWMARKING_STRAIGHT_LEFT_UTURN . 9)
    (:ARROWMARKING_STRAIGHT_RIGHT_UTURN . 10)
    (:ARROWMARKING_LEFT_LEFT_UTURN . 11)
    (:ARROWMARKING_RIGHT_RIGHT_UTURN . 12)
    (:ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN . 16)
    (:ARROWMARKING_RIGHT_LEFT_UTURN . 17)
    (:ARROWMARKING_LEFT_RIGHT_LEFT_UTURN . 18)
    (:ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN . 19)
    (:ARROWMARKING_LEFT_RIGHT_UTURN . 20)
    (:ARROWMARKING_UNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDArrowMarking>) ostream)
  "Serializes a message object of type '<SDArrowMarking>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDArrowMarking>) istream)
  "Deserializes a message object of type '<SDArrowMarking>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDArrowMarking>)))
  "Returns string type for a message object of type '<SDArrowMarking>"
  "lane_navi_info_msgs/SDArrowMarking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDArrowMarking)))
  "Returns string type for a message object of type 'SDArrowMarking"
  "lane_navi_info_msgs/SDArrowMarking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDArrowMarking>)))
  "Returns md5sum for a message object of type '<SDArrowMarking>"
  "a7bef5b294ac8fa89d7cc71649e01451")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDArrowMarking)))
  "Returns md5sum for a message object of type 'SDArrowMarking"
  "a7bef5b294ac8fa89d7cc71649e01451")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDArrowMarking>)))
  "Returns full string definition for message of type '<SDArrowMarking>"
  (cl:format cl:nil "uint8 ARROWMARKING_STRAIGHT = 0~%uint8 ARROWMARKING_LEFT = 1~%uint8 ARROWMARKING_STRAIGHT_LEFT = 2~%uint8 ARROWMARKING_RIGHT = 3~%uint8 ARROWMARKING_STRAIGHT_RIGHT = 4~%uint8 ARROWMARKING_LEFT_UTURN = 5~%uint8 ARROWMARKING_LEFT_RIGHT = 6~%uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7~%uint8 ARROWMARKING_RIGHT_UTURN = 8~%uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9~%uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10~%uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11~%uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12~%uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16~%uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17~%uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18~%uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19~%uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20~%uint8 ARROWMARKING_UNKNOWN = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDArrowMarking)))
  "Returns full string definition for message of type 'SDArrowMarking"
  (cl:format cl:nil "uint8 ARROWMARKING_STRAIGHT = 0~%uint8 ARROWMARKING_LEFT = 1~%uint8 ARROWMARKING_STRAIGHT_LEFT = 2~%uint8 ARROWMARKING_RIGHT = 3~%uint8 ARROWMARKING_STRAIGHT_RIGHT = 4~%uint8 ARROWMARKING_LEFT_UTURN = 5~%uint8 ARROWMARKING_LEFT_RIGHT = 6~%uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7~%uint8 ARROWMARKING_RIGHT_UTURN = 8~%uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9~%uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10~%uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11~%uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12~%uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16~%uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17~%uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18~%uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19~%uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20~%uint8 ARROWMARKING_UNKNOWN = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDArrowMarking>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDArrowMarking>))
  "Converts a ROS message object to a list"
  (cl:list 'SDArrowMarking
    (cl:cons ':value (value msg))
))
