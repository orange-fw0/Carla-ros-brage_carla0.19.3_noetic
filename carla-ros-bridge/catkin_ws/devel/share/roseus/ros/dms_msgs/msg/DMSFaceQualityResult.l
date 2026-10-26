;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFaceQualityResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFaceQualityResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFACEQUALITYRESULT")
  (make-package "DMS_MSGS::DMSFACEQUALITYRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSFaceQualityResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSFACEQUALITYRESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSFACEQUALITYRESULT"))
(defconstant dms_msgs::DMSFaceQualityResult::*UN_AVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "DMS_MSGS::DMSFACEQUALITYRESULT"))
(shadow '*AVAILABLE* (find-package "DMS_MSGS::DMSFACEQUALITYRESULT"))
(defconstant dms_msgs::DMSFaceQualityResult::*AVAILABLE* 1)

(defun dms_msgs::DMSFaceQualityResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFaceQualityResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSFaceQualityResult::*AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSFaceQualityResult
  :super ros::object
  :slots (_available _quality ))

(defmethod dms_msgs::DMSFaceQualityResult
  (:init
   (&key
    ((:available __available) 0)
    ((:quality __quality) (instance dms_msgs::DMSFaceQualityScoreResult :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _quality __quality)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:quality
   (&rest __quality)
   (if (keywordp (car __quality))
       (send* _quality __quality)
     (progn
       (if __quality (setq _quality (car __quality)))
       _quality)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSFaceQualityScoreResult _quality
    (send _quality :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSFaceQualityScoreResult _quality
       (send _quality :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSFaceQualityScoreResult _quality
     (send _quality :deserialize buf ptr-) (incf ptr- (send _quality :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFaceQualityResult :md5sum-) "446b4ef06f84e4320a081e067f3f1e72")
(setf (get dms_msgs::DMSFaceQualityResult :datatype-) "dms_msgs/DMSFaceQualityResult")
(setf (get dms_msgs::DMSFaceQualityResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 available
dms_msgs/DMSFaceQualityScoreResult quality

================================================================================
MSG: dms_msgs/DMSFaceQualityScoreResult
float32 light_forehead_prob
float32 light_eye_prob
float32 light_nose_prob
float32 light_mouth_prob
float32 faceshade_forehead_prob
float32 faceshade_eye_prob
float32 faceshade_nose_prob
float32 faceshade_mouth_prob
float32 eye_left_prob
float32 eye_right_prob
float32 iris_left_prob
float32 iris_right_prob
float32 infrared_block_prob
int32 yaw_region
int32 pitch_region

")



(provide :dms_msgs/DMSFaceQualityResult "446b4ef06f84e4320a081e067f3f1e72")


