;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSKeypointsResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSKeypointsResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSKEYPOINTSRESULT")
  (make-package "DMS_MSGS::DMSKEYPOINTSRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSKeypointsResult.msg.html


(intern "*KEYPOINTS_2D_AVAILABLE*" (find-package "DMS_MSGS::DMSKEYPOINTSRESULT"))
(shadow '*KEYPOINTS_2D_AVAILABLE* (find-package "DMS_MSGS::DMSKEYPOINTSRESULT"))
(defconstant dms_msgs::DMSKeypointsResult::*KEYPOINTS_2D_AVAILABLE* 1)
(intern "*KEYPOINTS_3D_AVAILABLE*" (find-package "DMS_MSGS::DMSKEYPOINTSRESULT"))
(shadow '*KEYPOINTS_3D_AVAILABLE* (find-package "DMS_MSGS::DMSKEYPOINTSRESULT"))
(defconstant dms_msgs::DMSKeypointsResult::*KEYPOINTS_3D_AVAILABLE* 2)
(intern "*KEYPOINTS_3D_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSKEYPOINTSRESULT"))
(shadow '*KEYPOINTS_3D_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSKEYPOINTSRESULT"))
(defconstant dms_msgs::DMSKeypointsResult::*KEYPOINTS_3D_WCS_AVAILABLE* 4)

(defun dms_msgs::DMSKeypointsResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSKeypointsResult::*KEYPOINTS_2D_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSKeypointsResult::*KEYPOINTS_3D_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSKeypointsResult::*KEYPOINTS_3D_WCS_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSKeypointsResult
  :super ros::object
  :slots (_available _keypoint_score _keypoints _keypoints_left_eye _keypoints_right_eye _keypoints_pupil _keypoints3d _keypoints3d_wcs ))

(defmethod dms_msgs::DMSKeypointsResult
  (:init
   (&key
    ((:available __available) 0)
    ((:keypoint_score __keypoint_score) 0.0)
    ((:keypoints __keypoints) ())
    ((:keypoints_left_eye __keypoints_left_eye) ())
    ((:keypoints_right_eye __keypoints_right_eye) ())
    ((:keypoints_pupil __keypoints_pupil) ())
    ((:keypoints3d __keypoints3d) ())
    ((:keypoints3d_wcs __keypoints3d_wcs) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _keypoint_score (float __keypoint_score))
   (setq _keypoints __keypoints)
   (setq _keypoints_left_eye __keypoints_left_eye)
   (setq _keypoints_right_eye __keypoints_right_eye)
   (setq _keypoints_pupil __keypoints_pupil)
   (setq _keypoints3d __keypoints3d)
   (setq _keypoints3d_wcs __keypoints3d_wcs)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:keypoint_score
   (&optional __keypoint_score)
   (if __keypoint_score (setq _keypoint_score __keypoint_score)) _keypoint_score)
  (:keypoints
   (&rest __keypoints)
   (if (keywordp (car __keypoints))
       (send* _keypoints __keypoints)
     (progn
       (if __keypoints (setq _keypoints (car __keypoints)))
       _keypoints)))
  (:keypoints_left_eye
   (&rest __keypoints_left_eye)
   (if (keywordp (car __keypoints_left_eye))
       (send* _keypoints_left_eye __keypoints_left_eye)
     (progn
       (if __keypoints_left_eye (setq _keypoints_left_eye (car __keypoints_left_eye)))
       _keypoints_left_eye)))
  (:keypoints_right_eye
   (&rest __keypoints_right_eye)
   (if (keywordp (car __keypoints_right_eye))
       (send* _keypoints_right_eye __keypoints_right_eye)
     (progn
       (if __keypoints_right_eye (setq _keypoints_right_eye (car __keypoints_right_eye)))
       _keypoints_right_eye)))
  (:keypoints_pupil
   (&rest __keypoints_pupil)
   (if (keywordp (car __keypoints_pupil))
       (send* _keypoints_pupil __keypoints_pupil)
     (progn
       (if __keypoints_pupil (setq _keypoints_pupil (car __keypoints_pupil)))
       _keypoints_pupil)))
  (:keypoints3d
   (&rest __keypoints3d)
   (if (keywordp (car __keypoints3d))
       (send* _keypoints3d __keypoints3d)
     (progn
       (if __keypoints3d (setq _keypoints3d (car __keypoints3d)))
       _keypoints3d)))
  (:keypoints3d_wcs
   (&rest __keypoints3d_wcs)
   (if (keywordp (car __keypoints3d_wcs))
       (send* _keypoints3d_wcs __keypoints3d_wcs)
     (progn
       (if __keypoints3d_wcs (setq _keypoints3d_wcs (car __keypoints3d_wcs)))
       _keypoints3d_wcs)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _keypoint_score
    4
    ;; dms_msgs/DMSPoint2f[] _keypoints
    (apply #'+ (send-all _keypoints :serialization-length)) 4
    ;; dms_msgs/DMSPoint2f[] _keypoints_left_eye
    (apply #'+ (send-all _keypoints_left_eye :serialization-length)) 4
    ;; dms_msgs/DMSPoint2f[] _keypoints_right_eye
    (apply #'+ (send-all _keypoints_right_eye :serialization-length)) 4
    ;; dms_msgs/DMSPoint2f[] _keypoints_pupil
    (apply #'+ (send-all _keypoints_pupil :serialization-length)) 4
    ;; dms_msgs/DMSPoint3f[] _keypoints3d
    (apply #'+ (send-all _keypoints3d :serialization-length)) 4
    ;; dms_msgs/DMSPoint3f[] _keypoints3d_wcs
    (apply #'+ (send-all _keypoints3d_wcs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _keypoint_score
       (sys::poke _keypoint_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dms_msgs/DMSPoint2f[] _keypoints
     (write-long (length _keypoints) s)
     (dolist (elem _keypoints)
       (send elem :serialize s)
       )
     ;; dms_msgs/DMSPoint2f[] _keypoints_left_eye
     (write-long (length _keypoints_left_eye) s)
     (dolist (elem _keypoints_left_eye)
       (send elem :serialize s)
       )
     ;; dms_msgs/DMSPoint2f[] _keypoints_right_eye
     (write-long (length _keypoints_right_eye) s)
     (dolist (elem _keypoints_right_eye)
       (send elem :serialize s)
       )
     ;; dms_msgs/DMSPoint2f[] _keypoints_pupil
     (write-long (length _keypoints_pupil) s)
     (dolist (elem _keypoints_pupil)
       (send elem :serialize s)
       )
     ;; dms_msgs/DMSPoint3f[] _keypoints3d
     (write-long (length _keypoints3d) s)
     (dolist (elem _keypoints3d)
       (send elem :serialize s)
       )
     ;; dms_msgs/DMSPoint3f[] _keypoints3d_wcs
     (write-long (length _keypoints3d_wcs) s)
     (dolist (elem _keypoints3d_wcs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _keypoint_score
     (setq _keypoint_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dms_msgs/DMSPoint2f[] _keypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keypoints (let (r) (dotimes (i n) (push (instance dms_msgs::DMSPoint2f :init) r)) r))
     (dolist (elem- _keypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/DMSPoint2f[] _keypoints_left_eye
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keypoints_left_eye (let (r) (dotimes (i n) (push (instance dms_msgs::DMSPoint2f :init) r)) r))
     (dolist (elem- _keypoints_left_eye)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/DMSPoint2f[] _keypoints_right_eye
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keypoints_right_eye (let (r) (dotimes (i n) (push (instance dms_msgs::DMSPoint2f :init) r)) r))
     (dolist (elem- _keypoints_right_eye)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/DMSPoint2f[] _keypoints_pupil
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keypoints_pupil (let (r) (dotimes (i n) (push (instance dms_msgs::DMSPoint2f :init) r)) r))
     (dolist (elem- _keypoints_pupil)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/DMSPoint3f[] _keypoints3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keypoints3d (let (r) (dotimes (i n) (push (instance dms_msgs::DMSPoint3f :init) r)) r))
     (dolist (elem- _keypoints3d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/DMSPoint3f[] _keypoints3d_wcs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keypoints3d_wcs (let (r) (dotimes (i n) (push (instance dms_msgs::DMSPoint3f :init) r)) r))
     (dolist (elem- _keypoints3d_wcs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dms_msgs::DMSKeypointsResult :md5sum-) "d3e2f698008751ea1fc252e991281640")
(setf (get dms_msgs::DMSKeypointsResult :datatype-) "dms_msgs/DMSKeypointsResult")
(setf (get dms_msgs::DMSKeypointsResult :definition-)
      "uint8 KEYPOINTS_2D_AVAILABLE = 1
uint8 KEYPOINTS_3D_AVAILABLE = 2
uint8 KEYPOINTS_3D_WCS_AVAILABLE = 4
uint8 available
float32 keypoint_score
dms_msgs/DMSPoint2f[] keypoints
dms_msgs/DMSPoint2f[] keypoints_left_eye
dms_msgs/DMSPoint2f[] keypoints_right_eye
dms_msgs/DMSPoint2f[] keypoints_pupil
dms_msgs/DMSPoint3f[] keypoints3d
dms_msgs/DMSPoint3f[] keypoints3d_wcs

================================================================================
MSG: dms_msgs/DMSPoint2f
float32 x
float32 y

================================================================================
MSG: dms_msgs/DMSPoint3f
float32 x
float32 y
float32 z

")



(provide :dms_msgs/DMSKeypointsResult "d3e2f698008751ea1fc252e991281640")


