;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAPosStdLocal)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAPosStdLocal (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAPOSSTDLOCAL")
  (make-package "MLA_LOCALIZATION_MSGS::MLAPOSSTDLOCAL"))

(in-package "ROS")
;;//! \htmlinclude MLAPosStdLocal.msg.html


(defclass mla_localization_msgs::MLAPosStdLocal
  :super ros::object
  :slots (_std_px _std_py _std_pz ))

(defmethod mla_localization_msgs::MLAPosStdLocal
  (:init
   (&key
    ((:std_px __std_px) 0.0)
    ((:std_py __std_py) 0.0)
    ((:std_pz __std_pz) 0.0)
    )
   (send-super :init)
   (setq _std_px (float __std_px))
   (setq _std_py (float __std_py))
   (setq _std_pz (float __std_pz))
   self)
  (:std_px
   (&optional __std_px)
   (if __std_px (setq _std_px __std_px)) _std_px)
  (:std_py
   (&optional __std_py)
   (if __std_py (setq _std_py __std_py)) _std_py)
  (:std_pz
   (&optional __std_pz)
   (if __std_pz (setq _std_pz __std_pz)) _std_pz)
  (:serialization-length
   ()
   (+
    ;; float64 _std_px
    8
    ;; float64 _std_py
    8
    ;; float64 _std_pz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _std_px
       (sys::poke _std_px (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_py
       (sys::poke _std_py (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_pz
       (sys::poke _std_pz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _std_px
     (setq _std_px (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_py
     (setq _std_py (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_pz
     (setq _std_pz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAPosStdLocal :md5sum-) "d1f33cc0d1e6dccecd1dd14995e930ba")
(setf (get mla_localization_msgs::MLAPosStdLocal :datatype-) "mla_localization_msgs/MLAPosStdLocal")
(setf (get mla_localization_msgs::MLAPosStdLocal :definition-)
      "float64 std_px
float64 std_py
float64 std_pz

")



(provide :mla_localization_msgs/MLAPosStdLocal "d1f33cc0d1e6dccecd1dd14995e930ba")


