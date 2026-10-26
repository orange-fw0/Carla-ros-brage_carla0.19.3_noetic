;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSBasicSignalResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSBasicSignalResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSBASICSIGNALRESULT")
  (make-package "DMS_MSGS::DMSBASICSIGNALRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSBasicSignalResult.msg.html


(intern "*BASE_HEADPOSE_AVAILABLE*" (find-package "DMS_MSGS::DMSBASICSIGNALRESULT"))
(shadow '*BASE_HEADPOSE_AVAILABLE* (find-package "DMS_MSGS::DMSBASICSIGNALRESULT"))
(defconstant dms_msgs::DMSBasicSignalResult::*BASE_HEADPOSE_AVAILABLE* 1)
(intern "*BASE_GAZE_AVAILABLE*" (find-package "DMS_MSGS::DMSBASICSIGNALRESULT"))
(shadow '*BASE_GAZE_AVAILABLE* (find-package "DMS_MSGS::DMSBASICSIGNALRESULT"))
(defconstant dms_msgs::DMSBasicSignalResult::*BASE_GAZE_AVAILABLE* 2)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSBASICSIGNALRESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSBASICSIGNALRESULT"))
(defconstant dms_msgs::DMSBasicSignalResult::*RESERVED* 4)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DMSBASICSIGNALRESULT"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DMSBASICSIGNALRESULT"))
(defconstant dms_msgs::DMSBasicSignalResult::*RESERVED1* 8)

(defun dms_msgs::DMSBasicSignalResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSBasicSignalResult::*BASE_HEADPOSE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSBasicSignalResult::*BASE_GAZE_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSBasicSignalResult::*RESERVED*)
        ((= const 8) 'dms_msgs::DMSBasicSignalResult::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::DMSBasicSignalResult
  :super ros::object
  :slots (_available _base_headpose _base_gaze _reserved _reserved1 ))

(defmethod dms_msgs::DMSBasicSignalResult
  (:init
   (&key
    ((:available __available) 0)
    ((:base_headpose __base_headpose) (instance dms_msgs::DMSOrientation3f :init))
    ((:base_gaze __base_gaze) (instance dms_msgs::DMSOrientation3f :init))
    ((:reserved __reserved) 0.0)
    ((:reserved1 __reserved1) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _base_headpose __base_headpose)
   (setq _base_gaze __base_gaze)
   (setq _reserved (float __reserved))
   (setq _reserved1 (float __reserved1))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:base_headpose
   (&rest __base_headpose)
   (if (keywordp (car __base_headpose))
       (send* _base_headpose __base_headpose)
     (progn
       (if __base_headpose (setq _base_headpose (car __base_headpose)))
       _base_headpose)))
  (:base_gaze
   (&rest __base_gaze)
   (if (keywordp (car __base_gaze))
       (send* _base_gaze __base_gaze)
     (progn
       (if __base_gaze (setq _base_gaze (car __base_gaze)))
       _base_gaze)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSOrientation3f _base_headpose
    (send _base_headpose :serialization-length)
    ;; dms_msgs/DMSOrientation3f _base_gaze
    (send _base_gaze :serialization-length)
    ;; float32 _reserved
    4
    ;; float32 _reserved1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSOrientation3f _base_headpose
       (send _base_headpose :serialize s)
     ;; dms_msgs/DMSOrientation3f _base_gaze
       (send _base_gaze :serialize s)
     ;; float32 _reserved
       (sys::poke _reserved (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSOrientation3f _base_headpose
     (send _base_headpose :deserialize buf ptr-) (incf ptr- (send _base_headpose :serialization-length))
   ;; dms_msgs/DMSOrientation3f _base_gaze
     (send _base_gaze :deserialize buf ptr-) (incf ptr- (send _base_gaze :serialization-length))
   ;; float32 _reserved
     (setq _reserved (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSBasicSignalResult :md5sum-) "a3f6decf3c0e514f175e7b0711f4841b")
(setf (get dms_msgs::DMSBasicSignalResult :datatype-) "dms_msgs/DMSBasicSignalResult")
(setf (get dms_msgs::DMSBasicSignalResult :definition-)
      "uint8 BASE_HEADPOSE_AVAILABLE = 1
uint8 BASE_GAZE_AVAILABLE = 2
uint8 RESERVED = 4
uint8 RESERVED1 = 8
uint8 available
dms_msgs/DMSOrientation3f base_headpose
dms_msgs/DMSOrientation3f base_gaze
float32 reserved
float32 reserved1

================================================================================
MSG: dms_msgs/DMSOrientation3f
float32 pitch
float32 yaw
float32 roll

")



(provide :dms_msgs/DMSBasicSignalResult "a3f6decf3c0e514f175e7b0711f4841b")


