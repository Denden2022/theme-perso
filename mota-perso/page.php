<?php
/**
 * The template for displaying all single posts
 *
 * @package WordPress
 * @subpackage Theme-perso
 * 
 */
?>

 <?php get_header(); ?>

 <div class="entry-content" itemprop="mainContentOfPage">
 
 <?php the_content(); ?>
 
 </div>
 
 <?php get_footer(); ?>