;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSOrientationResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSOrientationResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSORIENTATIONRESULT")
  (make-package "DMS_MSGS::DMSORIENTATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSOrientationResult.msg.html


(intern "*ORIENTATION_AVAILABLE*" (find-package "DMS_MSGS::DMSORIENTATIONRESULT"))
(shadow '*ORIENTATION_AVAILABLE* (find-package "DMS_MSGS::DMSORIENTATIONRESULT"))
(defconstant dms_msgs::DMSOrientationResult::*ORIENTATION_AVAILABLE* 1)
(intern "*ORIENTATION_ORI_AVAILABLE*" (find-package "DMS_MSGS::DMSORIENTATIONRESULT"))
(shadow '*ORIENTATION_ORI_AVAILABLE* (find-package "DMS_MSGS::DMSORIENTATIONRESULT"))
(defconstant dms_msgs::DMSOrientationResult::*ORIENTATION_ORI_AVAILABLE* 2)
(intern "*ORIENTATION_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSORIENTATIONRESULT"))
(shadow '*ORIENTATION_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSORIENTATIONRESULT"))
(defconstant dms_msgs::DMSOrientationResult::*ORIENTATION_WCS_AVAILABLE* 4)

(defun dms_msgs::DMSOrientationResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSOrientationResult::*ORIENTATION_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSOrientationResult::*ORIENTATION_ORI_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSOrientationResult::*ORIENTATION_WCS_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSOrientationResult
  :super ros::object
  :slots (_available _orientation_score _orientation _orientation_ori _orientation_wcs ))

(defmethod dms_msgs::DMSOrientationResult
  (:init
   (&key
    ((:available __available) 0)
    ((:orientation_score __orientation_score) 0.0)
    ((:orientation __orientation) (instance dms_msgs::DMSOrientation3f :init))
    ((:orientation_ori __orientation_ori) (instance dms_msgs::DMSOrientation3f :init))
    ((:orientation_wcs __orientation_wcs) (instance dms_msgs::DMSOrientation3f :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _orientation_score (float __orientation_score))
   (setq _orientation __orientation)
   (setq _orientation_ori __orientation_ori)
   (setq _orientation_wcs __orientation_wcs)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:orientation_score
   (&optional __orientation_score)
   (if __orientation_score (setq _orientation_score __orientation_score)) _orientation_score)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:orientation_ori
   (&rest __orientation_ori)
   (if (keywordp (car __orientation_ori))
       (send* _orientation_ori __orientation_ori)
     (progn
       (if __orientation_ori (setq _orientation_ori (car __orientation_ori)))
       _orientation_ori)))
  (:orientation_wcs
   (&rest __orientation_wcs)
   (if (keywordp (car __orientation_wcs))
       (send* _orientation_wcs __orientation_wcs)
     (progn
       (if __orientation_wcs (setq _orientation_wcs (car __orientation_wcs)))
       _orientation_wcs)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _orientation_score
    4
    ;; dms_msgs/DMSOrientation3f _orientation
    (send _orientation :serialization-length)
    ;; dms_msgs/DMSOrientation3f _orientation_ori
    (send _orientation_ori :serialization-length)
    ;; dms_msgs/DMSOrientation3f _orientation_wcs
    (send _orientation_wcs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _orientation_score
       (sys::poke _orientation_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dms_msgs/DMSOrientation3f _orientation
       (send _orientation :serialize s)
     ;; dms_msgs/DMSOrientation3f _orientation_ori
       (send _orientation_ori :serialize s)
     ;; dms_msgs/DMSOrientation3f _orientation_wcs
       (send _orientation_wcs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _orientation_score
     (setq _orientation_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dms_msgs/DMSOrientation3f _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; dms_msgs/DMSOrientation3f _orientation_ori
     (send _orientation_ori :deserialize buf ptr-) (incf ptr- (send _orientation_ori :serialization-length))
   ;; dms_msgs/DMSOrientation3f _orientation_wcs
     (send _orientation_wcs :deserialize buf ptr-) (incf ptr- (send _orientation_wcs :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSOrientationResult :md5sum-) "4670048691d20b91b2ed93dc42461c75")
(setf (get dms_msgs::DMSOrientationResult :datatype-) "dms_msgs/DMSOrientationResult")
(setf (get dms_msgs::DMSOrientationResult :definition-)
      "uint8 ORIENTATION_AVAILABLE = 1
uint8 ORIENTATION_ORI_AVAILABLE = 2
uint8 ORIENTATION_WCS_AVAILABLE = 4
uint8 available
float32 orientation_score
dms_msgs/DMSOrientation3f orientation
dms_msgs/DMSOrientation3f orientation_ori
dms_msgs/DMSOrientation3f orientation_wcs

================================================================================
MSG: dms_msgs/DMSOrientation3f
float32 pitch
float32 yaw
float32 roll

")



(provide :dms_msgs/DMSOrientationResult "4670048691d20b91b2ed93dc42461c75")


