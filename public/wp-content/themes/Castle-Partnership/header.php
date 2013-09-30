<?php
/**
 * Template: Header.php 
 *
 * @package WPFramework
 * @subpackage Template
 */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--BEGIN html-->
<html xmlns="http://www.w3.org/1999/xhtml" <?php language_attributes(); ?>>
<!-- Built on WP Framework (http://wpframework.com) - Powered by WordPress (http://wordpress.org) -->

<!--BEGIN head-->
<head profile="<?php get_profile_uri(); ?>">

	<title><?php semantic_title(); ?></title>

	<!-- Meta Tags -->
	<meta http-equiv="Content-Type" content="<?php bloginfo( 'html_type' ); ?>; charset=<?php bloginfo('charset'); ?>" />
	<meta name="generator" content="WordPress" />
	<meta name="framework" content="WP Framework" />
	
	<script type="text/Javascript">
		<!--
		function display (category) {
			var whichcategory = document.getElementById(category);
			if (whichcategory.className=="show") {
				whichcategory.className="hide";
			} else {
				whichcategory.className="show";
			}
		}
		-->
	</script>

	<!-- Favicon: Browser + iPhone Webclip -->
	<link rel="shortcut icon" href="<?php echo IMAGES . 'file:///Macintosh HD/Users/Tea/Documents/Creativitea Ltd/client work/online/Castle Partnership/380 Web Design/favicon.ico'; ?>" />
	<link rel="apple-touch-icon" href="<?php echo IMAGES . 'file:///Macintosh HD/Users/Tea/Documents/Creativitea Ltd/client work/online/Castle Partnership/380 Web Design/iphone.png'; ?>" />

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php bloginfo( 'stylesheet_url' ); ?>" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="<?php echo CSS . 'file:///Macintosh HD/Users/Tea/Documents/Creativitea Ltd/client work/online/Castle Partnership/380 Web Design/print.css'; ?>" type="text/css" media="print" />

  	<!-- Links: RSS + Atom Syndication + Pingback etc. -->
	<link rel="alternate" type="application/rss+xml" title="<?php bloginfo( 'name' ); ?> RSS Feed" href="<?php bloginfo( 'rss2_url' ); ?>" />
	<link rel="alternate" type="text/xml" title="RSS .92" href="<?php bloginfo( 'rss_url' ); ?>" />
	<link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="<?php bloginfo( 'atom_url' ); ?>" />
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />

	<!-- Theme Hook -->
    <?php if ( is_singular() ) wp_enqueue_script( 'comment-reply' ); // loads the javascript required for threaded comments ?>
	<?php wp_head(); ?>

<!--END head-->
</head>

<!--BEGIN body-->
<body class="<?php semantic_body(); ?>">
	
	<!--BEGIN .container-->
	<div class="container">

		<!--BEGIN .header-->
		<div class="header">
			<div id="logo"><a href="<?php bloginfo( 'url' ); ?>"><img src="http://castle.creativitea.co.uk/wp-content/uploads/2010/02/header_logo.png" width="264" height="70" alt="The Castle Partnership" /></a></div>
			<p id="tagline"><?php bloginfo( 'description' ) ?></p>
			<div class="clear"></div>
		<!--END .header-->
		</div>

        

		<!--BEGIN #content-->
		<div id="content">
		