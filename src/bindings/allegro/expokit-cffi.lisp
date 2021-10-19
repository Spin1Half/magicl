;;;; Generated on 10/20/2021 at 09:40:00 (UTC+10).

(COMMON-LISP:DECLAIM (COMMON-LISP:OPTIMIZE (COMMON-LISP:SPEED 0)
                      COMMON-LISP:SAFETY COMMON-LISP:DEBUG
                      COMMON-LISP:COMPILATION-SPEED))

(COMMON-LISP:IN-PACKAGE #:MAGICL.EXPOKIT-CFFI)

(COMMON-LISP:DECLAIM (COMMON-LISP:INLINE %%ZHPADM %ZHPADM %%DSPADM
                      %DSPADM %%ZGPADM %ZGPADM %%DGPADM %DGPADM
                      %%ZGCHBV %ZGCHBV %%DSCHBV %DSCHBV %%ZNCHBV
                      %ZNCHBV %%DGCHBV %DGCHBV %%DNCHBV %DNCHBV))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%ZHPADM "zhpadm_")
  ((IDEG :FOREIGN-ADDRESS) (M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS)
   (H :FOREIGN-ADDRESS) (LDH :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS)
   (LWSP :FOREIGN-ADDRESS) (IPIV :FOREIGN-ADDRESS)
   (IEXPH :FOREIGN-ADDRESS) (NS :FOREIGN-ADDRESS)
   (IFLAG :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %ZHPADM
    (IDEG M T H LDH WSP LWSP IPIV IEXPH NS IFLAG)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%ZHPADM)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IDEG)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    WSP)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LWSP)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY (COMMON-LISP:SIGNED-BYTE 32)
     (COMMON-LISP:*))
    IPIV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IEXPH)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) NS)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IFLAG))
  (CFFI:WITH-FOREIGN-OBJECTS ((IDEG-REF80 ':INT32) (M-REF81 ':INT32)
                              (T-REF82 ':DOUBLE) (LDH-REF84 ':INT32)
                              (LWSP-REF86 ':INT32)
                              (IEXPH-REF88 ':INT32) (NS-REF89 ':INT32)
                              (IFLAG-REF90 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF IDEG-REF80 :INT32) IDEG)
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF81 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF82 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF84 :INT32) LDH)
    (COMMON-LISP:SETF (CFFI:MEM-REF LWSP-REF86 :INT32) LWSP)
    (COMMON-LISP:SETF (CFFI:MEM-REF IEXPH-REF88 :INT32) IEXPH)
    (COMMON-LISP:SETF (CFFI:MEM-REF NS-REF89 :INT32) NS)
    (COMMON-LISP:SETF (CFFI:MEM-REF IFLAG-REF90 :INT32) IFLAG)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF83 H)
                                            (WSP-REF85 WSP)
                                            (IPIV-REF87 IPIV))
      (%%ZHPADM IDEG-REF80 M-REF81 T-REF82 H-REF83 LDH-REF84 WSP-REF85
       LWSP-REF86 IPIV-REF87 IEXPH-REF88 NS-REF89 IFLAG-REF90))))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%DSPADM "dspadm_")
  ((IDEG :FOREIGN-ADDRESS) (M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS)
   (H :FOREIGN-ADDRESS) (LDH :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS)
   (LWSP :FOREIGN-ADDRESS) (IPIV :FOREIGN-ADDRESS)
   (IEXPH :FOREIGN-ADDRESS) (NS :FOREIGN-ADDRESS)
   (IFLAG :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %DSPADM
    (IDEG M T H LDH WSP LWSP IPIV IEXPH NS IFLAG)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%DSPADM)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IDEG)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) WSP)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LWSP)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY (COMMON-LISP:SIGNED-BYTE 32)
     (COMMON-LISP:*))
    IPIV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IEXPH)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) NS)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IFLAG))
  (CFFI:WITH-FOREIGN-OBJECTS ((IDEG-REF91 ':INT32) (M-REF92 ':INT32)
                              (T-REF93 ':DOUBLE) (LDH-REF95 ':INT32)
                              (LWSP-REF97 ':INT32)
                              (IEXPH-REF99 ':INT32) (NS-REF100 ':INT32)
                              (IFLAG-REF101 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF IDEG-REF91 :INT32) IDEG)
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF92 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF93 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF95 :INT32) LDH)
    (COMMON-LISP:SETF (CFFI:MEM-REF LWSP-REF97 :INT32) LWSP)
    (COMMON-LISP:SETF (CFFI:MEM-REF IEXPH-REF99 :INT32) IEXPH)
    (COMMON-LISP:SETF (CFFI:MEM-REF NS-REF100 :INT32) NS)
    (COMMON-LISP:SETF (CFFI:MEM-REF IFLAG-REF101 :INT32) IFLAG)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF94 H)
                                            (WSP-REF96 WSP)
                                            (IPIV-REF98 IPIV))
      (%%DSPADM IDEG-REF91 M-REF92 T-REF93 H-REF94 LDH-REF95 WSP-REF96
       LWSP-REF97 IPIV-REF98 IEXPH-REF99 NS-REF100 IFLAG-REF101))))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%ZGPADM "zgpadm_")
  ((IDEG :FOREIGN-ADDRESS) (M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS)
   (H :FOREIGN-ADDRESS) (LDH :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS)
   (LWSP :FOREIGN-ADDRESS) (IPIV :FOREIGN-ADDRESS)
   (IEXPH :FOREIGN-ADDRESS) (NS :FOREIGN-ADDRESS)
   (IFLAG :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %ZGPADM
    (IDEG M T H LDH WSP LWSP IPIV IEXPH NS IFLAG)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%ZGPADM)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IDEG)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    WSP)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LWSP)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY (COMMON-LISP:SIGNED-BYTE 32)
     (COMMON-LISP:*))
    IPIV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IEXPH)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) NS)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IFLAG))
  (CFFI:WITH-FOREIGN-OBJECTS ((IDEG-REF102 ':INT32) (M-REF103 ':INT32)
                              (T-REF104 ':DOUBLE) (LDH-REF106 ':INT32)
                              (LWSP-REF108 ':INT32)
                              (IEXPH-REF110 ':INT32)
                              (NS-REF111 ':INT32)
                              (IFLAG-REF112 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF IDEG-REF102 :INT32) IDEG)
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF103 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF104 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF106 :INT32) LDH)
    (COMMON-LISP:SETF (CFFI:MEM-REF LWSP-REF108 :INT32) LWSP)
    (COMMON-LISP:SETF (CFFI:MEM-REF IEXPH-REF110 :INT32) IEXPH)
    (COMMON-LISP:SETF (CFFI:MEM-REF NS-REF111 :INT32) NS)
    (COMMON-LISP:SETF (CFFI:MEM-REF IFLAG-REF112 :INT32) IFLAG)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF105 H)
                                            (WSP-REF107 WSP)
                                            (IPIV-REF109 IPIV))
      (%%ZGPADM IDEG-REF102 M-REF103 T-REF104 H-REF105 LDH-REF106
       WSP-REF107 LWSP-REF108 IPIV-REF109 IEXPH-REF110 NS-REF111
       IFLAG-REF112))))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%DGPADM "dgpadm_")
  ((IDEG :FOREIGN-ADDRESS) (M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS)
   (H :FOREIGN-ADDRESS) (LDH :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS)
   (LWSP :FOREIGN-ADDRESS) (IPIV :FOREIGN-ADDRESS)
   (IEXPH :FOREIGN-ADDRESS) (NS :FOREIGN-ADDRESS)
   (IFLAG :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %DGPADM
    (IDEG M T H LDH WSP LWSP IPIV IEXPH NS IFLAG)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%DGPADM)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IDEG)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) WSP)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LWSP)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY (COMMON-LISP:SIGNED-BYTE 32)
     (COMMON-LISP:*))
    IPIV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IEXPH)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) NS)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IFLAG))
  (CFFI:WITH-FOREIGN-OBJECTS ((IDEG-REF113 ':INT32) (M-REF114 ':INT32)
                              (T-REF115 ':DOUBLE) (LDH-REF117 ':INT32)
                              (LWSP-REF119 ':INT32)
                              (IEXPH-REF121 ':INT32)
                              (NS-REF122 ':INT32)
                              (IFLAG-REF123 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF IDEG-REF113 :INT32) IDEG)
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF114 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF115 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF117 :INT32) LDH)
    (COMMON-LISP:SETF (CFFI:MEM-REF LWSP-REF119 :INT32) LWSP)
    (COMMON-LISP:SETF (CFFI:MEM-REF IEXPH-REF121 :INT32) IEXPH)
    (COMMON-LISP:SETF (CFFI:MEM-REF NS-REF122 :INT32) NS)
    (COMMON-LISP:SETF (CFFI:MEM-REF IFLAG-REF123 :INT32) IFLAG)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF116 H)
                                            (WSP-REF118 WSP)
                                            (IPIV-REF120 IPIV))
      (%%DGPADM IDEG-REF113 M-REF114 T-REF115 H-REF116 LDH-REF117
       WSP-REF118 LWSP-REF119 IPIV-REF120 IEXPH-REF121 NS-REF122
       IFLAG-REF123))))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%ZGCHBV "zgchbv_")
  ((M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS) (H :FOREIGN-ADDRESS)
   (LDH :FOREIGN-ADDRESS) (Y :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS)
   (IWSP :FOREIGN-ADDRESS) (IFLAG :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %ZGCHBV (M T H LDH Y WSP IWSP IFLAG)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%ZGCHBV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    Y)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    WSP)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY (COMMON-LISP:SIGNED-BYTE 32)
     (COMMON-LISP:*))
    IWSP)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IFLAG))
  (CFFI:WITH-FOREIGN-OBJECTS ((M-REF124 ':INT32) (T-REF125 ':DOUBLE)
                              (LDH-REF127 ':INT32)
                              (IFLAG-REF131 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF124 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF125 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF127 :INT32) LDH)
    (COMMON-LISP:SETF (CFFI:MEM-REF IFLAG-REF131 :INT32) IFLAG)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF126 H)
                                            (Y-REF128 Y)
                                            (WSP-REF129 WSP)
                                            (IWSP-REF130 IWSP))
      (%%ZGCHBV M-REF124 T-REF125 H-REF126 LDH-REF127 Y-REF128
       WSP-REF129 IWSP-REF130 IFLAG-REF131))))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%DSCHBV "dschbv_")
  ((M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS) (H :FOREIGN-ADDRESS)
   (LDH :FOREIGN-ADDRESS) (Y :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS)
   (IWSP :FOREIGN-ADDRESS) (IFLAG :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %DSCHBV (M T H LDH Y WSP IWSP IFLAG)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%DSCHBV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) Y)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    WSP)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY (COMMON-LISP:SIGNED-BYTE 32)
     (COMMON-LISP:*))
    IWSP)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IFLAG))
  (CFFI:WITH-FOREIGN-OBJECTS ((M-REF132 ':INT32) (T-REF133 ':DOUBLE)
                              (LDH-REF135 ':INT32)
                              (IFLAG-REF139 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF132 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF133 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF135 :INT32) LDH)
    (COMMON-LISP:SETF (CFFI:MEM-REF IFLAG-REF139 :INT32) IFLAG)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF134 H)
                                            (Y-REF136 Y)
                                            (WSP-REF137 WSP)
                                            (IWSP-REF138 IWSP))
      (%%DSCHBV M-REF132 T-REF133 H-REF134 LDH-REF135 Y-REF136
       WSP-REF137 IWSP-REF138 IFLAG-REF139))))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%ZNCHBV "znchbv_")
  ((M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS) (H :FOREIGN-ADDRESS)
   (LDH :FOREIGN-ADDRESS) (Y :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %ZNCHBV (M T H LDH Y WSP)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%ZNCHBV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    Y)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    WSP))
  (CFFI:WITH-FOREIGN-OBJECTS ((M-REF140 ':INT32) (T-REF141 ':DOUBLE)
                              (LDH-REF143 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF140 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF141 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF143 :INT32) LDH)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF142 H)
                                            (Y-REF144 Y)
                                            (WSP-REF145 WSP))
      (%%ZNCHBV M-REF140 T-REF141 H-REF142 LDH-REF143 Y-REF144
       WSP-REF145))))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%DGCHBV "dgchbv_")
  ((M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS) (H :FOREIGN-ADDRESS)
   (LDH :FOREIGN-ADDRESS) (Y :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS)
   (IWSP :FOREIGN-ADDRESS) (IFLAG :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %DGCHBV (M T H LDH Y WSP IWSP IFLAG)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%DGCHBV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) Y)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    WSP)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY (COMMON-LISP:SIGNED-BYTE 32)
     (COMMON-LISP:*))
    IWSP)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) IFLAG))
  (CFFI:WITH-FOREIGN-OBJECTS ((M-REF146 ':INT32) (T-REF147 ':DOUBLE)
                              (LDH-REF149 ':INT32)
                              (IFLAG-REF153 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF146 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF147 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF149 :INT32) LDH)
    (COMMON-LISP:SETF (CFFI:MEM-REF IFLAG-REF153 :INT32) IFLAG)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF148 H)
                                            (Y-REF150 Y)
                                            (WSP-REF151 WSP)
                                            (IWSP-REF152 IWSP))
      (%%DGCHBV M-REF146 T-REF147 H-REF148 LDH-REF149 Y-REF150
       WSP-REF151 IWSP-REF152 IFLAG-REF153))))

