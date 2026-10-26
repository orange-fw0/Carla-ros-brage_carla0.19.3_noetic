; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlot.msg.html

(cl:defclass <ParkingSlot> (roslisp-msg-protocol:ros-message)
  ((camera_source
    :reader camera_source
    :initarg :camera_source
    :type perception_interface_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type perception_interface_msgs-msg:CameraModelEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraModelEnum))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (corner_points
    :reader corner_points
    :initarg :corner_points
    :type (cl:vector perception_interface_msgs-msg:ParkingSlotPoint)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:ParkingSlotPoint :initial-element (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPoint)))
   (center_point
    :reader center_point
    :initarg :center_point
    :type perception_interface_msgs-msg:ParkingSlotCenterPoint
    :initform (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotCenterPoint))
   (wheel_stop_points
    :reader wheel_stop_points
    :initarg :wheel_stop_points
    :type (cl:vector perception_interface_msgs-msg:Point2f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point2f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point2f)))
   (points_3d
    :reader points_3d
    :initarg :points_3d
    :type (cl:vector perception_interface_msgs-msg:ParkingSlotPoint3d)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:ParkingSlotPoint3d :initial-element (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPoint3d))))
)

(cl:defclass ParkingSlot (<ParkingSlot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlot> is deprecated: use perception_interface_msgs-msg:ParkingSlot instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <ParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <ParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'corner_points-val :lambda-list '(m))
(cl:defmethod corner_points-val ((m <ParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:corner_points-val is deprecated.  Use perception_interface_msgs-msg:corner_points instead.")
  (corner_points m))

(cl:ensure-generic-function 'center_point-val :lambda-list '(m))
(cl:defmethod center_point-val ((m <ParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:center_point-val is deprecated.  Use perception_interface_msgs-msg:center_point instead.")
  (center_point m))

(cl:ensure-generic-function 'wheel_stop_points-val :lambda-list '(m))
(cl:defmethod wheel_stop_points-val ((m <ParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:wheel_stop_points-val is deprecated.  Use perception_interface_msgs-msg:wheel_stop_points instead.")
  (wheel_stop_points m))

(cl:ensure-generic-function 'points_3d-val :lambda-list '(m))
(cl:defmethod points_3d-val ((m <ParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_3d-val is deprecated.  Use perception_interface_msgs-msg:points_3d instead.")
  (points_3d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlot>) ostream)
  "Serializes a message object of type '<ParkingSlot>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corner_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corner_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_point) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_stop_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wheel_stop_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_3d))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlot>) istream)
  "Deserializes a message object of type '<ParkingSlot>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corner_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corner_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_point) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_stop_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_stop_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPoint3d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlot>)))
  "Returns string type for a message object of type '<ParkingSlot>"
  "perception_interface_msgs/ParkingSlot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlot)))
  "Returns string type for a message object of type 'ParkingSlot"
  "perception_interface_msgs/ParkingSlot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlot>)))
  "Returns md5sum for a message object of type '<ParkingSlot>"
  "87e3c03b0fdca005d86220b8f6fc1a73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlot)))
  "Returns md5sum for a message object of type 'ParkingSlot"
  "87e3c03b0fdca005d86220b8f6fc1a73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlot>)))
  "Returns full string definition for message of type '<ParkingSlot>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint8 available~%perception_interface_msgs/ParkingSlotPoint[] corner_points~%perception_interface_msgs/ParkingSlotCenterPoint center_point~%perception_interface_msgs/Point2f[] wheel_stop_points~%perception_interface_msgs/ParkingSlotPoint3d[] points_3d~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPoint~%perception_interface_msgs/Point2f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotCenterPoint~%perception_interface_msgs/Point2f position~%perception_interface_msgs/ParkingSlotTypeEnum available_type~%float32 confidence~%float32 center_line_angle~%perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type~%perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type~%float32 special_confidence~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotTypeEnum~%uint8 PARKING_SLOT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_TYPE_OCCUPIED = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum~%uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum~%uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1~%uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2~%uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3~%uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPoint3d~%perception_interface_msgs/Point3f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlot)))
  "Returns full string definition for message of type 'ParkingSlot"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint8 available~%perception_interface_msgs/ParkingSlotPoint[] corner_points~%perception_interface_msgs/ParkingSlotCenterPoint center_point~%perception_interface_msgs/Point2f[] wheel_stop_points~%perception_interface_msgs/ParkingSlotPoint3d[] points_3d~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPoint~%perception_interface_msgs/Point2f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotCenterPoint~%perception_interface_msgs/Point2f position~%perception_interface_msgs/ParkingSlotTypeEnum available_type~%float32 confidence~%float32 center_line_angle~%perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type~%perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type~%float32 special_confidence~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotTypeEnum~%uint8 PARKING_SLOT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_TYPE_OCCUPIED = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum~%uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum~%uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1~%uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2~%uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3~%uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPoint3d~%perception_interface_msgs/Point3f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlot>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corner_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_stop_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlot>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlot
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':available (available msg))
    (cl:cons ':corner_points (corner_points msg))
    (cl:cons ':center_point (center_point msg))
    (cl:cons ':wheel_stop_points (wheel_stop_points msg))
    (cl:cons ':points_3d (points_3d msg))
))
