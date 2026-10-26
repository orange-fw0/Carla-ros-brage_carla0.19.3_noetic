;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLATransform)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLATransform (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLATRANSFORM")
  (make-package "MLA_LOCALIZATION_MSGS::MLATRANSFORM"))

(in-package "ROS")
;;//! \htmlinclude MLATransform.msg.html


(intern "*MLA_TRANSFORM_LLH_TO_BOOT*" (find-package "MLA_LOCALIZATION_MSGS::MLATRANSFORM"))
(shadow '*MLA_TRANSFORM_LLH_TO_BOOT* (find-package "MLA_LOCALIZATION_MSGS::MLATRANSFORM"))
(defconstant mla_localization_msgs::MLATransform::*MLA_TRANSFORM_LLH_TO_BOOT* 1)
(intern "*MLA_TRANSFORM_AVPMAP_TO_BOOT*" (find-package "MLA_LOCALIZATION_MSGS::MLATRANSFORM"))
(shadow '*MLA_TRANSFORM_AVPMAP_TO_BOOT* (find-package "MLA_LOCALIZATION_MSGS::MLATRANSFORM"))
(defconstant mla_localization_msgs::MLATransform::*MLA_TRANSFORM_AVPMAP_TO_BOOT* 2)
(intern "*MLA_TRANSFORM_EGOMOTION_TO_BOOT*" (find-package "MLA_LOCALIZATION_MSGS::MLATRANSFORM"))
(shadow '*MLA_TRANSFORM_EGOMOTION_TO_BOOT* (find-package "MLA_LOCALIZATION_MSGS::MLATRANSFORM"))
(defconstant mla_localization_msgs::MLATransform::*MLA_TRANSFORM_EGOMOTION_TO_BOOT* 4)

(defun mla_localization_msgs::MLATransform-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLATransform::*MLA_TRANSFORM_LLH_TO_BOOT*)
        ((= const 2) 'mla_localization_msgs::MLATransform::*MLA_TRANSFORM_AVPMAP_TO_BOOT*)
        ((= const 4) 'mla_localization_msgs::MLATransform::*MLA_TRANSFORM_EGOMOTION_TO_BOOT*)
        (t nil)))

(defclass mla_localization_msgs::MLATransform
  :super ros::object
  :slots (_available _transform_llh_to_boot _transform_avp_map_to_boot _transform_ego_motion_to_boot ))

(defmethod mla_localization_msgs::MLATransform
  (:init
   (&key
    ((:available __available) 0)
    ((:transform_llh_to_boot __transform_llh_to_boot) (instance mla_localization_msgs::MLATransformInfo :init))
    ((:transform_avp_map_to_boot __transform_avp_map_to_boot) (instance mla_localization_msgs::MLATransformInfo :init))
    ((:transform_ego_motion_to_boot __transform_ego_motion_to_boot) (instance mla_localization_msgs::MLATransformInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _transform_llh_to_boot __transform_llh_to_boot)
   (setq _transform_avp_map_to_boot __transform_avp_map_to_boot)
   (setq _transform_ego_motion_to_boot __transform_ego_motion_to_boot)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:transform_llh_to_boot
   (&rest __transform_llh_to_boot)
   (if (keywordp (car __transform_llh_to_boot))
       (send* _transform_llh_to_boot __transform_llh_to_boot)
     (progn
       (if __transform_llh_to_boot (setq _transform_llh_to_boot (car __transform_llh_to_boot)))
       _transform_llh_to_boot)))
  (:transform_avp_map_to_boot
   (&rest __transform_avp_map_to_boot)
   (if (keywordp (car __transform_avp_map_to_boot))
       (send* _transform_avp_map_to_boot __transform_avp_map_to_boot)
     (progn
       (if __transform_avp_map_to_boot (setq _transform_avp_map_to_boot (car __transform_avp_map_to_boot)))
       _transform_avp_map_to_boot)))
  (:transform_ego_motion_to_boot
   (&rest __transform_ego_motion_to_boot)
   (if (keywordp (car __transform_ego_motion_to_boot))
       (send* _transform_ego_motion_to_boot __transform_ego_motion_to_boot)
     (progn
       (if __transform_ego_motion_to_boot (setq _transform_ego_motion_to_boot (car __transform_ego_motion_to_boot)))
       _transform_ego_motion_to_boot)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLATransformInfo _transform_llh_to_boot
    (send _transform_llh_to_boot :serialization-length)
    ;; mla_localization_msgs/MLATransformInfo _transform_avp_map_to_boot
    (send _transform_avp_map_to_boot :serialization-length)
    ;; mla_localization_msgs/MLATransformInfo _transform_ego_motion_to_boot
    (send _transform_ego_motion_to_boot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLATransformInfo _transform_llh_to_boot
       (send _transform_llh_to_boot :serialize s)
     ;; mla_localization_msgs/MLATransformInfo _transform_avp_map_to_boot
       (send _transform_avp_map_to_boot :serialize s)
     ;; mla_localization_msgs/MLATransformInfo _transform_ego_motion_to_boot
       (send _transform_ego_motion_to_boot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLATransformInfo _transform_llh_to_boot
     (send _transform_llh_to_boot :deserialize buf ptr-) (incf ptr- (send _transform_llh_to_boot :serialization-length))
   ;; mla_localization_msgs/MLATransformInfo _transform_avp_map_to_boot
     (send _transform_avp_map_to_boot :deserialize buf ptr-) (incf ptr- (send _transform_avp_map_to_boot :serialization-length))
   ;; mla_localization_msgs/MLATransformInfo _transform_ego_motion_to_boot
     (send _transform_ego_motion_to_boot :deserialize buf ptr-) (incf ptr- (send _transform_ego_motion_to_boot :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLATransform :md5sum-) "cb99cdf92a77c9e5ce9cc78517670216")
(setf (get mla_localization_msgs::MLATransform :datatype-) "mla_localization_msgs/MLATransform")
(setf (get mla_localization_msgs::MLATransform :definition-)
      "uint8 MLA_TRANSFORM_LLH_TO_BOOT = 1
uint8 MLA_TRANSFORM_AVPMAP_TO_BOOT = 2
uint8 MLA_TRANSFORM_EGOMOTION_TO_BOOT = 4
uint8 available
mla_localization_msgs/MLATransformInfo transform_llh_to_boot
mla_localization_msgs/MLATransformInfo transform_avp_map_to_boot
mla_localization_msgs/MLATransformInfo transform_ego_motion_to_boot

================================================================================
MSG: mla_localization_msgs/MLATransformInfo
mla_localization_msgs/MLAQuaternion transform_q
mla_localization_msgs/MLAPosLocal transform_t
mla_localization_msgs/MLAPosGlobal transform_center

================================================================================
MSG: mla_localization_msgs/MLAQuaternion
float64 w
float64 x
float64 y
float64 z

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

================================================================================
MSG: mla_localization_msgs/MLAPosGlobal
float64 latitude
float64 longitude
float64 altitude

")



(provide :mla_localization_msgs/MLATransform "cb99cdf92a77c9e5ce9cc78517670216")


