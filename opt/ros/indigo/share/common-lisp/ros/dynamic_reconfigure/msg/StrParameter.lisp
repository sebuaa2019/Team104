; Auto-generated. Do not edit!


(cl:in-package dynamic_reconfigure-msg)


;//! \htmlinclude StrParameter.msg.html

(cl:defclass <StrParameter> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass StrParameter (<StrParameter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StrParameter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StrParameter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_reconfigure-msg:<StrParameter> is deprecated: use dynamic_reconfigure-msg:StrParameter instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <StrParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:name-val is deprecated.  Use dynamic_reconfigure-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <StrParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-msg:value-val is deprecated.  Use dynamic_reconfigure-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StrParameter>) ostream)
  "Serializes a message object of type '<StrParameter>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StrParameter>) istream)
  "Deserializes a message object of type '<StrParameter>"
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
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StrParameter>)))
  "Returns string type for a message object of type '<StrParameter>"
  "dynamic_reconfigure/StrParameter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StrParameter)))
  "Returns string type for a message object of type 'StrParameter"
  "dynamic_reconfigure/StrParameter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StrParameter>)))
  "Returns md5sum for a message object of type '<StrParameter>"
  "bc6ccc4a57f61779c8eaae61e9f422e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StrParameter)))
  "Returns md5sum for a message object of type 'StrParameter"
  "bc6ccc4a57f61779c8eaae61e9f422e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StrParameter>)))
  "Returns full string definition for message of type '<StrParameter>"
  (cl:format cl:nil "string name~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StrParameter)))
  "Returns full string definition for message of type 'StrParameter"
  (cl:format cl:nil "string name~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StrParameter>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StrParameter>))
  "Converts a ROS message object to a list"
  (cl:list 'StrParameter
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
