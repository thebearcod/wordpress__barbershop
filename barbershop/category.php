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
  if (is_category()) {
    $cat_name = get_queried_object()->name;
    $cat_slug = get_queried_object()->slug;
  }
  if (is_category('works')) {
    get_template_part( 'template-parts/content', 'works' );
  } 
  the_content();
  ?>
		</main>
	</div>

  <?php 
  get_footer();
?>
