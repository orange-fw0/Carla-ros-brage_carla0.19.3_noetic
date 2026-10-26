;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::MagicCarpetMeta)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'MagicCarpetMeta (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETMETA")
  (make-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETMETA"))

(in-package "ROS")
;;//! \htmlinclude MagicCarpetMeta.msg.html


(defclass perception_interface_msgs::MagicCarpetMeta
  :super ros::object
  :slots (_sensor_timestamp_us _camera_tag ))

(defmethod perception_interface_msgs::MagicCarpetMeta
  (:init
   (&key
    ((:sensor_timestamp_us __sensor_timestamp_us) 0)
    ((:camera_tag __camera_tag) "")
    )
   (send-super :init)
   (setq _sensor_timestamp_us (round __sensor_timestamp_us))
   (setq _camera_tag (string __camera_tag))
   self)
  (:sensor_timestamp_us
   (&optional __sensor_timestamp_us)
   (if __sensor_timestamp_us (setq _sensor_timestamp_us __sensor_timestamp_us)) _sensor_timestamp_us)
  (:camera_tag
   (&optional __camera_tag)
   (if __camera_tag (setq _camera_tag __camera_tag)) _camera_tag)
  (:serialization-length
   ()
   (+
    ;; uint32 _sensor_timestamp_us
    4
    ;; string _camera_tag
    4 (length _camera_tag)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sensor_timestamp_us
       (write-long _sensor_timestamp_us s)
     ;; string _camera_tag
       (write-long (length _camera_tag) s) (princ _camera_tag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sensor_timestamp_us
     (setq _sensor_timestamp_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _camera_tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::MagicCarpetMeta :md5sum-) "109e7fe38bbb402d00aa8621ad7265e0")
(setf (get perception_interface_msgs::MagicCarpetMeta :datatype-) "perception_interface_msgs/MagicCarpetMeta")
(setf (get perception_interface_msgs::MagicCarpetMeta :definition-)
      "uint32 sensor_timestamp_us
string camera_tag

")



(provide :perception_interface_msgs/MagicCarpetMeta "109e7fe38bbb402d00aa8621ad7265e0")


