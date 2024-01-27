<?php
/**
 * The header for our theme
 *
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 */

?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<?php wp_head(); ?>
</head>

<header id="header" role="banner">
<div id="branding">
    <div id="branding-img">
        <?php echo '<img src="/images/Logo.svg" alt="logo">'?>
    </div>
    <nav id="menu" role="navigation" itemscope itemtype="https://schema.org/SiteNavigationElement">
        <?php wp_nav_menu( array( 'theme_location' => 'main-menu', 'link_before' => '<span itemprop="name">', 'link_after' => '</span>')); ?>
    </nav>
</div>
</header>
<div id="container">
<main id="content" role="main">
