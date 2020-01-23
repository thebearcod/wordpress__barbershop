<?php
/**
 * The template for displaying all single posts
 *
 *
 */

get_header(); ?>

<main id="main" class="site-main" role="main">

			<?php
			/* Start the Loop */
			while ( have_posts() ) :
				the_post();			

				// If comments are open or we have at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) :?>
					<div class="commentlist">
 						<?php wp_list_comments(array('style' => 'div')); ?>
					</div>
				<?php 
			  endif;
				paginate_comments_links()

				the_post_navigation();

			endwhile; // End of the loop.
			?>

		</main><!-- #main -->
	</div><!-- #primary -->
	<?php get_sidebar(); ?>
</div><!-- .wrap -->

<?php
get_footer();
