;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::DiskList)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'DiskList (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::DISKLIST")
  (make-package "RECORDER_SRVS::DISKLIST"))
(unless (find-package "RECORDER_SRVS::DISKLISTREQUEST")
  (make-package "RECORDER_SRVS::DISKLISTREQUEST"))
(unless (find-package "RECORDER_SRVS::DISKLISTRESPONSE")
  (make-package "RECORDER_SRVS::DISKLISTRESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::DiskListRequest
  :super ros::object
  :slots ())

(defmethod recorder_srvs::DiskListRequest
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

(defclass recorder_srvs::DiskListResponse
  :super ros::object
  :slots (_sn _disk_type _status ))

(defmethod recorder_srvs::DiskListResponse
  (:init
   (&key
    ((:sn __sn) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:disk_type __disk_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:status __status) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _sn __sn)
   (setq _disk_type __disk_type)
   (setq _status __status)
   self)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:disk_type
   (&optional __disk_type)
   (if __disk_type (setq _disk_type __disk_type)) _disk_type)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string[] _sn
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sn)) 4
    ;; string[] _disk_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _disk_type)) 4
    ;; string[] _status
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _status)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _sn
     (write-long (length _sn) s)
     (dolist (elem _sn)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _disk_type
     (write-long (length _disk_type) s)
     (dolist (elem _disk_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _sn
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sn (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sn i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _disk_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _disk_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _disk_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _status i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::DiskList
  :super ros::object
  :slots ())

(setf (get recorder_srvs::DiskList :md5sum-) "f7561e9c15ed1890f077e05240578306")
(setf (get recorder_srvs::DiskList :datatype-) "recorder_srvs/DiskList")
(setf (get recorder_srvs::DiskList :request) recorder_srvs::DiskListRequest)
(setf (get recorder_srvs::DiskList :response) recorder_srvs::DiskListResponse)

(defmethod recorder_srvs::DiskListRequest
  (:response () (instance recorder_srvs::DiskListResponse :init)))

(setf (get recorder_srvs::DiskListRequest :md5sum-) "f7561e9c15ed1890f077e05240578306")
(setf (get recorder_srvs::DiskListRequest :datatype-) "recorder_srvs/DiskListRequest")
(setf (get recorder_srvs::DiskListRequest :definition-)
      "---
string[] sn
string[] disk_type
string[] status

")

(setf (get recorder_srvs::DiskListResponse :md5sum-) "f7561e9c15ed1890f077e05240578306")
(setf (get recorder_srvs::DiskListResponse :datatype-) "recorder_srvs/DiskListResponse")
(setf (get recorder_srvs::DiskListResponse :definition-)
      "---
string[] sn
string[] disk_type
string[] status

")



(provide :recorder_srvs/DiskList "f7561e9c15ed1890f077e05240578306")


