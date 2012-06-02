<!DOCTYPE html5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Virtual DEV - Testing page</title>
</head>
<body>
	<h1>Virtual DEV - Testing page</h1>
	Document root: <?php echo __FILE__; ?>
	<br />
	<?php echo date("d/m/Y"); ?>

	<article class="markdown-body entry-content">
		<h1>
			<a class="anchor"
				href="#virtual-dev---basic-box"><span
				class="mini-icon mini-icon-link"></span></a>Virtual Dev - Basic Box
		</h1>

		<p>The basic box provides preinstalled Zend Server CE 5.2 and latest
			MySQL server. The box is build on Ubuntu Lucid 64bit.</p>

		<p>List of packages in server</p>

		<ul>
			<li>Zend Server CE / php 5.2 (document root - <a
				href="http://127.0.0.1:8080/vitualdev/www">http://127.0.0.1:8080</a>, ZS
				Administration <a href="http://127.0.0.1:10081/">http://127.0.0.1:10081/</a>)
			</li>
			<li>MySQL server (user: root, no password)</li>
			<li>PHPMyAdmin (<a href="http://127.0.0.1:8080/phpmyadmin/">http://127.0.0.1:8080/phpmyadmin/</a>)
			</li>
		</ul>

		<div class="wiki-content">
			<h1 id="Virtualdev-Projectmission">Project mission</h1>
			<p>
				Folks, every of you have been fighting with settings of your local
				dev stack. With every new Magento project, usualy you need to do
				many repetive tasks like installing web&amp;mysql server and
				configure them. That's really annoying, isnt it? Have you realized
				that you repeat yourself in history? That's the reason why we
				decided to start project with code name "Virtualized development" or
				in short <strong><em>virtualdev</em></strong>. That provides you
				complete stack with all services running without any complex
				setting. You can distribute this setting across whole team so every
				member works runs application on same platform which can be set
				really close to production environment. You can run it on Windows,
				Linux and Mac OS. Isn't that great! It is. That's our goal!
			</p>
			<h2 id="Virtualdev-Sourcecodes">Source codes</h2>
			<p>
				All source codes are hosted in guthub repository&nbsp;<a
					href="https://github.com/NoStressCommerceCZ/virtualdev"
					class="external-link" rel="nofollow">https://github.com/NoStressCommerceCZ/virtualdev</a>.
				So do not hesitate to download or fork it. Any code line back is
				really appreciated.
			</p>
			<h2 id="Virtualdev-Useranddevelopersupport">User and developer
				support</h2>
			<p>
				In case you have any questions then give us the shout here&nbsp;<a
					href="https://groups.google.com/forum/#!forum/virtualdev"
					class="external-link" rel="nofollow">https://groups.google.com/forum/#!forum/virtualdev</a>
			</p>
			<h2 id="Virtualdev-Technologiesandtoolsbehindthescene">Technologies
				and tools behind the scene</h2>
			<p>
				As virtualization we're rely on <a
					href="https://www.virtualbox.org/" class="external-link"
					rel="nofollow">VirtualBox</a> which is driven by <a
					href="http://vagrantup.com/" class="external-link" rel="nofollow">Vagrant</a>.
				All installation of services and basic configuration is driven by <a
					href="http://puppetlabs.com/" class="external-link" rel="nofollow">Puppet</a>
				and whole stack is running on Ubuntu Lucid 10 (64bit).
			</p>
		</div>
	</article>
</body>
</html>