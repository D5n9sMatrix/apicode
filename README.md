<!DOCTYPE html>
<!-- saved from url=(0082)https://www.gnu.org/software/emacs/manual/html_node/elisp/Ctl_002dChar-Syntax.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Ctl-Char Syntax (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Ctl-Char Syntax (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Ctl-Char Syntax (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="subsubsection-level-extent" id="Ctl_002dChar-Syntax">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Meta_002dChar-Syntax.html" accesskey="n" rel="next">Meta-Character Syntax</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/General-Escape-Syntax.html" accesskey="p" rel="prev">General Escape Syntax</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Type.html" accesskey="u" rel="up">Character Type</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h4 class="subsubsection" id="Control_002dCharacter-Syntax">2.4.3.3 Control-Character Syntax</h4>

<a class="index-entry-id" id="index-control-characters"></a>
<p>Control characters can be represented using yet another read syntax.
This consists of a question mark followed by a backslash, caret, and the
corresponding non-control character, in either upper or lower case.  For
example, both ‘<samp class="samp">?\^I</samp>’ and ‘<samp class="samp">?\^i</samp>’ are valid read syntax for the
character <kbd class="kbd">C-i</kbd>, the character whose value is 9.
</p>
<p>Instead of the ‘<samp class="samp">^</samp>’, you can use ‘<samp class="samp">C-</samp>’; thus, ‘<samp class="samp">?\C-i</samp>’ is
equivalent to ‘<samp class="samp">?\^I</samp>’ and to ‘<samp class="samp">?\^i</samp>’:
</p>
<div class="example">
<pre class="example-preformatted">?\^I ⇒ 9     ?\C-I ⇒ 9
</pre></div>

<p>In strings and buffers, the only control characters allowed are those
that exist in <abbr class="acronym">ASCII</abbr>; but for keyboard input purposes, you can turn
any character into a control character with ‘<samp class="samp">C-</samp>’.  The character
codes for these non-<abbr class="acronym">ASCII</abbr> control characters include the
2**26
bit as well as the code for the corresponding non-control character.
Not all text terminals can generate non-<abbr class="acronym">ASCII</abbr> control
characters, but it is straightforward to generate them using X and
other window systems.
</p>
<p>For historical reasons, Emacs treats the <kbd class="key">DEL</kbd> character as
the control equivalent of <kbd class="kbd">?</kbd>:
</p>
<div class="example">
<pre class="example-preformatted">?\^? ⇒ 127     ?\C-? ⇒ 127
</pre></div>

<p>As a result, it is currently not possible to represent the character
<kbd class="kbd">Control-?</kbd>, which is a meaningful input character under X, using
‘<samp class="samp">\C-</samp>’.  It is not easy to change this, as various Lisp files refer
to <kbd class="key">DEL</kbd> in this way.
</p>
<p>For representing control characters to be found in files or strings,
we recommend the ‘<samp class="samp">^</samp>’ syntax; for control characters in keyboard
input, we prefer the ‘<samp class="samp">C-</samp>’ syntax.  Which one you use does not
affect the meaning of the program, but may guide the understanding of
people who read it.
</p>
</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Meta_002dChar-Syntax.html">Meta-Character Syntax</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/General-Escape-Syntax.html">General Escape Syntax</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Type.html">Character Type</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>