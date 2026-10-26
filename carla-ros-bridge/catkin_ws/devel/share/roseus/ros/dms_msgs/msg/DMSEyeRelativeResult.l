;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSEyeRelativeResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSEyeRelativeResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEYERELATIVERESULT")
  (make-package "DMS_MSGS::DMSEYERELATIVERESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSEyeRelativeResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSEYERELATIVERESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSEYERELATIVERESULT"))
(defconstant dms_msgs::DMSEyeRelativeResult::*UN_AVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "DMS_MSGS::DMSEYERELATIVERESULT"))
(shadow '*AVAILABLE* (find-package "DMS_MSGS::DMSEYERELATIVERESULT"))
(defconstant dms_msgs::DMSEyeRelativeResult::*AVAILABLE* 1)
(intern "*IS_EYE_BLINK_AVAILABLE*" (find-package "DMS_MSGS::DMSEYERELATIVERESULT"))
(shadow '*IS_EYE_BLINK_AVAILABLE* (find-package "DMS_MSGS::DMSEYERELATIVERESULT"))
(defconstant dms_msgs::DMSEyeRelativeResult::*IS_EYE_BLINK_AVAILABLE* 2)

(defun dms_msgs::DMSEyeRelativeResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSEyeRelativeResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSEyeRelativeResult::*AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSEyeRelativeResult::*IS_EYE_BLINK_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSEyeRelativeResult
  :super ros::object
  :slots (_available _left_eye_relative_distance _right_eye_relative_distance _is_left_eye_close _is_right_eye_close _left_eye_close_time _right_eye_close_time _reserved _is_eye_blink ))

(defmethod dms_msgs::DMSEyeRelativeResult
  (:init
   (&key
    ((:available __available) 0)
    ((:left_eye_relative_distance __left_eye_relative_distance) 0.0)
    ((:right_eye_relative_distance __right_eye_relative_distance) 0.0)
    ((:is_left_eye_close __is_left_eye_close) nil)
    ((:is_right_eye_close __is_right_eye_close) nil)
    ((:left_eye_close_time __left_eye_close_time) 0.0)
    ((:right_eye_close_time __right_eye_close_time) 0.0)
    ((:reserved __reserved) 0.0)
    ((:is_eye_blink __is_eye_blink) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _left_eye_relative_distance (float __left_eye_relative_distance))
   (setq _right_eye_relative_distance (float __right_eye_relative_distance))
   (setq _is_left_eye_close __is_left_eye_close)
   (setq _is_right_eye_close __is_right_eye_close)
   (setq _left_eye_close_time (float __left_eye_close_time))
   (setq _right_eye_close_time (float __right_eye_close_time))
   (setq _reserved (float __reserved))
   (setq _is_eye_blink __is_eye_blink)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:left_eye_relative_distance
   (&optional __left_eye_relative_distance)
   (if __left_eye_relative_distance (setq _left_eye_relative_distance __left_eye_relative_distance)) _left_eye_relative_distance)
  (:right_eye_relative_distance
   (&optional __right_eye_relative_distance)
   (if __right_eye_relative_distance (setq _right_eye_relative_distance __right_eye_relative_distance)) _right_eye_relative_distance)
  (:is_left_eye_close
   (&optional (__is_left_eye_close :null))
   (if (not (eq __is_left_eye_close :null)) (setq _is_left_eye_close __is_left_eye_close)) _is_left_eye_close)
  (:is_right_eye_close
   (&optional (__is_right_eye_close :null))
   (if (not (eq __is_right_eye_close :null)) (setq _is_right_eye_close __is_right_eye_close)) _is_right_eye_close)
  (:left_eye_close_time
   (&optional __left_eye_close_time)
   (if __left_eye_close_time (setq _left_eye_close_time __left_eye_close_time)) _left_eye_close_time)
  (:right_eye_close_time
   (&optional __right_eye_close_time)
   (if __right_eye_close_time (setq _right_eye_close_time __right_eye_close_time)) _right_eye_close_time)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:is_eye_blink
   (&optional (__is_eye_blink :null))
   (if (not (eq __is_eye_blink :null)) (setq _is_eye_blink __is_eye_blink)) _is_eye_blink)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float32 _left_eye_relative_distance
    4
    ;; float32 _right_eye_relative_distance
    4
    ;; bool _is_left_eye_close
    1
    ;; bool _is_right_eye_close
    1
    ;; float32 _left_eye_close_time
    4
    ;; float32 _right_eye_close_time
    4
    ;; float32 _reserved
    4
    ;; bool _is_eye_blink
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float32 _left_eye_relative_distance
       (sys::poke _left_eye_relative_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_eye_relative_distance
       (sys::poke _right_eye_relative_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_left_eye_close
       (if _is_left_eye_close (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_right_eye_close
       (if _is_right_eye_close (write-byte -1 s) (write-byte 0 s))
     ;; float32 _left_eye_close_time
       (sys::poke _left_eye_close_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_eye_close_time
       (sys::poke _right_eye_close_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved
       (sys::poke _reserved (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_eye_blink
       (if _is_eye_blink (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _left_eye_relative_distance
     (setq _left_eye_relative_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_eye_relative_distance
     (setq _right_eye_relative_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_left_eye_close
     (setq _is_left_eye_close (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_right_eye_close
     (setq _is_right_eye_close (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _left_eye_close_time
     (setq _left_eye_close_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_eye_close_time
     (setq _right_eye_close_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved
     (setq _reserved (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_eye_blink
     (setq _is_eye_blink (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dms_msgs::DMSEyeRelativeResult :md5sum-) "c745f14a4aae2b0ee7a1d42e7ffc04ce")
(setf (get dms_msgs::DMSEyeRelativeResult :datatype-) "dms_msgs/DMSEyeRelativeResult")
(setf (get dms_msgs::DMSEyeRelativeResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 IS_EYE_BLINK_AVAILABLE = 2
uint8 available
float32 left_eye_relative_distance
float32 right_eye_relative_distance
bool is_left_eye_close
bool is_right_eye_close
float32 left_eye_close_time
float32 right_eye_close_time
float32 reserved
bool is_eye_blink

")



(provide :dms_msgs/DMSEyeRelativeResult "c745f14a4aae2b0ee7a1d42e7ffc04ce")


