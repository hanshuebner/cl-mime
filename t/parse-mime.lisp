(in-package cl-mime-test)


(deftest header-raw-params-test
  (ok (equal (mime::header-raw-params
              '(:CONTENT-TYPE
                . "multipart/alternative; boundary=\"b1_b50de8f53d68a7437a6359aef2dbb344\""))
             "; boundary=\"b1_b50de8f53d68a7437a6359aef2dbb344\"")))


(deftest header-params-test
  (ok (equal (mime::header-parms
              '(:content-type
                . "multipart/alternative; boundary=\"b1_b50de8f53d68a7437a6359aef2dbb344\""))
             '((:boundary "b1_b50de8f53d68a7437a6359aef2dbb344"))))
  
  (ok (equal (mime::header-parms
              '(:content-type . "multipart/alternative; boundary=\"Apple-Mail=_CDCD9DE7-5FDE-4605-AA7C-01981ECF3587\"; foo=bar"))
             '((:foo "bar")
               (:boundary "Apple-Mail=_CDCD9DE7-5FDE-4605-AA7C-01981ECF3587")))))
