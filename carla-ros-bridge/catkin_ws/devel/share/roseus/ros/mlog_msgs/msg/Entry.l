;; Auto-generated. Do not edit!


(when (boundp 'mlog_msgs::Entry)
  (if (not (find-package "MLOG_MSGS"))
    (make-package "MLOG_MSGS"))
  (shadow 'Entry (find-package "MLOG_MSGS")))
(unless (find-package "MLOG_MSGS::ENTRY")
  (make-package "MLOG_MSGS::ENTRY"))

(in-package "ROS")
;;//! \htmlinclude Entry.msg.html


(intern "*DATA_TYPE_NORMAL*" (find-package "MLOG_MSGS::ENTRY"))
(shadow '*DATA_TYPE_NORMAL* (find-package "MLOG_MSGS::ENTRY"))
(defconstant mlog_msgs::Entry::*DATA_TYPE_NORMAL* 0)
(intern "*DATA_TYPE_MSG_TIMESTAMP*" (find-package "MLOG_MSGS::ENTRY"))
(shadow '*DATA_TYPE_MSG_TIMESTAMP* (find-package "MLOG_MSGS::ENTRY"))
(defconstant mlog_msgs::Entry::*DATA_TYPE_MSG_TIMESTAMP* 1)
(intern "*DATA_TYPE_MSG_RELATION*" (find-package "MLOG_MSGS::ENTRY"))
(shadow '*DATA_TYPE_MSG_RELATION* (find-package "MLOG_MSGS::ENTRY"))
(defconstant mlog_msgs::Entry::*DATA_TYPE_MSG_RELATION* 2)

(defun mlog_msgs::Entry-to-symbol (const)
  (cond
        ((= const 0) 'mlog_msgs::Entry::*DATA_TYPE_NORMAL*)
        ((= const 1) 'mlog_msgs::Entry::*DATA_TYPE_MSG_TIMESTAMP*)
        ((= const 2) 'mlog_msgs::Entry::*DATA_TYPE_MSG_RELATION*)
        (t nil)))

(defclass mlog_msgs::Entry
  :super ros::object
  :slots (_type _data ))

(defmethod mlog_msgs::Entry
  (:init
   (&key
    ((:type __type) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _data (string __data))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mlog_msgs::Entry :md5sum-) "76a913180710d6f3d98ec82c1323494a")
(setf (get mlog_msgs::Entry :datatype-) "mlog_msgs/Entry")
(setf (get mlog_msgs::Entry :definition-)
      "uint8 DATA_TYPE_NORMAL = 0
uint8 DATA_TYPE_MSG_TIMESTAMP = 1
uint8 DATA_TYPE_MSG_RELATION = 2
uint8 type
string data

")



(provide :mlog_msgs/Entry "76a913180710d6f3d98ec82c1323494a")


