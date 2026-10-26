;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAOriStdXyz)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAOriStdXyz (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAORISTDXYZ")
  (make-package "MLA_LOCALIZATION_MSGS::MLAORISTDXYZ"))

(in-package "ROS")
;;//! \htmlinclude MLAOriStdXyz.msg.html


(defclass mla_localization_msgs::MLAOriStdXyz
  :super ros::object
  :slots (_std_faix _std_faiy _std_faiz ))

(defmethod mla_localization_msgs::MLAOriStdXyz
  (:init
   (&key
    ((:std_faix __std_faix) 0.0)
    ((:std_faiy __std_faiy) 0.0)
    ((:std_faiz __std_faiz) 0.0)
    )
   (send-super :init)
   (setq _std_faix (float __std_faix))
   (setq _std_faiy (float __std_faiy))
   (setq _std_faiz (float __std_faiz))
   self)
  (:std_faix
   (&optional __std_faix)
   (if __std_faix (setq _std_faix __std_faix)) _std_faix)
  (:std_faiy
   (&optional __std_faiy)
   (if __std_faiy (setq _std_faiy __std_faiy)) _std_faiy)
  (:std_faiz
   (&optional __std_faiz)
   (if __std_faiz (setq _std_faiz __std_faiz)) _std_faiz)
  (:serialization-length
   ()
   (+
    ;; float64 _std_faix
    8
    ;; float64 _std_faiy
    8
    ;; float64 _std_faiz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _std_faix
       (sys::poke _std_faix (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_faiy
       (sys::poke _std_faiy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_faiz
       (sys::poke _std_faiz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _std_faix
     (setq _std_faix (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_faiy
     (setq _std_faiy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_faiz
     (setq _std_faiz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAOriStdXyz :md5sum-) "4321d049e56b7aec6a5970a3463d66bc")
(setf (get mla_localization_msgs::MLAOriStdXyz :datatype-) "mla_localization_msgs/MLAOriStdXyz")
(setf (get mla_localization_msgs::MLAOriStdXyz :definition-)
      "float64 std_faix
float64 std_faiy
float64 std_faiz

")



(provide :mla_localization_msgs/MLAOriStdXyz "4321d049e56b7aec6a5970a3463d66bc")


