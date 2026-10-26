; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude EgoposeFrameMeta.msg.html

(cl:defclass <EgoposeFrameMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:integer
    :initform 0)
   (sync_camera_source
    :reader sync_camera_source
    :initarg :sync_camera_source
    :type landmark_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'landmark_msgs-msg:CameraSourceEnum))
   (sync_camera_model
    :reader sync_camera_model
    :initarg :sync_camera_model
    :type landmark_msgs-msg:CameraModelEnum
    :initform (cl:make-instance 'landmark_msgs-msg:CameraModelEnum)))
)

(cl:defclass EgoposeFrameMeta (<EgoposeFrameMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EgoposeFrameMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EgoposeFrameMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<EgoposeFrameMeta> is deprecated: use landmark_msgs-msg:EgoposeFrameMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <EgoposeFrameMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:timestamp_us-val is deprecated.  Use landmark_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <EgoposeFrameMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:sequence-val is deprecated.  Use landmark_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'sync_camera_source-val :lambda-list '(m))
(cl:defmethod sync_camera_source-val ((m <EgoposeFrameMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:sync_camera_source-val is deprecated.  Use landmark_msgs-msg:sync_camera_source instead.")
  (sync_camera_source m))

(cl:ensure-generic-function 'sync_camera_model-val :lambda-list '(m))
(cl:defmethod sync_camera_model-val ((m <EgoposeFrameMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:sync_camera_model-val is deprecated.  Use landmark_msgs-msg:sync_camera_model instead.")
  (sync_camera_model m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EgoposeFrameMeta>) ostream)
  "Serializes a message object of type '<EgoposeFrameMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sequence)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sync_camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sync_camera_model) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EgoposeFrameMeta>) istream)
  "Deserializes a message object of type '<EgoposeFrameMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sync_camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sync_camera_model) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EgoposeFrameMeta>)))
  "Returns string type for a message object of type '<EgoposeFrameMeta>"
  "landmark_msgs/EgoposeFrameMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EgoposeFrameMeta)))
  "Returns string type for a message object of type 'EgoposeFrameMeta"
  "landmark_msgs/EgoposeFrameMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EgoposeFrameMeta>)))
  "Returns md5sum for a message object of type '<EgoposeFrameMeta>"
  "998b78f70bfce54b64a6b4f0cabaef9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EgoposeFrameMeta)))
  "Returns md5sum for a message object of type 'EgoposeFrameMeta"
  "998b78f70bfce54b64a6b4f0cabaef9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EgoposeFrameMeta>)))
  "Returns full string definition for message of type '<EgoposeFrameMeta>"
  (cl:format cl:nil "uint64 timestamp_us~%uint64 sequence~%landmark_msgs/CameraSourceEnum sync_camera_source~%landmark_msgs/CameraModelEnum sync_camera_model~%~%================================================================================~%MSG: landmark_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EgoposeFrameMeta)))
  "Returns full string definition for message of type 'EgoposeFrameMeta"
  (cl:format cl:nil "uint64 timestamp_us~%uint64 sequence~%landmark_msgs/CameraSourceEnum sync_camera_source~%landmark_msgs/CameraModelEnum sync_camera_model~%~%================================================================================~%MSG: landmark_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EgoposeFrameMeta>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sync_camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sync_camera_model))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EgoposeFrameMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'EgoposeFrameMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':sync_camera_source (sync_camera_source msg))
    (cl:cons ':sync_camera_model (sync_camera_model msg))
))
