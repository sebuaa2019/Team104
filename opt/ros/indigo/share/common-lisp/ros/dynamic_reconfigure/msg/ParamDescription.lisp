; Auto-generated. Do not edit!


(cl:in-package dynamic_reconfigure-msg)


;//! \htmlinclude ParamDescription.msg.html

(cl:defclass <ParamDescription> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (level
    :reader level
    :initarg :level
    :type cl:integer
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (edit_method
    :reader edit_method
    :initarg :edit_method
    :type cl:string
    :initform ""))
)

(cl:defclass ParamDescription (<ParamDescription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamDescription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamDescription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_reconfigure-msg:<ParamDescription> is deprecated: use dynamic_reconfigure-msg:ParamDescription instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ParamDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:name-val is deprecated.  Use dynamic_reconfigure-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParamDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:type-val is deprecated.  Use dynamic_reconfigure-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <ParamDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:level-val is deprecated.  Use dynamic_reconfigure-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <ParamDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:description-val is deprecated.  Use dynamic_reconfigure-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'edit_method-val :lambda-list '(m))
(cl:defmethod edit_method-val ((m <ParamDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:edit_method-val is deprecated.  Use dynamic_reconfigure-msg:edit_method instead.")
  (edit_method m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamDescription>) ostream)
  "Serializes a message object of type '<ParamDescription>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'level)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'edit_method))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'edit_method))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamDescription>) istream)
  "Deserializes a message object of type '<ParamDescription>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'edit_method) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'edit_method) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamDescription>)))
  "Returns string type for a message object of type '<ParamDescription>"
  "dynamic_reconfigure/ParamDescription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamDescription)))
  "Returns string type for a message object of type 'ParamDescription"
  "dynamic_reconfigure/ParamDescription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamDescription>)))
  "Returns md5sum for a message object of type '<ParamDescription>"
  "7434fcb9348c13054e0c3b267c8cb34d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamDescription)))
  "Returns md5sum for a message object of type 'ParamDescription"
  "7434fcb9348c13054e0c3b267c8cb34d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamDescription>)))
  "Returns full string definition for message of type '<ParamDescription>"
  (cl:format cl:nil "string name~%string type~%uint32 level~%string description~%string edit_method~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamDescription)))
  "Returns full string definition for message of type 'ParamDescription"
  (cl:format cl:nil "string name~%string type~%uint32 level~%string description~%string edit_method~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamDescription>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     4
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'edit_method))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamDescription>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamDescription
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':level (level msg))
    (cl:cons ':description (description msg))
    (cl:cons ':edit_method (edit_method msg))
))
