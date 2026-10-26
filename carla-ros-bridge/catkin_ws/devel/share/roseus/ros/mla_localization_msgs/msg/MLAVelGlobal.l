;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAVelGlobal)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAVelGlobal (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAVELGLOBAL")
  (make-package "MLA_LOCALIZATION_MSGS::MLAVELGLOBAL"))

(in-package "ROS")
;;//! \htmlinclude MLAVelGlobal.msg.html


(defclass mla_localization_msgs::MLAVelGlobal
  :super ros::object
  :slots (_ve _vn _vu ))

(defmethod mla_localization_msgs::MLAVelGlobal
  (:init
   (&key
    ((:ve __ve) 0.0)
    ((:vn __vn) 0.0)
    ((:vu __vu) 0.0)
    )
   (send-super :init)
   (setq _ve (float __ve))
   (setq _vn (float __vn))
   (setq _vu (float __vu))
   self)
  (:ve
   (&optional __ve)
   (if __ve (setq _ve __ve)) _ve)
  (:vn
   (&optional __vn)
   (if __vn (setq _vn __vn)) _vn)
  (:vu
   (&optional __vu)
   (if __vu (setq _vu __vu)) _vu)
  (:serialization-length
   ()
   (+
    ;; float64 _ve
    8
    ;; float64 _vn
    8
    ;; float64 _vu
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ve
       (sys::poke _ve (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vn
       (sys::poke _vn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vu
       (sys::poke _vu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ve
     (setq _ve (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vn
     (setq _vn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vu
     (setq _vu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAVelGlobal :md5sum-) "1b16a288a0ff22beae511ece39b20beb")
(setf (get mla_localization_msgs::MLAVelGlobal :datatype-) "mla_localization_msgs/MLAVelGlobal")
(setf (get mla_localization_msgs::MLAVelGlobal :definition-)
      "float64 ve
float64 vn
float64 vu

")



(provide :mla_localization_msgs/MLAVelGlobal "1b16a288a0ff22beae511ece39b20beb")


