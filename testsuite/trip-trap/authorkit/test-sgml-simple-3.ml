(* test-sgml-simple-3 -- Author kit

Author: Michael Grünewald
Date: Tue Jun  3 11:45:45 CEST 2014

Gasoline (https://github.com/michipili/gasoline)
This file is part of Gasoline

Copyright © 2014 Michael Grünewald

This file must be used under the terms of the CeCILL-B.
This source file is licensed as described in the file COPYING, which
you should have received as part of this distribution. The terms
are also available at
http://www.cecill.info/licences/Licence_CeCILL-B_V1-en.txt *)
open Unicode
open WSGML

let document contents =
  let body = element ~block:true "body" contents in
  let html = element ~block:true "html" [ body] in
  make
    ~declaration:"<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
    ~dtd:"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\">"
    [ html ]

let h1attr =
  element
    ~block:false
    ~attr:[
	"id", u"this-header-as-such-a-long-identifier-it-has-indeeed";
	"class", u"this-class-as-quite-along-identifier-as-well";
    ]
    "h1" [ pcdata(u"My First Heading") ]

let p =
  element ~block:false "p" [ pcdata(u"My first paragraph.") ]

let testsimple contents =
  WSGML.print (document contents)

let () = testsimple [ h1attr; p ]
