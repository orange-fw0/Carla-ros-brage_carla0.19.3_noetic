;; Auto-generated. Do not edit!


(when (boundp 'shadow_mode_msgs::DetailConfig)
  (if (not (find-package "SHADOW_MODE_MSGS"))
    (make-package "SHADOW_MODE_MSGS"))
  (shadow 'DetailConfig (find-package "SHADOW_MODE_MSGS")))
(unless (find-package "SHADOW_MODE_MSGS::DETAILCONFIG")
  (make-package "SHADOW_MODE_MSGS::DETAILCONFIG"))

(in-package "ROS")
;;//! \htmlinclude DetailConfig.msg.html


(defclass shadow_mode_msgs::DetailConfig
  :super ros::object
  :slots (_mlog_list _need_maf_groups ))

(defmethod shadow_mode_msgs::DetailConfig
  (:init
   (&key
    ((:mlog_list __mlog_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:need_maf_groups __need_maf_groups) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _mlog_list __mlog_list)
   (setq _need_maf_groups __need_maf_groups)
   self)
  (:mlog_list
   (&optional __mlog_list)
   (if __mlog_list (setq _mlog_list __mlog_list)) _mlog_list)
  (:need_maf_groups
   (&optional __need_maf_groups)
   (if __need_maf_groups (setq _need_maf_groups __need_maf_groups)) _need_maf_groups)
  (:serialization-length
   ()
   (+
    ;; string[] _mlog_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _mlog_list)) 4
    ;; string[] _need_maf_groups
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _need_maf_groups)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _mlog_list
     (write-long (length _mlog_list) s)
     (dolist (elem _mlog_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _need_maf_groups
     (write-long (length _need_maf_groups) s)
     (dolist (elem _need_maf_groups)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _mlog_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mlog_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _mlog_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _need_maf_groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _need_maf_groups (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _need_maf_groups i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get shadow_mode_msgs::DetailConfig :md5sum-) "866178546220781c7d84c74e3be64c25")
(setf (get shadow_mode_msgs::DetailConfig :datatype-) "shadow_mode_msgs/DetailConfig")
(setf (get shadow_mode_msgs::DetailConfig :definition-)
      "string[] mlog_list
string[] need_maf_groups

")



(provide :shadow_mode_msgs/DetailConfig "866178546220781c7d84c74e3be64c25")


