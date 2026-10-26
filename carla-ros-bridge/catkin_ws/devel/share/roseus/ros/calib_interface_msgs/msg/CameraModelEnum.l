;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::CameraModelEnum)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'CameraModelEnum (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::CAMERAMODELENUM")
  (make-package "CALIB_INTERFACE_MSGS::CAMERAMODELENUM"))

(in-package "ROS")
;;//! \htmlinclude CameraModelEnum.msg.html


(intern "*CAMERA_MODEL_POLYN*" (find-package "CALIB_INTERFACE_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_POLYN* (find-package "CALIB_INTERFACE_MSGS::CAMERAMODELENUM"))
(defconstant calib_interface_msgs::CameraModelEnum::*CAMERA_MODEL_POLYN* 0)
(intern "*CAMERA_MODEL_RADTAN*" (find-package "CALIB_INTERFACE_MSGS::CAMERAMODELENUM"))
(shadow '*CAMERA_MODEL_RADTAN* (find-package "CALIB_INTERFACE_MSGS::CAMERAMODELENUM"))
(defconstant calib_interface_msgs::CameraModelEnum::*CAMERA_MODEL_RADTAN* 1)

(defun calib_interface_msgs::CameraModelEnum-to-symbol (const)
  (cond
        ((= const 0) 'calib_interface_msgs::CameraModelEnum::*CAMERA_MODEL_POLYN*)
        ((= const 1) 'calib_interface_msgs::CameraModelEnum::*CAMERA_MODEL_RADTAN*)
        (t nil)))

(defclass calib_interface_msgs::CameraModelEnum
  :super ros::object
  :slots (_value ))

(defmethod calib_interface_msgs::CameraModelEnum
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

(setf (get calib_interface_msgs::CameraModelEnum :md5sum-) "3c616d685f7a2245b60fd5048301205b")
(setf (get calib_interface_msgs::CameraModelEnum :datatype-) "calib_interface_msgs/CameraModelEnum")
(setf (get calib_interface_msgs::CameraModelEnum :definition-)
      "uint8 CAMERA_MODEL_POLYN = 0
uint8 CAMERA_MODEL_RADTAN = 1
uint8 value

")



(provide :calib_interface_msgs/CameraModelEnum "3c616d685f7a2245b60fd5048301205b")


