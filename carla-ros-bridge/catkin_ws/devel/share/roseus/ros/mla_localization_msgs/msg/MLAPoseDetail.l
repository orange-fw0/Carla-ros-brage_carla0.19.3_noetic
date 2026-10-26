;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAPoseDetail)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAPoseDetail (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAPOSEDETAIL")
  (make-package "MLA_LOCALIZATION_MSGS::MLAPOSEDETAIL"))

(in-package "ROS")
;;//! \htmlinclude MLAPoseDetail.msg.html


(intern "*MLA_POSE_DETAIL_INFO*" (find-package "MLA_LOCALIZATION_MSGS::MLAPOSEDETAIL"))
(shadow '*MLA_POSE_DETAIL_INFO* (find-package "MLA_LOCALIZATION_MSGS::MLAPOSEDETAIL"))
(defconstant mla_localization_msgs::MLAPoseDetail::*MLA_POSE_DETAIL_INFO* 1)

(defun mla_localization_msgs::MLAPoseDetail-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAPoseDetail::*MLA_POSE_DETAIL_INFO*)
        (t nil)))

(defclass mla_localization_msgs::MLAPoseDetail
  :super ros::object
  :slots (_available _pose_detail_info ))

(defmethod mla_localization_msgs::MLAPoseDetail
  (:init
   (&key
    ((:available __available) 0)
    ((:pose_detail_info __pose_detail_info) (instance mla_localization_msgs::MLAPoseDetailInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _pose_detail_info __pose_detail_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:pose_detail_info
   (&rest __pose_detail_info)
   (if (keywordp (car __pose_detail_info))
       (send* _pose_detail_info __pose_detail_info)
     (progn
       (if __pose_detail_info (setq _pose_detail_info (car __pose_detail_info)))
       _pose_detail_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAPoseDetailInfo _pose_detail_info
    (send _pose_detail_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAPoseDetailInfo _pose_detail_info
       (send _pose_detail_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAPoseDetailInfo _pose_detail_info
     (send _pose_detail_info :deserialize buf ptr-) (incf ptr- (send _pose_detail_info :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAPoseDetail :md5sum-) "dc49525cabc3af4ef9362acc115adf41")
(setf (get mla_localization_msgs::MLAPoseDetail :datatype-) "mla_localization_msgs/MLAPoseDetail")
(setf (get mla_localization_msgs::MLAPoseDetail :definition-)
      "uint8 MLA_POSE_DETAIL_INFO = 1
uint8 available
mla_localization_msgs/MLAPoseDetailInfo pose_detail_info

================================================================================
MSG: mla_localization_msgs/MLAPoseDetailInfo
uint8 MLA_ESTIMATION_UNKNOWN = 0
uint8 MLA_ESTIMATION_PER_FRAME = 1
uint8 MLA_ESTIMATION_WINDOW_OPT = 2
uint8 MLA_ESTIMATION_DR = 3
uint8 available
bool is_keyframe
bool has_scale
uint8 pose_type

")



(provide :mla_localization_msgs/MLAPoseDetail "dc49525cabc3af4ef9362acc115adf41")


