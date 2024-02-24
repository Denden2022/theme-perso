<?php
/**
 * Template part for Menu du Burger en mode mobile
 *
 *
 * @package Mota
 */

?>

<nav id="menu" role="navigation" itemscope itemtype="https://schema.org/SiteNavigationElement">
    <div id="sidenav-id" class="sidenav-class">
        <label for="toggle" >
            <!--<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false" id="burger-icon">
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
            </button>-->
                <img id="burgerIcon" src="<?php echo get_stylesheet_directory_uri() . '/assets/images/Burger.svg'; ?>" alt="<?php echo 'burger'; ?> "onclick="toggleBurger()">
            </label>
            
            <!--Titre du menu de navigation-->
            <a class="title-menu" href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a>
            <input type="checkbox" id="toggle">

            <div class="close">
            <ul>
                <li class="#"><a href="<?php echo esc_url( home_url( '/' ) ); ?>#logo"><img src="<?php echo esc_url( get_stylesheet_directory_uri() . '/assets/images/image-logo.svg' ); ?>" alt="Logo" rel="home"></a></li>
                <li class="#"><a href="#story">Histoire</a></li>
                <li class="#"><a href="#characters">Personnages</a></li>
                <li class="#"><a href="#place">Lieu</a></li>
                
            </ul>
            </div>
        </div>
