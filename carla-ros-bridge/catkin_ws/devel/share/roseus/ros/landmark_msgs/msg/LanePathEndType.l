;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LanePathEndType)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LanePathEndType (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEPATHENDTYPE")
  (make-package "LANDMARK_MSGS::LANEPATHENDTYPE"))

(in-package "ROS")
;;//! \htmlinclude LanePathEndType.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::LANEPATHENDTYPE"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::LANEPATHENDTYPE"))
(defconstant landmark_msgs::LanePathEndType::*UNKNOWN* 0)
(intern "*OFF_ROUTE_END*" (find-package "LANDMARK_MSGS::LANEPATHENDTYPE"))
(shadow '*OFF_ROUTE_END* (find-package "LANDMARK_MSGS::LANEPATHENDTYPE"))
(defconstant landmark_msgs::LanePathEndType::*OFF_ROUTE_END* 1)
(intern "*SEARCH_RANGE_END*" (find-package "LANDMARK_MSGS::LANEPATHENDTYPE"))
(shadow '*SEARCH_RANGE_END* (find-package "LANDMARK_MSGS::LANEPATHENDTYPE"))
(defconstant landmark_msgs::LanePathEndType::*SEARCH_RANGE_END* 2)
(intern "*DEST_END*" (find-package "LANDMARK_MSGS::LANEPATHENDTYPE"))
(shadow '*DEST_END* (find-package "LANDMARK_MSGS::LANEPATHENDTYPE"))
(defconstant landmark_msgs::LanePathEndType::*DEST_END* 3)

(defun landmark_msgs::LanePathEndType-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LanePathEndType::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::LanePathEndType::*OFF_ROUTE_END*)
        ((= const 2) 'landmark_msgs::LanePathEndType::*SEARCH_RANGE_END*)
        ((= const 3) 'landmark_msgs::LanePathEndType::*DEST_END*)
        (t nil)))

(defclass landmark_msgs::LanePathEndType
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LanePathEndType
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::LanePathEndType :md5sum-) "0249be1799ef634c26b7f7366a7bc11c")
(setf (get landmark_msgs::LanePathEndType :datatype-) "landmark_msgs/LanePathEndType")
(setf (get landmark_msgs::LanePathEndType :definition-)
      "uint8 UNKNOWN = 0
uint8 OFF_ROUTE_END = 1
uint8 SEARCH_RANGE_END = 2
uint8 DEST_END = 3
uint8 value

")



(provide :landmark_msgs/LanePathEndType "0249be1799ef634c26b7f7366a7bc11c")


