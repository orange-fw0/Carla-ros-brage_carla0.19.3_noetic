;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::HDMapMeta)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'HDMapMeta (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::HDMAPMETA")
  (make-package "LANDMARK_MSGS::HDMAPMETA"))

(in-package "ROS")
;;//! \htmlinclude HDMapMeta.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::HDMAPMETA"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::HDMAPMETA"))
(defconstant landmark_msgs::HDMapMeta::*UNKNOWN* 0)
(intern "*MDM*" (find-package "LANDMARK_MSGS::HDMAPMETA"))
(shadow '*MDM* (find-package "LANDMARK_MSGS::HDMAPMETA"))
(defconstant landmark_msgs::HDMapMeta::*MDM* 1)
(intern "*ANDM*" (find-package "LANDMARK_MSGS::HDMAPMETA"))
(shadow '*ANDM* (find-package "LANDMARK_MSGS::HDMAPMETA"))
(defconstant landmark_msgs::HDMapMeta::*ANDM* 2)
(intern "*OTHER*" (find-package "LANDMARK_MSGS::HDMAPMETA"))
(shadow '*OTHER* (find-package "LANDMARK_MSGS::HDMAPMETA"))
(defconstant landmark_msgs::HDMapMeta::*OTHER* 3)

(defun landmark_msgs::HDMapMeta-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::HDMapMeta::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::HDMapMeta::*MDM*)
        ((= const 2) 'landmark_msgs::HDMapMeta::*ANDM*)
        ((= const 3) 'landmark_msgs::HDMapMeta::*OTHER*)
        (t nil)))

(defclass landmark_msgs::HDMapMeta
  :super ros::object
  :slots (_source _type _id _name _version _reserved ))

(defmethod landmark_msgs::HDMapMeta
  (:init
   (&key
    ((:source __source) 0)
    ((:type __type) (instance landmark_msgs::HDMapType :init))
    ((:id __id) 0)
    ((:name __name) "")
    ((:version __version) "")
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _source (round __source))
   (setq _type __type)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _version (string __version))
   (setq _reserved (string __reserved))
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint8 _source
    1
    ;; landmark_msgs/HDMapType _type
    (send _type :serialization-length)
    ;; uint32 _id
    4
    ;; string _name
    4 (length _name)
    ;; string _version
    4 (length _version)
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _source
       (write-byte _source s)
     ;; landmark_msgs/HDMapType _type
       (send _type :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/HDMapType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::HDMapMeta :md5sum-) "2b859f94ffb7960cacdd6bb91f5d08b6")
(setf (get landmark_msgs::HDMapMeta :datatype-) "landmark_msgs/HDMapMeta")
(setf (get landmark_msgs::HDMapMeta :definition-)
      "uint8 UNKNOWN = 0
uint8 MDM = 1
uint8 ANDM = 2
uint8 OTHER = 3
uint8 source
landmark_msgs/HDMapType type
uint32 id
string name
string version
string reserved

================================================================================
MSG: landmark_msgs/HDMapType
uint8 NORMAL = 0
uint8 LPNP = 1
uint8 PNP = 2
uint8 OTHER = 99
uint8 value

")



(provide :landmark_msgs/HDMapMeta "2b859f94ffb7960cacdd6bb91f5d08b6")


