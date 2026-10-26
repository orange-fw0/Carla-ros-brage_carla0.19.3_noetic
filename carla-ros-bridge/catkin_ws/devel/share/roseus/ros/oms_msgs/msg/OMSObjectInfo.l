;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSObjectInfo)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSObjectInfo (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSOBJECTINFO")
  (make-package "OMS_MSGS::OMSOBJECTINFO"))

(in-package "ROS")
;;//! \htmlinclude OMSObjectInfo.msg.html


(defclass oms_msgs::OMSObjectInfo
  :super ros::object
  :slots (_seat_id _object_type _object_rect ))

(defmethod oms_msgs::OMSObjectInfo
  (:init
   (&key
    ((:seat_id __seat_id) 0)
    ((:object_type __object_type) (instance oms_msgs::OMSObjectType :init))
    ((:object_rect __object_rect) (instance oms_msgs::OMSObjectDetResult :init))
    )
   (send-super :init)
   (setq _seat_id (round __seat_id))
   (setq _object_type __object_type)
   (setq _object_rect __object_rect)
   self)
  (:seat_id
   (&optional __seat_id)
   (if __seat_id (setq _seat_id __seat_id)) _seat_id)
  (:object_type
   (&rest __object_type)
   (if (keywordp (car __object_type))
       (send* _object_type __object_type)
     (progn
       (if __object_type (setq _object_type (car __object_type)))
       _object_type)))
  (:object_rect
   (&rest __object_rect)
   (if (keywordp (car __object_rect))
       (send* _object_rect __object_rect)
     (progn
       (if __object_rect (setq _object_rect (car __object_rect)))
       _object_rect)))
  (:serialization-length
   ()
   (+
    ;; uint8 _seat_id
    1
    ;; oms_msgs/OMSObjectType _object_type
    (send _object_type :serialization-length)
    ;; oms_msgs/OMSObjectDetResult _object_rect
    (send _object_rect :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _seat_id
       (write-byte _seat_id s)
     ;; oms_msgs/OMSObjectType _object_type
       (send _object_type :serialize s)
     ;; oms_msgs/OMSObjectDetResult _object_rect
       (send _object_rect :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _seat_id
     (setq _seat_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; oms_msgs/OMSObjectType _object_type
     (send _object_type :deserialize buf ptr-) (incf ptr- (send _object_type :serialization-length))
   ;; oms_msgs/OMSObjectDetResult _object_rect
     (send _object_rect :deserialize buf ptr-) (incf ptr- (send _object_rect :serialization-length))
   ;;
   self)
  )

(setf (get oms_msgs::OMSObjectInfo :md5sum-) "627b785048f9f96a95c27a49dd32e600")
(setf (get oms_msgs::OMSObjectInfo :datatype-) "oms_msgs/OMSObjectInfo")
(setf (get oms_msgs::OMSObjectInfo :definition-)
      "uint8 seat_id
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

================================================================================
MSG: oms_msgs/OMSRect2f
float32 left
float32 top
float32 right
float32 bottom
float32 score

")



(provide :oms_msgs/OMSObjectInfo "627b785048f9f96a95c27a49dd32e600")


