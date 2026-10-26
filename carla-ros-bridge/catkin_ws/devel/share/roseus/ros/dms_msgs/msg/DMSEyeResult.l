;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSEyeResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSEyeResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEYERESULT")
  (make-package "DMS_MSGS::DMSEYERESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSEyeResult.msg.html


(intern "*EYE_DISTANCE_AVAILABLE*" (find-package "DMS_MSGS::DMSEYERESULT"))
(shadow '*EYE_DISTANCE_AVAILABLE* (find-package "DMS_MSGS::DMSEYERESULT"))
(defconstant dms_msgs::DMSEyeResult::*EYE_DISTANCE_AVAILABLE* 1)
(intern "*EYE_EYELID_AVAILABLE*" (find-package "DMS_MSGS::DMSEYERESULT"))
(shadow '*EYE_EYELID_AVAILABLE* (find-package "DMS_MSGS::DMSEYERESULT"))
(defconstant dms_msgs::DMSEyeResult::*EYE_EYELID_AVAILABLE* 2)
(intern "*EYE_VECTOR_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSEYERESULT"))
(shadow '*EYE_VECTOR_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSEYERESULT"))
(defconstant dms_msgs::DMSEyeResult::*EYE_VECTOR_WCS_AVAILABLE* 4)
(intern "*EYE_VECTOR_CCS_AVAILABLE*" (find-package "DMS_MSGS::DMSEYERESULT"))
(shadow '*EYE_VECTOR_CCS_AVAILABLE* (find-package "DMS_MSGS::DMSEYERESULT"))
(defconstant dms_msgs::DMSEyeResult::*EYE_VECTOR_CCS_AVAILABLE* 8)

(defun dms_msgs::DMSEyeResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSEyeResult::*EYE_DISTANCE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSEyeResult::*EYE_EYELID_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSEyeResult::*EYE_VECTOR_WCS_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSEyeResult::*EYE_VECTOR_CCS_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSEyeResult
  :super ros::object
  :slots (_available _distance_left_eye _distance_right_eye _eyelid_left_score _eyelid_right_score _state_right_eye _state_left_eye _eye_relative_result _vector_left_eye_wcs _vector_right_eye_wcs _vector_eye_center_wcs _vector_left_eye_ccs _vector_right_eye_ccs _vector_eye_center_ccs ))

(defmethod dms_msgs::DMSEyeResult
  (:init
   (&key
    ((:available __available) 0)
    ((:distance_left_eye __distance_left_eye) 0.0)
    ((:distance_right_eye __distance_right_eye) 0.0)
    ((:eyelid_left_score __eyelid_left_score) 0.0)
    ((:eyelid_right_score __eyelid_right_score) 0.0)
    ((:state_right_eye __state_right_eye) (instance dms_msgs::DMSEyelidStatusTypeEnum :init))
    ((:state_left_eye __state_left_eye) (instance dms_msgs::DMSEyelidStatusTypeEnum :init))
    ((:eye_relative_result __eye_relative_result) (instance dms_msgs::DMSEyeRelativeResult :init))
    ((:vector_left_eye_wcs __vector_left_eye_wcs) (instance dms_msgs::DMSVector3f :init))
    ((:vector_right_eye_wcs __vector_right_eye_wcs) (instance dms_msgs::DMSVector3f :init))
    ((:vector_eye_center_wcs __vector_eye_center_wcs) (instance dms_msgs::DMSVector3f :init))
    ((:vector_left_eye_ccs __vector_left_eye_ccs) (instance dms_msgs::DMSVector3f :init))
    ((:vector_right_eye_ccs __vector_right_eye_ccs) (instance dms_msgs::DMSVector3f :init))
    ((:vector_eye_center_ccs __vector_eye_center_ccs) (instance dms_msgs::DMSVector3f :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _distance_left_eye (float __distance_left_eye))
   (setq _distance_right_eye (float __distance_right_eye))
   (setq _eyelid_left_score (float __eyelid_left_score))
   (setq _eyelid_right_score (float __eyelid_right_score))
   (setq _state_right_eye __state_right_eye)
   (setq _state_left_eye __state_left_eye)
   (setq _eye_relative_result __eye_relative_result)
   (setq _vector_left_eye_wcs __vector_left_eye_wcs)
   (setq _vector_right_eye_wcs __vector_right_eye_wcs)
   (setq _vector_eye_center_wcs __vector_eye_center_wcs)
   (setq _vector_left_eye_ccs __vector_left_eye_ccs)
   (setq _vector_right_eye_ccs __vector_right_eye_ccs)
   (setq _vector_eye_center_ccs __vector_eye_center_ccs)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:distance_left_eye
   (&optional __distance_left_eye)
   (if __distance_left_eye (setq _distance_left_eye __distance_left_eye)) _distance_left_eye)
  (:distance_right_eye
   (&optional __distance_right_eye)
   (if __distance_right_eye (setq _distance_right_eye __distance_right_eye)) _distance_right_eye)
  (:eyelid_left_score
   (&optional __eyelid_left_score)
   (if __eyelid_left_score (setq _eyelid_left_score __eyelid_left_score)) _eyelid_left_score)
  (:eyelid_right_score
   (&optional __eyelid_right_score)
   (if __eyelid_right_score (setq _eyelid_right_score __eyelid_right_score)) _eyelid_right_score)
  (:state_right_eye
   (&rest __state_right_eye)
   (if (keywordp (car __state_right_eye))
       (send* _state_right_eye __state_right_eye)
     (progn
       (if __state_right_eye (setq _state_right_eye (car __state_right_eye)))
       _state_right_eye)))
  (:state_left_eye
   (&rest __state_left_eye)
   (if (keywordp (car __state_left_eye))
       (send* _state_left_eye __state_left_eye)
     (progn
       (if __state_left_eye (setq _state_left_eye (car __state_left_eye)))
       _state_left_eye)))
  (:eye_relative_result
   (&rest __eye_relative_result)
   (if (keywordp (car __eye_relative_result))
       (send* _eye_relative_result __eye_relative_result)
     (progn
       (if __eye_relative_result (setq _eye_relative_result (car __eye_relative_result)))
       _eye_relative_result)))
  (:vector_left_eye_wcs
   (&rest __vector_left_eye_wcs)
   (if (keywordp (car __vector_left_eye_wcs))
       (send* _vector_left_eye_wcs __vector_left_eye_wcs)
     (progn
       (if __vector_left_eye_wcs (setq _vector_left_eye_wcs (car __vector_left_eye_wcs)))
       _vector_left_eye_wcs)))
  (:vector_right_eye_wcs
   (&rest __vector_right_eye_wcs)
   (if (keywordp (car __vector_right_eye_wcs))
       (send* _vector_right_eye_wcs __vector_right_eye_wcs)
     (progn
       (if __vector_right_eye_wcs (setq _vector_right_eye_wcs (car __vector_right_eye_wcs)))
       _vector_right_eye_wcs)))
  (:vector_eye_center_wcs
   (&rest __vector_eye_center_wcs)
   (if (keywordp (car __vector_eye_center_wcs))
       (send* _vector_eye_center_wcs __vector_eye_center_wcs)
     (progn
       (if __vector_eye_center_wcs (setq _vector_eye_center_wcs (car __vector_eye_center_wcs)))
       _vector_eye_center_wcs)))
  (:vector_left_eye_ccs
   (&rest __vector_left_eye_ccs)
   (if (keywordp (car __vector_left_eye_ccs))
       (send* _vector_left_eye_ccs __vector_left_eye_ccs)
     (progn
       (if __vector_left_eye_ccs (setq _vector_left_eye_ccs (car __vector_left_eye_ccs)))
       _vector_left_eye_ccs)))
  (:vector_right_eye_ccs
   (&rest __vector_right_eye_ccs)
   (if (keywordp (car __vector_right_eye_ccs))
       (send* _vector_right_eye_ccs __vector_right_eye_ccs)
     (progn
       (if __vector_right_eye_ccs (setq _vector_right_eye_ccs (car __vector_right_eye_ccs)))
       _vector_right_eye_ccs)))
  (:vector_eye_center_ccs
   (&rest __vector_eye_center_ccs)
   (if (keywordp (car __vector_eye_center_ccs))
       (send* _vector_eye_center_ccs __vector_eye_center_ccs)
     (progn
       (if __vector_eye_center_ccs (setq _vector_eye_center_ccs (car __vector_eye_center_ccs)))
       _vector_eye_center_ccs)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _distance_left_eye
    4
    ;; float32 _distance_right_eye
    4
    ;; float32 _eyelid_left_score
    4
    ;; float32 _eyelid_right_score
    4
    ;; dms_msgs/DMSEyelidStatusTypeEnum _state_right_eye
    (send _state_right_eye :serialization-length)
    ;; dms_msgs/DMSEyelidStatusTypeEnum _state_left_eye
    (send _state_left_eye :serialization-length)
    ;; dms_msgs/DMSEyeRelativeResult _eye_relative_result
    (send _eye_relative_result :serialization-length)
    ;; dms_msgs/DMSVector3f _vector_left_eye_wcs
    (send _vector_left_eye_wcs :serialization-length)
    ;; dms_msgs/DMSVector3f _vector_right_eye_wcs
    (send _vector_right_eye_wcs :serialization-length)
    ;; dms_msgs/DMSVector3f _vector_eye_center_wcs
    (send _vector_eye_center_wcs :serialization-length)
    ;; dms_msgs/DMSVector3f _vector_left_eye_ccs
    (send _vector_left_eye_ccs :serialization-length)
    ;; dms_msgs/DMSVector3f _vector_right_eye_ccs
    (send _vector_right_eye_ccs :serialization-length)
    ;; dms_msgs/DMSVector3f _vector_eye_center_ccs
    (send _vector_eye_center_ccs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _distance_left_eye
       (sys::poke _distance_left_eye (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_right_eye
       (sys::poke _distance_right_eye (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eyelid_left_score
       (sys::poke _eyelid_left_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eyelid_right_score
       (sys::poke _eyelid_right_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dms_msgs/DMSEyelidStatusTypeEnum _state_right_eye
       (send _state_right_eye :serialize s)
     ;; dms_msgs/DMSEyelidStatusTypeEnum _state_left_eye
       (send _state_left_eye :serialize s)
     ;; dms_msgs/DMSEyeRelativeResult _eye_relative_result
       (send _eye_relative_result :serialize s)
     ;; dms_msgs/DMSVector3f _vector_left_eye_wcs
       (send _vector_left_eye_wcs :serialize s)
     ;; dms_msgs/DMSVector3f _vector_right_eye_wcs
       (send _vector_right_eye_wcs :serialize s)
     ;; dms_msgs/DMSVector3f _vector_eye_center_wcs
       (send _vector_eye_center_wcs :serialize s)
     ;; dms_msgs/DMSVector3f _vector_left_eye_ccs
       (send _vector_left_eye_ccs :serialize s)
     ;; dms_msgs/DMSVector3f _vector_right_eye_ccs
       (send _vector_right_eye_ccs :serialize s)
     ;; dms_msgs/DMSVector3f _vector_eye_center_ccs
       (send _vector_eye_center_ccs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _distance_left_eye
     (setq _distance_left_eye (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_right_eye
     (setq _distance_right_eye (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eyelid_left_score
     (setq _eyelid_left_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eyelid_right_score
     (setq _eyelid_right_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dms_msgs/DMSEyelidStatusTypeEnum _state_right_eye
     (send _state_right_eye :deserialize buf ptr-) (incf ptr- (send _state_right_eye :serialization-length))
   ;; dms_msgs/DMSEyelidStatusTypeEnum _state_left_eye
     (send _state_left_eye :deserialize buf ptr-) (incf ptr- (send _state_left_eye :serialization-length))
   ;; dms_msgs/DMSEyeRelativeResult _eye_relative_result
     (send _eye_relative_result :deserialize buf ptr-) (incf ptr- (send _eye_relative_result :serialization-length))
   ;; dms_msgs/DMSVector3f _vector_left_eye_wcs
     (send _vector_left_eye_wcs :deserialize buf ptr-) (incf ptr- (send _vector_left_eye_wcs :serialization-length))
   ;; dms_msgs/DMSVector3f _vector_right_eye_wcs
     (send _vector_right_eye_wcs :deserialize buf ptr-) (incf ptr- (send _vector_right_eye_wcs :serialization-length))
   ;; dms_msgs/DMSVector3f _vector_eye_center_wcs
     (send _vector_eye_center_wcs :deserialize buf ptr-) (incf ptr- (send _vector_eye_center_wcs :serialization-length))
   ;; dms_msgs/DMSVector3f _vector_left_eye_ccs
     (send _vector_left_eye_ccs :deserialize buf ptr-) (incf ptr- (send _vector_left_eye_ccs :serialization-length))
   ;; dms_msgs/DMSVector3f _vector_right_eye_ccs
     (send _vector_right_eye_ccs :deserialize buf ptr-) (incf ptr- (send _vector_right_eye_ccs :serialization-length))
   ;; dms_msgs/DMSVector3f _vector_eye_center_ccs
     (send _vector_eye_center_ccs :deserialize buf ptr-) (incf ptr- (send _vector_eye_center_ccs :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSEyeResult :md5sum-) "d4d5f3924f5e8fbe8eebccef0629d833")
(setf (get dms_msgs::DMSEyeResult :datatype-) "dms_msgs/DMSEyeResult")
(setf (get dms_msgs::DMSEyeResult :definition-)
      "uint8 EYE_DISTANCE_AVAILABLE = 1
uint8 EYE_EYELID_AVAILABLE = 2
uint8 EYE_VECTOR_WCS_AVAILABLE = 4
uint8 EYE_VECTOR_CCS_AVAILABLE = 8
uint8 available
float32 distance_left_eye
float32 distance_right_eye
float32 eyelid_left_score
float32 eyelid_right_score
dms_msgs/DMSEyelidStatusTypeEnum state_right_eye
dms_msgs/DMSEyelidStatusTypeEnum state_left_eye
dms_msgs/DMSEyeRelativeResult eye_relative_result
dms_msgs/DMSVector3f vector_left_eye_wcs
dms_msgs/DMSVector3f vector_right_eye_wcs
dms_msgs/DMSVector3f vector_eye_center_wcs
dms_msgs/DMSVector3f vector_left_eye_ccs
dms_msgs/DMSVector3f vector_right_eye_ccs
dms_msgs/DMSVector3f vector_eye_center_ccs

================================================================================
MSG: dms_msgs/DMSEyelidStatusTypeEnum
uint8 DMS_EYELID_STATE_OPEN = 0
uint8 DMS_EYELID_STATE_CLOSED = 1
uint8 value

================================================================================
MSG: dms_msgs/DMSEyeRelativeResult
uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 IS_EYE_BLINK_AVAILABLE = 2
uint8 available
float32 left_eye_relative_distance
float32 right_eye_relative_distance
bool is_left_eye_close
bool is_right_eye_close
float32 left_eye_close_time
float32 right_eye_close_time
float32 reserved
bool is_eye_blink

================================================================================
MSG: dms_msgs/DMSVector3f
float32 x
float32 y
float32 z

")



(provide :dms_msgs/DMSEyeResult "d4d5f3924f5e8fbe8eebccef0629d833")


