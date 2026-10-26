;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::VersionInfo)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'VersionInfo (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::VERSIONINFO")
  (make-package "RECORDER_MSGS::VERSIONINFO"))

(in-package "ROS")
;;//! \htmlinclude VersionInfo.msg.html


(defclass recorder_msgs::VersionInfo
  :super ros::object
  :slots (_image_version _recorder_version _config_variant _config_version _format_version ))

(defmethod recorder_msgs::VersionInfo
  (:init
   (&key
    ((:image_version __image_version) "")
    ((:recorder_version __recorder_version) "")
    ((:config_variant __config_variant) "")
    ((:config_version __config_version) "")
    ((:format_version __format_version) "")
    )
   (send-super :init)
   (setq _image_version (string __image_version))
   (setq _recorder_version (string __recorder_version))
   (setq _config_variant (string __config_variant))
   (setq _config_version (string __config_version))
   (setq _format_version (string __format_version))
   self)
  (:image_version
   (&optional __image_version)
   (if __image_version (setq _image_version __image_version)) _image_version)
  (:recorder_version
   (&optional __recorder_version)
   (if __recorder_version (setq _recorder_version __recorder_version)) _recorder_version)
  (:config_variant
   (&optional __config_variant)
   (if __config_variant (setq _config_variant __config_variant)) _config_variant)
  (:config_version
   (&optional __config_version)
   (if __config_version (setq _config_version __config_version)) _config_version)
  (:format_version
   (&optional __format_version)
   (if __format_version (setq _format_version __format_version)) _format_version)
  (:serialization-length
   ()
   (+
    ;; string _image_version
    4 (length _image_version)
    ;; string _recorder_version
    4 (length _recorder_version)
    ;; string _config_variant
    4 (length _config_variant)
    ;; string _config_version
    4 (length _config_version)
    ;; string _format_version
    4 (length _format_version)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _image_version
       (write-long (length _image_version) s) (princ _image_version s)
     ;; string _recorder_version
       (write-long (length _recorder_version) s) (princ _recorder_version s)
     ;; string _config_variant
       (write-long (length _config_variant) s) (princ _config_variant s)
     ;; string _config_version
       (write-long (length _config_version) s) (princ _config_version s)
     ;; string _format_version
       (write-long (length _format_version) s) (princ _format_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _image_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _recorder_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _recorder_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _config_variant
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _config_variant (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _config_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _config_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _format_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get recorder_msgs::VersionInfo :md5sum-) "0e09ede7bc4c80cfdd9e0db7c9c6fad1")
(setf (get recorder_msgs::VersionInfo :datatype-) "recorder_msgs/VersionInfo")
(setf (get recorder_msgs::VersionInfo :definition-)
      "string image_version
string recorder_version
string config_variant
string config_version
string format_version
")



(provide :recorder_msgs/VersionInfo "0e09ede7bc4c80cfdd9e0db7c9c6fad1")


