;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAVelStdGlobal)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAVelStdGlobal (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAVELSTDGLOBAL")
  (make-package "MLA_LOCALIZATION_MSGS::MLAVELSTDGLOBAL"))

(in-package "ROS")
;;//! \htmlinclude MLAVelStdGlobal.msg.html


(defclass mla_localization_msgs::MLAVelStdGlobal
  :super ros::object
  :slots (_std_ve _std_vn _std_vu ))

(defmethod mla_localization_msgs::MLAVelStdGlobal
  (:init
   (&key
    ((:std_ve __std_ve) 0.0)
    ((:std_vn __std_vn) 0.0)
    ((:std_vu __std_vu) 0.0)
    )
   (send-super :init)
   (setq _std_ve (float __std_ve))
   (setq _std_vn (float __std_vn))
   (setq _std_vu (float __std_vu))
   self)
  (:std_ve
   (&optional __std_ve)
   (if __std_ve (setq _std_ve __std_ve)) _std_ve)
  (:std_vn
   (&optional __std_vn)
   (if __std_vn (setq _std_vn __std_vn)) _std_vn)
  (:std_vu
   (&optional __std_vu)
   (if __std_vu (setq _std_vu __std_vu)) _std_vu)
  (:serialization-length
   ()
   (+
    ;; float64 _std_ve
    8
    ;; float64 _std_vn
    8
    ;; float64 _std_vu
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _std_ve
       (sys::poke _std_ve (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_vn
       (sys::poke _std_vn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_vu
       (sys::poke _std_vu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _std_ve
     (setq _std_ve (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_vn
     (setq _std_vn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_vu
     (setq _std_vu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAVelStdGlobal :md5sum-) "7cc88c7fdc6618fe4597135b62a6b9f2")
(setf (get mla_localization_msgs::MLAVelStdGlobal :datatype-) "mla_localization_msgs/MLAVelStdGlobal")
(setf (get mla_localization_msgs::MLAVelStdGlobal :definition-)
      "float64 std_ve
float64 std_vn
float64 std_vu

")



(provide :mla_localization_msgs/MLAVelStdGlobal "7cc88c7fdc6618fe4597135b62a6b9f2")


