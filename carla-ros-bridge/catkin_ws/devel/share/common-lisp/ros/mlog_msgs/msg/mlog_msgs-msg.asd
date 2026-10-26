
(cl:in-package :asdf)

(defsystem "mlog_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Entry" :depends-on ("_package_Entry"))
    (:file "_package_Entry" :depends-on ("_package"))
    (:file "Logs" :depends-on ("_package_Logs"))
    (:file "_package_Logs" :depends-on ("_package"))
  ))