; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude HDMapMeta.msg.html

(cl:defclass <HDMapMeta> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:HDMapType
    :initform (cl:make-instance 'landmark_msgs-msg:HDMapType))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass HDMapMeta (<HDMapMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<HDMapMeta> is deprecated: use landmark_msgs-msg:HDMapMeta instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <HDMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:source-val is deprecated.  Use landmark_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <HDMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HDMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:id-val is deprecated.  Use landmark_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HDMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:name-val is deprecated.  Use landmark_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <HDMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:version-val is deprecated.  Use landmark_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <HDMapMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved-val is deprecated.  Use landmark_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HDMapMeta>)))
    "Constants for message type '<HDMapMeta>"
  '((:UNKNOWN . 0)
    (:MDM . 1)
    (:ANDM . 2)
    (:OTHER . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HDMapMeta)))
    "Constants for message type 'HDMapMeta"
  '((:UNKNOWN . 0)
    (:MDM . 1)
    (:ANDM . 2)
    (:OTHER . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapMeta>) ostream)
  "Serializes a message object of type '<HDMapMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapMeta>) istream)
  "Deserializes a message object of type '<HDMapMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapMeta>)))
  "Returns string type for a message object of type '<HDMapMeta>"
  "landmark_msgs/HDMapMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapMeta)))
  "Returns string type for a message object of type 'HDMapMeta"
  "landmark_msgs/HDMapMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapMeta>)))
  "Returns md5sum for a message object of type '<HDMapMeta>"
  "2b859f94ffb7960cacdd6bb91f5d08b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapMeta)))
  "Returns md5sum for a message object of type 'HDMapMeta"
  "2b859f94ffb7960cacdd6bb91f5d08b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapMeta>)))
  "Returns full string definition for message of type '<HDMapMeta>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 MDM = 1~%uint8 ANDM = 2~%uint8 OTHER = 3~%uint8 source~%landmark_msgs/HDMapType type~%uint32 id~%string name~%string version~%string reserved~%~%================================================================================~%MSG: landmark_msgs/HDMapType~%uint8 NORMAL = 0~%uint8 LPNP = 1~%uint8 PNP = 2~%uint8 OTHER = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapMeta)))
  "Returns full string definition for message of type 'HDMapMeta"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 MDM = 1~%uint8 ANDM = 2~%uint8 OTHER = 3~%uint8 source~%landmark_msgs/HDMapType type~%uint32 id~%string name~%string version~%string reserved~%~%================================================================================~%MSG: landmark_msgs/HDMapType~%uint8 NORMAL = 0~%uint8 LPNP = 1~%uint8 PNP = 2~%uint8 OTHER = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapMeta>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'version))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapMeta
    (cl:cons ':source (source msg))
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':version (version msg))
    (cl:cons ':reserved (reserved msg))
))
