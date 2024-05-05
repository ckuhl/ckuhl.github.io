<!DOCTYPE html>
<html lang="en-CA">
<head>
        <meta charset="utf-8">
        <title>◊(hash-ref metas 'title)</title>
	<link rel="stylesheet" type="text/css" media="all" href="/css/main.css">
</head>
<body>
<header>
<div class="navigation"></div>
<hr/>
</header>

<main>
	◊(->html doc)
</main>

<footer>
◊when/splice[(not (eq? #f (parent here)))]{
	<hr/>
}
<div>
<!-- TODO: Fix this
◊when/splice[(and (prev-sibling here) (eq? #f (children here)))]{
	<span>◊|(->html (node->link (previous here)))| &larr;</span>
}
◊when/splice[(not (eq? #f (parent here)))]{
	<span>&uarr; ◊|(->html (node->link (parent here)))|</span>
}
◊when/splice[(and (next-sibling here) (eq? #f (children here)))]{
	<span>&rarr; ◊|(->html (node->link (next here)))|</span>
}
-->
</div>
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
		In lieu of Google Analytics, please send an email with irrelevant personal information to <code>analytics@</code>.
	</small>
        <br/>
        <small>
                For less information on this, read the <a href="/privacy-policy.html">privacy policy</a>
        </small>
</div>
</footer>

</body>
</html>
