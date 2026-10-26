;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSGazeResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSGazeResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSGAZERESULT")
  (make-package "DMS_MSGS::DMSGAZERESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSGazeResult.msg.html


(intern "*GAZE_SCORE_AVAILABLE*" (find-package "DMS_MSGS::DMSGAZERESULT"))
(shadow '*GAZE_SCORE_AVAILABLE* (find-package "DMS_MSGS::DMSGAZERESULT"))
(defconstant dms_msgs::DMSGazeResult::*GAZE_SCORE_AVAILABLE* 1)
(intern "*GAZE_ORIENTATION_AVAILABLE*" (find-package "DMS_MSGS::DMSGAZERESULT"))
(shadow '*GAZE_ORIENTATION_AVAILABLE* (find-package "DMS_MSGS::DMSGAZERESULT"))
(defconstant dms_msgs::DMSGazeResult::*GAZE_ORIENTATION_AVAILABLE* 2)
(intern "*GAZE_ORIENTATION_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSGAZERESULT"))
(shadow '*GAZE_ORIENTATION_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSGAZERESULT"))
(defconstant dms_msgs::DMSGazeResult::*GAZE_ORIENTATION_WCS_AVAILABLE* 4)

(defun dms_msgs::DMSGazeResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSGazeResult::*GAZE_SCORE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSGazeResult::*GAZE_ORIENTATION_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSGazeResult::*GAZE_ORIENTATION_WCS_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSGazeResult
  :super ros::object
  :slots (_available _gaze_left_score _gaze_right_score _gaze_center_score _gaze_left _gaze_right _gaze_center _gaze_left_wcs _gaze_right_wcs _gaze_center_wcs ))

(defmethod dms_msgs::DMSGazeResult
  (:init
   (&key
    ((:available __available) 0)
    ((:gaze_left_score __gaze_left_score) 0.0)
    ((:gaze_right_score __gaze_right_score) 0.0)
    ((:gaze_center_score __gaze_center_score) 0.0)
    ((:gaze_left __gaze_left) (instance dms_msgs::DMSOrientation3f :init))
    ((:gaze_right __gaze_right) (instance dms_msgs::DMSOrientation3f :init))
    ((:gaze_center __gaze_center) (instance dms_msgs::DMSOrientation3f :init))
    ((:gaze_left_wcs __gaze_left_wcs) (instance dms_msgs::DMSOrientation3f :init))
    ((:gaze_right_wcs __gaze_right_wcs) (instance dms_msgs::DMSOrientation3f :init))
    ((:gaze_center_wcs __gaze_center_wcs) (instance dms_msgs::DMSOrientation3f :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _gaze_left_score (float __gaze_left_score))
   (setq _gaze_right_score (float __gaze_right_score))
   (setq _gaze_center_score (float __gaze_center_score))
   (setq _gaze_left __gaze_left)
   (setq _gaze_right __gaze_right)
   (setq _gaze_center __gaze_center)
   (setq _gaze_left_wcs __gaze_left_wcs)
   (setq _gaze_right_wcs __gaze_right_wcs)
   (setq _gaze_center_wcs __gaze_center_wcs)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:gaze_left_score
   (&optional __gaze_left_score)
   (if __gaze_left_score (setq _gaze_left_score __gaze_left_score)) _gaze_left_score)
  (:gaze_right_score
   (&optional __gaze_right_score)
   (if __gaze_right_score (setq _gaze_right_score __gaze_right_score)) _gaze_right_score)
  (:gaze_center_score
   (&optional __gaze_center_score)
   (if __gaze_center_score (setq _gaze_center_score __gaze_center_score)) _gaze_center_score)
  (:gaze_left
   (&rest __gaze_left)
   (if (keywordp (car __gaze_left))
       (send* _gaze_left __gaze_left)
     (progn
       (if __gaze_left (setq _gaze_left (car __gaze_left)))
       _gaze_left)))
  (:gaze_right
   (&rest __gaze_right)
   (if (keywordp (car __gaze_right))
       (send* _gaze_right __gaze_right)
     (progn
       (if __gaze_right (setq _gaze_right (car __gaze_right)))
       _gaze_right)))
  (:gaze_center
   (&rest __gaze_center)
   (if (keywordp (car __gaze_center))
       (send* _gaze_center __gaze_center)
     (progn
       (if __gaze_center (setq _gaze_center (car __gaze_center)))
       _gaze_center)))
  (:gaze_left_wcs
   (&rest __gaze_left_wcs)
   (if (keywordp (car __gaze_left_wcs))
       (send* _gaze_left_wcs __gaze_left_wcs)
     (progn
       (if __gaze_left_wcs (setq _gaze_left_wcs (car __gaze_left_wcs)))
       _gaze_left_wcs)))
  (:gaze_right_wcs
   (&rest __gaze_right_wcs)
   (if (keywordp (car __gaze_right_wcs))
       (send* _gaze_right_wcs __gaze_right_wcs)
     (progn
       (if __gaze_right_wcs (setq _gaze_right_wcs (car __gaze_right_wcs)))
       _gaze_right_wcs)))
  (:gaze_center_wcs
   (&rest __gaze_center_wcs)
   (if (keywordp (car __gaze_center_wcs))
       (send* _gaze_center_wcs __gaze_center_wcs)
     (progn
       (if __gaze_center_wcs (setq _gaze_center_wcs (car __gaze_center_wcs)))
       _gaze_center_wcs)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _gaze_left_score
    4
    ;; float32 _gaze_right_score
    4
    ;; float32 _gaze_center_score
    4
    ;; dms_msgs/DMSOrientation3f _gaze_left
    (send _gaze_left :serialization-length)
    ;; dms_msgs/DMSOrientation3f _gaze_right
    (send _gaze_right :serialization-length)
    ;; dms_msgs/DMSOrientation3f _gaze_center
    (send _gaze_center :serialization-length)
    ;; dms_msgs/DMSOrientation3f _gaze_left_wcs
    (send _gaze_left_wcs :serialization-length)
    ;; dms_msgs/DMSOrientation3f _gaze_right_wcs
    (send _gaze_right_wcs :serialization-length)
    ;; dms_msgs/DMSOrientation3f _gaze_center_wcs
    (send _gaze_center_wcs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _gaze_left_score
       (sys::poke _gaze_left_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gaze_right_score
       (sys::poke _gaze_right_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gaze_center_score
       (sys::poke _gaze_center_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dms_msgs/DMSOrientation3f _gaze_left
       (send _gaze_left :serialize s)
     ;; dms_msgs/DMSOrientation3f _gaze_right
       (send _gaze_right :serialize s)
     ;; dms_msgs/DMSOrientation3f _gaze_center
       (send _gaze_center :serialize s)
     ;; dms_msgs/DMSOrientation3f _gaze_left_wcs
       (send _gaze_left_wcs :serialize s)
     ;; dms_msgs/DMSOrientation3f _gaze_right_wcs
       (send _gaze_right_wcs :serialize s)
     ;; dms_msgs/DMSOrientation3f _gaze_center_wcs
       (send _gaze_center_wcs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _gaze_left_score
     (setq _gaze_left_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gaze_right_score
     (setq _gaze_right_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gaze_center_score
     (setq _gaze_center_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dms_msgs/DMSOrientation3f _gaze_left
     (send _gaze_left :deserialize buf ptr-) (incf ptr- (send _gaze_left :serialization-length))
   ;; dms_msgs/DMSOrientation3f _gaze_right
     (send _gaze_right :deserialize buf ptr-) (incf ptr- (send _gaze_right :serialization-length))
   ;; dms_msgs/DMSOrientation3f _gaze_center
     (send _gaze_center :deserialize buf ptr-) (incf ptr- (send _gaze_center :serialization-length))
   ;; dms_msgs/DMSOrientation3f _gaze_left_wcs
     (send _gaze_left_wcs :deserialize buf ptr-) (incf ptr- (send _gaze_left_wcs :serialization-length))
   ;; dms_msgs/DMSOrientation3f _gaze_right_wcs
     (send _gaze_right_wcs :deserialize buf ptr-) (incf ptr- (send _gaze_right_wcs :serialization-length))
   ;; dms_msgs/DMSOrientation3f _gaze_center_wcs
     (send _gaze_center_wcs :deserialize buf ptr-) (incf ptr- (send _gaze_center_wcs :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSGazeResult :md5sum-) "548994173c65d7ee11da7a6c3921887a")
(setf (get dms_msgs::DMSGazeResult :datatype-) "dms_msgs/DMSGazeResult")
(setf (get dms_msgs::DMSGazeResult :definition-)
      "uint8 GAZE_SCORE_AVAILABLE = 1
uint8 GAZE_ORIENTATION_AVAILABLE = 2
uint8 GAZE_ORIENTATION_WCS_AVAILABLE = 4
uint8 available
float32 gaze_left_score
float32 gaze_right_score
float32 gaze_center_score
dms_msgs/DMSOrientation3f gaze_left
dms_msgs/DMSOrientation3f gaze_right
dms_msgs/DMSOrientation3f gaze_center
dms_msgs/DMSOrientation3f gaze_left_wcs
dms_msgs/DMSOrientation3f gaze_right_wcs
dms_msgs/DMSOrientation3f gaze_center_wcs

================================================================================
MSG: dms_msgs/DMSOrientation3f
float32 pitch
float32 yaw
float32 roll

")



(provide :dms_msgs/DMSGazeResult "548994173c65d7ee11da7a6c3921887a")


