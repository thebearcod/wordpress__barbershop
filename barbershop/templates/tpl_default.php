<?php
/**
* Template Name: Barbershop
*
* @package WordPress
* @subpackage Barbershop
* @since Barbershop 0.0.1
*/

  get_header();
  ?>
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
      // End of the loop.
    endwhile;
    ?>
		</main><!-- #main -->
	</div><!-- #primary -->

  <?php 
  get_footer();
?>
