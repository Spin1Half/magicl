(in-package #:magicl)

;; useful command: nm -jgU

;; EDIT THESE VARIABLES TO POINT TO YOUR LIBRARIES!


#|
;;; The suggestion (from Leo (sdl.web at gmail dot com) to use native
;;; accelerated BLAS and LAPACK on MacOSX is to COMMENT OUT the
;;; gfortran lib DEFPARAMETER and LOAD-FOREIGN-LIBRARY, as it is not
;;; linked in, and to use the following locations:

  ;; (defparameter *gfortran-lib* "/usr/lib/libgfortran.so.3")
  (defparameter *blas-lib*
     "/System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib")
  (defparameter *lapack-lib*
     "/System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Versions/A/libLAPACK.dylib")

;;; and then for the load, comment it out:

+      ;; (load-foreign-library *gfortran-lib*)

;;; This might not hold for your MacOSX setup, please report back!


;;; THANKS to David Hodge, we have that included directly in the code.   Sorry that I forgot about it!! 

;;; However, I (Tony Rossini) am leaving the code above for later use.

|#

;;; TODO:
;;;
;;; define library name
;;; add library to defcfun

(eval-when (:compile-toplevel :load-toplevel)


#+darwin (progn
           (defparameter *use-brew* t)
	   (defparameter *gfortran-lib* (if *use-brew*
                                            "/usr/local/opt/gcc/lib/gcc/7/libgfortran.dylib"
                                            nil))
	   (defparameter *blas-lib*
             (if *use-brew*
                 "/usr/local/opt/lapack/lib/libblas.dylib"
                 "/System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib"))
	   (defparameter *lapack-lib*
             (if *use-brew*
                 "/usr/local/opt/lapack/lib/liblapack.dylib"
                 "/System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/Versions/A/libLAPACK.dylib")))
#-darwin (progn
	   (defparameter *gfortran-lib* "libgfortran.so.3")
	   (defparameter *blas-lib* "libblas.so")
	   (defparameter *lapack-lib* "liblapack.so"))


  (defvar *blapack-libs-loaded* nil)

  (unless *blapack-libs-loaded*
    (progn
      (when *gfortran-lib* (load-foreign-library *gfortran-lib*))
      (load-foreign-library *blas-lib*)
      (load-foreign-library *lapack-lib*)
      (setf *blapack-libs-loaded* t))))

