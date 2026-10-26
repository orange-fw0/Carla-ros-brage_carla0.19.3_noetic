
(cl:in-package :asdf)

(defsystem "mtime_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Clock" :depends-on ("_package_Clock"))
    (:file "_package_Clock" :depends-on ("_package"))
  ))