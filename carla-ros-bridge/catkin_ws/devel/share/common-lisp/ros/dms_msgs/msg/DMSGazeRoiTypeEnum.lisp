; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSGazeRoiTypeEnum.msg.html

(cl:defclass <DMSGazeRoiTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSGazeRoiTypeEnum (<DMSGazeRoiTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSGazeRoiTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSGazeRoiTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSGazeRoiTypeEnum> is deprecated: use dms_msgs-msg:DMSGazeRoiTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSGazeRoiTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSGazeRoiTypeEnum>)))
    "Constants for message type '<DMSGazeRoiTypeEnum>"
  '((:GAZE_CALCULATE_ROI . 2)
    (:HEADPOSE_CALCULATE_ROI . 4)
    (:RESERVED . 8)
    (:RESERVED1 . 16)
    (:RESERVED2 . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSGazeRoiTypeEnum)))
    "Constants for message type 'DMSGazeRoiTypeEnum"
  '((:GAZE_CALCULATE_ROI . 2)
    (:HEADPOSE_CALCULATE_ROI . 4)
    (:RESERVED . 8)
    (:RESERVED1 . 16)
    (:RESERVED2 . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSGazeRoiTypeEnum>) ostream)
  "Serializes a message object of type '<DMSGazeRoiTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSGazeRoiTypeEnum>) istream)
  "Deserializes a message object of type '<DMSGazeRoiTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSGazeRoiTypeEnum>)))
  "Returns string type for a message object of type '<DMSGazeRoiTypeEnum>"
  "dms_msgs/DMSGazeRoiTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSGazeRoiTypeEnum)))
  "Returns string type for a message object of type 'DMSGazeRoiTypeEnum"
  "dms_msgs/DMSGazeRoiTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSGazeRoiTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSGazeRoiTypeEnum>"
  "285cb8d68aed9c81845b019554cf3582")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSGazeRoiTypeEnum)))
  "Returns md5sum for a message object of type 'DMSGazeRoiTypeEnum"
  "285cb8d68aed9c81845b019554cf3582")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSGazeRoiTypeEnum>)))
  "Returns full string definition for message of type '<DMSGazeRoiTypeEnum>"
  (cl:format cl:nil "uint16 GAZE_CALCULATE_ROI = 2~%uint16 HEADPOSE_CALCULATE_ROI = 4~%uint16 RESERVED = 8~%uint16 RESERVED1 = 16~%uint16 RESERVED2 = 32~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSGazeRoiTypeEnum)))
  "Returns full string definition for message of type 'DMSGazeRoiTypeEnum"
  (cl:format cl:nil "uint16 GAZE_CALCULATE_ROI = 2~%uint16 HEADPOSE_CALCULATE_ROI = 4~%uint16 RESERVED = 8~%uint16 RESERVED1 = 16~%uint16 RESERVED2 = 32~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSGazeRoiTypeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSGazeRoiTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSGazeRoiTypeEnum
    (cl:cons ':value (value msg))
))
