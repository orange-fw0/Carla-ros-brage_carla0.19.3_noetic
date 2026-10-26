;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xIntersectionInfo)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xIntersectionInfo (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XINTERSECTIONINFO")
  (make-package "V2X_MSGS::V2XINTERSECTIONINFO"))

(in-package "ROS")
;;//! \htmlinclude V2xIntersectionInfo.msg.html


(intern "*V2X_INTERSECTION_DATA*" (find-package "V2X_MSGS::V2XINTERSECTIONINFO"))
(shadow '*V2X_INTERSECTION_DATA* (find-package "V2X_MSGS::V2XINTERSECTIONINFO"))
(defconstant v2x_msgs::V2xIntersectionInfo::*V2X_INTERSECTION_DATA* 1)

(defun v2x_msgs::V2xIntersectionInfo-to-symbol (const)
  (cond
        ((= const 1) 'v2x_msgs::V2xIntersectionInfo::*V2X_INTERSECTION_DATA*)
        (t nil)))

(defclass v2x_msgs::V2xIntersectionInfo
  :super ros::object
  :slots (_available _v2x_intersection_data ))

(defmethod v2x_msgs::V2xIntersectionInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:v2x_intersection_data __v2x_intersection_data) (instance v2x_msgs::V2xIntersectionData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _v2x_intersection_data __v2x_intersection_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:v2x_intersection_data
   (&rest __v2x_intersection_data)
   (if (keywordp (car __v2x_intersection_data))
       (send* _v2x_intersection_data __v2x_intersection_data)
     (progn
       (if __v2x_intersection_data (setq _v2x_intersection_data (car __v2x_intersection_data)))
       _v2x_intersection_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; v2x_msgs/V2xIntersectionData _v2x_intersection_data
    (send _v2x_intersection_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; v2x_msgs/V2xIntersectionData _v2x_intersection_data
       (send _v2x_intersection_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; v2x_msgs/V2xIntersectionData _v2x_intersection_data
     (send _v2x_intersection_data :deserialize buf ptr-) (incf ptr- (send _v2x_intersection_data :serialization-length))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xIntersectionInfo :md5sum-) "4914ab9e446bf43eb2315fece0a5df38")
(setf (get v2x_msgs::V2xIntersectionInfo :datatype-) "v2x_msgs/V2xIntersectionInfo")
(setf (get v2x_msgs::V2xIntersectionInfo :definition-)
      "uint8 V2X_INTERSECTION_DATA = 1
uint8 available
v2x_msgs/V2xIntersectionData v2x_intersection_data

================================================================================
MSG: v2x_msgs/V2xIntersectionData
int32 intersection_id
float64 enter_angle
float64 exit_angle

")



(provide :v2x_msgs/V2xIntersectionInfo "4914ab9e446bf43eb2315fece0a5df38")


