# -*- mode: makefile; coding: us-ascii -*-
# vim: set filetype=makefile fileencoding=utf-8 sw=4 sts=4:
# Refer to license at the end of this file.
#
# Make or run tests for css_erl library.
# SE, created 10-Dec-2014, GNU Make 3.81 on MacOSX 10.9.5.

all: .css_erl

clean:
	rm ebin/*.beam ebin/*.erl

# --

.css_erl: ebin/css_leex.beam ebin/css_yecc.beam ebin/css_util.beam ebin/css_file.beam ebin/css_idents.beam

ebin/css_idents.beam: src/css_idents.erl
	erlc -o ebin $^

ebin/css_file.beam: src/css_file.erl
	erlc -o ebin $^

ebin/css_util.beam: src/css_util.erl
	erlc -o ebin $^

ebin/css_yecc.beam: ebin/css_yecc.erl
	erlc -o ebin $^

ebin/css_leex.beam: ebin/css_leex.erl
	erlc -o ebin $^

ebin/css_yecc.erl: src/css_yecc.yrl
	erlc -o ebin $^

ebin/css_leex.erl: src/css_leex.xrl
	erlc -o ebin $^

# -----------------------------------------------------------------------------
#
# The MIT License (MIT)
#
# Copyright (c) 2014, Sebastian Egner.
# Copyright (c) 2013-2014, Entelios AG, an EnerNOC company.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# (Source: http://opensource.org/licenses/MIT)