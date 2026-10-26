;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLATransformInfo)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLATransformInfo (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLATRANSFORMINFO")
  (make-package "MLA_LOCALIZATION_MSGS::MLATRANSFORMINFO"))

(in-package "ROS")
;;//! \htmlinclude MLATransformInfo.msg.html


(defclass mla_localization_msgs::MLATransformInfo
  :super ros::object
  :slots (_transform_q _transform_t _transform_center ))

(defmethod mla_localization_msgs::MLATransformInfo
  (:init
   (&key
    ((:transform_q __transform_q) (instance mla_localization_msgs::MLAQuaternion :init))
    ((:transform_t __transform_t) (instance mla_localization_msgs::MLAPosLocal :init))
    ((:transform_center __transform_center) (instance mla_localization_msgs::MLAPosGlobal :init))
    )
   (send-super :init)
   (setq _transform_q __transform_q)
   (setq _transform_t __transform_t)
   (setq _transform_center __transform_center)
   self)
  (:transform_q
   (&rest __transform_q)
   (if (keywordp (car __transform_q))
       (send* _transform_q __transform_q)
     (progn
       (if __transform_q (setq _transform_q (car __transform_q)))
       _transform_q)))
  (:transform_t
   (&rest __transform_t)
   (if (keywordp (car __transform_t))
       (send* _transform_t __transform_t)
     (progn
       (if __transform_t (setq _transform_t (car __transform_t)))
       _transform_t)))
  (:transform_center
   (&rest __transform_center)
   (if (keywordp (car __transform_center))
       (send* _transform_center __transform_center)
     (progn
       (if __transform_center (setq _transform_center (car __transform_center)))
       _transform_center)))
  (:serialization-length
   ()
   (+
    ;; mla_localization_msgs/MLAQuaternion _transform_q
    (send _transform_q :serialization-length)
    ;; mla_localization_msgs/MLAPosLocal _transform_t
    (send _transform_t :serialization-length)
    ;; mla_localization_msgs/MLAPosGlobal _transform_center
    (send _transform_center :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mla_localization_msgs/MLAQuaternion _transform_q
       (send _transform_q :serialize s)
     ;; mla_localization_msgs/MLAPosLocal _transform_t
       (send _transform_t :serialize s)
     ;; mla_localization_msgs/MLAPosGlobal _transform_center
       (send _transform_center :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mla_localization_msgs/MLAQuaternion _transform_q
     (send _transform_q :deserialize buf ptr-) (incf ptr- (send _transform_q :serialization-length))
   ;; mla_localization_msgs/MLAPosLocal _transform_t
     (send _transform_t :deserialize buf ptr-) (incf ptr- (send _transform_t :serialization-length))
   ;; mla_localization_msgs/MLAPosGlobal _transform_center
     (send _transform_center :deserialize buf ptr-) (incf ptr- (send _transform_center :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLATransformInfo :md5sum-) "a71623f72ebed93da4f6adb79297fa2b")
(setf (get mla_localization_msgs::MLATransformInfo :datatype-) "mla_localization_msgs/MLATransformInfo")
(setf (get mla_localization_msgs::MLATransformInfo :definition-)
      "mla_localization_msgs/MLAQuaternion transform_q
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



(provide :mla_localization_msgs/MLATransformInfo "a71623f72ebed93da4f6adb79297fa2b")


