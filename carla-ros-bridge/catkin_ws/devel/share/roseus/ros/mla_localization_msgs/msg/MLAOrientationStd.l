;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAOrientationStd)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAOrientationStd (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATIONSTD")
  (make-package "MLA_LOCALIZATION_MSGS::MLAORIENTATIONSTD"))

(in-package "ROS")
;;//! \htmlinclude MLAOrientationStd.msg.html


(intern "*MLA_ORI_STD_XYZ*" (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATIONSTD"))
(shadow '*MLA_ORI_STD_XYZ* (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATIONSTD"))
(defconstant mla_localization_msgs::MLAOrientationStd::*MLA_ORI_STD_XYZ* 1)

(defun mla_localization_msgs::MLAOrientationStd-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAOrientationStd::*MLA_ORI_STD_XYZ*)
        (t nil)))

(defclass mla_localization_msgs::MLAOrientationStd
  :super ros::object
  :slots (_available _ori_std_xyz ))

(defmethod mla_localization_msgs::MLAOrientationStd
  (:init
   (&key
    ((:available __available) 0)
    ((:ori_std_xyz __ori_std_xyz) (instance mla_localization_msgs::MLAOriStdXyz :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _ori_std_xyz __ori_std_xyz)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:ori_std_xyz
   (&rest __ori_std_xyz)
   (if (keywordp (car __ori_std_xyz))
       (send* _ori_std_xyz __ori_std_xyz)
     (progn
       (if __ori_std_xyz (setq _ori_std_xyz (car __ori_std_xyz)))
       _ori_std_xyz)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAOriStdXyz _ori_std_xyz
    (send _ori_std_xyz :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAOriStdXyz _ori_std_xyz
       (send _ori_std_xyz :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAOriStdXyz _ori_std_xyz
     (send _ori_std_xyz :deserialize buf ptr-) (incf ptr- (send _ori_std_xyz :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAOrientationStd :md5sum-) "4e2301a2abe192f5c2b01527e58d8ac4")
(setf (get mla_localization_msgs::MLAOrientationStd :datatype-) "mla_localization_msgs/MLAOrientationStd")
(setf (get mla_localization_msgs::MLAOrientationStd :definition-)
      "uint8 MLA_ORI_STD_XYZ = 1
uint8 available
mla_localization_msgs/MLAOriStdXyz ori_std_xyz

================================================================================
MSG: mla_localization_msgs/MLAOriStdXyz
float64 std_faix
float64 std_faiy
float64 std_faiz

")



(provide :mla_localization_msgs/MLAOrientationStd "4e2301a2abe192f5c2b01527e58d8ac4")


