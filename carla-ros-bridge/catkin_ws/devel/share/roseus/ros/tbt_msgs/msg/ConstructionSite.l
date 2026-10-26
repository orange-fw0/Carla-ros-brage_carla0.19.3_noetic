;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::ConstructionSite)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'ConstructionSite (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::CONSTRUCTIONSITE")
  (make-package "TBT_MSGS::CONSTRUCTIONSITE"))

(in-package "ROS")
;;//! \htmlinclude ConstructionSite.msg.html


(defclass tbt_msgs::ConstructionSite
  :super ros::object
  :slots (_status _latitude_list _longitude_list ))

(defmethod tbt_msgs::ConstructionSite
  (:init
   (&key
    ((:status __status) (instance tbt_msgs::ConstructionSiteStatusEnum :init))
    ((:latitude_list __latitude_list) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:longitude_list __longitude_list) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _status __status)
   (setq _latitude_list __latitude_list)
   (setq _longitude_list __longitude_list)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:latitude_list
   (&optional __latitude_list)
   (if __latitude_list (setq _latitude_list __latitude_list)) _latitude_list)
  (:longitude_list
   (&optional __longitude_list)
   (if __longitude_list (setq _longitude_list __longitude_list)) _longitude_list)
  (:serialization-length
   ()
   (+
    ;; tbt_msgs/ConstructionSiteStatusEnum _status
    (send _status :serialization-length)
    ;; float64[] _latitude_list
    (* 8    (length _latitude_list)) 4
    ;; float64[] _longitude_list
    (* 8    (length _longitude_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tbt_msgs/ConstructionSiteStatusEnum _status
       (send _status :serialize s)
     ;; float64[] _latitude_list
     (write-long (length _latitude_list) s)
     (dotimes (i (length _latitude_list))
       (sys::poke (elt _latitude_list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _longitude_list
     (write-long (length _longitude_list) s)
     (dotimes (i (length _longitude_list))
       (sys::poke (elt _longitude_list i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tbt_msgs/ConstructionSiteStatusEnum _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float64[] _latitude_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _latitude_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _latitude_list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _longitude_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _longitude_list (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _longitude_list i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get tbt_msgs::ConstructionSite :md5sum-) "88bebe820d888053dd20fec660df08f9")
(setf (get tbt_msgs::ConstructionSite :datatype-) "tbt_msgs/ConstructionSite")
(setf (get tbt_msgs::ConstructionSite :definition-)
      "tbt_msgs/ConstructionSiteStatusEnum status
float64[] latitude_list
float64[] longitude_list

================================================================================
MSG: tbt_msgs/ConstructionSiteStatusEnum
uint8 Unkwon = 0
uint8 No = 1
uint8 Yes = 2
uint8 value

")



(provide :tbt_msgs/ConstructionSite "88bebe820d888053dd20fec660df08f9")


