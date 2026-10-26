;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::InterpolationType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'InterpolationType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude InterpolationType.msg.html


(intern "*UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(shadow '*UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(defconstant lane_navi_info_msgs::InterpolationType::*UNKNOWN* 0)
(intern "*STEP*" (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(shadow '*STEP* (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(defconstant lane_navi_info_msgs::InterpolationType::*STEP* 1)
(intern "*LINEAR*" (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(shadow '*LINEAR* (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(defconstant lane_navi_info_msgs::InterpolationType::*LINEAR* 2)
(intern "*GENERAL*" (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(shadow '*GENERAL* (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(defconstant lane_navi_info_msgs::InterpolationType::*GENERAL* 3)
(intern "*OHTERS*" (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(shadow '*OHTERS* (find-package "LANE_NAVI_INFO_MSGS::INTERPOLATIONTYPE"))
(defconstant lane_navi_info_msgs::InterpolationType::*OHTERS* 255)

(defun lane_navi_info_msgs::InterpolationType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::InterpolationType::*UNKNOWN*)
        ((= const 1) 'lane_navi_info_msgs::InterpolationType::*STEP*)
        ((= const 2) 'lane_navi_info_msgs::InterpolationType::*LINEAR*)
        ((= const 3) 'lane_navi_info_msgs::InterpolationType::*GENERAL*)
        ((= const 255) 'lane_navi_info_msgs::InterpolationType::*OHTERS*)
        (t nil)))

(defclass lane_navi_info_msgs::InterpolationType
  :super ros::object
  :slots (_type _addition_values _params ))

(defmethod lane_navi_info_msgs::InterpolationType
  (:init
   (&key
    ((:type __type) 0)
    ((:addition_values __addition_values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:params __params) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _addition_values __addition_values)
   (setq _params __params)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:addition_values
   (&optional __addition_values)
   (if __addition_values (setq _addition_values __addition_values)) _addition_values)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float32[] _addition_values
    (* 4    (length _addition_values)) 4
    ;; float32[] _params
    (* 4    (length _params)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float32[] _addition_values
     (write-long (length _addition_values) s)
     (dotimes (i (length _addition_values))
       (sys::poke (elt _addition_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _params
     (write-long (length _params) s)
     (dotimes (i (length _params))
       (sys::poke (elt _params i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _addition_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _addition_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _addition_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::InterpolationType :md5sum-) "982ed9650ff59d021b6cb1ccc2662eda")
(setf (get lane_navi_info_msgs::InterpolationType :datatype-) "lane_navi_info_msgs/InterpolationType")
(setf (get lane_navi_info_msgs::InterpolationType :definition-)
      "uint8 UNKNOWN = 0
uint8 STEP = 1
uint8 LINEAR = 2
uint8 GENERAL = 3
uint8 OHTERS = 255
uint8 type
float32[] addition_values
float32[] params

")



(provide :lane_navi_info_msgs/InterpolationType "982ed9650ff59d021b6cb1ccc2662eda")


