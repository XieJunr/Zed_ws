
(cl:in-package :asdf)

(defsystem "zed_capture-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Crop" :depends-on ("_package_Crop"))
    (:file "_package_Crop" :depends-on ("_package"))
    (:file "Grape" :depends-on ("_package_Grape"))
    (:file "_package_Grape" :depends-on ("_package"))
  ))