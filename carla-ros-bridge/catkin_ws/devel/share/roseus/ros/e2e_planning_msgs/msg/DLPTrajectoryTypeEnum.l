;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPTrajectoryTypeEnum)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPTrajectoryTypeEnum (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM")
  (make-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DLPTrajectoryTypeEnum.msg.html


(intern "*DLP_TRAJECTORY_CRUISE*" (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))
(shadow '*DLP_TRAJECTORY_CRUISE* (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))
(defconstant e2e_planning_msgs::DLPTrajectoryTypeEnum::*DLP_TRAJECTORY_CRUISE* 0)
(intern "*DLP_TRAJECTORY_LANE_CHANGE*" (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))
(shadow '*DLP_TRAJECTORY_LANE_CHANGE* (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))
(defconstant e2e_planning_msgs::DLPTrajectoryTypeEnum::*DLP_TRAJECTORY_LANE_CHANGE* 1)
(intern "*DLP_TRAJECTORY_REF_PATH*" (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))
(shadow '*DLP_TRAJECTORY_REF_PATH* (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))
(defconstant e2e_planning_msgs::DLPTrajectoryTypeEnum::*DLP_TRAJECTORY_REF_PATH* 2)
(intern "*DLP_TRAJECTORY_PREDICTION*" (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))
(shadow '*DLP_TRAJECTORY_PREDICTION* (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYTYPEENUM"))
(defconstant e2e_planning_msgs::DLPTrajectoryTypeEnum::*DLP_TRAJECTORY_PREDICTION* 3)

(defun e2e_planning_msgs::DLPTrajectoryTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'e2e_planning_msgs::DLPTrajectoryTypeEnum::*DLP_TRAJECTORY_CRUISE*)
        ((= const 1) 'e2e_planning_msgs::DLPTrajectoryTypeEnum::*DLP_TRAJECTORY_LANE_CHANGE*)
        ((= const 2) 'e2e_planning_msgs::DLPTrajectoryTypeEnum::*DLP_TRAJECTORY_REF_PATH*)
        ((= const 3) 'e2e_planning_msgs::DLPTrajectoryTypeEnum::*DLP_TRAJECTORY_PREDICTION*)
        (t nil)))

(defclass e2e_planning_msgs::DLPTrajectoryTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod e2e_planning_msgs::DLPTrajectoryTypeEnum
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

(setf (get e2e_planning_msgs::DLPTrajectoryTypeEnum :md5sum-) "8869cfbf892bc1143f4a1ef3b30964e9")
(setf (get e2e_planning_msgs::DLPTrajectoryTypeEnum :datatype-) "e2e_planning_msgs/DLPTrajectoryTypeEnum")
(setf (get e2e_planning_msgs::DLPTrajectoryTypeEnum :definition-)
      "uint8 DLP_TRAJECTORY_CRUISE = 0
uint8 DLP_TRAJECTORY_LANE_CHANGE = 1
uint8 DLP_TRAJECTORY_REF_PATH = 2
uint8 DLP_TRAJECTORY_PREDICTION = 3
uint8 value

")



(provide :e2e_planning_msgs/DLPTrajectoryTypeEnum "8869cfbf892bc1143f4a1ef3b30964e9")


