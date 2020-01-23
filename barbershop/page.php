<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Barbershop
 */

 
 ?>
 
<?php get_header(); ?>

<main class="page-main">
	<?php
	// Start the loop.
	while ( have_posts() ) :
		the_post();
		// Include the page content template.
		if (is_front_page()) {
			get_template_part( 'template-parts/content', 'main' );
		}		
		elseif (is_page('registration')) {
			get_template_part( 'template-parts/content', 'registration' );
		}
    ?>
		<section class="page__content container">		
		    <?php the_content();  ?>
    </section>
    <?php 
    the_tags();
		// End of the loop.
	endwhile;
	?>
</main>

<?php get_footer(); ?>