(FOREIGN-FUNCTIONS:DEF-FOREIGN-CALL (%%DNCHBV "dnchbv_")
  ((M :FOREIGN-ADDRESS) (T :FOREIGN-ADDRESS) (H :FOREIGN-ADDRESS)
   (LDH :FOREIGN-ADDRESS) (Y :FOREIGN-ADDRESS) (WSP :FOREIGN-ADDRESS))
  :RETURNING :VOID :RELEASE-HEAP :NEVER :ALLOW-GC :NEVER)

(COMMON-LISP:DEFUN %DNCHBV (M T H LDH Y WSP)
  (COMMON-LISP:DECLARE (COMMON-LISP:INLINE %%DNCHBV)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) M)
   (COMMON-LISP:TYPE COMMON-LISP:DOUBLE-FLOAT T)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) H)
   (COMMON-LISP:TYPE (COMMON-LISP:SIGNED-BYTE 32) LDH)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY COMMON-LISP:DOUBLE-FLOAT) Y)
   (COMMON-LISP:TYPE
    (COMMON-LISP:SIMPLE-ARRAY
     (COMMON-LISP:COMPLEX COMMON-LISP:DOUBLE-FLOAT) (COMMON-LISP:*))
    WSP))
  (CFFI:WITH-FOREIGN-OBJECTS ((M-REF154 ':INT32) (T-REF155 ':DOUBLE)
                              (LDH-REF157 ':INT32))
    (COMMON-LISP:SETF (CFFI:MEM-REF M-REF154 :INT32) M)
    (COMMON-LISP:SETF (CFFI:MEM-REF T-REF155 :DOUBLE) T)
    (COMMON-LISP:SETF (CFFI:MEM-REF LDH-REF157 :INT32) LDH)
    (MAGICL.CFFI-TYPES:WITH-ARRAY-POINTERS ((H-REF156 H)
                                            (Y-REF158 Y)
                                            (WSP-REF159 WSP))
      (%%DNCHBV M-REF154 T-REF155 H-REF156 LDH-REF157 Y-REF158
       WSP-REF159))))

(COMMON-LISP:DECLAIM (COMMON-LISP:NOTINLINE %%ZHPADM %ZHPADM %%DSPADM
                      %DSPADM %%ZGPADM %ZGPADM %%DGPADM %DGPADM
                      %%ZGCHBV %ZGCHBV %%DSCHBV %DSCHBV %%ZNCHBV
                      %ZNCHBV %%DGCHBV %DGCHBV %%DNCHBV %DNCHBV))

(MAGICL.FOREIGN-LIBRARIES:TRACK-SYMBOLS
  'MAGICL.FOREIGN-LIBRARIES::LIBEXPOKIT
  '(("ZHPADM" "zhpadm_" %%ZHPADM %ZHPADM)
    ("DSPADM" "dspadm_" %%DSPADM %DSPADM)
    ("ZGPADM" "zgpadm_" %%ZGPADM %ZGPADM)
    ("DGPADM" "dgpadm_" %%DGPADM %DGPADM)
    ("ZGCHBV" "zgchbv_" %%ZGCHBV %ZGCHBV)
    ("DSCHBV" "dschbv_" %%DSCHBV %DSCHBV)
    ("ZNCHBV" "znchbv_" %%ZNCHBV %ZNCHBV)
    ("DGCHBV" "dgchbv_" %%DGCHBV %DGCHBV)
    ("DNCHBV" "dnchbv_" %%DNCHBV %DNCHBV)))

(COMMON-LISP:EXPORT '(%ZHPADM %DSPADM %ZGPADM %DGPADM %ZGCHBV %DSCHBV
                      %ZNCHBV %DGCHBV %DNCHBV)
                    '#:MAGICL.EXPOKIT-CFFI)

;;; End of file.
