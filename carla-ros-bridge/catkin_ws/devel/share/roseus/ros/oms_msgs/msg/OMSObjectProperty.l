;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSObjectProperty)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSObjectProperty (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSOBJECTPROPERTY")
  (make-package "OMS_MSGS::OMSOBJECTPROPERTY"))

(in-package "ROS")
;;//! \htmlinclude OMSObjectProperty.msg.html


(defclass oms_msgs::OMSObjectProperty
  :super ros::object
  :slots (_det_roi _object_infos ))

(defmethod oms_msgs::OMSObjectProperty
  (:init
   (&key
    ((:det_roi __det_roi) ())
    ((:object_infos __object_infos) ())
    )
   (send-super :init)
   (setq _det_roi __det_roi)
   (setq _object_infos __object_infos)
   self)
  (:det_roi
   (&rest __det_roi)
   (if (keywordp (car __det_roi))
       (send* _det_roi __det_roi)
     (progn
       (if __det_roi (setq _det_roi (car __det_roi)))
       _det_roi)))
  (:object_infos
   (&rest __object_infos)
   (if (keywordp (car __object_infos))
       (send* _object_infos __object_infos)
     (progn
       (if __object_infos (setq _object_infos (car __object_infos)))
       _object_infos)))
  (:serialization-length
   ()
   (+
    ;; oms_msgs/OMSRect2f[] _det_roi
    (apply #'+ (send-all _det_roi :serialization-length)) 4
    ;; oms_msgs/OMSObjectInfo[] _object_infos
    (apply #'+ (send-all _object_infos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; oms_msgs/OMSRect2f[] _det_roi
     (write-long (length _det_roi) s)
     (dolist (elem _det_roi)
       (send elem :serialize s)
       )
     ;; oms_msgs/OMSObjectInfo[] _object_infos
     (write-long (length _object_infos) s)
     (dolist (elem _object_infos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; oms_msgs/OMSRect2f[] _det_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _det_roi (let (r) (dotimes (i n) (push (instance oms_msgs::OMSRect2f :init) r)) r))
     (dolist (elem- _det_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; oms_msgs/OMSObjectInfo[] _object_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_infos (let (r) (dotimes (i n) (push (instance oms_msgs::OMSObjectInfo :init) r)) r))
     (dolist (elem- _object_infos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get oms_msgs::OMSObjectProperty :md5sum-) "82143832cfed9889280e3a3c93609985")
(setf (get oms_msgs::OMSObjectProperty :datatype-) "oms_msgs/OMSObjectProperty")
(setf (get oms_msgs::OMSObjectProperty :definition-)
      "oms_msgs/OMSRect2f[] det_roi
oms_msgs/OMSObjectInfo[] object_infos

================================================================================
MSG: oms_msgs/OMSRect2f
float32 left
float32 top
float32 right
float32 bottom
float32 score

================================================================================
MSG: oms_msgs/OMSObjectInfo
uint8 seat_id
oms_msgs/OMSObjectType object_type
oms_msgs/OMSObjectDetResult object_rect

================================================================================
MSG: oms_msgs/OMSObjectType
uint8 UNAVAILABLE = 0
uint8 COMPUTER = 1
uint8 PAD = 2
uint8 WALLET = 3
uint8 BACKPACK = 4
uint8 HANDBAG = 5
uint8 PHONE = 6
uint8 CHILD_SEAT_HARD = 7
uint8 CHILD_SEAT_SOFT = 8
uint8 CHILD_SEAT_BASKET = 9
uint8 CHILD_SEAT_UNUSUAL = 10
uint8 CAT = 11
uint8 DOG = 12
uint8 RESERVED1 = 13
uint8 RESERVED2 = 14
uint8 RESERVED3 = 15
uint8 RESERVED4 = 16
uint8 RESERVED5 = 17
uint8 UNCERTAIN = 18
uint8 value
float32 score

================================================================================
MSG: oms_msgs/OMSObjectDetResult
uint8 UNAVAILABLE = 0
uint8 AVAILABLE = 1
uint8 UNCERTAIN = 2
uint8 value
oms_msgs/OMSRect2f object_rect

")



(provide :oms_msgs/OMSObjectProperty "82143832cfed9889280e3a3c93609985")


