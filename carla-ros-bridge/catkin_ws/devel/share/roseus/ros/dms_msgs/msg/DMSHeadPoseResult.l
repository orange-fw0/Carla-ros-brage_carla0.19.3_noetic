;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSHeadPoseResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSHeadPoseResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSHEADPOSERESULT")
  (make-package "DMS_MSGS::DMSHEADPOSERESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSHeadPoseResult.msg.html


(intern "*HEADPOSE_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(shadow '*HEADPOSE_AVAILABLE* (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(defconstant dms_msgs::DMSHeadPoseResult::*HEADPOSE_AVAILABLE* 1)
(intern "*HEADPOSE_WCS_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(shadow '*HEADPOSE_WCS_AVAILABLE* (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(defconstant dms_msgs::DMSHeadPoseResult::*HEADPOSE_WCS_AVAILABLE* 2)
(intern "*HEAD_MOVEMENT_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(shadow '*HEAD_MOVEMENT_AVAILABLE* (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(defconstant dms_msgs::DMSHeadPoseResult::*HEAD_MOVEMENT_AVAILABLE* 4)
(intern "*L2_HEAD_MOVEMENT_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(shadow '*L2_HEAD_MOVEMENT_AVAILABLE* (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(defconstant dms_msgs::DMSHeadPoseResult::*L2_HEAD_MOVEMENT_AVAILABLE* 8)
(intern "*L3_HEAD_MOVEMENT_AVAILABLE*" (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(shadow '*L3_HEAD_MOVEMENT_AVAILABLE* (find-package "DMS_MSGS::DMSHEADPOSERESULT"))
(defconstant dms_msgs::DMSHeadPoseResult::*L3_HEAD_MOVEMENT_AVAILABLE* 16)

(defun dms_msgs::DMSHeadPoseResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSHeadPoseResult::*HEADPOSE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSHeadPoseResult::*HEADPOSE_WCS_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSHeadPoseResult::*HEAD_MOVEMENT_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSHeadPoseResult::*L2_HEAD_MOVEMENT_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSHeadPoseResult::*L3_HEAD_MOVEMENT_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSHeadPoseResult
  :super ros::object
  :slots (_available _headpose_score _headpose _headpose_wcs _is_head_movement _l2_is_head_movement _l3_is_head_movement ))

(defmethod dms_msgs::DMSHeadPoseResult
  (:init
   (&key
    ((:available __available) 0)
    ((:headpose_score __headpose_score) 0.0)
    ((:headpose __headpose) (instance dms_msgs::DMSOrientation3f :init))
    ((:headpose_wcs __headpose_wcs) (instance dms_msgs::DMSOrientation3f :init))
    ((:is_head_movement __is_head_movement) nil)
    ((:l2_is_head_movement __l2_is_head_movement) nil)
    ((:l3_is_head_movement __l3_is_head_movement) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _headpose_score (float __headpose_score))
   (setq _headpose __headpose)
   (setq _headpose_wcs __headpose_wcs)
   (setq _is_head_movement __is_head_movement)
   (setq _l2_is_head_movement __l2_is_head_movement)
   (setq _l3_is_head_movement __l3_is_head_movement)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:headpose_score
   (&optional __headpose_score)
   (if __headpose_score (setq _headpose_score __headpose_score)) _headpose_score)
  (:headpose
   (&rest __headpose)
   (if (keywordp (car __headpose))
       (send* _headpose __headpose)
     (progn
       (if __headpose (setq _headpose (car __headpose)))
       _headpose)))
  (:headpose_wcs
   (&rest __headpose_wcs)
   (if (keywordp (car __headpose_wcs))
       (send* _headpose_wcs __headpose_wcs)
     (progn
       (if __headpose_wcs (setq _headpose_wcs (car __headpose_wcs)))
       _headpose_wcs)))
  (:is_head_movement
   (&optional (__is_head_movement :null))
   (if (not (eq __is_head_movement :null)) (setq _is_head_movement __is_head_movement)) _is_head_movement)
  (:l2_is_head_movement
   (&optional (__l2_is_head_movement :null))
   (if (not (eq __l2_is_head_movement :null)) (setq _l2_is_head_movement __l2_is_head_movement)) _l2_is_head_movement)
  (:l3_is_head_movement
   (&optional (__l3_is_head_movement :null))
   (if (not (eq __l3_is_head_movement :null)) (setq _l3_is_head_movement __l3_is_head_movement)) _l3_is_head_movement)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _headpose_score
    4
    ;; dms_msgs/DMSOrientation3f _headpose
    (send _headpose :serialization-length)
    ;; dms_msgs/DMSOrientation3f _headpose_wcs
    (send _headpose_wcs :serialization-length)
    ;; bool _is_head_movement
    1
    ;; bool _l2_is_head_movement
    1
    ;; bool _l3_is_head_movement
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _headpose_score
       (sys::poke _headpose_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dms_msgs/DMSOrientation3f _headpose
       (send _headpose :serialize s)
     ;; dms_msgs/DMSOrientation3f _headpose_wcs
       (send _headpose_wcs :serialize s)
     ;; bool _is_head_movement
       (if _is_head_movement (write-byte -1 s) (write-byte 0 s))
     ;; bool _l2_is_head_movement
       (if _l2_is_head_movement (write-byte -1 s) (write-byte 0 s))
     ;; bool _l3_is_head_movement
       (if _l3_is_head_movement (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _headpose_score
     (setq _headpose_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dms_msgs/DMSOrientation3f _headpose
     (send _headpose :deserialize buf ptr-) (incf ptr- (send _headpose :serialization-length))
   ;; dms_msgs/DMSOrientation3f _headpose_wcs
     (send _headpose_wcs :deserialize buf ptr-) (incf ptr- (send _headpose_wcs :serialization-length))
   ;; bool _is_head_movement
     (setq _is_head_movement (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _l2_is_head_movement
     (setq _l2_is_head_movement (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _l3_is_head_movement
     (setq _l3_is_head_movement (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dms_msgs::DMSHeadPoseResult :md5sum-) "59cdb4b01fae2170a0bbb018d0c12d3a")
(setf (get dms_msgs::DMSHeadPoseResult :datatype-) "dms_msgs/DMSHeadPoseResult")
(setf (get dms_msgs::DMSHeadPoseResult :definition-)
      "uint8 HEADPOSE_AVAILABLE = 1
uint8 HEADPOSE_WCS_AVAILABLE = 2
uint8 HEAD_MOVEMENT_AVAILABLE = 4
uint8 L2_HEAD_MOVEMENT_AVAILABLE = 8
uint8 L3_HEAD_MOVEMENT_AVAILABLE = 16
uint8 available
float32 headpose_score
dms_msgs/DMSOrientation3f headpose
dms_msgs/DMSOrientation3f headpose_wcs
bool is_head_movement
bool l2_is_head_movement
bool l3_is_head_movement

================================================================================
MSG: dms_msgs/DMSOrientation3f
float32 pitch
float32 yaw
float32 roll

")



(provide :dms_msgs/DMSHeadPoseResult "59cdb4b01fae2170a0bbb018d0c12d3a")


