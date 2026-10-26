;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::Direction)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'Direction (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::DIRECTION")
  (make-package "LANDMARK_MSGS::DIRECTION"))

(in-package "ROS")
;;//! \htmlinclude Direction.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*UNKNOWN* 0)
(intern "*GO_STRAIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*GO_STRAIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*GO_STRAIGHT* 1)
(intern "*TURN_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*TURN_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*TURN_RIGHT* 2)
(intern "*TURN_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*TURN_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*TURN_LEFT* 3)
(intern "*U_TURN_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*U_TURN_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*U_TURN_LEFT* 4)
(intern "*U_TURN_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*U_TURN_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*U_TURN_RIGHT* 5)
(intern "*LEFT_CONFLUENCE*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_CONFLUENCE* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_CONFLUENCE* 6)
(intern "*RIGHT_CONFLUENCE*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_CONFLUENCE* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_CONFLUENCE* 7)
(intern "*LEFT_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_LEFT* 10)
(intern "*LEFT_LEFT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_LEFT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_LEFT_UT* 11)
(intern "*LEFT_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_RIGHT* 12)
(intern "*LEFT_RIGHT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_RIGHT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_RIGHT_UT* 13)
(intern "*LEFT_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_GO_STRAIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_GO_STRAIGHT* 14)
(intern "*LEFT_UNKNOWN*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_UNKNOWN* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_UNKNOWN* 15)
(intern "*RIGHT_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_RIGHT* 20)
(intern "*RIGHT_RIGHT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_RIGHT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_RIGHT_UT* 21)
(intern "*RIGHT_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_LEFT* 22)
(intern "*RIGHT_LEFT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_LEFT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_LEFT_UT* 23)
(intern "*RIGHT_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_GO_STRAIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_GO_STRAIGHT* 24)
(intern "*RIGHT_UNKNOWN*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_UNKNOWN* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_UNKNOWN* 25)
(intern "*LEFT_UT_LEFT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_UT_LEFT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_UT_LEFT_UT* 30)
(intern "*LEFT_UT_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_UT_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_UT_LEFT* 31)
(intern "*LEFT_UT_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_UT_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_UT_RIGHT* 32)
(intern "*LEFT_UT_RIGHT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_UT_RIGHT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_UT_RIGHT_UT* 33)
(intern "*LEFT_UT_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_UT_GO_STRAIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_UT_GO_STRAIGHT* 34)
(intern "*LEFT_UT_UNKNOWN*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*LEFT_UT_UNKNOWN* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*LEFT_UT_UNKNOWN* 35)
(intern "*RIGHT_UT_RIGHT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_UT_RIGHT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_UT_RIGHT_UT* 40)
(intern "*RIGHT_UT_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_UT_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_UT_RIGHT* 41)
(intern "*RIGHT_UT_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_UT_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_UT_LEFT* 42)
(intern "*RIGHT_UT_LEFT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_UT_LEFT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_UT_LEFT_UT* 43)
(intern "*RIGHT_UT_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_UT_GO_STRAIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_UT_GO_STRAIGHT* 44)
(intern "*RIGHT_UT_UNKNOWN*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*RIGHT_UT_UNKNOWN* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*RIGHT_UT_UNKNOWN* 45)
(intern "*GO_STRAIGHT_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*GO_STRAIGHT_GO_STRAIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*GO_STRAIGHT_GO_STRAIGHT* 50)
(intern "*GO_STRAIGHT_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*GO_STRAIGHT_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*GO_STRAIGHT_LEFT* 51)
(intern "*GO_STRAIGHT_LEFT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*GO_STRAIGHT_LEFT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*GO_STRAIGHT_LEFT_UT* 52)
(intern "*GO_STRAIGHT_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*GO_STRAIGHT_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*GO_STRAIGHT_RIGHT* 53)
(intern "*GO_STRAIGHT_RIGHT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*GO_STRAIGHT_RIGHT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*GO_STRAIGHT_RIGHT_UT* 54)
(intern "*GO_STRAIGHT_UNKNOWN*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*GO_STRAIGHT_UNKNOWN* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*GO_STRAIGHT_UNKNOWN* 55)
(intern "*OTHER_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*OTHER_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*OTHER_LEFT* 61)
(intern "*OTHER_LEFT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*OTHER_LEFT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*OTHER_LEFT_UT* 62)
(intern "*OTHER_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*OTHER_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*OTHER_RIGHT* 63)
(intern "*OTHER_RIGHT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*OTHER_RIGHT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*OTHER_RIGHT_UT* 64)
(intern "*OTHER_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*OTHER_GO_STRAIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*OTHER_GO_STRAIGHT* 65)
(intern "*OTHER_UNKNOWN*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*OTHER_UNKNOWN* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*OTHER_UNKNOWN* 66)
(intern "*UNKNOWN_LEFT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*UNKNOWN_LEFT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*UNKNOWN_LEFT* 91)
(intern "*UNKNOWN_LEFT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*UNKNOWN_LEFT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*UNKNOWN_LEFT_UT* 92)
(intern "*UNKNOWN_RIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*UNKNOWN_RIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*UNKNOWN_RIGHT* 93)
(intern "*UNKNOWN_RIGHT_UT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*UNKNOWN_RIGHT_UT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*UNKNOWN_RIGHT_UT* 94)
(intern "*UNKNOWN_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*UNKNOWN_GO_STRAIGHT* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*UNKNOWN_GO_STRAIGHT* 95)
(intern "*UNKNOWN_UNKNOWN*" (find-package "LANDMARK_MSGS::DIRECTION"))
(shadow '*UNKNOWN_UNKNOWN* (find-package "LANDMARK_MSGS::DIRECTION"))
(defconstant landmark_msgs::Direction::*UNKNOWN_UNKNOWN* 96)

(defun landmark_msgs::Direction-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::Direction::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::Direction::*GO_STRAIGHT*)
        ((= const 2) 'landmark_msgs::Direction::*TURN_RIGHT*)
        ((= const 3) 'landmark_msgs::Direction::*TURN_LEFT*)
        ((= const 4) 'landmark_msgs::Direction::*U_TURN_LEFT*)
        ((= const 5) 'landmark_msgs::Direction::*U_TURN_RIGHT*)
        ((= const 6) 'landmark_msgs::Direction::*LEFT_CONFLUENCE*)
        ((= const 7) 'landmark_msgs::Direction::*RIGHT_CONFLUENCE*)
        ((= const 10) 'landmark_msgs::Direction::*LEFT_LEFT*)
        ((= const 11) 'landmark_msgs::Direction::*LEFT_LEFT_UT*)
        ((= const 12) 'landmark_msgs::Direction::*LEFT_RIGHT*)
        ((= const 13) 'landmark_msgs::Direction::*LEFT_RIGHT_UT*)
        ((= const 14) 'landmark_msgs::Direction::*LEFT_GO_STRAIGHT*)
        ((= const 15) 'landmark_msgs::Direction::*LEFT_UNKNOWN*)
        ((= const 20) 'landmark_msgs::Direction::*RIGHT_RIGHT*)
        ((= const 21) 'landmark_msgs::Direction::*RIGHT_RIGHT_UT*)
        ((= const 22) 'landmark_msgs::Direction::*RIGHT_LEFT*)
        ((= const 23) 'landmark_msgs::Direction::*RIGHT_LEFT_UT*)
        ((= const 24) 'landmark_msgs::Direction::*RIGHT_GO_STRAIGHT*)
        ((= const 25) 'landmark_msgs::Direction::*RIGHT_UNKNOWN*)
        ((= const 30) 'landmark_msgs::Direction::*LEFT_UT_LEFT_UT*)
        ((= const 31) 'landmark_msgs::Direction::*LEFT_UT_LEFT*)
        ((= const 32) 'landmark_msgs::Direction::*LEFT_UT_RIGHT*)
        ((= const 33) 'landmark_msgs::Direction::*LEFT_UT_RIGHT_UT*)
        ((= const 34) 'landmark_msgs::Direction::*LEFT_UT_GO_STRAIGHT*)
        ((= const 35) 'landmark_msgs::Direction::*LEFT_UT_UNKNOWN*)
        ((= const 40) 'landmark_msgs::Direction::*RIGHT_UT_RIGHT_UT*)
        ((= const 41) 'landmark_msgs::Direction::*RIGHT_UT_RIGHT*)
        ((= const 42) 'landmark_msgs::Direction::*RIGHT_UT_LEFT*)
        ((= const 43) 'landmark_msgs::Direction::*RIGHT_UT_LEFT_UT*)
        ((= const 44) 'landmark_msgs::Direction::*RIGHT_UT_GO_STRAIGHT*)
        ((= const 45) 'landmark_msgs::Direction::*RIGHT_UT_UNKNOWN*)
        ((= const 50) 'landmark_msgs::Direction::*GO_STRAIGHT_GO_STRAIGHT*)
        ((= const 51) 'landmark_msgs::Direction::*GO_STRAIGHT_LEFT*)
        ((= const 52) 'landmark_msgs::Direction::*GO_STRAIGHT_LEFT_UT*)
        ((= const 53) 'landmark_msgs::Direction::*GO_STRAIGHT_RIGHT*)
        ((= const 54) 'landmark_msgs::Direction::*GO_STRAIGHT_RIGHT_UT*)
        ((= const 55) 'landmark_msgs::Direction::*GO_STRAIGHT_UNKNOWN*)
        ((= const 61) 'landmark_msgs::Direction::*OTHER_LEFT*)
        ((= const 62) 'landmark_msgs::Direction::*OTHER_LEFT_UT*)
        ((= const 63) 'landmark_msgs::Direction::*OTHER_RIGHT*)
        ((= const 64) 'landmark_msgs::Direction::*OTHER_RIGHT_UT*)
        ((= const 65) 'landmark_msgs::Direction::*OTHER_GO_STRAIGHT*)
        ((= const 66) 'landmark_msgs::Direction::*OTHER_UNKNOWN*)
        ((= const 91) 'landmark_msgs::Direction::*UNKNOWN_LEFT*)
        ((= const 92) 'landmark_msgs::Direction::*UNKNOWN_LEFT_UT*)
        ((= const 93) 'landmark_msgs::Direction::*UNKNOWN_RIGHT*)
        ((= const 94) 'landmark_msgs::Direction::*UNKNOWN_RIGHT_UT*)
        ((= const 95) 'landmark_msgs::Direction::*UNKNOWN_GO_STRAIGHT*)
        ((= const 96) 'landmark_msgs::Direction::*UNKNOWN_UNKNOWN*)
        (t nil)))

(defclass landmark_msgs::Direction
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::Direction
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

(setf (get landmark_msgs::Direction :md5sum-) "2ac19d0e2405fb155918d5b1b85e2a47")
(setf (get landmark_msgs::Direction :datatype-) "landmark_msgs/Direction")
(setf (get landmark_msgs::Direction :definition-)
      "uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 LEFT_LEFT = 10
uint8 LEFT_LEFT_UT = 11
uint8 LEFT_RIGHT = 12
uint8 LEFT_RIGHT_UT = 13
uint8 LEFT_GO_STRAIGHT = 14
uint8 LEFT_UNKNOWN = 15
uint8 RIGHT_RIGHT = 20
uint8 RIGHT_RIGHT_UT = 21
uint8 RIGHT_LEFT = 22
uint8 RIGHT_LEFT_UT = 23
uint8 RIGHT_GO_STRAIGHT = 24
uint8 RIGHT_UNKNOWN = 25
uint8 LEFT_UT_LEFT_UT = 30
uint8 LEFT_UT_LEFT = 31
uint8 LEFT_UT_RIGHT = 32
uint8 LEFT_UT_RIGHT_UT = 33
uint8 LEFT_UT_GO_STRAIGHT = 34
uint8 LEFT_UT_UNKNOWN = 35
uint8 RIGHT_UT_RIGHT_UT = 40
uint8 RIGHT_UT_RIGHT = 41
uint8 RIGHT_UT_LEFT = 42
uint8 RIGHT_UT_LEFT_UT = 43
uint8 RIGHT_UT_GO_STRAIGHT = 44
uint8 RIGHT_UT_UNKNOWN = 45
uint8 GO_STRAIGHT_GO_STRAIGHT = 50
uint8 GO_STRAIGHT_LEFT = 51
uint8 GO_STRAIGHT_LEFT_UT = 52
uint8 GO_STRAIGHT_RIGHT = 53
uint8 GO_STRAIGHT_RIGHT_UT = 54
uint8 GO_STRAIGHT_UNKNOWN = 55
uint8 OTHER_LEFT = 61
uint8 OTHER_LEFT_UT = 62
uint8 OTHER_RIGHT = 63
uint8 OTHER_RIGHT_UT = 64
uint8 OTHER_GO_STRAIGHT = 65
uint8 OTHER_UNKNOWN = 66
uint8 UNKNOWN_LEFT = 91
uint8 UNKNOWN_LEFT_UT = 92
uint8 UNKNOWN_RIGHT = 93
uint8 UNKNOWN_RIGHT_UT = 94
uint8 UNKNOWN_GO_STRAIGHT = 95
uint8 UNKNOWN_UNKNOWN = 96
uint8 value

")



(provide :landmark_msgs/Direction "2ac19d0e2405fb155918d5b1b85e2a47")


