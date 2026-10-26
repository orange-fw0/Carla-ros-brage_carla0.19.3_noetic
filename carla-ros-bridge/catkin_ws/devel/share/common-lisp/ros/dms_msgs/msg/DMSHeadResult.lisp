; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSHeadResult.msg.html

(cl:defclass <DMSHeadResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0)
   (rect_score
    :reader rect_score
    :initarg :rect_score
    :type cl:float
    :initform 0.0)
   (rect
    :reader rect
    :initarg :rect
    :type dms_msgs-msg:DMSRotateRect
    :initform (cl:make-instance 'dms_msgs-msg:DMSRotateRect))
   (head_rect
    :reader head_rect
    :initarg :head_rect
    :type (cl:vector dms_msgs-msg:DMSPoint2f)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSPoint2f :initial-element (cl:make-instance 'dms_msgs-msg:DMSPoint2f)))
   (vector_head
    :reader vector_head
    :initarg :vector_head
    :type dms_msgs-msg:DMSVector3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSVector3f))
   (vector_head_wcs
    :reader vector_head_wcs
    :initarg :vector_head_wcs
    :type dms_msgs-msg:DMSVector3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSVector3f))
   (position_head
    :reader position_head
    :initarg :position_head
    :type dms_msgs-msg:DMSPoint3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
   (position_head_wcs
    :reader position_head_wcs
    :initarg :position_head_wcs
    :type dms_msgs-msg:DMSPoint3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSPoint3f))
   (head_rotation
    :reader head_rotation
    :initarg :head_rotation
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (head_area
    :reader head_area
    :initarg :head_area
    :type cl:float
    :initform 0.0)
   (is_head_far
    :reader is_head_far
    :initarg :is_head_far
    :type cl:boolean
    :initform cl:nil)
   (head_num
    :reader head_num
    :initarg :head_num
    :type cl:fixnum
    :initform 0)
   (head_num_debounce
    :reader head_num_debounce
    :initarg :head_num_debounce
    :type cl:fixnum
    :initform 0)
   (l2_head_area
    :reader l2_head_area
    :initarg :l2_head_area
    :type cl:float
    :initform 0.0)
   (l2_is_head_far
    :reader l2_is_head_far
    :initarg :l2_is_head_far
    :type cl:boolean
    :initform cl:nil)
   (l2_head_num
    :reader l2_head_num
    :initarg :l2_head_num
    :type cl:fixnum
    :initform 0)
   (l2_head_num_debounce
    :reader l2_head_num_debounce
    :initarg :l2_head_num_debounce
    :type cl:fixnum
    :initform 0)
   (l3_head_area
    :reader l3_head_area
    :initarg :l3_head_area
    :type cl:float
    :initform 0.0)
   (l3_is_head_far
    :reader l3_is_head_far
    :initarg :l3_is_head_far
    :type cl:boolean
    :initform cl:nil)
   (l3_head_num
    :reader l3_head_num
    :initarg :l3_head_num
    :type cl:fixnum
    :initform 0)
   (l3_head_num_debounce
    :reader l3_head_num_debounce
    :initarg :l3_head_num_debounce
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSHeadResult (<DMSHeadResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSHeadResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSHeadResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSHeadResult> is deprecated: use dms_msgs-msg:DMSHeadResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'rect_score-val :lambda-list '(m))
(cl:defmethod rect_score-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:rect_score-val is deprecated.  Use dms_msgs-msg:rect_score instead.")
  (rect_score m))

(cl:ensure-generic-function 'rect-val :lambda-list '(m))
(cl:defmethod rect-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:rect-val is deprecated.  Use dms_msgs-msg:rect instead.")
  (rect m))

(cl:ensure-generic-function 'head_rect-val :lambda-list '(m))
(cl:defmethod head_rect-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:head_rect-val is deprecated.  Use dms_msgs-msg:head_rect instead.")
  (head_rect m))

(cl:ensure-generic-function 'vector_head-val :lambda-list '(m))
(cl:defmethod vector_head-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:vector_head-val is deprecated.  Use dms_msgs-msg:vector_head instead.")
  (vector_head m))

(cl:ensure-generic-function 'vector_head_wcs-val :lambda-list '(m))
(cl:defmethod vector_head_wcs-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:vector_head_wcs-val is deprecated.  Use dms_msgs-msg:vector_head_wcs instead.")
  (vector_head_wcs m))

(cl:ensure-generic-function 'position_head-val :lambda-list '(m))
(cl:defmethod position_head-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:position_head-val is deprecated.  Use dms_msgs-msg:position_head instead.")
  (position_head m))

(cl:ensure-generic-function 'position_head_wcs-val :lambda-list '(m))
(cl:defmethod position_head_wcs-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:position_head_wcs-val is deprecated.  Use dms_msgs-msg:position_head_wcs instead.")
  (position_head_wcs m))

(cl:ensure-generic-function 'head_rotation-val :lambda-list '(m))
(cl:defmethod head_rotation-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:head_rotation-val is deprecated.  Use dms_msgs-msg:head_rotation instead.")
  (head_rotation m))

(cl:ensure-generic-function 'head_area-val :lambda-list '(m))
(cl:defmethod head_area-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:head_area-val is deprecated.  Use dms_msgs-msg:head_area instead.")
  (head_area m))

(cl:ensure-generic-function 'is_head_far-val :lambda-list '(m))
(cl:defmethod is_head_far-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:is_head_far-val is deprecated.  Use dms_msgs-msg:is_head_far instead.")
  (is_head_far m))

(cl:ensure-generic-function 'head_num-val :lambda-list '(m))
(cl:defmethod head_num-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:head_num-val is deprecated.  Use dms_msgs-msg:head_num instead.")
  (head_num m))

(cl:ensure-generic-function 'head_num_debounce-val :lambda-list '(m))
(cl:defmethod head_num_debounce-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:head_num_debounce-val is deprecated.  Use dms_msgs-msg:head_num_debounce instead.")
  (head_num_debounce m))

(cl:ensure-generic-function 'l2_head_area-val :lambda-list '(m))
(cl:defmethod l2_head_area-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_head_area-val is deprecated.  Use dms_msgs-msg:l2_head_area instead.")
  (l2_head_area m))

(cl:ensure-generic-function 'l2_is_head_far-val :lambda-list '(m))
(cl:defmethod l2_is_head_far-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_is_head_far-val is deprecated.  Use dms_msgs-msg:l2_is_head_far instead.")
  (l2_is_head_far m))

(cl:ensure-generic-function 'l2_head_num-val :lambda-list '(m))
(cl:defmethod l2_head_num-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_head_num-val is deprecated.  Use dms_msgs-msg:l2_head_num instead.")
  (l2_head_num m))

(cl:ensure-generic-function 'l2_head_num_debounce-val :lambda-list '(m))
(cl:defmethod l2_head_num_debounce-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_head_num_debounce-val is deprecated.  Use dms_msgs-msg:l2_head_num_debounce instead.")
  (l2_head_num_debounce m))

(cl:ensure-generic-function 'l3_head_area-val :lambda-list '(m))
(cl:defmethod l3_head_area-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_head_area-val is deprecated.  Use dms_msgs-msg:l3_head_area instead.")
  (l3_head_area m))

(cl:ensure-generic-function 'l3_is_head_far-val :lambda-list '(m))
(cl:defmethod l3_is_head_far-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_is_head_far-val is deprecated.  Use dms_msgs-msg:l3_is_head_far instead.")
  (l3_is_head_far m))

(cl:ensure-generic-function 'l3_head_num-val :lambda-list '(m))
(cl:defmethod l3_head_num-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_head_num-val is deprecated.  Use dms_msgs-msg:l3_head_num instead.")
  (l3_head_num m))

(cl:ensure-generic-function 'l3_head_num_debounce-val :lambda-list '(m))
(cl:defmethod l3_head_num_debounce-val ((m <DMSHeadResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_head_num_debounce-val is deprecated.  Use dms_msgs-msg:l3_head_num_debounce instead.")
  (l3_head_num_debounce m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSHeadResult>)))
    "Constants for message type '<DMSHeadResult>"
  '((:RECT_AVAILABLE . 1)
    (:VECTOR_HEAD_AVAILABLE . 2)
    (:VECTOR_HEAD_WCS_AVAILABLE . 4)
    (:POSITION_HEAD_AVAILABLE . 8)
    (:POSITION_HEAD_WCS_AVAILABLE . 16)
    (:HEAD_AREA_AVAILABLE . 32)
    (:HEAD_NUM_AVAILABLE . 64)
    (:IS_HEAD_FAR_AVAILABLE . 128)
    (:HEAD_NUM_DEBOUNCE_AVAILABLE . 256)
    (:L2_HEAD_AREA_AVAILABLE . 512)
    (:L2_HEAD_NUM_AVAILABLE . 1024)
    (:L2_IS_HEAD_FAR_AVAILABLE . 2048)
    (:L2_HEAD_NUM_DEBOUNCE_AVAILABLE . 4096)
    (:L3_HEAD_AREA_AVAILABLE . 8192)
    (:L3_HEAD_NUM_AVAILABLE . 16384)
    (:L3_IS_HEAD_FAR_AVAILABLE . 32768)
    (:L3_HEAD_NUM_DEBOUNCE_AVAILABLE . 65536))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSHeadResult)))
    "Constants for message type 'DMSHeadResult"
  '((:RECT_AVAILABLE . 1)
    (:VECTOR_HEAD_AVAILABLE . 2)
    (:VECTOR_HEAD_WCS_AVAILABLE . 4)
    (:POSITION_HEAD_AVAILABLE . 8)
    (:POSITION_HEAD_WCS_AVAILABLE . 16)
    (:HEAD_AREA_AVAILABLE . 32)
    (:HEAD_NUM_AVAILABLE . 64)
    (:IS_HEAD_FAR_AVAILABLE . 128)
    (:HEAD_NUM_DEBOUNCE_AVAILABLE . 256)
    (:L2_HEAD_AREA_AVAILABLE . 512)
    (:L2_HEAD_NUM_AVAILABLE . 1024)
    (:L2_IS_HEAD_FAR_AVAILABLE . 2048)
    (:L2_HEAD_NUM_DEBOUNCE_AVAILABLE . 4096)
    (:L3_HEAD_AREA_AVAILABLE . 8192)
    (:L3_HEAD_NUM_AVAILABLE . 16384)
    (:L3_IS_HEAD_FAR_AVAILABLE . 32768)
    (:L3_HEAD_NUM_DEBOUNCE_AVAILABLE . 65536))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSHeadResult>) ostream)
  "Serializes a message object of type '<DMSHeadResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rect_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rect) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'head_rect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'head_rect))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector_head) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector_head_wcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_head) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_head_wcs) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'head_rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'head_rotation))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'head_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_head_far) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'head_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head_num_debounce)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'head_num_debounce)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l2_head_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'l2_is_head_far) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l2_head_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'l2_head_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l2_head_num_debounce)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'l2_head_num_debounce)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l3_head_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'l3_is_head_far) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l3_head_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'l3_head_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l3_head_num_debounce)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'l3_head_num_debounce)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSHeadResult>) istream)
  "Deserializes a message object of type '<DMSHeadResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rect_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rect) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'head_rect) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'head_rect)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSPoint2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector_head) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector_head_wcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_head) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_head_wcs) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'head_rotation) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'head_rotation)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'head_area) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_head_far) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'head_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head_num_debounce)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'head_num_debounce)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l2_head_area) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'l2_is_head_far) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l2_head_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'l2_head_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l2_head_num_debounce)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'l2_head_num_debounce)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l3_head_area) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'l3_is_head_far) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l3_head_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'l3_head_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l3_head_num_debounce)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'l3_head_num_debounce)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSHeadResult>)))
  "Returns string type for a message object of type '<DMSHeadResult>"
  "dms_msgs/DMSHeadResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSHeadResult)))
  "Returns string type for a message object of type 'DMSHeadResult"
  "dms_msgs/DMSHeadResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSHeadResult>)))
  "Returns md5sum for a message object of type '<DMSHeadResult>"
  "4505691067705f700a2c396e37162aae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSHeadResult)))
  "Returns md5sum for a message object of type 'DMSHeadResult"
  "4505691067705f700a2c396e37162aae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSHeadResult>)))
  "Returns full string definition for message of type '<DMSHeadResult>"
  (cl:format cl:nil "uint32 RECT_AVAILABLE = 1~%uint32 VECTOR_HEAD_AVAILABLE = 2~%uint32 VECTOR_HEAD_WCS_AVAILABLE = 4~%uint32 POSITION_HEAD_AVAILABLE = 8~%uint32 POSITION_HEAD_WCS_AVAILABLE = 16~%uint32 HEAD_AREA_AVAILABLE = 32~%uint32 HEAD_NUM_AVAILABLE = 64~%uint32 IS_HEAD_FAR_AVAILABLE = 128~%uint32 HEAD_NUM_DEBOUNCE_AVAILABLE = 256~%uint32 L2_HEAD_AREA_AVAILABLE = 512~%uint32 L2_HEAD_NUM_AVAILABLE = 1024~%uint32 L2_IS_HEAD_FAR_AVAILABLE = 2048~%uint32 L2_HEAD_NUM_DEBOUNCE_AVAILABLE = 4096~%uint32 L3_HEAD_AREA_AVAILABLE = 8192~%uint32 L3_HEAD_NUM_AVAILABLE = 16384~%uint32 L3_IS_HEAD_FAR_AVAILABLE = 32768~%uint32 L3_HEAD_NUM_DEBOUNCE_AVAILABLE = 65536~%uint32 available~%float32 rect_score~%dms_msgs/DMSRotateRect rect~%dms_msgs/DMSPoint2f[] head_rect~%dms_msgs/DMSVector3f vector_head~%dms_msgs/DMSVector3f vector_head_wcs~%dms_msgs/DMSPoint3f position_head~%dms_msgs/DMSPoint3f position_head_wcs~%float32[] head_rotation~%float32 head_area~%bool is_head_far~%uint16 head_num~%uint16 head_num_debounce~%float32 l2_head_area~%bool l2_is_head_far~%uint16 l2_head_num~%uint16 l2_head_num_debounce~%float32 l3_head_area~%bool l3_is_head_far~%uint16 l3_head_num~%uint16 l3_head_num_debounce~%~%================================================================================~%MSG: dms_msgs/DMSRotateRect~%dms_msgs/DMSPoint2f center~%float32 width~%float32 height~%float32 angle~%~%================================================================================~%MSG: dms_msgs/DMSPoint2f~%float32 x~%float32 y~%~%================================================================================~%MSG: dms_msgs/DMSVector3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: dms_msgs/DMSPoint3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSHeadResult)))
  "Returns full string definition for message of type 'DMSHeadResult"
  (cl:format cl:nil "uint32 RECT_AVAILABLE = 1~%uint32 VECTOR_HEAD_AVAILABLE = 2~%uint32 VECTOR_HEAD_WCS_AVAILABLE = 4~%uint32 POSITION_HEAD_AVAILABLE = 8~%uint32 POSITION_HEAD_WCS_AVAILABLE = 16~%uint32 HEAD_AREA_AVAILABLE = 32~%uint32 HEAD_NUM_AVAILABLE = 64~%uint32 IS_HEAD_FAR_AVAILABLE = 128~%uint32 HEAD_NUM_DEBOUNCE_AVAILABLE = 256~%uint32 L2_HEAD_AREA_AVAILABLE = 512~%uint32 L2_HEAD_NUM_AVAILABLE = 1024~%uint32 L2_IS_HEAD_FAR_AVAILABLE = 2048~%uint32 L2_HEAD_NUM_DEBOUNCE_AVAILABLE = 4096~%uint32 L3_HEAD_AREA_AVAILABLE = 8192~%uint32 L3_HEAD_NUM_AVAILABLE = 16384~%uint32 L3_IS_HEAD_FAR_AVAILABLE = 32768~%uint32 L3_HEAD_NUM_DEBOUNCE_AVAILABLE = 65536~%uint32 available~%float32 rect_score~%dms_msgs/DMSRotateRect rect~%dms_msgs/DMSPoint2f[] head_rect~%dms_msgs/DMSVector3f vector_head~%dms_msgs/DMSVector3f vector_head_wcs~%dms_msgs/DMSPoint3f position_head~%dms_msgs/DMSPoint3f position_head_wcs~%float32[] head_rotation~%float32 head_area~%bool is_head_far~%uint16 head_num~%uint16 head_num_debounce~%float32 l2_head_area~%bool l2_is_head_far~%uint16 l2_head_num~%uint16 l2_head_num_debounce~%float32 l3_head_area~%bool l3_is_head_far~%uint16 l3_head_num~%uint16 l3_head_num_debounce~%~%================================================================================~%MSG: dms_msgs/DMSRotateRect~%dms_msgs/DMSPoint2f center~%float32 width~%float32 height~%float32 angle~%~%================================================================================~%MSG: dms_msgs/DMSPoint2f~%float32 x~%float32 y~%~%================================================================================~%MSG: dms_msgs/DMSVector3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: dms_msgs/DMSPoint3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSHeadResult>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rect))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'head_rect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector_head))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector_head_wcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_head))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_head_wcs))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'head_rotation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     1
     2
     2
     4
     1
     2
     2
     4
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSHeadResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSHeadResult
    (cl:cons ':available (available msg))
    (cl:cons ':rect_score (rect_score msg))
    (cl:cons ':rect (rect msg))
    (cl:cons ':head_rect (head_rect msg))
    (cl:cons ':vector_head (vector_head msg))
    (cl:cons ':vector_head_wcs (vector_head_wcs msg))
    (cl:cons ':position_head (position_head msg))
    (cl:cons ':position_head_wcs (position_head_wcs msg))
    (cl:cons ':head_rotation (head_rotation msg))
    (cl:cons ':head_area (head_area msg))
    (cl:cons ':is_head_far (is_head_far msg))
    (cl:cons ':head_num (head_num msg))
    (cl:cons ':head_num_debounce (head_num_debounce msg))
    (cl:cons ':l2_head_area (l2_head_area msg))
    (cl:cons ':l2_is_head_far (l2_is_head_far msg))
    (cl:cons ':l2_head_num (l2_head_num msg))
    (cl:cons ':l2_head_num_debounce (l2_head_num_debounce msg))
    (cl:cons ':l3_head_area (l3_head_area msg))
    (cl:cons ':l3_is_head_far (l3_is_head_far msg))
    (cl:cons ':l3_head_num (l3_head_num msg))
    (cl:cons ':l3_head_num_debounce (l3_head_num_debounce msg))
))
