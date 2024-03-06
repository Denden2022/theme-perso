<?php
/**
 * The header for our theme
 *
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

<header id="header" class="site-header">
    <nav id="menu" role="navigation" itemscope itemtype="https://schema.org/SiteNavigationElement">
        <div id="sidenav-id" class="sidenav-class">
            <div class="close">
            <div id="branding-img">
                <img src="<?php echo get_stylesheet_directory_uri() . '/assets/images/Logo.svg'; ?>" alt="<?php echo 'logo'; ?>">
            </div>
            <ul class="site_header_menu" id="primary-menu">
                <?php wp_nav_menu(array(
                    'theme_location' => 'main',
                    'container' => '',
                    'items_wrap' => '%3$s', // Pour ne pas envelopper les éléments dans une liste
                )); ?>
            </ul>
            <label for="toggle" class="menu-toggle" aria-controls="primary-menu" aria-expanded="false" onclick="toggleBurger()">
                <img id="burgerIcon" class="burger-icon" src="<?php echo get_stylesheet_directory_uri() . '/assets/images/burger.svg'; ?>" alt="<?php echo 'burger'; ?>">
            </label>
        </div>
    </nav>


          
            <!-- Div pour l'arrière-plan noir -->
    <div id="menu-overlay"></div> 
</header>




