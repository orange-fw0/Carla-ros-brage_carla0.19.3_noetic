; Auto-generated. Do not edit!


(cl:in-package shadow_mode_msgs-msg)


;//! \htmlinclude ShadowTriggerMessage.msg.html

(cl:defclass <ShadowTriggerMessage> (roslisp-msg-protocol:ros-message)
  ((collect_type
    :reader collect_type
    :initarg :collect_type
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (cool_down_limit
    :reader cool_down_limit
    :initarg :cool_down_limit
    :type cl:float
    :initform 0.0)
   (detail_config
    :reader detail_config
    :initarg :detail_config
    :type shadow_mode_msgs-msg:DetailConfig
    :initform (cl:make-instance 'shadow_mode_msgs-msg:DetailConfig))
   (sticky
    :reader sticky
    :initarg :sticky
    :type cl:boolean
    :initform cl:nil)
   (uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform "")
   (response_status
    :reader response_status
    :initarg :response_status
    :type cl:string
    :initform "")
   (response_reason
    :reader response_reason
    :initarg :response_reason
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:integer
    :initform 0)
   (trigger_type
    :reader trigger_type
    :initarg :trigger_type
    :type shadow_mode_msgs-msg:TriggerParam
    :initform (cl:make-instance 'shadow_mode_msgs-msg:TriggerParam))
   (before
    :reader before
    :initarg :before
    :type cl:fixnum
    :initform 0)
   (after
    :reader after
    :initarg :after
    :type cl:fixnum
    :initform 0)
   (trust_param
    :reader trust_param
    :initarg :trust_param
    :type shadow_mode_msgs-msg:TrustParam
    :initform (cl:make-instance 'shadow_mode_msgs-msg:TrustParam))
   (topics
    :reader topics
    :initarg :topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (stamps
    :reader stamps
    :initarg :stamps
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (tags
    :reader tags
    :initarg :tags
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil)
   (disable_dis
    :reader disable_dis
    :initarg :disable_dis
    :type cl:boolean
    :initform cl:nil)
   (action_type
    :reader action_type
    :initarg :action_type
    :type shadow_mode_msgs-msg:ActionType
    :initform (cl:make-instance 'shadow_mode_msgs-msg:ActionType)))
)

(cl:defclass ShadowTriggerMessage (<ShadowTriggerMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShadowTriggerMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShadowTriggerMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shadow_mode_msgs-msg:<ShadowTriggerMessage> is deprecated: use shadow_mode_msgs-msg:ShadowTriggerMessage instead.")))

(cl:ensure-generic-function 'collect_type-val :lambda-list '(m))
(cl:defmethod collect_type-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:collect_type-val is deprecated.  Use shadow_mode_msgs-msg:collect_type instead.")
  (collect_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:name-val is deprecated.  Use shadow_mode_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'cool_down_limit-val :lambda-list '(m))
(cl:defmethod cool_down_limit-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:cool_down_limit-val is deprecated.  Use shadow_mode_msgs-msg:cool_down_limit instead.")
  (cool_down_limit m))

(cl:ensure-generic-function 'detail_config-val :lambda-list '(m))
(cl:defmethod detail_config-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:detail_config-val is deprecated.  Use shadow_mode_msgs-msg:detail_config instead.")
  (detail_config m))

(cl:ensure-generic-function 'sticky-val :lambda-list '(m))
(cl:defmethod sticky-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:sticky-val is deprecated.  Use shadow_mode_msgs-msg:sticky instead.")
  (sticky m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:uuid-val is deprecated.  Use shadow_mode_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'response_status-val :lambda-list '(m))
(cl:defmethod response_status-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:response_status-val is deprecated.  Use shadow_mode_msgs-msg:response_status instead.")
  (response_status m))

(cl:ensure-generic-function 'response_reason-val :lambda-list '(m))
(cl:defmethod response_reason-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:response_reason-val is deprecated.  Use shadow_mode_msgs-msg:response_reason instead.")
  (response_reason m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:stamp-val is deprecated.  Use shadow_mode_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'trigger_type-val :lambda-list '(m))
(cl:defmethod trigger_type-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:trigger_type-val is deprecated.  Use shadow_mode_msgs-msg:trigger_type instead.")
  (trigger_type m))

(cl:ensure-generic-function 'before-val :lambda-list '(m))
(cl:defmethod before-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:before-val is deprecated.  Use shadow_mode_msgs-msg:before instead.")
  (before m))

(cl:ensure-generic-function 'after-val :lambda-list '(m))
(cl:defmethod after-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:after-val is deprecated.  Use shadow_mode_msgs-msg:after instead.")
  (after m))

(cl:ensure-generic-function 'trust_param-val :lambda-list '(m))
(cl:defmethod trust_param-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:trust_param-val is deprecated.  Use shadow_mode_msgs-msg:trust_param instead.")
  (trust_param m))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:topics-val is deprecated.  Use shadow_mode_msgs-msg:topics instead.")
  (topics m))

(cl:ensure-generic-function 'stamps-val :lambda-list '(m))
(cl:defmethod stamps-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:stamps-val is deprecated.  Use shadow_mode_msgs-msg:stamps instead.")
  (stamps m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:tags-val is deprecated.  Use shadow_mode_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:start-val is deprecated.  Use shadow_mode_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'disable_dis-val :lambda-list '(m))
(cl:defmethod disable_dis-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:disable_dis-val is deprecated.  Use shadow_mode_msgs-msg:disable_dis instead.")
  (disable_dis m))

(cl:ensure-generic-function 'action_type-val :lambda-list '(m))
(cl:defmethod action_type-val ((m <ShadowTriggerMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:action_type-val is deprecated.  Use shadow_mode_msgs-msg:action_type instead.")
  (action_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShadowTriggerMessage>) ostream)
  "Serializes a message object of type '<ShadowTriggerMessage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collect_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collect_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cool_down_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detail_config) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sticky) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_reason))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trigger_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'before)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'after)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trust_param) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'topics))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stamps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'stamps))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'tags))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_dis) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShadowTriggerMessage>) istream)
  "Deserializes a message object of type '<ShadowTriggerMessage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collect_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collect_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cool_down_limit) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detail_config) istream)
    (cl:setf (cl:slot-value msg 'sticky) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response_reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trigger_type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'before)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'after)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trust_param) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stamps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stamps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'disable_dis) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShadowTriggerMessage>)))
  "Returns string type for a message object of type '<ShadowTriggerMessage>"
  "shadow_mode_msgs/ShadowTriggerMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowTriggerMessage)))
  "Returns string type for a message object of type 'ShadowTriggerMessage"
  "shadow_mode_msgs/ShadowTriggerMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShadowTriggerMessage>)))
  "Returns md5sum for a message object of type '<ShadowTriggerMessage>"
  "30a5a3c8b246fad4e67dfeacf9aabd01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShadowTriggerMessage)))
  "Returns md5sum for a message object of type 'ShadowTriggerMessage"
  "30a5a3c8b246fad4e67dfeacf9aabd01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShadowTriggerMessage>)))
  "Returns full string definition for message of type '<ShadowTriggerMessage>"
  (cl:format cl:nil "string collect_type~%string name~%float32 cool_down_limit~%shadow_mode_msgs/DetailConfig detail_config~%bool sticky~%string uuid~%string response_status~%string response_reason~%uint64 stamp~%shadow_mode_msgs/TriggerParam trigger_type~%uint8 before~%uint8 after~%shadow_mode_msgs/TrustParam trust_param~%string[] topics~%uint64[] stamps~%string[] tags~%bool start~%bool disable_dis~%shadow_mode_msgs/ActionType action_type~%~%================================================================================~%MSG: shadow_mode_msgs/DetailConfig~%string[] mlog_list~%string[] need_maf_groups~%~%================================================================================~%MSG: shadow_mode_msgs/TriggerParam~%uint8 EVENT = 0~%uint8 SINGLE_FRAME = 1~%uint8 RECORDING = 2~%uint8 trigger_value~%~%================================================================================~%MSG: shadow_mode_msgs/TrustParam~%uint8 NONE = 0~%uint8 BEFORE = 1~%uint8 AFTER = 2~%uint8 trust_value~%~%================================================================================~%MSG: shadow_mode_msgs/ActionType~%uint8 DEFAULT = 0~%uint8 CFDI_ONLY_FOREVER_LOG = 1~%uint8 DFDI_ONLY_REPORT_EAP = 128~%uint8 action_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShadowTriggerMessage)))
  "Returns full string definition for message of type 'ShadowTriggerMessage"
  (cl:format cl:nil "string collect_type~%string name~%float32 cool_down_limit~%shadow_mode_msgs/DetailConfig detail_config~%bool sticky~%string uuid~%string response_status~%string response_reason~%uint64 stamp~%shadow_mode_msgs/TriggerParam trigger_type~%uint8 before~%uint8 after~%shadow_mode_msgs/TrustParam trust_param~%string[] topics~%uint64[] stamps~%string[] tags~%bool start~%bool disable_dis~%shadow_mode_msgs/ActionType action_type~%~%================================================================================~%MSG: shadow_mode_msgs/DetailConfig~%string[] mlog_list~%string[] need_maf_groups~%~%================================================================================~%MSG: shadow_mode_msgs/TriggerParam~%uint8 EVENT = 0~%uint8 SINGLE_FRAME = 1~%uint8 RECORDING = 2~%uint8 trigger_value~%~%================================================================================~%MSG: shadow_mode_msgs/TrustParam~%uint8 NONE = 0~%uint8 BEFORE = 1~%uint8 AFTER = 2~%uint8 trust_value~%~%================================================================================~%MSG: shadow_mode_msgs/ActionType~%uint8 DEFAULT = 0~%uint8 CFDI_ONLY_FOREVER_LOG = 1~%uint8 DFDI_ONLY_REPORT_EAP = 128~%uint8 action_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShadowTriggerMessage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'collect_type))
     4 (cl:length (cl:slot-value msg 'name))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detail_config))
     1
     4 (cl:length (cl:slot-value msg 'uuid))
     4 (cl:length (cl:slot-value msg 'response_status))
     4 (cl:length (cl:slot-value msg 'response_reason))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trigger_type))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trust_param))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stamps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShadowTriggerMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'ShadowTriggerMessage
    (cl:cons ':collect_type (collect_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':cool_down_limit (cool_down_limit msg))
    (cl:cons ':detail_config (detail_config msg))
    (cl:cons ':sticky (sticky msg))
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':response_status (response_status msg))
    (cl:cons ':response_reason (response_reason msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':trigger_type (trigger_type msg))
    (cl:cons ':before (before msg))
    (cl:cons ':after (after msg))
    (cl:cons ':trust_param (trust_param msg))
    (cl:cons ':topics (topics msg))
    (cl:cons ':stamps (stamps msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':start (start msg))
    (cl:cons ':disable_dis (disable_dis msg))
    (cl:cons ':action_type (action_type msg))
))
