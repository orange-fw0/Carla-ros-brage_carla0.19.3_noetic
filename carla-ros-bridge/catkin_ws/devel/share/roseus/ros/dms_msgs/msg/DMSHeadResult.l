;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSHeadResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSHeadResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSHEADRESULT")
  (make-package "DMS_MSGS::DMSHEADRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSHeadResult.msg.html


(intern "*RECT_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*RECT_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*RECT_AVAILABLE* 1)
(intern "*VECTOR_HEAD_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*VECTOR_HEAD_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*VECTOR_HEAD_AVAILABLE* 2)
(intern "*VECTOR_HEAD_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*VECTOR_HEAD_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*VECTOR_HEAD_WCS_AVAILABLE* 4)
(intern "*POSITION_HEAD_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*POSITION_HEAD_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*POSITION_HEAD_AVAILABLE* 8)
(intern "*POSITION_HEAD_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*POSITION_HEAD_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*POSITION_HEAD_WCS_AVAILABLE* 16)
(intern "*HEAD_AREA_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*HEAD_AREA_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*HEAD_AREA_AVAILABLE* 32)
(intern "*HEAD_NUM_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*HEAD_NUM_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*HEAD_NUM_AVAILABLE* 64)
(intern "*IS_HEAD_FAR_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*IS_HEAD_FAR_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*IS_HEAD_FAR_AVAILABLE* 128)
(intern "*HEAD_NUM_DEBOUNCE_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*HEAD_NUM_DEBOUNCE_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*HEAD_NUM_DEBOUNCE_AVAILABLE* 256)
(intern "*L2_HEAD_AREA_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*L2_HEAD_AREA_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*L2_HEAD_AREA_AVAILABLE* 512)
(intern "*L2_HEAD_NUM_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*L2_HEAD_NUM_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*L2_HEAD_NUM_AVAILABLE* 1024)
(intern "*L2_IS_HEAD_FAR_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*L2_IS_HEAD_FAR_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*L2_IS_HEAD_FAR_AVAILABLE* 2048)
(intern "*L2_HEAD_NUM_DEBOUNCE_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*L2_HEAD_NUM_DEBOUNCE_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*L2_HEAD_NUM_DEBOUNCE_AVAILABLE* 4096)
(intern "*L3_HEAD_AREA_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*L3_HEAD_AREA_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*L3_HEAD_AREA_AVAILABLE* 8192)
(intern "*L3_HEAD_NUM_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*L3_HEAD_NUM_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*L3_HEAD_NUM_AVAILABLE* 16384)
(intern "*L3_IS_HEAD_FAR_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*L3_IS_HEAD_FAR_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*L3_IS_HEAD_FAR_AVAILABLE* 32768)
(intern "*L3_HEAD_NUM_DEBOUNCE_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADRESULT"))
(shadow '*L3_HEAD_NUM_DEBOUNCE_AVAILABLE* (find-package "DMS_MSGS::DMSHEADRESULT"))
(defconstant dms_msgs::DMSHeadResult::*L3_HEAD_NUM_DEBOUNCE_AVAILABLE* 65536)

(defun dms_msgs::DMSHeadResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSHeadResult::*RECT_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSHeadResult::*VECTOR_HEAD_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSHeadResult::*VECTOR_HEAD_WCS_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSHeadResult::*POSITION_HEAD_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSHeadResult::*POSITION_HEAD_WCS_AVAILABLE*)
        ((= const 32) 'dms_msgs::DMSHeadResult::*HEAD_AREA_AVAILABLE*)
        ((= const 64) 'dms_msgs::DMSHeadResult::*HEAD_NUM_AVAILABLE*)
        ((= const 128) 'dms_msgs::DMSHeadResult::*IS_HEAD_FAR_AVAILABLE*)
        ((= const 256) 'dms_msgs::DMSHeadResult::*HEAD_NUM_DEBOUNCE_AVAILABLE*)
        ((= const 512) 'dms_msgs::DMSHeadResult::*L2_HEAD_AREA_AVAILABLE*)
        ((= const 1024) 'dms_msgs::DMSHeadResult::*L2_HEAD_NUM_AVAILABLE*)
        ((= const 2048) 'dms_msgs::DMSHeadResult::*L2_IS_HEAD_FAR_AVAILABLE*)
        ((= const 4096) 'dms_msgs::DMSHeadResult::*L2_HEAD_NUM_DEBOUNCE_AVAILABLE*)
        ((= const 8192) 'dms_msgs::DMSHeadResult::*L3_HEAD_AREA_AVAILABLE*)
        ((= const 16384) 'dms_msgs::DMSHeadResult::*L3_HEAD_NUM_AVAILABLE*)
        ((= const 32768) 'dms_msgs::DMSHeadResult::*L3_IS_HEAD_FAR_AVAILABLE*)
        ((= const 65536) 'dms_msgs::DMSHeadResult::*L3_HEAD_NUM_DEBOUNCE_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSHeadResult
  :super ros::object
  :slots (_available _rect_score _rect _head_rect _vector_head _vector_head_wcs _position_head _position_head_wcs _head_rotation _head_area _is_head_far _head_num _head_num_debounce _l2_head_area _l2_is_head_far _l2_head_num _l2_head_num_debounce _l3_head_area _l3_is_head_far _l3_head_num _l3_head_num_debounce ))

(defmethod dms_msgs::DMSHeadResult
  (:init
   (&key
    ((:available __available) 0)
    ((:rect_score __rect_score) 0.0)
    ((:rect __rect) (instance dms_msgs::DMSRotateRect :init))
    ((:head_rect __head_rect) ())
    ((:vector_head __vector_head) (instance dms_msgs::DMSVector3f :init))
    ((:vector_head_wcs __vector_head_wcs) (instance dms_msgs::DMSVector3f :init))
    ((:position_head __position_head) (instance dms_msgs::DMSPoint3f :init))
    ((:position_head_wcs __position_head_wcs) (instance dms_msgs::DMSPoint3f :init))
    ((:head_rotation __head_rotation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:head_area __head_area) 0.0)
    ((:is_head_far __is_head_far) nil)
    ((:head_num __head_num) 0)
    ((:head_num_debounce __head_num_debounce) 0)
    ((:l2_head_area __l2_head_area) 0.0)
    ((:l2_is_head_far __l2_is_head_far) nil)
    ((:l2_head_num __l2_head_num) 0)
    ((:l2_head_num_debounce __l2_head_num_debounce) 0)
    ((:l3_head_area __l3_head_area) 0.0)
    ((:l3_is_head_far __l3_is_head_far) nil)
    ((:l3_head_num __l3_head_num) 0)
    ((:l3_head_num_debounce __l3_head_num_debounce) 0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _rect_score (float __rect_score))
   (setq _rect __rect)
   (setq _head_rect __head_rect)
   (setq _vector_head __vector_head)
   (setq _vector_head_wcs __vector_head_wcs)
   (setq _position_head __position_head)
   (setq _position_head_wcs __position_head_wcs)
   (setq _head_rotation __head_rotation)
   (setq _head_area (float __head_area))
   (setq _is_head_far __is_head_far)
   (setq _head_num (round __head_num))
   (setq _head_num_debounce (round __head_num_debounce))
   (setq _l2_head_area (float __l2_head_area))
   (setq _l2_is_head_far __l2_is_head_far)
   (setq _l2_head_num (round __l2_head_num))
   (setq _l2_head_num_debounce (round __l2_head_num_debounce))
   (setq _l3_head_area (float __l3_head_area))
   (setq _l3_is_head_far __l3_is_head_far)
   (setq _l3_head_num (round __l3_head_num))
   (setq _l3_head_num_debounce (round __l3_head_num_debounce))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:rect_score
   (&optional __rect_score)
   (if __rect_score (setq _rect_score __rect_score)) _rect_score)
  (:rect
   (&rest __rect)
   (if (keywordp (car __rect))
       (send* _rect __rect)
     (progn
       (if __rect (setq _rect (car __rect)))
       _rect)))
  (:head_rect
   (&rest __head_rect)
   (if (keywordp (car __head_rect))
       (send* _head_rect __head_rect)
     (progn
       (if __head_rect (setq _head_rect (car __head_rect)))
       _head_rect)))
  (:vector_head
   (&rest __vector_head)
   (if (keywordp (car __vector_head))
       (send* _vector_head __vector_head)
     (progn
       (if __vector_head (setq _vector_head (car __vector_head)))
       _vector_head)))
  (:vector_head_wcs
   (&rest __vector_head_wcs)
   (if (keywordp (car __vector_head_wcs))
       (send* _vector_head_wcs __vector_head_wcs)
     (progn
       (if __vector_head_wcs (setq _vector_head_wcs (car __vector_head_wcs)))
       _vector_head_wcs)))
  (:position_head
   (&rest __position_head)
   (if (keywordp (car __position_head))
       (send* _position_head __position_head)
     (progn
       (if __position_head (setq _position_head (car __position_head)))
       _position_head)))
  (:position_head_wcs
   (&rest __position_head_wcs)
   (if (keywordp (car __position_head_wcs))
       (send* _position_head_wcs __position_head_wcs)
     (progn
       (if __position_head_wcs (setq _position_head_wcs (car __position_head_wcs)))
       _position_head_wcs)))
  (:head_rotation
   (&optional __head_rotation)
   (if __head_rotation (setq _head_rotation __head_rotation)) _head_rotation)
  (:head_area
   (&optional __head_area)
   (if __head_area (setq _head_area __head_area)) _head_area)
  (:is_head_far
   (&optional (__is_head_far :null))
   (if (not (eq __is_head_far :null)) (setq _is_head_far __is_head_far)) _is_head_far)
  (:head_num
   (&optional __head_num)
   (if __head_num (setq _head_num __head_num)) _head_num)
  (:head_num_debounce
   (&optional __head_num_debounce)
   (if __head_num_debounce (setq _head_num_debounce __head_num_debounce)) _head_num_debounce)
  (:l2_head_area
   (&optional __l2_head_area)
   (if __l2_head_area (setq _l2_head_area __l2_head_area)) _l2_head_area)
  (:l2_is_head_far
   (&optional (__l2_is_head_far :null))
   (if (not (eq __l2_is_head_far :null)) (setq _l2_is_head_far __l2_is_head_far)) _l2_is_head_far)
  (:l2_head_num
   (&optional __l2_head_num)
   (if __l2_head_num (setq _l2_head_num __l2_head_num)) _l2_head_num)
  (:l2_head_num_debounce
   (&optional __l2_head_num_debounce)
   (if __l2_head_num_debounce (setq _l2_head_num_debounce __l2_head_num_debounce)) _l2_head_num_debounce)
  (:l3_head_area
   (&optional __l3_head_area)
   (if __l3_head_area (setq _l3_head_area __l3_head_area)) _l3_head_area)
  (:l3_is_head_far
   (&optional (__l3_is_head_far :null))
   (if (not (eq __l3_is_head_far :null)) (setq _l3_is_head_far __l3_is_head_far)) _l3_is_head_far)
  (:l3_head_num
   (&optional __l3_head_num)
   (if __l3_head_num (setq _l3_head_num __l3_head_num)) _l3_head_num)
  (:l3_head_num_debounce
   (&optional __l3_head_num_debounce)
   (if __l3_head_num_debounce (setq _l3_head_num_debounce __l3_head_num_debounce)) _l3_head_num_debounce)
  (:serialization-length
   ()
   (+
    ;; uint32 _available
    4
    ;; float32 _rect_score
    4
    ;; dms_msgs/DMSRotateRect _rect
    (send _rect :serialization-length)
    ;; dms_msgs/DMSPoint2f[] _head_rect
    (apply #'+ (send-all _head_rect :serialization-length)) 4
    ;; dms_msgs/DMSVector3f _vector_head
    (send _vector_head :serialization-length)
    ;; dms_msgs/DMSVector3f _vector_head_wcs
    (send _vector_head_wcs :serialization-length)
    ;; dms_msgs/DMSPoint3f _position_head
    (send _position_head :serialization-length)
    ;; dms_msgs/DMSPoint3f _position_head_wcs
    (send _position_head_wcs :serialization-length)
    ;; float32[] _head_rotation
    (* 4    (length _head_rotation)) 4
    ;; float32 _head_area
    4
    ;; bool _is_head_far
    1
    ;; uint16 _head_num
    2
    ;; uint16 _head_num_debounce
    2
    ;; float32 _l2_head_area
    4
    ;; bool _l2_is_head_far
    1
    ;; uint16 _l2_head_num
    2
    ;; uint16 _l2_head_num_debounce
    2
    ;; float32 _l3_head_area
    4
    ;; bool _l3_is_head_far
    1
    ;; uint16 _l3_head_num
    2
    ;; uint16 _l3_head_num_debounce
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _available
       (write-long _available s)
     ;; float32 _rect_score
       (sys::poke _rect_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dms_msgs/DMSRotateRect _rect
       (send _rect :serialize s)
     ;; dms_msgs/DMSPoint2f[] _head_rect
     (write-long (length _head_rect) s)
     (dolist (elem _head_rect)
       (send elem :serialize s)
       )
     ;; dms_msgs/DMSVector3f _vector_head
       (send _vector_head :serialize s)
     ;; dms_msgs/DMSVector3f _vector_head_wcs
       (send _vector_head_wcs :serialize s)
     ;; dms_msgs/DMSPoint3f _position_head
       (send _position_head :serialize s)
     ;; dms_msgs/DMSPoint3f _position_head_wcs
       (send _position_head_wcs :serialize s)
     ;; float32[] _head_rotation
     (write-long (length _head_rotation) s)
     (dotimes (i (length _head_rotation))
       (sys::poke (elt _head_rotation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _head_area
       (sys::poke _head_area (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_head_far
       (if _is_head_far (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _head_num
       (write-word _head_num s)
     ;; uint16 _head_num_debounce
       (write-word _head_num_debounce s)
     ;; float32 _l2_head_area
       (sys::poke _l2_head_area (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _l2_is_head_far
       (if _l2_is_head_far (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _l2_head_num
       (write-word _l2_head_num s)
     ;; uint16 _l2_head_num_debounce
       (write-word _l2_head_num_debounce s)
     ;; float32 _l3_head_area
       (sys::poke _l3_head_area (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _l3_is_head_far
       (if _l3_is_head_far (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _l3_head_num
       (write-word _l3_head_num s)
     ;; uint16 _l3_head_num_debounce
       (write-word _l3_head_num_debounce s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _rect_score
     (setq _rect_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dms_msgs/DMSRotateRect _rect
     (send _rect :deserialize buf ptr-) (incf ptr- (send _rect :serialization-length))
   ;; dms_msgs/DMSPoint2f[] _head_rect
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _head_rect (let (r) (dotimes (i n) (push (instance dms_msgs::DMSPoint2f :init) r)) r))
     (dolist (elem- _head_rect)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/DMSVector3f _vector_head
     (send _vector_head :deserialize buf ptr-) (incf ptr- (send _vector_head :serialization-length))
   ;; dms_msgs/DMSVector3f _vector_head_wcs
     (send _vector_head_wcs :deserialize buf ptr-) (incf ptr- (send _vector_head_wcs :serialization-length))
   ;; dms_msgs/DMSPoint3f _position_head
     (send _position_head :deserialize buf ptr-) (incf ptr- (send _position_head :serialization-length))
   ;; dms_msgs/DMSPoint3f _position_head_wcs
     (send _position_head_wcs :deserialize buf ptr-) (incf ptr- (send _position_head_wcs :serialization-length))
   ;; float32[] _head_rotation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _head_rotation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _head_rotation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _head_area
     (setq _head_area (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_head_far
     (setq _is_head_far (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _head_num
     (setq _head_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _head_num_debounce
     (setq _head_num_debounce (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _l2_head_area
     (setq _l2_head_area (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _l2_is_head_far
     (setq _l2_is_head_far (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _l2_head_num
     (setq _l2_head_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _l2_head_num_debounce
     (setq _l2_head_num_debounce (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _l3_head_area
     (setq _l3_head_area (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _l3_is_head_far
     (setq _l3_is_head_far (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _l3_head_num
     (setq _l3_head_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _l3_head_num_debounce
     (setq _l3_head_num_debounce (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dms_msgs::DMSHeadResult :md5sum-) "4505691067705f700a2c396e37162aae")
(setf (get dms_msgs::DMSHeadResult :datatype-) "dms_msgs/DMSHeadResult")
(setf (get dms_msgs::DMSHeadResult :definition-)
      "uint32 RECT_AVAILABLE = 1
uint32 VECTOR_HEAD_AVAILABLE = 2
uint32 VECTOR_HEAD_WCS_AVAILABLE = 4
uint32 POSITION_HEAD_AVAILABLE = 8
uint32 POSITION_HEAD_WCS_AVAILABLE = 16
uint32 HEAD_AREA_AVAILABLE = 32
uint32 HEAD_NUM_AVAILABLE = 64
uint32 IS_HEAD_FAR_AVAILABLE = 128
uint32 HEAD_NUM_DEBOUNCE_AVAILABLE = 256
uint32 L2_HEAD_AREA_AVAILABLE = 512
uint32 L2_HEAD_NUM_AVAILABLE = 1024
uint32 L2_IS_HEAD_FAR_AVAILABLE = 2048
uint32 L2_HEAD_NUM_DEBOUNCE_AVAILABLE = 4096
uint32 L3_HEAD_AREA_AVAILABLE = 8192
uint32 L3_HEAD_NUM_AVAILABLE = 16384
uint32 L3_IS_HEAD_FAR_AVAILABLE = 32768
uint32 L3_HEAD_NUM_DEBOUNCE_AVAILABLE = 65536
uint32 available
float32 rect_score
dms_msgs/DMSRotateRect rect
dms_msgs/DMSPoint2f[] head_rect
dms_msgs/DMSVector3f vector_head
dms_msgs/DMSVector3f vector_head_wcs
dms_msgs/DMSPoint3f position_head
dms_msgs/DMSPoint3f position_head_wcs
float32[] head_rotation
float32 head_area
bool is_head_far
uint16 head_num
uint16 head_num_debounce
float32 l2_head_area
bool l2_is_head_far
uint16 l2_head_num
uint16 l2_head_num_debounce
float32 l3_head_area
bool l3_is_head_far
uint16 l3_head_num
uint16 l3_head_num_debounce

================================================================================
MSG: dms_msgs/DMSRotateRect
dms_msgs/DMSPoint2f center
float32 width
float32 height
float32 angle

================================================================================
MSG: dms_msgs/DMSPoint2f
float32 x
float32 y

================================================================================
MSG: dms_msgs/DMSVector3f
float32 x
float32 y
float32 z

================================================================================
MSG: dms_msgs/DMSPoint3f
float32 x
float32 y
float32 z

")



(provide :dms_msgs/DMSHeadResult "4505691067705f700a2c396e37162aae")


