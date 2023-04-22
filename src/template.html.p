<!DOCTYPE html>
<html lang="en-CA">
<head>
	<meta charset="utf-8">
	<title>◊(hash-ref metas 'title)</title>
	<link rel="stylesheet" type="text/css" media="all" href="/css/main.css">
</head>
<body>
<header>
<!--
FIXME: Need to figure out how to actually do naviagation. Eventually.
<div class="navigation">
◊when/splice[(previous here)]{
	<span>&larr; ◊|(->html (node->link (previous here)))|</span>
}
	<span>&uarr; <a href="/">Home</a></span>
◊when/splice[(next here)]{
	<span>◊|(->html (node->link (next here)))| &rarr;</span>
}

</div>
-->
<hr/>
</header>

◊(->html doc)

<footer>
<hr/>
<div>
	<a href="https://validator.w3.org/check/referer">
		<img src="/images/htmlval2.gif" alt="Valid HTML!" width="88" height="31"></a>
	<a href="https://jigsaw.w3.org/css-validator/check/referer">
		<img src="/images/w3-valid-css.gif" alt="Valid CSS!" width="88" height="31"></a>
	<a href="https://validator.w3.org/feed/check.cgi?url=https%3A%2F%2Fwww.ckuhl.com%2Ffeed.xml">
		<img src="/images/valid-atom.png" alt="[Valid Atom 1.0]" title="Validate my Atom 1.0 feed" width="88" height="31"></a>
</div>
<div>
	<small>
		In lieu of using Google Analytics, I have adopted an honour system;
	</small>
	<br/>
	<small>
		Please send an email with irrelevant personal information to <code>analytics@</code>.
	</small>
</div>
</footer>

</body>
</html>
