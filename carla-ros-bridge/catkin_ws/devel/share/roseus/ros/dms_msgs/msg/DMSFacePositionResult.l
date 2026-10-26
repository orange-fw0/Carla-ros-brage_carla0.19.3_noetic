;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFacePositionResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFacePositionResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT")
  (make-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSFacePositionResult.msg.html


(intern "*POSITION_EAR_CENTER_AVAILABLE*" (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(shadow '*POSITION_EAR_CENTER_AVAILABLE* (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(defconstant dms_msgs::DMSFacePositionResult::*POSITION_EAR_CENTER_AVAILABLE* 1)
(intern "*POSITION_LEFT_PUPIL_AVAILABLE*" (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(shadow '*POSITION_LEFT_PUPIL_AVAILABLE* (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(defconstant dms_msgs::DMSFacePositionResult::*POSITION_LEFT_PUPIL_AVAILABLE* 2)
(intern "*POSITION_RIGHT_PUPIL_AVAILABLE*" (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(shadow '*POSITION_RIGHT_PUPIL_AVAILABLE* (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(defconstant dms_msgs::DMSFacePositionResult::*POSITION_RIGHT_PUPIL_AVAILABLE* 4)
(intern "*POSITION_EAR_CENTER_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(shadow '*POSITION_EAR_CENTER_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(defconstant dms_msgs::DMSFacePositionResult::*POSITION_EAR_CENTER_WCS_AVAILABLE* 8)
(intern "*POSITION_LEFT_PUPIL_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(shadow '*POSITION_LEFT_PUPIL_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(defconstant dms_msgs::DMSFacePositionResult::*POSITION_LEFT_PUPIL_WCS_AVAILABLE* 16)
(intern "*POSITION_RIGHT_PUPIL_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(shadow '*POSITION_RIGHT_PUPIL_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSFACEPOSITIONRESULT"))
(defconstant dms_msgs::DMSFacePositionResult::*POSITION_RIGHT_PUPIL_WCS_AVAILABLE* 32)

(defun dms_msgs::DMSFacePositionResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSFacePositionResult::*POSITION_EAR_CENTER_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSFacePositionResult::*POSITION_LEFT_PUPIL_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSFacePositionResult::*POSITION_RIGHT_PUPIL_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSFacePositionResult::*POSITION_EAR_CENTER_WCS_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSFacePositionResult::*POSITION_LEFT_PUPIL_WCS_AVAILABLE*)
        ((= const 32) 'dms_msgs::DMSFacePositionResult::*POSITION_RIGHT_PUPIL_WCS_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSFacePositionResult
  :super ros::object
  :slots (_available _position_ear_center _position_left_pupil _position_right_pupil _position_ear_center_wcs _position_left_pupil_wcs _position_right_pupil_wcs ))

(defmethod dms_msgs::DMSFacePositionResult
  (:init
   (&key
    ((:available __available) 0)
    ((:position_ear_center __position_ear_center) (instance dms_msgs::DMSPoint3f :init))
    ((:position_left_pupil __position_left_pupil) (instance dms_msgs::DMSPoint3f :init))
    ((:position_right_pupil __position_right_pupil) (instance dms_msgs::DMSPoint3f :init))
    ((:position_ear_center_wcs __position_ear_center_wcs) (instance dms_msgs::DMSPoint3f :init))
    ((:position_left_pupil_wcs __position_left_pupil_wcs) (instance dms_msgs::DMSPoint3f :init))
    ((:position_right_pupil_wcs __position_right_pupil_wcs) (instance dms_msgs::DMSPoint3f :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _position_ear_center __position_ear_center)
   (setq _position_left_pupil __position_left_pupil)
   (setq _position_right_pupil __position_right_pupil)
   (setq _position_ear_center_wcs __position_ear_center_wcs)
   (setq _position_left_pupil_wcs __position_left_pupil_wcs)
   (setq _position_right_pupil_wcs __position_right_pupil_wcs)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:position_ear_center
   (&rest __position_ear_center)
   (if (keywordp (car __position_ear_center))
       (send* _position_ear_center __position_ear_center)
     (progn
       (if __position_ear_center (setq _position_ear_center (car __position_ear_center)))
       _position_ear_center)))
  (:position_left_pupil
   (&rest __position_left_pupil)
   (if (keywordp (car __position_left_pupil))
       (send* _position_left_pupil __position_left_pupil)
     (progn
       (if __position_left_pupil (setq _position_left_pupil (car __position_left_pupil)))
       _position_left_pupil)))
  (:position_right_pupil
   (&rest __position_right_pupil)
   (if (keywordp (car __position_right_pupil))
       (send* _position_right_pupil __position_right_pupil)
     (progn
       (if __position_right_pupil (setq _position_right_pupil (car __position_right_pupil)))
       _position_right_pupil)))
  (:position_ear_center_wcs
   (&rest __position_ear_center_wcs)
   (if (keywordp (car __position_ear_center_wcs))
       (send* _position_ear_center_wcs __position_ear_center_wcs)
     (progn
       (if __position_ear_center_wcs (setq _position_ear_center_wcs (car __position_ear_center_wcs)))
       _position_ear_center_wcs)))
  (:position_left_pupil_wcs
   (&rest __position_left_pupil_wcs)
   (if (keywordp (car __position_left_pupil_wcs))
       (send* _position_left_pupil_wcs __position_left_pupil_wcs)
     (progn
       (if __position_left_pupil_wcs (setq _position_left_pupil_wcs (car __position_left_pupil_wcs)))
       _position_left_pupil_wcs)))
  (:position_right_pupil_wcs
   (&rest __position_right_pupil_wcs)
   (if (keywordp (car __position_right_pupil_wcs))
       (send* _position_right_pupil_wcs __position_right_pupil_wcs)
     (progn
       (if __position_right_pupil_wcs (setq _position_right_pupil_wcs (car __position_right_pupil_wcs)))
       _position_right_pupil_wcs)))
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; dms_msgs/DMSPoint3f _position_ear_center
    (send _position_ear_center :serialization-length)
    ;; dms_msgs/DMSPoint3f _position_left_pupil
    (send _position_left_pupil :serialization-length)
    ;; dms_msgs/DMSPoint3f _position_right_pupil
    (send _position_right_pupil :serialization-length)
    ;; dms_msgs/DMSPoint3f _position_ear_center_wcs
    (send _position_ear_center_wcs :serialization-length)
    ;; dms_msgs/DMSPoint3f _position_left_pupil_wcs
    (send _position_left_pupil_wcs :serialization-length)
    ;; dms_msgs/DMSPoint3f _position_right_pupil_wcs
    (send _position_right_pupil_wcs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; dms_msgs/DMSPoint3f _position_ear_center
       (send _position_ear_center :serialize s)
     ;; dms_msgs/DMSPoint3f _position_left_pupil
       (send _position_left_pupil :serialize s)
     ;; dms_msgs/DMSPoint3f _position_right_pupil
       (send _position_right_pupil :serialize s)
     ;; dms_msgs/DMSPoint3f _position_ear_center_wcs
       (send _position_ear_center_wcs :serialize s)
     ;; dms_msgs/DMSPoint3f _position_left_pupil_wcs
       (send _position_left_pupil_wcs :serialize s)
     ;; dms_msgs/DMSPoint3f _position_right_pupil_wcs
       (send _position_right_pupil_wcs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; dms_msgs/DMSPoint3f _position_ear_center
     (send _position_ear_center :deserialize buf ptr-) (incf ptr- (send _position_ear_center :serialization-length))
   ;; dms_msgs/DMSPoint3f _position_left_pupil
     (send _position_left_pupil :deserialize buf ptr-) (incf ptr- (send _position_left_pupil :serialization-length))
   ;; dms_msgs/DMSPoint3f _position_right_pupil
     (send _position_right_pupil :deserialize buf ptr-) (incf ptr- (send _position_right_pupil :serialization-length))
   ;; dms_msgs/DMSPoint3f _position_ear_center_wcs
     (send _position_ear_center_wcs :deserialize buf ptr-) (incf ptr- (send _position_ear_center_wcs :serialization-length))
   ;; dms_msgs/DMSPoint3f _position_left_pupil_wcs
     (send _position_left_pupil_wcs :deserialize buf ptr-) (incf ptr- (send _position_left_pupil_wcs :serialization-length))
   ;; dms_msgs/DMSPoint3f _position_right_pupil_wcs
     (send _position_right_pupil_wcs :deserialize buf ptr-) (incf ptr- (send _position_right_pupil_wcs :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFacePositionResult :md5sum-) "9634fb3cdff56293abf22937f8abeea0")
(setf (get dms_msgs::DMSFacePositionResult :datatype-) "dms_msgs/DMSFacePositionResult")
(setf (get dms_msgs::DMSFacePositionResult :definition-)
      "uint16 POSITION_EAR_CENTER_AVAILABLE = 1
uint16 POSITION_LEFT_PUPIL_AVAILABLE = 2
uint16 POSITION_RIGHT_PUPIL_AVAILABLE = 4
uint16 POSITION_EAR_CENTER_WCS_AVAILABLE = 8
uint16 POSITION_LEFT_PUPIL_WCS_AVAILABLE = 16
uint16 POSITION_RIGHT_PUPIL_WCS_AVAILABLE = 32
uint16 available
dms_msgs/DMSPoint3f position_ear_center
dms_msgs/DMSPoint3f position_left_pupil
dms_msgs/DMSPoint3f position_right_pupil
dms_msgs/DMSPoint3f position_ear_center_wcs
dms_msgs/DMSPoint3f position_left_pupil_wcs
dms_msgs/DMSPoint3f position_right_pupil_wcs

================================================================================
MSG: dms_msgs/DMSPoint3f
float32 x
float32 y
float32 z

")



(provide :dms_msgs/DMSFacePositionResult "9634fb3cdff56293abf22937f8abeea0")


