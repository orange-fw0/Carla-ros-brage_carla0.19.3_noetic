;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::CameraModelEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'CameraModelEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::CAMERAMODELENUM")
  (make-package "LANDMARK_MSGS::CAMERAMODELENUM"))

(in-package "ROS")
;;//! \htmlinclude CameraModelEnum.msg.html


(intern "*CAMERA_MODEL_UNKNOWN*" (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_UNKNOWN* (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(defconstant landmark_msgs::CameraModelEnum::*CAMERA_MODEL_UNKNOWN* 0)
(intern "*CAMERA_MODEL_RAW*" (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_RAW* (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(defconstant landmark_msgs::CameraModelEnum::*CAMERA_MODEL_RAW* 1)
(intern "*CAMERA_MODEL_CYLINDER*" (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_CYLINDER* (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(defconstant landmark_msgs::CameraModelEnum::*CAMERA_MODEL_CYLINDER* 2)
(intern "*CAMERA_MODEL_DEDISTORT*" (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_DEDISTORT* (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(defconstant landmark_msgs::CameraModelEnum::*CAMERA_MODEL_DEDISTORT* 3)
(intern "*CAMERA_MODEL_PSTITCH*" (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_PSTITCH* (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(defconstant landmark_msgs::CameraModelEnum::*CAMERA_MODEL_PSTITCH* 4)
(intern "*CAMERA_MODEL_RESERVED_A*" (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_RESERVED_A* (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(defconstant landmark_msgs::CameraModelEnum::*CAMERA_MODEL_RESERVED_A* 5)
(intern "*CAMERA_MODEL_RESERVED_B*" (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_RESERVED_B* (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(defconstant landmark_msgs::CameraModelEnum::*CAMERA_MODEL_RESERVED_B* 6)
(intern "*CAMERA_MODEL_RESERVED_C*" (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_RESERVED_C* (find-package "LANDMARK_MSGS::CAMERAMODELENUM"))
(defconstant landmark_msgs::CameraModelEnum::*CAMERA_MODEL_RESERVED_C* 7)

(defun landmark_msgs::CameraModelEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::CameraModelEnum::*CAMERA_MODEL_UNKNOWN*)
        ((= const 1) 'landmark_msgs::CameraModelEnum::*CAMERA_MODEL_RAW*)
        ((= const 2) 'landmark_msgs::CameraModelEnum::*CAMERA_MODEL_CYLINDER*)
        ((= const 3) 'landmark_msgs::CameraModelEnum::*CAMERA_MODEL_DEDISTORT*)
        ((= const 4) 'landmark_msgs::CameraModelEnum::*CAMERA_MODEL_PSTITCH*)
        ((= const 5) 'landmark_msgs::CameraModelEnum::*CAMERA_MODEL_RESERVED_A*)
        ((= const 6) 'landmark_msgs::CameraModelEnum::*CAMERA_MODEL_RESERVED_B*)
        ((= const 7) 'landmark_msgs::CameraModelEnum::*CAMERA_MODEL_RESERVED_C*)
        (t nil)))

(defclass landmark_msgs::CameraModelEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::CameraModelEnum
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

(setf (get landmark_msgs::CameraModelEnum :md5sum-) "00e1b1abe6f0d9c5336178b735a90f62")
(setf (get landmark_msgs::CameraModelEnum :datatype-) "landmark_msgs/CameraModelEnum")
(setf (get landmark_msgs::CameraModelEnum :definition-)
      "uint8 CAMERA_MODEL_UNKNOWN = 0
uint8 CAMERA_MODEL_RAW = 1
uint8 CAMERA_MODEL_CYLINDER = 2
uint8 CAMERA_MODEL_DEDISTORT = 3
uint8 CAMERA_MODEL_PSTITCH = 4
uint8 CAMERA_MODEL_RESERVED_A = 5
uint8 CAMERA_MODEL_RESERVED_B = 6
uint8 CAMERA_MODEL_RESERVED_C = 7
uint8 value

")



(provide :landmark_msgs/CameraModelEnum "00e1b1abe6f0d9c5336178b735a90f62")


