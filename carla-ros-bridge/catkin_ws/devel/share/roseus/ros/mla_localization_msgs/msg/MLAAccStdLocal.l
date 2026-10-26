;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAAccStdLocal)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAAccStdLocal (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAACCSTDLOCAL")
  (make-package "MLA_LOCALIZATION_MSGS::MLAACCSTDLOCAL"))

(in-package "ROS")
;;//! \htmlinclude MLAAccStdLocal.msg.html


(defclass mla_localization_msgs::MLAAccStdLocal
  :super ros::object
  :slots (_std_ax _std_ay _std_az ))

(defmethod mla_localization_msgs::MLAAccStdLocal
  (:init
   (&key
    ((:std_ax __std_ax) 0.0)
    ((:std_ay __std_ay) 0.0)
    ((:std_az __std_az) 0.0)
    )
   (send-super :init)
   (setq _std_ax (float __std_ax))
   (setq _std_ay (float __std_ay))
   (setq _std_az (float __std_az))
   self)
  (:std_ax
   (&optional __std_ax)
   (if __std_ax (setq _std_ax __std_ax)) _std_ax)
  (:std_ay
   (&optional __std_ay)
   (if __std_ay (setq _std_ay __std_ay)) _std_ay)
  (:std_az
   (&optional __std_az)
   (if __std_az (setq _std_az __std_az)) _std_az)
  (:serialization-length
   ()
   (+
    ;; float64 _std_ax
    8
    ;; float64 _std_ay
    8
    ;; float64 _std_az
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _std_ax
       (sys::poke _std_ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_ay
       (sys::poke _std_ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_az
       (sys::poke _std_az (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _std_ax
     (setq _std_ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_ay
     (setq _std_ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_az
     (setq _std_az (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAAccStdLocal :md5sum-) "fdb867b31b2a674c983f7e57dd32fd6a")
(setf (get mla_localization_msgs::MLAAccStdLocal :datatype-) "mla_localization_msgs/MLAAccStdLocal")
(setf (get mla_localization_msgs::MLAAccStdLocal :definition-)
      "float64 std_ax
float64 std_ay
float64 std_az

")



(provide :mla_localization_msgs/MLAAccStdLocal "fdb867b31b2a674c983f7e57dd32fd6a")


