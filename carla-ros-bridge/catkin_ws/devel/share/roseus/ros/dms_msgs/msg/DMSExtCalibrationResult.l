;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSExtCalibrationResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSExtCalibrationResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEXTCALIBRATIONRESULT")
  (make-package "DMS_MSGS::DMSEXTCALIBRATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSExtCalibrationResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSEXTCALIBRATIONRESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSEXTCALIBRATIONRESULT"))
(defconstant dms_msgs::DMSExtCalibrationResult::*UN_AVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "DMS_MSGS::DMSEXTCALIBRATIONRESULT"))
(shadow '*AVAILABLE* (find-package "DMS_MSGS::DMSEXTCALIBRATIONRESULT"))
(defconstant dms_msgs::DMSExtCalibrationResult::*AVAILABLE* 1)

(defun dms_msgs::DMSExtCalibrationResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSExtCalibrationResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSExtCalibrationResult::*AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSExtCalibrationResult
  :super ros::object
  :slots (_available _translation_matrix _rotation_matrix _event_type ))

(defmethod dms_msgs::DMSExtCalibrationResult
  (:init
   (&key
    ((:available __available) 0)
    ((:translation_matrix __translation_matrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rotation_matrix __rotation_matrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:event_type __event_type) (instance dms_msgs::DMSEventTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _translation_matrix __translation_matrix)
   (setq _rotation_matrix __rotation_matrix)
   (setq _event_type __event_type)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:translation_matrix
   (&optional __translation_matrix)
   (if __translation_matrix (setq _translation_matrix __translation_matrix)) _translation_matrix)
  (:rotation_matrix
   (&optional __rotation_matrix)
   (if __rotation_matrix (setq _rotation_matrix __rotation_matrix)) _rotation_matrix)
  (:event_type
   (&rest __event_type)
   (if (keywordp (car __event_type))
       (send* _event_type __event_type)
     (progn
       (if __event_type (setq _event_type (car __event_type)))
       _event_type)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32[] _translation_matrix
    (* 4    (length _translation_matrix)) 4
    ;; float32[] _rotation_matrix
    (* 4    (length _rotation_matrix)) 4
    ;; dms_msgs/DMSEventTypeEnum _event_type
    (send _event_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32[] _translation_matrix
     (write-long (length _translation_matrix) s)
     (dotimes (i (length _translation_matrix))
       (sys::poke (elt _translation_matrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rotation_matrix
     (write-long (length _rotation_matrix) s)
     (dotimes (i (length _rotation_matrix))
       (sys::poke (elt _rotation_matrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; dms_msgs/DMSEventTypeEnum _event_type
       (send _event_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _translation_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _translation_matrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _translation_matrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rotation_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rotation_matrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rotation_matrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; dms_msgs/DMSEventTypeEnum _event_type
     (send _event_type :deserialize buf ptr-) (incf ptr- (send _event_type :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSExtCalibrationResult :md5sum-) "1c26cfd464270b1b4d155cdea024cce9")
(setf (get dms_msgs::DMSExtCalibrationResult :datatype-) "dms_msgs/DMSExtCalibrationResult")
(setf (get dms_msgs::DMSExtCalibrationResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 available
float32[] translation_matrix
float32[] rotation_matrix
dms_msgs/DMSEventTypeEnum event_type

================================================================================
MSG: dms_msgs/DMSEventTypeEnum
uint8 DMS_EVENT_UNKNOWN = 0
uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1
uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2
uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100
uint8 DMS_EVENT_WARNING_YAWN = 101
uint8 DMS_EVENT_WARNING_DRINK = 102
uint8 DMS_EVENT_WARNING_PHONE_CALL = 103
uint8 DMS_EVENT_WARNING_SMOKE = 104
uint8 DMS_EVENT_WARNING_DROWSINESS = 105
uint8 DMS_EVENT_DISTRACTION = 106
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112
uint8 DMS_EVENT_HEAD_SHAKE = 109
uint8 DMS_EVENT_HEAD_NOD = 110
uint8 DMS_EVENT_MUTE = 111
uint8 DMS_EVENT_RESERVED = 112
uint8 DMS_EVENT_RESERVED1 = 113
uint8 DMS_EVENT_RESERVED2 = 114
uint8 DMS_EVENT_RESERVED3 = 115
uint8 DMS_EVENT_RESERVED4 = 116
uint8 value

")



(provide :dms_msgs/DMSExtCalibrationResult "1c26cfd464270b1b4d155cdea024cce9")


