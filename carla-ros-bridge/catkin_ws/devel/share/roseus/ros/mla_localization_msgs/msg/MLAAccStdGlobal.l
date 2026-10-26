;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAAccStdGlobal)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAAccStdGlobal (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAACCSTDGLOBAL")
  (make-package "MLA_LOCALIZATION_MSGS::MLAACCSTDGLOBAL"))

(in-package "ROS")
;;//! \htmlinclude MLAAccStdGlobal.msg.html


(defclass mla_localization_msgs::MLAAccStdGlobal
  :super ros::object
  :slots (_std_ae _std_an _std_au ))

(defmethod mla_localization_msgs::MLAAccStdGlobal
  (:init
   (&key
    ((:std_ae __std_ae) 0.0)
    ((:std_an __std_an) 0.0)
    ((:std_au __std_au) 0.0)
    )
   (send-super :init)
   (setq _std_ae (float __std_ae))
   (setq _std_an (float __std_an))
   (setq _std_au (float __std_au))
   self)
  (:std_ae
   (&optional __std_ae)
   (if __std_ae (setq _std_ae __std_ae)) _std_ae)
  (:std_an
   (&optional __std_an)
   (if __std_an (setq _std_an __std_an)) _std_an)
  (:std_au
   (&optional __std_au)
   (if __std_au (setq _std_au __std_au)) _std_au)
  (:serialization-length
   ()
   (+
    ;; float64 _std_ae
    8
    ;; float64 _std_an
    8
    ;; float64 _std_au
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _std_ae
       (sys::poke _std_ae (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_an
       (sys::poke _std_an (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_au
       (sys::poke _std_au (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _std_ae
     (setq _std_ae (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_an
     (setq _std_an (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_au
     (setq _std_au (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAAccStdGlobal :md5sum-) "26a185d309e37a3ff7938ddc96aab849")
(setf (get mla_localization_msgs::MLAAccStdGlobal :datatype-) "mla_localization_msgs/MLAAccStdGlobal")
(setf (get mla_localization_msgs::MLAAccStdGlobal :definition-)
      "float64 std_ae
float64 std_an
float64 std_au

")



(provide :mla_localization_msgs/MLAAccStdGlobal "26a185d309e37a3ff7938ddc96aab849")


