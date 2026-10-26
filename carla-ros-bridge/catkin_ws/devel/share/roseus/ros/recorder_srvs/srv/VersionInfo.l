;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::VersionInfo)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'VersionInfo (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::VERSIONINFO")
  (make-package "RECORDER_SRVS::VERSIONINFO"))
(unless (find-package "RECORDER_SRVS::VERSIONINFOREQUEST")
  (make-package "RECORDER_SRVS::VERSIONINFOREQUEST"))
(unless (find-package "RECORDER_SRVS::VERSIONINFORESPONSE")
  (make-package "RECORDER_SRVS::VERSIONINFORESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::VersionInfoRequest
  :super ros::object
  :slots ())

(defmethod recorder_srvs::VersionInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass recorder_srvs::VersionInfoResponse
  :super ros::object
  :slots (_image_version _recorder_version _config_variant _config_version ))

(defmethod recorder_srvs::VersionInfoResponse
  (:init
   (&key
    ((:image_version __image_version) "")
    ((:recorder_version __recorder_version) "")
    ((:config_variant __config_variant) "")
    ((:config_version __config_version) "")
    )
   (send-super :init)
   (setq _image_version (string __image_version))
   (setq _recorder_version (string __recorder_version))
   (setq _config_variant (string __config_variant))
   (setq _config_version (string __config_version))
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
   ;;
   self)
  )

(defclass recorder_srvs::VersionInfo
  :super ros::object
  :slots ())

(setf (get recorder_srvs::VersionInfo :md5sum-) "d39f792ca7afbba66af9d8c790664401")
(setf (get recorder_srvs::VersionInfo :datatype-) "recorder_srvs/VersionInfo")
(setf (get recorder_srvs::VersionInfo :request) recorder_srvs::VersionInfoRequest)
(setf (get recorder_srvs::VersionInfo :response) recorder_srvs::VersionInfoResponse)

(defmethod recorder_srvs::VersionInfoRequest
  (:response () (instance recorder_srvs::VersionInfoResponse :init)))

(setf (get recorder_srvs::VersionInfoRequest :md5sum-) "d39f792ca7afbba66af9d8c790664401")
(setf (get recorder_srvs::VersionInfoRequest :datatype-) "recorder_srvs/VersionInfoRequest")
(setf (get recorder_srvs::VersionInfoRequest :definition-)
      "---
string image_version
string recorder_version
string config_variant
string config_version

")

(setf (get recorder_srvs::VersionInfoResponse :md5sum-) "d39f792ca7afbba66af9d8c790664401")
(setf (get recorder_srvs::VersionInfoResponse :datatype-) "recorder_srvs/VersionInfoResponse")
(setf (get recorder_srvs::VersionInfoResponse :definition-)
      "---
string image_version
string recorder_version
string config_variant
string config_version

")



(provide :recorder_srvs/VersionInfo "d39f792ca7afbba66af9d8c790664401")


