; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude MapContentToUpdate.msg.html

(cl:defclass <MapContentToUpdate> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (address
    :reader address
    :initarg :address
    :type cl:string
    :initform "")
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (parking_space_id
    :reader parking_space_id
    :initarg :parking_space_id
    :type cl:string
    :initform "")
   (parking_type
    :reader parking_type
    :initarg :parking_type
    :type cl:string
    :initform "")
   (reversed
    :reader reversed
    :initarg :reversed
    :type cl:string
    :initform ""))
)

(cl:defclass MapContentToUpdate (<MapContentToUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapContentToUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapContentToUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<MapContentToUpdate> is deprecated: use system_manager_msgs-msg:MapContentToUpdate instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MapContentToUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:name-val is deprecated.  Use system_manager_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <MapContentToUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:address-val is deprecated.  Use system_manager_msgs-msg:address instead.")
  (address m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <MapContentToUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:label-val is deprecated.  Use system_manager_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'parking_space_id-val :lambda-list '(m))
(cl:defmethod parking_space_id-val ((m <MapContentToUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_space_id-val is deprecated.  Use system_manager_msgs-msg:parking_space_id instead.")
  (parking_space_id m))

(cl:ensure-generic-function 'parking_type-val :lambda-list '(m))
(cl:defmethod parking_type-val ((m <MapContentToUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_type-val is deprecated.  Use system_manager_msgs-msg:parking_type instead.")
  (parking_type m))

(cl:ensure-generic-function 'reversed-val :lambda-list '(m))
(cl:defmethod reversed-val ((m <MapContentToUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:reversed-val is deprecated.  Use system_manager_msgs-msg:reversed instead.")
  (reversed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapContentToUpdate>) ostream)
  "Serializes a message object of type '<MapContentToUpdate>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parking_space_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parking_space_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parking_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parking_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reversed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reversed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapContentToUpdate>) istream)
  "Deserializes a message object of type '<MapContentToUpdate>"
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
      (cl:setf (cl:slot-value msg 'address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_space_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parking_space_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parking_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reversed) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reversed) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapContentToUpdate>)))
  "Returns string type for a message object of type '<MapContentToUpdate>"
  "system_manager_msgs/MapContentToUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapContentToUpdate)))
  "Returns string type for a message object of type 'MapContentToUpdate"
  "system_manager_msgs/MapContentToUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapContentToUpdate>)))
  "Returns md5sum for a message object of type '<MapContentToUpdate>"
  "26c458f5254c5a7fd41d59d98ab7c53d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapContentToUpdate)))
  "Returns md5sum for a message object of type 'MapContentToUpdate"
  "26c458f5254c5a7fd41d59d98ab7c53d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapContentToUpdate>)))
  "Returns full string definition for message of type '<MapContentToUpdate>"
  (cl:format cl:nil "string name~%string address~%string label~%string parking_space_id~%string parking_type~%string reversed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapContentToUpdate)))
  "Returns full string definition for message of type 'MapContentToUpdate"
  (cl:format cl:nil "string name~%string address~%string label~%string parking_space_id~%string parking_type~%string reversed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapContentToUpdate>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'address))
     4 (cl:length (cl:slot-value msg 'label))
     4 (cl:length (cl:slot-value msg 'parking_space_id))
     4 (cl:length (cl:slot-value msg 'parking_type))
     4 (cl:length (cl:slot-value msg 'reversed))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapContentToUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'MapContentToUpdate
    (cl:cons ':name (name msg))
    (cl:cons ':address (address msg))
    (cl:cons ':label (label msg))
    (cl:cons ':parking_space_id (parking_space_id msg))
    (cl:cons ':parking_type (parking_type msg))
    (cl:cons ':reversed (reversed msg))
))
