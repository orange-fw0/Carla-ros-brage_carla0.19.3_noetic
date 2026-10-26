;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAVelLocal)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAVelLocal (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAVELLOCAL")
  (make-package "MLA_LOCALIZATION_MSGS::MLAVELLOCAL"))

(in-package "ROS")
;;//! \htmlinclude MLAVelLocal.msg.html


(defclass mla_localization_msgs::MLAVelLocal
  :super ros::object
  :slots (_vx _vy _vz ))

(defmethod mla_localization_msgs::MLAVelLocal
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAVelLocal :md5sum-) "ffb367ff390f5e01cb55c0c75927c19a")
(setf (get mla_localization_msgs::MLAVelLocal :datatype-) "mla_localization_msgs/MLAVelLocal")
(setf (get mla_localization_msgs::MLAVelLocal :definition-)
      "float64 vx
float64 vy
float64 vz

")



(provide :mla_localization_msgs/MLAVelLocal "ffb367ff390f5e01cb55c0c75927c19a")


