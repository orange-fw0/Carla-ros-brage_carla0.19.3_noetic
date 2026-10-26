;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSNudgeCmd)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSNudgeCmd (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSNUDGECMD")
  (make-package "TOS_MSGS::TOSNUDGECMD"))

(in-package "ROS")
;;//! \htmlinclude TOSNudgeCmd.msg.html


(defclass tos_msgs::TOSNudgeCmd
  :super ros::object
  :slots (_available _nudge_cmd ))

(defmethod tos_msgs::TOSNudgeCmd
  (:init
   (&key
    ((:available __available) 0)
    ((:nudge_cmd __nudge_cmd) (instance tos_msgs::TOSNudgeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _nudge_cmd __nudge_cmd)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:nudge_cmd
   (&rest __nudge_cmd)
   (if (keywordp (car __nudge_cmd))
       (send* _nudge_cmd __nudge_cmd)
     (progn
       (if __nudge_cmd (setq _nudge_cmd (car __nudge_cmd)))
       _nudge_cmd)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; tos_msgs/TOSNudgeEnum _nudge_cmd
    (send _nudge_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; tos_msgs/TOSNudgeEnum _nudge_cmd
       (send _nudge_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; tos_msgs/TOSNudgeEnum _nudge_cmd
     (send _nudge_cmd :deserialize buf ptr-) (incf ptr- (send _nudge_cmd :serialization-length))
   ;;
   self)
  )

(setf (get tos_msgs::TOSNudgeCmd :md5sum-) "3da070feb8c0502073d1773f4c54b9b8")
(setf (get tos_msgs::TOSNudgeCmd :datatype-) "tos_msgs/TOSNudgeCmd")
(setf (get tos_msgs::TOSNudgeCmd :definition-)
      "uint8 available
tos_msgs/TOSNudgeEnum nudge_cmd

================================================================================
MSG: tos_msgs/TOSNudgeEnum
uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 value

")



(provide :tos_msgs/TOSNudgeCmd "3da070feb8c0502073d1773f4c54b9b8")


