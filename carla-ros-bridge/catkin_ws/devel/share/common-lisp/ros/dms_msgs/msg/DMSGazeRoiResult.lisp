; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSGazeRoiResult.msg.html

(cl:defclass <DMSGazeRoiResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (gaze_roi_zone
    :reader gaze_roi_zone
    :initarg :gaze_roi_zone
    :type dms_msgs-msg:DMSGazeRoiZonesTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSGazeRoiZonesTypeEnum))
   (gaze_roi_time
    :reader gaze_roi_time
    :initarg :gaze_roi_time
    :type cl:float
    :initform 0.0)
   (eyes_on_road_type
    :reader eyes_on_road_type
    :initarg :eyes_on_road_type
    :type dms_msgs-msg:DMSEyesOnRoadTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSEyesOnRoadTypeEnum))
   (roi_type
    :reader roi_type
    :initarg :roi_type
    :type dms_msgs-msg:DMSGazeRoiTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSGazeRoiTypeEnum))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:float
    :initform 0.0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:float
    :initform 0.0))
)

(cl:defclass DMSGazeRoiResult (<DMSGazeRoiResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSGazeRoiResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSGazeRoiResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSGazeRoiResult> is deprecated: use dms_msgs-msg:DMSGazeRoiResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSGazeRoiResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'gaze_roi_zone-val :lambda-list '(m))
(cl:defmethod gaze_roi_zone-val ((m <DMSGazeRoiResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_roi_zone-val is deprecated.  Use dms_msgs-msg:gaze_roi_zone instead.")
  (gaze_roi_zone m))

(cl:ensure-generic-function 'gaze_roi_time-val :lambda-list '(m))
(cl:defmethod gaze_roi_time-val ((m <DMSGazeRoiResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:gaze_roi_time-val is deprecated.  Use dms_msgs-msg:gaze_roi_time instead.")
  (gaze_roi_time m))

(cl:ensure-generic-function 'eyes_on_road_type-val :lambda-list '(m))
(cl:defmethod eyes_on_road_type-val ((m <DMSGazeRoiResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:eyes_on_road_type-val is deprecated.  Use dms_msgs-msg:eyes_on_road_type instead.")
  (eyes_on_road_type m))

(cl:ensure-generic-function 'roi_type-val :lambda-list '(m))
(cl:defmethod roi_type-val ((m <DMSGazeRoiResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:roi_type-val is deprecated.  Use dms_msgs-msg:roi_type instead.")
  (roi_type m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSGazeRoiResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <DMSGazeRoiResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved1-val is deprecated.  Use dms_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSGazeRoiResult>)))
    "Constants for message type '<DMSGazeRoiResult>"
  '((:GAZE_ROI_ZONE_AVAILABLE . 1)
    (:GAZE_ROI_TIME_AVAILABLE . 2)
    (:EYES_ON_ROAD_TYPE_AVAILABLE . 4)
    (:ROI_TYPE_AVAILABLE . 8)
    (:RESERVED . 16)
    (:RESERVED1 . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSGazeRoiResult)))
    "Constants for message type 'DMSGazeRoiResult"
  '((:GAZE_ROI_ZONE_AVAILABLE . 1)
    (:GAZE_ROI_TIME_AVAILABLE . 2)
    (:EYES_ON_ROAD_TYPE_AVAILABLE . 4)
    (:ROI_TYPE_AVAILABLE . 8)
    (:RESERVED . 16)
    (:RESERVED1 . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSGazeRoiResult>) ostream)
  "Serializes a message object of type '<DMSGazeRoiResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_roi_zone) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gaze_roi_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eyes_on_road_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSGazeRoiResult>) istream)
  "Deserializes a message object of type '<DMSGazeRoiResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_roi_zone) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gaze_roi_time) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eyes_on_road_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved1) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSGazeRoiResult>)))
  "Returns string type for a message object of type '<DMSGazeRoiResult>"
  "dms_msgs/DMSGazeRoiResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSGazeRoiResult)))
  "Returns string type for a message object of type 'DMSGazeRoiResult"
  "dms_msgs/DMSGazeRoiResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSGazeRoiResult>)))
  "Returns md5sum for a message object of type '<DMSGazeRoiResult>"
  "8f463101a07001f5faac55cbf4856ddc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSGazeRoiResult)))
  "Returns md5sum for a message object of type 'DMSGazeRoiResult"
  "8f463101a07001f5faac55cbf4856ddc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSGazeRoiResult>)))
  "Returns full string definition for message of type '<DMSGazeRoiResult>"
  (cl:format cl:nil "uint8 GAZE_ROI_ZONE_AVAILABLE = 1~%uint8 GAZE_ROI_TIME_AVAILABLE = 2~%uint8 EYES_ON_ROAD_TYPE_AVAILABLE = 4~%uint8 ROI_TYPE_AVAILABLE = 8~%uint8 RESERVED = 16~%uint8 RESERVED1 = 32~%uint8 available~%dms_msgs/DMSGazeRoiZonesTypeEnum gaze_roi_zone~%float32 gaze_roi_time~%dms_msgs/DMSEyesOnRoadTypeEnum eyes_on_road_type~%dms_msgs/DMSGazeRoiTypeEnum roi_type~%float32 reserved~%float32 reserved1~%~%================================================================================~%MSG: dms_msgs/DMSGazeRoiZonesTypeEnum~%uint32 WINDSHIELDDRIVER = 1~%uint32 REARVIEWMIRROR = 2~%uint32 WINDSHIELDPASSENGER = 3~%uint32 RESERVED = 4~%uint32 DIM = 5~%uint32 IHU = 6~%uint32 WINDOWDRIVER = 7~%uint32 REARMIRRORLEFT = 8~%uint32 DOORDRIVER = 9~%uint32 WINDOWPASSENGER = 10~%uint32 REARMIRRORRIGHT = 11~%uint32 DOORDPASSENGER = 12~%uint32 FLOORDRIVER = 13~%uint32 FLOORPASSENGER = 14~%uint32 OTHER = 15~%uint32 RESERVED1 = 16~%uint32 RESERVED2 = 17~%uint32 RESERVED3 = 18~%uint32 STEERWHEELLE = 19~%uint32 STEERWHEELRI = 20~%uint32 RESERVED4 = 21~%uint32 RESERVED5 = 22~%uint32 RESERVED6 = 23~%uint32 RESERVED7 = 24~%uint32 RESERVED8 = 25~%uint32 value~%~%================================================================================~%MSG: dms_msgs/DMSEyesOnRoadTypeEnum~%uint8 EYES_OFF_ROAD = 0~%uint8 EYES_ON_ROAD = 1~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSGazeRoiTypeEnum~%uint16 GAZE_CALCULATE_ROI = 2~%uint16 HEADPOSE_CALCULATE_ROI = 4~%uint16 RESERVED = 8~%uint16 RESERVED1 = 16~%uint16 RESERVED2 = 32~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSGazeRoiResult)))
  "Returns full string definition for message of type 'DMSGazeRoiResult"
  (cl:format cl:nil "uint8 GAZE_ROI_ZONE_AVAILABLE = 1~%uint8 GAZE_ROI_TIME_AVAILABLE = 2~%uint8 EYES_ON_ROAD_TYPE_AVAILABLE = 4~%uint8 ROI_TYPE_AVAILABLE = 8~%uint8 RESERVED = 16~%uint8 RESERVED1 = 32~%uint8 available~%dms_msgs/DMSGazeRoiZonesTypeEnum gaze_roi_zone~%float32 gaze_roi_time~%dms_msgs/DMSEyesOnRoadTypeEnum eyes_on_road_type~%dms_msgs/DMSGazeRoiTypeEnum roi_type~%float32 reserved~%float32 reserved1~%~%================================================================================~%MSG: dms_msgs/DMSGazeRoiZonesTypeEnum~%uint32 WINDSHIELDDRIVER = 1~%uint32 REARVIEWMIRROR = 2~%uint32 WINDSHIELDPASSENGER = 3~%uint32 RESERVED = 4~%uint32 DIM = 5~%uint32 IHU = 6~%uint32 WINDOWDRIVER = 7~%uint32 REARMIRRORLEFT = 8~%uint32 DOORDRIVER = 9~%uint32 WINDOWPASSENGER = 10~%uint32 REARMIRRORRIGHT = 11~%uint32 DOORDPASSENGER = 12~%uint32 FLOORDRIVER = 13~%uint32 FLOORPASSENGER = 14~%uint32 OTHER = 15~%uint32 RESERVED1 = 16~%uint32 RESERVED2 = 17~%uint32 RESERVED3 = 18~%uint32 STEERWHEELLE = 19~%uint32 STEERWHEELRI = 20~%uint32 RESERVED4 = 21~%uint32 RESERVED5 = 22~%uint32 RESERVED6 = 23~%uint32 RESERVED7 = 24~%uint32 RESERVED8 = 25~%uint32 value~%~%================================================================================~%MSG: dms_msgs/DMSEyesOnRoadTypeEnum~%uint8 EYES_OFF_ROAD = 0~%uint8 EYES_ON_ROAD = 1~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSGazeRoiTypeEnum~%uint16 GAZE_CALCULATE_ROI = 2~%uint16 HEADPOSE_CALCULATE_ROI = 4~%uint16 RESERVED = 8~%uint16 RESERVED1 = 16~%uint16 RESERVED2 = 32~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSGazeRoiResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_roi_zone))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eyes_on_road_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi_type))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSGazeRoiResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSGazeRoiResult
    (cl:cons ':available (available msg))
    (cl:cons ':gaze_roi_zone (gaze_roi_zone msg))
    (cl:cons ':gaze_roi_time (gaze_roi_time msg))
    (cl:cons ':eyes_on_road_type (eyes_on_road_type msg))
    (cl:cons ':roi_type (roi_type msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
