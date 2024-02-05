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

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<header id="header" role="banner">
<div id="branding">
    <div id="branding-img">
        <img src="<?php echo get_stylesheet_directory_uri() . '/assets/images/Logo.svg'; ?>" alt="<?php echo 'logo'; ?>">
    </div>
    <nav id="menu" role="navigation" itemscope itemtype="https://schema.org/SiteNavigationElement">
        <?php wp_nav_menu( array(
                                    'theme_location' => 'main',
                                    'container' => 'ul', // afin d'éviter d'avoir une div autour 
                                    'menu_class' => 'site__header__menu', // ma classe personnalisée 
            )); 
        ?>
    </nav>
</div>
</header>



