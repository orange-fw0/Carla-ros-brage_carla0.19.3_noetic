;; Auto-generated. Do not edit!


(when (boundp 'hdmap_msgs::LocalMapData)
  (if (not (find-package "HDMAP_MSGS"))
    (make-package "HDMAP_MSGS"))
  (shadow 'LocalMapData (find-package "HDMAP_MSGS")))
(unless (find-package "HDMAP_MSGS::LOCALMAPDATA")
  (make-package "HDMAP_MSGS::LOCALMAPDATA"))

(in-package "ROS")
;;//! \htmlinclude LocalMapData.msg.html


(intern "*MDM*" (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(shadow '*MDM* (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(defconstant hdmap_msgs::LocalMapData::*MDM* 1)
(intern "*ANDM*" (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(shadow '*ANDM* (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(defconstant hdmap_msgs::LocalMapData::*ANDM* 2)
(intern "*MAP_MATCH_INFO*" (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(shadow '*MAP_MATCH_INFO* (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(defconstant hdmap_msgs::LocalMapData::*MAP_MATCH_INFO* 4)
(intern "*OTHER*" (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(shadow '*OTHER* (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(defconstant hdmap_msgs::LocalMapData::*OTHER* 8)
(intern "*ESR*" (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(shadow '*ESR* (find-package "HDMAP_MSGS::LOCALMAPDATA"))
(defconstant hdmap_msgs::LocalMapData::*ESR* 16)

(defun hdmap_msgs::LocalMapData-to-symbol (const)
  (cond
        ((= const 1) 'hdmap_msgs::LocalMapData::*MDM*)
        ((= const 2) 'hdmap_msgs::LocalMapData::*ANDM*)
        ((= const 4) 'hdmap_msgs::LocalMapData::*MAP_MATCH_INFO*)
        ((= const 8) 'hdmap_msgs::LocalMapData::*OTHER*)
        ((= const 16) 'hdmap_msgs::LocalMapData::*ESR*)
        (t nil)))

(defclass hdmap_msgs::LocalMapData
  :super ros::object
  :slots (_available _mdm _andm _map_match_info _other _esr ))

(defmethod hdmap_msgs::LocalMapData
  (:init
   (&key
    ((:available __available) 0)
    ((:mdm __mdm) (instance hdmap_msgs::LocalMapLayer :init))
    ((:andm __andm) (instance hdmap_msgs::LocalMapLayer :init))
    ((:map_match_info __map_match_info) (instance hdmap_msgs::LocalMapLayer :init))
    ((:other __other) (instance hdmap_msgs::LocalMapLayer :init))
    ((:esr __esr) (instance hdmap_msgs::LocalMapLayer :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _mdm __mdm)
   (setq _andm __andm)
   (setq _map_match_info __map_match_info)
   (setq _other __other)
   (setq _esr __esr)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:mdm
   (&rest __mdm)
   (if (keywordp (car __mdm))
       (send* _mdm __mdm)
     (progn
       (if __mdm (setq _mdm (car __mdm)))
       _mdm)))
  (:andm
   (&rest __andm)
   (if (keywordp (car __andm))
       (send* _andm __andm)
     (progn
       (if __andm (setq _andm (car __andm)))
       _andm)))
  (:map_match_info
   (&rest __map_match_info)
   (if (keywordp (car __map_match_info))
       (send* _map_match_info __map_match_info)
     (progn
       (if __map_match_info (setq _map_match_info (car __map_match_info)))
       _map_match_info)))
  (:other
   (&rest __other)
   (if (keywordp (car __other))
       (send* _other __other)
     (progn
       (if __other (setq _other (car __other)))
       _other)))
  (:esr
   (&rest __esr)
   (if (keywordp (car __esr))
       (send* _esr __esr)
     (progn
       (if __esr (setq _esr (car __esr)))
       _esr)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; hdmap_msgs/LocalMapLayer _mdm
    (send _mdm :serialization-length)
    ;; hdmap_msgs/LocalMapLayer _andm
    (send _andm :serialization-length)
    ;; hdmap_msgs/LocalMapLayer _map_match_info
    (send _map_match_info :serialization-length)
    ;; hdmap_msgs/LocalMapLayer _other
    (send _other :serialization-length)
    ;; hdmap_msgs/LocalMapLayer _esr
    (send _esr :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; hdmap_msgs/LocalMapLayer _mdm
       (send _mdm :serialize s)
     ;; hdmap_msgs/LocalMapLayer _andm
       (send _andm :serialize s)
     ;; hdmap_msgs/LocalMapLayer _map_match_info
       (send _map_match_info :serialize s)
     ;; hdmap_msgs/LocalMapLayer _other
       (send _other :serialize s)
     ;; hdmap_msgs/LocalMapLayer _esr
       (send _esr :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; hdmap_msgs/LocalMapLayer _mdm
     (send _mdm :deserialize buf ptr-) (incf ptr- (send _mdm :serialization-length))
   ;; hdmap_msgs/LocalMapLayer _andm
     (send _andm :deserialize buf ptr-) (incf ptr- (send _andm :serialization-length))
   ;; hdmap_msgs/LocalMapLayer _map_match_info
     (send _map_match_info :deserialize buf ptr-) (incf ptr- (send _map_match_info :serialization-length))
   ;; hdmap_msgs/LocalMapLayer _other
     (send _other :deserialize buf ptr-) (incf ptr- (send _other :serialization-length))
   ;; hdmap_msgs/LocalMapLayer _esr
     (send _esr :deserialize buf ptr-) (incf ptr- (send _esr :serialization-length))
   ;;
   self)
  )

(setf (get hdmap_msgs::LocalMapData :md5sum-) "97fd3dea48828e3803823e6aa81c15b7")
(setf (get hdmap_msgs::LocalMapData :datatype-) "hdmap_msgs/LocalMapData")
(setf (get hdmap_msgs::LocalMapData :definition-)
      "uint8 MDM = 1
uint8 ANDM = 2
uint8 MAP_MATCH_INFO = 4
uint8 OTHER = 8
uint8 ESR = 16
uint8 available
hdmap_msgs/LocalMapLayer mdm
hdmap_msgs/LocalMapLayer andm
hdmap_msgs/LocalMapLayer map_match_info
hdmap_msgs/LocalMapLayer other
hdmap_msgs/LocalMapLayer esr

================================================================================
MSG: hdmap_msgs/LocalMapLayer
string data

")



(provide :hdmap_msgs/LocalMapData "97fd3dea48828e3803823e6aa81c15b7")


